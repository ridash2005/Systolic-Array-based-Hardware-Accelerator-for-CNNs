module PE_MAC #(
    parameter AW   = 8,
    parameter BW   = 8,
    parameter ACCW = 32
)(
    input  wire                   clk,
    input  wire                   rst_n,
    input  wire                   ce,
    input  wire signed [AW-1:0]   A_in,
    input  wire signed [BW-1:0]   B_in,
    input  wire                   load_acc,
    output wire signed [AW-1:0]   A_out,
    output wire signed [BW-1:0]   B_out,
    output wire signed [ACCW-1:0] acc_out
);

    // ---------------- Internal registers ----------------
    reg signed [AW-1:0] A_reg;
    reg signed [BW-1:0] B_reg;
    reg signed [(AW+BW)-1:0] prod_reg;
    reg signed [ACCW-1:0] acc_reg;

    // ---------------- Register A and B ----------------
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            A_reg <= 0;
            B_reg <= 0;
        end else if (ce) begin
            A_reg <= A_in;
            B_reg <= B_in;
        end
    end

    // ---------------- Multiply ----------------
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n)
            prod_reg <= 0;
        else if (ce)
            prod_reg <= A_reg * B_reg;
    end

    // ---------------- Accumulate ----------------
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n)
            acc_reg <= 0;
        else if (ce) begin
            if (load_acc)
                acc_reg <= 0;
            else
                // Cast prod_reg to ACCW bits to match acc_reg
                acc_reg <= acc_reg + {{(ACCW-(AW+BW)){prod_reg[(AW+BW)-1]}}, prod_reg};
        end
    end

    // ---------------- Outputs ----------------
    assign A_out   = A_reg;     // pass-through for systolic propagation
    assign B_out   = B_reg;     // pass-through for systolic propagation
    assign acc_out = acc_reg;

endmodule
