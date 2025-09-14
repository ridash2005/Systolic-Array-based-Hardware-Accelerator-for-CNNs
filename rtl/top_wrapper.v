module top_wrapper(
  input wire clk,
  input wire rst_n,
  input wire start,
  input wire A_in_serial_data,
  input wire A_in_serial_clk,
  input wire A_in_frame_sync,
  input wire B_in_serial_data,
  input wire B_in_serial_clk,
  input wire B_in_frame_sync,
  output wire done,
  output wire C_out_serial_data,
  output wire C_out_serial_clk,
  output wire C_out_frame_sync
);

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
