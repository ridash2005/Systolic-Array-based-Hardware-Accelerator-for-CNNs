`timescale 1ns/1ps
module tb_top_iverilog();

  parameter AW = 4;
  parameter BW = 4;
  parameter ACCW = 16;
  parameter ROWS = 2;
  parameter COLS = 2;
  parameter K = 2;

  localparam A_WIDTH = ROWS * K * AW;
  localparam B_WIDTH = K * COLS * BW;
  localparam C_WIDTH = ROWS * COLS * ACCW;

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

    // Send Matrix A
    A_flat = 16'hF021; 
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
    $display("Matrix A sent: %h", A_flat); $fflush();

    // Send Matrix B
    B_flat = 16'h1201;
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
    $display("Matrix B sent: %h", B_flat); $fflush();

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
    
    $display("Captured C_out_flat: %h", C_captured); $fflush();
    
    if (C_captured === 64'hFFFF_FFFE_0002_0005) begin
      $display("SUCCESS: Serial output matches expected GEMM result!");
    end else begin
      $display("FAILURE: Expected FFFFFFFE00020005, got %h", C_captured);
      errors = errors + 1;
    end

    if (errors == 0) $display("TEST PASSED");
    else $display("TEST FAILED");

    $finish;
  end

endmodule
