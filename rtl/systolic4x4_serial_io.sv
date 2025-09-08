module Systolic4x4_serial_io #(
  parameter AW = 8,
  parameter BW = 8,
  parameter ACCW = 32,
  parameter ROWS = 4,
  parameter COLS = 4,
  parameter K = 4
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
  logic C_out_valid;

  // Instantiate deserializers for A_in rows and B_in columns
  // For simplicity, instantiate one deserializer per input stream element.
  // Here, example shows 1 deserializer per row and column with concatenation; 
  // for full design, replicate and connect all parallel input bits accordingly.

  // Flatten arrays to vectors for simple serialization example:
  logic [AW*K-1:0] A_in_flat;
  logic [BW*K-1:0] B_in_flat;
  logic [ROWS*COLS*ACCW-1:0] C_out_flat;

  // Convert between multidim and flat for deserializer/serializer interfaces
  genvar i,j;

  // Slice multidim arrays into flat vectors
  generate
    for (i=0; i<ROWS; i++) begin : flatten_A
      for (j=0; j<K; j++) begin : flatten_A_bits
        assign A_in_flat[i* K + j] = A_in[i][j];
      end
    end
    for (i=0; i<K; i++) begin : flatten_B
      for (j=0; j<COLS; j++) begin : flatten_B_bits
        assign B_in_flat[i* COLS + j] = B_in[i][j];
      end
    end
    for (i=0; i<ROWS; i++) begin : flatten_C
      for (j=0; j<COLS; j++) begin : flatten_C_bits
        assign C_out_flat[(i*COLS + j)*ACCW +: ACCW] = C_out[i][j];
      end
    end
  endgenerate

  // Instantiate deserializers for A_in and B_in
  deserializer #(.WIDTH(AW*K)) deserializer_A (
    .clk(clk),
    .rst_n(rst_n),
    .serial_clk(A_in_serial_clk),
    .serial_data(A_in_serial_data),
    .frame_sync(A_in_frame_sync),
    .parallel_data(A_in_flat),
    .data_valid(A_in_valid)
  );

  deserializer #(.WIDTH(BW*K)) deserializer_B (
    .clk(clk),
    .rst_n(rst_n),
    .serial_clk(B_in_serial_clk),
    .serial_data(B_in_serial_data),
    .frame_sync(B_in_frame_sync),
    .parallel_data(B_in_flat),
    .data_valid(B_in_valid)
  );

  // Instantiate systolic 4x4 array with parallel inputs when deserialized data valid
  // Optionally, include handshake signals or buffering
  logic start_internal;

  always_ff @(posedge clk or negedge rst_n) begin
    if(!rst_n)
      start_internal <= 0;
    else
      start_internal <= start & A_in_valid & B_in_valid;
  end

  Systolic4x4 #(.AW(AW), .BW(BW), .ACCW(ACCW)) systolic_inst (
    .clk(clk),
    .rst_n(rst_n),
    .start(start_internal),
    .A_in(A_in),
    .B_in(B_in),
    .done(done),
    .C_out(C_out)
  );

  // Instantiate serializer for output C_out
  serializer #(.WIDTH(ROWS*COLS*ACCW)) serializer_C (
    .clk(clk),
    .rst_n(rst_n),
    .serial_clk(C_out_serial_clk),
    .parallel_data(C_out_flat),
    .frame_sync(done),       // start transmitting when systolic array signals done
    .serial_data(C_out_serial_data),
    .busy(C_out_valid)
  );

  assign C_out_frame_sync = done;

endmodule
