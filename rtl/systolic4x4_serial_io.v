module Systolic4x4_serial_io (
    clk,
    rst_n,
    start,
    A_in_serial_data,
    A_in_serial_clk,
    A_in_frame_sync,
    B_in_serial_data,
    B_in_serial_clk,
    B_in_frame_sync,
    C_out_serial_data,
    C_out_serial_clk,
    C_out_frame_sync,
    done
);

parameter AW = 8;
parameter BW = 8;
parameter ACCW = 32;
parameter ROWS = 4;
parameter COLS = 4;
parameter K = 4;

// Module port declarations
input wire clk;
input wire rst_n;
input wire start;

input wire A_in_serial_data;
input wire A_in_serial_clk;
input wire A_in_frame_sync;

input wire B_in_serial_data;
input wire B_in_serial_clk;
input wire B_in_frame_sync;

output wire C_out_serial_data;
output wire C_out_serial_clk;
output wire C_out_frame_sync;

output wire done;


// Explicit internal wire declarations corresponding to ports
wire internal_clk;
wire internal_rst_n;
wire internal_start;

wire internal_A_in_serial_data;
wire internal_A_in_serial_clk;
wire internal_A_in_frame_sync;

wire internal_B_in_serial_data;
wire internal_B_in_serial_clk;
wire internal_B_in_frame_sync;

wire internal_C_out_serial_data;
wire internal_C_out_serial_clk;
wire internal_C_out_frame_sync;

wire internal_done;


// Assign inputs ports to internal wires
assign internal_clk = clk;
assign internal_rst_n = rst_n;
assign internal_start = start;

assign internal_A_in_serial_data = A_in_serial_data;
assign internal_A_in_serial_clk = A_in_serial_clk;
assign internal_A_in_frame_sync = A_in_frame_sync;

assign internal_B_in_serial_data = B_in_serial_data;
assign internal_B_in_serial_clk = B_in_serial_clk;
assign internal_B_in_frame_sync = B_in_frame_sync;

// Assign internal wires to output ports
assign C_out_serial_data = internal_C_out_serial_data;
assign C_out_serial_clk = internal_C_out_serial_clk;
assign C_out_frame_sync = internal_C_out_frame_sync;
assign done = internal_done;


// Flattened parallel data widths
localparam integer A_WIDTH = ROWS * K * AW;
localparam integer B_WIDTH = K * COLS * BW;
localparam integer C_WIDTH = ROWS * COLS * ACCW;

wire [A_WIDTH-1:0] A_in;
wire [B_WIDTH-1:0] B_in;
wire [C_WIDTH-1:0] C_out;

// Deserializer output valid signals
wire A_in_valid;
wire B_in_valid;

// Serializer busy signal (to avoid unused port warning)
wire ser_busy;

// Instantiate deserializer for A input stream
deserializer #(.WIDTH(A_WIDTH)) deser_A (
    .clk(internal_clk),
    .rst_n(internal_rst_n),
    .serial_clk(internal_A_in_serial_clk),
    .serial_data(internal_A_in_serial_data),
    .frame_sync(internal_A_in_frame_sync),
    .parallel_data(A_in),
    .data_valid(A_in_valid)
);

// Instantiate deserializer for B input stream
deserializer #(.WIDTH(B_WIDTH)) deser_B (
    .clk(internal_clk),
    .rst_n(internal_rst_n),
    .serial_clk(internal_B_in_serial_clk),
    .serial_data(internal_B_in_serial_data),
    .frame_sync(internal_B_in_frame_sync),
    .parallel_data(B_in),
    .data_valid(B_in_valid)
);

// Instantiate the systolic array core
Systolic4x4 #(
    .AW(AW),
    .BW(BW),
    .ACCW(ACCW),
    .ROWS(ROWS),
    .COLS(COLS),
    .K(K)
) systolic_inst (
    .clk(internal_clk),
    .rst_n(internal_rst_n),
    .start(internal_start),
    .A_in(A_in),
    .B_in(B_in),
    .done(internal_done),
    .C_out(C_out)
);

// Instantiate serializer for output C matrix
serializer #(.WIDTH(C_WIDTH)) ser_C (
    .clk(internal_clk),
    .rst_n(internal_rst_n),
    .serial_clk(internal_C_out_serial_clk),
    .parallel_data(C_out),
    .frame_sync(internal_C_out_frame_sync),
    .serial_data(internal_C_out_serial_data),
    .busy(ser_busy)
);

endmodule
