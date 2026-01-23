`timescale 1ns / 1ps

module tb_top_wrapper();

  // Parameters
  parameter AW = 4;
  parameter BW = 4;
  parameter ACCW = 16;
  parameter ROWS = 2;
  parameter COLS = 2;
  parameter K = 2;

  // Bits for full matrices
  localparam A_WIDTH = ROWS * K * AW;
  localparam B_WIDTH = K * COLS * BW;
  localparam C_WIDTH = ROWS * COLS * ACCW;

  // Signals
  logic clk;
  logic rst_n;
  logic start;
  logic A_in_serial_data;
  logic A_in_serial_clk;
  logic A_in_frame_sync;
  logic B_in_serial_data;
  logic B_in_serial_clk;
  logic B_in_frame_sync;

  logic done;
  logic C_out_serial_data;
  logic C_out_serial_clk;
  logic C_out_frame_sync;

  // Instantiate UUT
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

  // Clocks
  initial clk = 0;
  always #5 clk = ~clk;

  initial A_in_serial_clk = 0;
  always #1 A_in_serial_clk = ~A_in_serial_clk;

  initial B_in_serial_clk = 0;
  always #1 B_in_serial_clk = ~B_in_serial_clk;

  // Test Matrices
  logic signed [AW-1:0] A_tile [ROWS-1:0][K-1:0];
  logic signed [BW-1:0] B_tile [K-1:0][COLS-1:0];
  logic [A_WIDTH-1:0] A_flat;
  logic [B_WIDTH-1:0] B_flat;

  // Initialize
  initial begin
    rst_n = 0;
    start = 0;
    A_in_serial_data = 0;
    A_in_frame_sync = 0;
    B_in_serial_data = 0;
    B_in_frame_sync = 0;
    
    // Example values
    // Example values for 2x2
    A_tile[0] = '{4'sd1,  4'sd2};
    A_tile[1] = '{4'sd0, -4'sd1};

    B_tile[0] = '{4'sd1,  4'sd0};
    B_tile[1] = '{4'sd2,  4'sd1};

    // Flatten for easy serialization
    for (int i=0; i<ROWS; i++)
      for (int j=0; j<K; j++)
        A_flat[(i*K+j)*AW +: AW] = A_tile[i][j];

    for (int i=0; i<K; i++)
      for (int j=0; j<COLS; j++)
        B_flat[(i*COLS+j)*BW +: BW] = B_tile[i][j];

    #100;
    rst_n = 1;
    #100;

    // Send Matrix A and B
    fork
      serialize_matrix(A_in_serial_clk, A_in_serial_data, A_in_frame_sync, A_WIDTH, A_flat);
      serialize_matrix(B_in_serial_clk, B_in_serial_data, B_in_frame_sync, B_WIDTH, B_flat);
    join

    #50;
    start = 1;
    #10;
    start = 0;

    // Wait for completion
    wait(done == 1);
    $display("Computation Complete!");
    #1000;
    $finish;
  end

  task automatic serialize_matrix(
    ref logic s_clk,
    ref logic s_data,
    ref logic f_sync,
    input int bits,
    input logic [1023:0] data // Max size for simplicity
  );
    begin
      f_sync = 1;
      @(negedge s_clk);
      f_sync = 0;
      for (int i=0; i<bits; i++) begin
        s_data = data[i];
        @(negedge s_clk);
      end
      s_data = 0;
    end
  endtask

endmodule
