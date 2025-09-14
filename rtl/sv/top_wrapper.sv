module top_wrapper();

  // Declare signals for main module IO
  logic clk;
  logic rst_n;
  logic start;
  logic A_in_serial_data;
  logic A_in_serial_clk;
  logic A_in_frame_sync;
  logic B_in_serial_data;
  logic B_in_serial_clk;
  logic B_in_frame_sync;
  logic C_out_serial_data;
  logic C_out_serial_clk;
  logic C_out_frame_sync;
  logic done;

  // Tie off or connect inputs
  assign clk = /* assign or generate clock */;
  assign rst_n = 1'b1;
  assign start = 1'b0; // or driven signal
  assign A_in_serial_data = 1'b0;
  assign A_in_serial_clk = clk;
  assign A_in_frame_sync = 1'b0;
  assign B_in_serial_data = 1'b0;
  assign B_in_serial_clk = clk;
  assign B_in_frame_sync = 1'b0;

  // Instantiate main design
  Systolic4x4_serial_io uut (
    .clk(clk),
    .rst_n(rst_n),
    .start(start),
    .A_in_serial_data(A_in_serial_data),
    .A_in_serial_clk(A_in_serial_clk),
    .A_in_frame_sync(A_in_frame_sync),
    .B_in_serial_data(B_in_serial_data),
    .B_in_serial_clk(B_in_serial_clk),
    .B_in_frame_sync(B_in_frame_sync),
    .C_out_serial_data(C_out_serial_data),
    .C_out_serial_clk(C_out_serial_clk),
    .C_out_frame_sync(C_out_frame_sync),
    .done(done)
  );

endmodule
