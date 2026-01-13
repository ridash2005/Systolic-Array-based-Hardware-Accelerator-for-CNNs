`timescale 1ns / 1ps
module tb_top_wrapper();

  // Parameters
  parameter AW = 8;
  parameter BW = 8;
  parameter ACCW = 32;
  parameter ROWS = 4;
  parameter COLS = 4;
  parameter K = 4;

  // Inputs to top_wrapper
  reg clk;
  reg rst_n;
  reg start;
  reg A_in_serial_data;
  reg A_in_serial_clk;
  reg A_in_frame_sync;
  reg B_in_serial_data;
  reg B_in_serial_clk;
  reg B_in_frame_sync;

  // Outputs from top_wrapper
  wire done;
  wire C_out_serial_data;
  wire C_out_serial_clk;
  wire C_out_frame_sync;

  // Instantiate top_wrapper
  top_wrapper uut (
    .clk(clk),
    .rst_n(rst_n),
    .start(start),
    .A_in_serial_data(A_in_serial_data),
    .A_in_serial_clk(A_in_serial_clk),
    .A_in_frame_sync(A_in_frame_sync),
    .B_in_serial_data(B_in_serial_data),
    .B_in_serial_clk(B_in_serial_clk),
    .B_in_frame_sync(B_in_frame_sync),
    .done(done),
    .C_out_serial_data(C_out_serial_data),
    .C_out_serial_clk(C_out_serial_clk),
    .C_out_frame_sync(C_out_frame_sync)
  );

  // Clock generation (100 MHz)
  initial clk = 0;
  always #5 clk = ~clk;

  // Serial clocks (500 MHz)
  initial A_in_serial_clk = 0;
  always #1 A_in_serial_clk = ~A_in_serial_clk;

  initial B_in_serial_clk = 0;
  always #1 B_in_serial_clk = ~B_in_serial_clk;

  // Initialize signals
  initial begin
    rst_n = 0;
    start = 0;
    A_in_serial_data = 0;
    A_in_frame_sync = 0;
    B_in_serial_data = 0;
    B_in_frame_sync = 0;
    
    #20; // Hold reset for 20ns
    rst_n = 1; // Release reset
    
    #20;
    start = 1;
    #10;
    start = 0;
  end

  // Parallel test input matrices for serialization
  reg signed [AW-1:0] A_tile [0:ROWS-1][0:K-1];
  reg signed [BW-1:0] B_tile [0:K-1][0:COLS-1];

  initial begin
    // Initialize example matrices
    A_tile[0] = '{8'sd1,  8'sd2,  8'sd3,  8'sd4};
    A_tile[1] = '{8'sd0, -8'sd1,  8'sd2,  8'sd3};
    A_tile[2] = '{8'sd2,  8'sd2, -8'sd1,  8'sd1};
    A_tile[3] = '{8'sd4,  8'sd0,  8'sd1, -8'sd2};

    B_tile[0] = '{8'sd1,  8'sd0, -8'sd1, 8'sd2};
    B_tile[1] = '{8'sd2,  8'sd1,  8'sd0, 8'sd0};
    B_tile[2] = '{-8'sd1, 8'sd2,  8'sd1, 8'sd1};
    B_tile[3] = '{8'sd3, -8'sd1,  8'sd2, 8'sd0};

    // Wait for reset deassertion before starting serialization
    wait(rst_n == 1);
    #10;

    // Start serialization of A_tile rows
    fork
      for (int r=0; r<ROWS; r++) begin
        for (int k=0; k<K; k++) begin
          @(posedge clk);
          serialize_vector(A_in_serial_clk, A_in_serial_data, A_in_frame_sync, AW, A_tile[r][k]);
          @(posedge clk);
        end
      end
    join_none

    // Start serialization of B_tile columns
    fork
      for (int k=0; k<K; k++) begin
        for (int c=0; c<COLS; c++) begin
          @(posedge clk);
          serialize_vector(B_in_serial_clk, B_in_serial_data, B_in_frame_sync, BW, B_tile[k][c]);
          @(posedge clk);
        end
      end
    join_none
  end

  // Task to serialize a vector on serial interface (LSB first)
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

endmodule
