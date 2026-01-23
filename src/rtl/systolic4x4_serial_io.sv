module Systolic4x4_serial_io #(
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

  // Internal parallel inputs/outputs
  logic signed [AW-1:0] A_in [ROWS-1:0][K-1:0];
  logic signed [BW-1:0] B_in [K-1:0][COLS-1:0];
  logic signed [ACCW-1:0] C_out[ROWS-1:0][COLS-1:0];

  // Data valid signals from deserializers
  logic A_in_valid, B_in_valid;


  // Bits needed for full matrix tiles
  localparam A_WIDTH = ROWS * K * AW;
  localparam B_WIDTH = K * COLS * BW;
  localparam C_WIDTH = ROWS * COLS * ACCW;

  logic [A_WIDTH-1:0] A_in_flat;
  logic [B_WIDTH-1:0] B_in_flat;
  logic [C_WIDTH-1:0] C_out_flat;

  // Unflatten A_in and B_in from deserializer outputs
  generate
    for (genvar i=0; i<ROWS; i++) begin : unflatten_A
      for (genvar j=0; j<K; j++) begin : unflatten_A_el
        assign A_in[i][j] = A_in_flat[(i*K + j)*AW +: AW];
      end
    end
    for (genvar i=0; i<K; i++) begin : unflatten_B
      for (genvar j=0; j<COLS; j++) begin : unflatten_B_el
        assign B_in[i][j] = B_in_flat[(i*COLS + j)*BW +: BW];
      end
    end
    // Flatten result for serializer
    for (genvar i=0; i<ROWS; i++) begin : flatten_C
      for (genvar j=0; j<COLS; j++) begin : flatten_C_el
        assign C_out_flat[(i*COLS + j)*ACCW +: ACCW] = C_out[i][j];
      end
    end
  endgenerate

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
  // Trigger calculation when both matrices are loaded and 'start' is high
  logic systolic_start, systolic_done;
  logic calculation_running;

  always_ff @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
      systolic_start <= 0;
      calculation_running <= 0;
    end else begin
      if (start && A_in_valid && B_in_valid && !calculation_running) begin
        systolic_start <= 1;
        calculation_running <= 1;
      end else begin
        systolic_start <= 0;
        if (systolic_done)
          calculation_running <= 0;
      end
    end
  end

  Systolic4x4 #(.AW(AW), .BW(BW), .ACCW(ACCW), .ROWS(ROWS), .COLS(COLS), .K(K)) systolic_inst (
    .clk(clk),
    .rst_n(rst_n),
    .start(systolic_start),
    .A_in(A_in),
    .B_in(B_in),
    .done(systolic_done),
    .C_out(C_out)
  );

  assign done = systolic_done;

  // Instantiate serializer for output
  serializer #(.WIDTH(C_WIDTH)) serializer_C (

    .rst_n(rst_n),
    .serial_clk(C_out_serial_clk),
    .parallel_data(C_out_flat),
    .frame_sync(systolic_done),
    .serial_data(C_out_serial_data),
    .busy()
  );

  assign C_out_serial_clk = clk;
  assign C_out_frame_sync = systolic_done;

endmodule
