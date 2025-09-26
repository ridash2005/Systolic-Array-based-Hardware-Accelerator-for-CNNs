module Systolic4x4_serial_io (
    input  wire clk,
    input  wire rst_n,
    input  wire start,

    input  wire A_in_serial_data,
    input  wire A_in_serial_clk,
    input  wire A_in_frame_sync,

    input  wire B_in_serial_data,
    input  wire B_in_serial_clk,
    input  wire B_in_frame_sync,

    output wire C_out_serial_data,
    output wire C_out_serial_clk,
    output wire C_out_frame_sync,

    output wire done
  );

    // ---------------- Parameters ----------------
    parameter AW    = 8;
    parameter BW    = 8;
    parameter ACCW  = 32;
    parameter ROWS  = 4;
    parameter COLS  = 4;
    parameter K     = 4;

    localparam integer A_WIDTH = ROWS * K * AW;
    localparam integer B_WIDTH = K * COLS * BW;
    localparam integer C_WIDTH = ROWS * COLS * ACCW;

    // ---------------- Internal signals ----------------
    wire [A_WIDTH-1:0] A_in;
    wire [B_WIDTH-1:0] B_in;
    wire [C_WIDTH-1:0] C_out;

    wire A_in_valid;
    wire B_in_valid;
    wire ser_busy;

    // ---------------- Deserializers ----------------
    deserializer #(.WIDTH(A_WIDTH)) deser_A (
        .clk(clk),
        .rst_n(rst_n),
        .serial_clk(A_in_serial_clk),
        .serial_data(A_in_serial_data),
        .frame_sync(A_in_frame_sync),
        .parallel_data(A_in),
        .data_valid(A_in_valid)
    );

    deserializer #(.WIDTH(B_WIDTH)) deser_B (
        .clk(clk),
        .rst_n(rst_n),
        .serial_clk(B_in_serial_clk),
        .serial_data(B_in_serial_data),
        .frame_sync(B_in_frame_sync),
        .parallel_data(B_in),
        .data_valid(B_in_valid)
    );

    // ---------------- Handshaking ----------------
    // Start core only when start is asserted and inputs are valid
    wire inputs_valid   = A_in_valid & B_in_valid;
    wire start_core     = start & inputs_valid;

    // Start serializer only when core is done and serializer is idle
    wire serializer_start = done & ~ser_busy;

    // ---------------- Systolic Core ----------------
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
        .start(start_core),
        .A_in(A_in),
        .B_in(B_in),
        .done(done),
        .C_out(C_out)
    );

    // ---------------- Serializer ----------------
    serializer #(.WIDTH(C_WIDTH)) ser_C (
        .clk(clk),
        .rst_n(rst_n),
        .start(serializer_start),      // control start
        .parallel_data(C_out),
        .serial_clk(C_out_serial_clk),
        .frame_sync(C_out_frame_sync),
        .serial_data(C_out_serial_data),
        .busy(ser_busy)
    );

endmodule
