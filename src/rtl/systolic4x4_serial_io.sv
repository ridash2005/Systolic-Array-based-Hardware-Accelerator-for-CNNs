module Systolic4x4_serial_io #(
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

  // Bits needed for full matrix tiles
  localparam A_WIDTH = ROWS * K * AW;
  localparam B_WIDTH = K * COLS * BW;
  localparam C_WIDTH = ROWS * COLS * ACCW;

  wire [A_WIDTH-1:0] A_in_flat;
  wire [B_WIDTH-1:0] B_in_flat;
  wire [C_WIDTH-1:0] C_out_flat;

  // Data valid signals from deserializers
  wire A_in_valid, B_in_valid;

  // Instantiate deserializers
  deserializer #(.WIDTH(A_WIDTH)) deserializer_A (
    .rst_n(rst_n),
    .serial_clk(A_in_serial_clk),
    .serial_data(A_in_serial_data),
    .frame_sync(A_in_frame_sync),
    .parallel_data(A_in_flat),
    .data_valid(A_in_valid)
  );

  deserializer #(.WIDTH(B_WIDTH)) deserializer_B (
    .rst_n(rst_n),
    .serial_clk(B_in_serial_clk),
    .serial_data(B_in_serial_data),
    .frame_sync(B_in_frame_sync),
    .parallel_data(B_in_flat),
    .data_valid(B_in_valid)
  );

  // Controller for internal start
  reg systolic_start;
  wire systolic_done;
  reg calculation_running;
  reg A_ready, B_ready;

  always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
      systolic_start <= 0;
      calculation_running <= 0;
      A_ready <= 0;
      B_ready <= 0;
    end else begin
      if (A_in_valid) A_ready <= 1;
      if (B_in_valid) B_ready <= 1;

      if (start && A_ready && B_ready && !calculation_running) begin
        systolic_start <= 1;
        calculation_running <= 1;
        A_ready <= 0;
        B_ready <= 0;
      end else begin
        systolic_start <= 0;
        if (systolic_done)
          calculation_running <= 0;
      end
    end
  end

  // Instantiate systolic array with flattened interfaces
  Systolic4x4 #(
    .AW(AW), 
    .BW(BW), 
    .ACCW(ACCW), 
    .ROWS(ROWS), 
    .COLS(COLS), 
    .K(K)
  ) systolic_inst (
    .clk(clk),
    .rst_n(rst_n),
    .start(systolic_start),
    .A_in_flat(A_in_flat),
    .B_in_flat(B_in_flat),
    .done(systolic_done),
    .C_out(C_out_flat)
  );

  // Instantiate serializer for output
  reg done_delayed;
  always @(posedge clk or negedge rst_n) begin
    if (!rst_n) done_delayed <= 0;
    else done_delayed <= systolic_done;
  end

  serializer #(.WIDTH(C_WIDTH)) serializer_C (
    .rst_n(rst_n),
    .serial_clk(clk),
    .parallel_data(C_out_flat),
    .frame_sync(done_delayed),
    .serial_data(C_out_serial_data),
    .busy()
  );

  assign done = done_delayed;
  assign C_out_serial_clk = clk;
  assign C_out_frame_sync = done_delayed;

endmodule
