`timescale 1ns/1ps
module tb_systolic4x4_serial_io();

  parameter AW = 8;
  parameter BW = 8;
  parameter ACCW = 32;
  parameter ROWS = 4;
  parameter COLS = 4;
  parameter K = 4;

  logic clk;
  logic rst_n;
  logic start;

  logic A_in_serial_data, A_in_serial_clk, A_in_frame_sync;
  logic B_in_serial_data, B_in_serial_clk, B_in_frame_sync;
  logic C_out_serial_data, C_out_serial_clk, C_out_frame_sync;

  logic done;

  // Synchronous clocks generation
  initial clk = 0; always #5 clk = ~clk;       // 100 MHz system clock
  initial A_in_serial_clk = 0; always #1 A_in_serial_clk = ~A_in_serial_clk;  // 500 MHz serial clk
  initial B_in_serial_clk = 0; always #1 B_in_serial_clk = ~B_in_serial_clk;  // 500 MHz serial clk
  initial C_out_serial_clk = 0; always #1 C_out_serial_clk = ~C_out_serial_clk; // 500 MHz serial clk

  // Parallel test input matrices
  logic signed [AW-1:0] A_tile [0:ROWS-1][0:K-1];
  logic signed [BW-1:0] B_tile [0:K-1][0:COLS-1];

  // Reconstructed parallel output matrix from deserialized bits
  logic signed [ACCW-1:0] C_out_recon [0:ROWS-1][0:COLS-1];

  // Golden reference matrix
  logic signed [ACCW-1:0] golden_C [0:ROWS-1][0:COLS-1];

  // DUT instantiation
  Systolic4x4_serial_io dut (
    .clk(clk), .rst_n(rst_n), .start(start),
    .A_in_serial_data(A_in_serial_data), .A_in_serial_clk(A_in_serial_clk), .A_in_frame_sync(A_in_frame_sync),
    .B_in_serial_data(B_in_serial_data), .B_in_serial_clk(B_in_serial_clk), .B_in_frame_sync(B_in_frame_sync),
    .C_out_serial_data(C_out_serial_data), .C_out_serial_clk(C_out_serial_clk), .C_out_frame_sync(C_out_frame_sync),
    .done(done)
  );

  // Serialize a vector on serial interface (LSB first)
  task serialize_vector(
    input logic serial_clk,
    output logic serial_data,
    output logic frame_sync,
    input integer width,
    input logic [31:0] data_in  // max 32-bit for this example
  );
    integer i;
    begin
      frame_sync = 1;
      @(negedge serial_clk);
      frame_sync = 0;
      for (i=0; i<width; i=i+1) begin
        serial_data = data_in[i];
        @(negedge serial_clk);
      end
      serial_data = 0; // idle low after frame
      @(negedge serial_clk);
      frame_sync = 0;
    end
  endtask

  // Deserializer variables for output collection
  logic [ACCW-1:0] shift_reg [0:ROWS-1][0:COLS-1];
  integer bit_count [0:ROWS-1][0:COLS-1];
  integer current_row, current_col;

  initial begin
    // Initialize inputs and outputs
    rst_n = 0; start = 0;
    A_in_serial_data = 0; A_in_frame_sync = 0;
    B_in_serial_data = 0; B_in_frame_sync = 0;
    C_out_serial_data = 0; C_out_serial_clk = 0; C_out_frame_sync = 0;
    
    @(posedge clk);
    rst_n = 1;

    // Initialize test matrices (example values)
    A_tile[0] = '{8'sd1,  8'sd2,  8'sd3,  8'sd4};
    A_tile[1] = '{8'sd0, -8'sd1,  8'sd2,  8'sd3};
    A_tile[2] = '{8'sd2,  8'sd2, -8'sd1,  8'sd1};
    A_tile[3] = '{8'sd4,  8'sd0,  8'sd1, -8'sd2};

    B_tile[0] = '{8'sd1,  8'sd0, -8'sd1, 8'sd2};
    B_tile[1] = '{8'sd2,  8'sd1,  8'sd0, 8'sd0};
    B_tile[2] = '{-8'sd1, 8'sd2,  8'sd1, 8'sd1};
    B_tile[3] = '{8'sd3, -8'sd1,  8'sd2, 8'sd0};

    // Compute golden reference matrix
    integer r, c, k;
    for (r=0; r<ROWS; r++) begin
      for (c=0; c<COLS; c++) begin
        golden_C[r][c] = 0;
        for (k=0; k<K; k++) begin
          golden_C[r][c] += A_tile[r][k] * B_tile[k][c];
        end
      end
    end

    // Start serialization of A_tile and B_tile matrices row by row and column by column
  
    // Serialize A_tile row by row
    fork
      for (r=0; r<ROWS; r++) begin
        for (k=0; k<K; k++) begin
          @(posedge clk);
          serialize_vector(A_in_serial_clk, A_in_serial_data, A_in_frame_sync, AW, A_tile[r][k]);
        end
      end
    join_none

    // Serialize B_tile column by column
    fork
      for (k=0; k<K; k++) begin
        for (c=0; c<COLS; c++) begin
          @(posedge clk);
          serialize_vector(B_in_serial_clk, B_in_serial_data, B_in_frame_sync, BW, B_tile[k][c]);
        end
      end
    join_none

    // Start systolic array multiply
    @(posedge clk);
    start = 1;
    @(posedge clk);
    start = 0;

    // Deserialize C_out
    // Initialize counters
    for (r=0; r<ROWS; r++) begin
      for (c=0; c<COLS; c++) begin
        shift_reg[r][c] = 0;
        bit_count[r][c] = 0;
      end
    end
    current_row = 0;
    current_col = 0;

    forever @(posedge C_out_serial_clk) begin
      if (C_out_frame_sync) begin
        current_row = 0;
        current_col = 0;
        bit_count[current_row][current_col] = 0;
      end else begin
        shift_reg[current_row][current_col] = {C_out_serial_data, shift_reg[current_row][current_col][ACCW-1:1]};
        bit_count[current_row][current_col]++;
        if (bit_count[current_row][current_col] == ACCW) begin
          C_out_recon[current_row][current_col] = shift_reg[current_row][current_col];
          bit_count[current_row][current_col] = 0;
          if (current_col == COLS-1) begin
            current_col = 0;
            current_row++;
          end else begin
            current_col++;
          end
        end
      end
    end

    // Wait for systolic finish
    wait(done);

    // Compare results
    integer errors = 0;
    for (r=0; r<ROWS; r++) begin
      for (c=0; c<COLS; c++) begin
        if (C_out_recon[r][c] !== golden_C[r][c]) begin
          $display("Mismatch at C[%0d][%0d]: got %0d, expected %0d", r, c, C_out_recon[r][c], golden_C[r][c]);
          errors++;
        end
      end
    end

    if (errors == 0) $display("TEST PASSED: All output elements match golden reference.");
    else $display("TEST FAILED: %0d mismatches.", errors);

    $finish;
  end

endmodule
