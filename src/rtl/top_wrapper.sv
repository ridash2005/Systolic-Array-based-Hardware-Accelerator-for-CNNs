module top_wrapper #(
  parameter AW = 4,
  parameter BW = 4,
  parameter ACCW = 16,
  parameter ROWS = 2,
  parameter COLS = 2,
  parameter K = 2
)(
  input  logic clk,
  input  logic rst_n,
  input  logic start,

  // Serialized inputs
  input  logic A_in_serial_data,
  input  logic A_in_serial_clk,
  input  logic A_in_frame_sync,

  input  logic B_in_serial_data,
  input  logic B_in_serial_clk,
  input  logic B_in_frame_sync,

  // Serialized output
  output logic C_out_serial_data,
  output logic C_out_serial_clk,
  output logic C_out_frame_sync,

  // Control outputs
  output logic done
);

  // This wrapper acts as the top-level entity for physical design.
  // It instantiates the Serial IO variant of the systolic array.
  
  Systolic4x4_serial_io #(
    .AW(AW), .BW(BW), .ACCW(ACCW), .ROWS(ROWS), .COLS(COLS), .K(K)
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
