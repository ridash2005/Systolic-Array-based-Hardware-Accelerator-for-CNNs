module Systolic4x4 #(
    parameter AW   = 8,
    parameter BW   = 8,
    parameter ACCW = 32,
    parameter ROWS = 4,
    parameter COLS = 4,
    parameter K    = 4
)(
    input  wire clk,
    input  wire rst_n,
    input  wire start,
    input  wire signed [((ROWS*K)*AW)-1:0] A_in,
    input  wire signed [((K*COLS)*BW)-1:0] B_in,
    output reg done,
    output reg signed [((ROWS*COLS)*ACCW)-1:0] C_out
);

    // ---------------- Internal wires ----------------
    wire signed [AW-1:0] A_wires [0:ROWS-1][0:COLS-1];
    wire signed [BW-1:0] B_wires [0:ROWS-1][0:COLS-1];
    (* keep = "true" *)wire signed [AW-1:0] A_outs [0:ROWS-1][0:COLS-1] /* synthesis keep */;
    (* keep = "true" *)wire signed [BW-1:0] B_outs [0:ROWS-1][0:COLS-1] /* synthesis keep */;
    wire signed [ACCW-1:0] acc_wires [0:ROWS-1][0:COLS-1];

    // Shift buffers for input propagation
    reg signed [AW-1:0] A_shift [0:ROWS-1][0:(K+COLS)-1];
    reg signed [BW-1:0] B_shift [0:(K+ROWS)-1][0:COLS-1];

    // Control signals
    reg running;
    reg load_acc;
    reg [31:0] cycle_cnt;
    wire ce_local = running;

    genvar r, c;

    // ---------------- Instantiate PE_MACs ----------------
    generate
        for (r = 0; r < ROWS; r = r + 1) begin: row_loop
            for (c = 0; c < COLS; c = c + 1) begin: col_loop
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

    // ---------------- Connect PE_MAC inputs ----------------
    generate
        for (r = 0; r < ROWS; r = r + 1) begin: assign_rows
            for (c = 0; c < COLS; c = c + 1) begin: assign_cols
                assign A_wires[r][c] = (c == 0) ? A_shift[r][0] : A_outs[r][c-1];
                assign B_wires[r][c] = (r == 0) ? B_shift[0][c] : B_outs[r-1][c];
            end
        end
    endgenerate

    

    // ---------------- Task: Load initial shift buffers ----------------
    task load_shift_buffers;
        integer i, j;
        begin
            // Clear shift buffers
            for (i = 0; i < ROWS; i = i + 1)
                for (j = 0; j < (K+COLS); j = j + 1)
                    A_shift[i][j] <= 0;
            for (i = 0; i < (K+ROWS); i = i + 1)
                for (j = 0; j < COLS; j = j + 1)
                    B_shift[i][j] <= 0;

            // Load A input
            for (i = 0; i < ROWS; i = i + 1)
                for (j = 0; j < K; j = j + 1)
                    A_shift[i][i+j] <= A_in[((i*K)+j)*AW +: AW];

            // Load B input
            for (j = 0; j < COLS; j = j + 1)
                for (i = 0; i < K; i = i + 1)
                    B_shift[i+j][j] <= B_in[((i*COLS)+j)*BW +: BW];
        end
    endtask

    // ---------------- Systolic array control ----------------
    integer rr, cc, s;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            running   <= 0;
            cycle_cnt <= 0;
            load_acc  <= 0;
            done      <= 0;
            C_out     <= 0;
        end else if (start && !running) begin
            load_shift_buffers();
            running   <= 1;
            cycle_cnt <= 0;
            load_acc  <= 1;
            done      <= 0;
        end else if (running) begin
            load_acc <= 0;

            // Shift A buffers left
            for (rr = 0; rr < ROWS; rr = rr + 1)
                for (s = 0; s < (K+COLS-1); s = s + 1)
                    A_shift[rr][s] <= A_shift[rr][s+1];

            // Shift B buffers up
            for (cc = 0; cc < COLS; cc = cc + 1)
                for (s = 0; s < (K+ROWS-1); s = s + 1)
                    B_shift[s][cc] <= B_shift[s+1][cc];

            cycle_cnt <= cycle_cnt + 1;

            // Check if computation is done
            if (cycle_cnt >= (K + ROWS + COLS - 2)) begin
                // Collect outputs
                for (rr = 0; rr < ROWS; rr = rr + 1)
                    for (cc = 0; cc < COLS; cc = cc + 1)
                        C_out[((rr*COLS)+cc)*ACCW +: ACCW] <= acc_wires[rr][cc];

                running <= 0;
                done    <= 1;
            end else begin
                done <= 0;
            end
        end else begin
            load_acc <= 0;
            done     <= 0;
        end
    end

endmodule
