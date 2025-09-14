module Systolic4x4 (
    clk,
    rst_n,
    start,
    A_in,
    B_in,
    done,
    C_out
);

parameter signed [31:0] AW = 8;
parameter signed [31:0] BW = 8;
parameter signed [31:0] ACCW = 32;
parameter signed [31:0] ROWS = 4;
parameter signed [31:0] COLS = 4;
parameter signed [31:0] K = 4;

input wire clk;
input wire rst_n;
input wire start;
input wire signed [((ROWS * K) * AW) - 1:0] A_in;
input wire signed [((K * COLS) * BW) - 1:0] B_in;
output reg done;
output reg signed [((ROWS * COLS) * ACCW) - 1:0] C_out;

wire signed [AW - 1:0] A_wires [ROWS - 1:0][COLS - 1:0];
wire signed [BW - 1:0] B_wires [ROWS - 1:0][COLS - 1:0];
wire signed [AW - 1:0] A_outs [ROWS - 1:0][COLS - 1:0];
wire signed [BW - 1:0] B_outs [ROWS - 1:0][COLS - 1:0];
wire signed [ACCW - 1:0] acc_wires [ROWS - 1:0][COLS - 1:0];

reg signed [AW - 1:0] A_shift [ROWS - 1:0][0:(K + COLS) - 1];
reg signed [BW - 1:0] B_shift [0:(K + ROWS) - 1][COLS - 1:0];

wire ce_local;
reg load_acc;
reg [31:0] cycle_cnt;
reg running;

genvar r, c;


generate
    for (r = 0; r < ROWS; r = r + 1) begin : rows
        for (c = 0; c < COLS; c = c + 1) begin : cols
            PE_MAC #(
                .AW(AW),
                .BW(BW),
                .ACCW(ACCW)
            ) pe_i (
                .clk(clk),
                .rst_n(rst_n),
                .ce(ce_local),
                .A_in(A_wires[r][c]),
                .B_in(B_wires[r][c]),
                .load_acc(load_acc),
                .A_out(A_outs[r][c]),
                .B_out(B_outs[r][c]),
                .acc_out(acc_wires[r][c])
            );
        end
    end
endgenerate

// Connect A_in and B_in wires to PE_MAC inputs
generate
    for (r = 0; r < ROWS; r = r + 1) begin : assign_rows
        for (c = 0; c < COLS; c = c + 1) begin : assign_cols
            assign A_wires[r][c] = (c == 0) ? A_shift[r][0] : A_outs[r][c - 1];
            assign B_wires[r][c] = (r == 0) ? B_shift[0][c] : B_outs[r - 1][c];
        end
    end
endgenerate

task load_shift_buffers;
    integer i, j;
    begin
        for (i = 0; i < ROWS; i = i + 1)
            for (j = 0; j < (K + COLS); j = j + 1)
                A_shift[i][j] = 1'sb0;

        for (i = 0; i < (K + ROWS); i = i + 1)
            for (j = 0; j < COLS; j = j + 1)
                B_shift[i][j] = 1'sb0;

        for (i = 0; i < ROWS; i = i + 1)
            for (j = 0; j < K; j = j + 1)
                A_shift[i][i + j] = A_in[((i * K) + j) * AW +: AW];

        for (j = 0; j < COLS; j = j + 1)
            for (i = 0; i < K; i = i + 1)
                B_shift[i + j][j] = B_in[((i * COLS) + j) * BW +: BW];
    end
endtask

assign ce_local = running;
integer rr, cc, s;
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        running <= 0;
        cycle_cnt <= 0;
        load_acc <= 0;
        done <= 0;
        C_out <= 0;
    end else if (start && !running) begin
        load_shift_buffers();
        running <= 1;
        cycle_cnt <= 0;
        load_acc <= 1; // Reset accumulator on start
        done <= 0;
    end else if (running) begin
        load_acc <= 0;

        // Shift the A and B shift buffers
       
        for (rr = 0; rr < ROWS; rr = rr + 1)
            for (s = 0; s < ((K + COLS) - 1); s = s + 1)
                A_shift[rr][s] <= A_shift[rr][s + 1];

        for (cc = 0; cc < COLS; cc = cc + 1)
            for (s = 0; s < ((K + ROWS) - 1); s = s + 1)
                B_shift[s][cc] <= B_shift[s + 1][cc];

        cycle_cnt <= cycle_cnt + 1;

        if (cycle_cnt >= (((K + ROWS) + COLS) - 2)) begin
            // Latch accumulator outputs into C_out
            for (rr = 0; rr < ROWS; rr = rr + 1) begin
                for (cc = 0; cc < COLS; cc = cc + 1) begin
                    C_out[((rr * COLS) + cc) * ACCW +: ACCW] <= acc_wires[rr][cc];
                end
            end
            running <= 0;
            done <= 1;
        end else
            done <= 0;
    end else begin
        load_acc <= 0;
        done <= 0;
    end
end

endmodule
