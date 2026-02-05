`timescale 1ns/1ps
module tb_top_iverilog();

  // Industry-grade parameters
  parameter AW = 8;
  parameter BW = 8;
  parameter ACCW = 32;
  parameter ROWS = 4;
  parameter COLS = 4;
  parameter K = 4;

  localparam A_WIDTH = ROWS * K * AW; // 4*4*8 = 128
  localparam B_WIDTH = K * COLS * BW; // 4*4*8 = 128
  localparam C_WIDTH = ROWS * COLS * ACCW; // 4*4*32 = 512

  reg clk;
  reg rst_n;
  reg start;
  reg A_in_serial_data;
  reg A_in_serial_clk;
  reg A_in_frame_sync;
  reg B_in_serial_data;
  reg B_in_serial_clk;
  reg B_in_frame_sync;

  wire done;
  wire C_out_serial_data;
  wire C_out_serial_clk;
  wire C_out_frame_sync;

  top_wrapper #(
    .AW(AW), .BW(BW), .ACCW(ACCW), .ROWS(ROWS), .COLS(COLS), .K(K)
  ) uut (
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

  initial clk = 0;
  always #5 clk = ~clk;

  initial A_in_serial_clk = 0;
  always #10 A_in_serial_clk = ~A_in_serial_clk;

  initial B_in_serial_clk = 0;
  always #10 B_in_serial_clk = ~B_in_serial_clk;

  reg [A_WIDTH-1:0] A_flat;
  reg [B_WIDTH-1:0] B_flat;
  reg [C_WIDTH-1:0] C_captured;
  integer i, r, c, errors;

  initial begin
    rst_n = 0;
    start = 0;
    A_in_serial_data = 0;
    A_in_frame_sync = 0;
    B_in_serial_data = 0;
    B_in_frame_sync = 0;
    C_captured = 0;
    errors = 0;
    
    #100;
    rst_n = 1;
    $display("Reset released."); $fflush();
    #100;

    // A: 4x4 matrix of 1s. Each element is 8'h01.
    // Total 16 elements. 16 * 8 = 128 bits.
    // Flat value = 128{1'b0} ... actually no
    // bit [127:0] A_flat;
    // index 0 is [7:0], index 1 is [15:8]
    for(i=0; i<16; i++) A_flat[i*8 +: 8] = 8'h01;

    // B: 4x4 matrix where each element is 1.
    for(i=0; i<16; i++) B_flat[i*8 +: 8] = 8'h01;

    // Send Matrix A
    A_in_frame_sync = 1;
    A_in_serial_data = A_flat[0];
    @(posedge A_in_serial_clk);
    #2; A_in_frame_sync = 0;
    for (i=1; i<A_WIDTH; i=i+1) begin
      A_in_serial_data = A_flat[i];
      @(posedge A_in_serial_clk);
      #2;
    end
    A_in_serial_data = 0;
    $display("Matrix A sent."); $fflush();

    // Send Matrix B
    B_in_frame_sync = 1;
    B_in_serial_data = B_flat[0];
    @(posedge B_in_serial_clk);
    #2; B_in_frame_sync = 0;
    for (i=1; i<B_WIDTH; i=i+1) begin
      B_in_serial_data = B_flat[i];
      @(posedge B_in_serial_clk);
      #2;
    end
    B_in_serial_data = 0;
    $display("Matrix B sent."); $fflush();

    #100;
    $display("Starting systolic array calculation..."); $fflush();
    @(posedge clk);
    start = 1;
    @(posedge clk);
    start = 0;

    wait(done == 1);
    $display("Computation Complete!"); 
    
    // Serial capture: 
    // T+0: done (done_delayed) high
    // T+1: serializer loads data and sets serial_data = D[0]
    
    @(posedge clk); // Now we are at T+1, serial_data is D[0]
    
    $display("Reading serial bits at negedge..."); $fflush();
    for (i=0; i<C_WIDTH; i=i+1) begin
      @(negedge clk);
      C_captured[i] = C_out_serial_data;
      if (i < C_WIDTH-1) @(posedge clk); // Move to next bit cycle
    end
    
    // Check results
    // A x B with all 1s and K=4.
    // Result Matrix C should have all elements = 4 (because 1*1 + 1*1 + 1*1 + 1*1 = 4).
    // Each element is 32-bit.
    // 4x4 result matrix. 16 elements.
    // Each element should be 32'h00000004.
    
    for(i=0; i<16; i++) begin
       logic [31:0] elem;
       elem = C_captured[i*32 +: 32];
       if(elem !== 4) begin
          $display("ERROR: Element %0d mismatch. Expected 4, got %0d", i, elem);
          errors++;
       end
    end
    
    if (errors == 0) $display("TEST PASSED: Serial output matches expected GEMM result (All 4s)!");
    else $display("TEST FAILED with %0d errors", errors);

    $finish;
  end

endmodule
