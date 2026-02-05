module top_wrapper #(
  parameter AW = 8,
  parameter BW = 8,
  parameter ACCW = 32,
  parameter ROWS = 2,
  parameter COLS = 2,
  parameter K = 2
)(
  input  wire clk,
  input  wire rst_n,
  input  wire start,

  // Serialized inputs
  input  wire A_in_serial_data,
  input  wire A_in_serial_clk,
  input  wire A_in_frame_sync,

  input  wire B_in_serial_data,
  input  wire B_in_serial_clk,
  input  wire B_in_frame_sync,

  // Serialized output
  output wire C_out_serial_data,
  output wire C_out_serial_clk,
  output wire C_out_frame_sync,

  // Control outputs
  output wire done
);

  // This wrapper acts as the top-level entity for physical design.
  // It instantiates the Serial IO variant of the systolic array.
  
  Systolic4x4_serial_io #(
    .AW(AW), 
    .BW(BW), 
    .ACCW(ACCW), 
    .ROWS(ROWS), 
    .COLS(COLS), 
    .K(K)
  ) core_inst (
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
