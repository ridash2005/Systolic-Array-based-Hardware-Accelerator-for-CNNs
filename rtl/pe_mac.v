module PE_MAC (
    clk,
    rst_n,
    ce,
    A_in,
    B_in,
    load_acc,
    A_out,
    B_out,
    acc_out
);

parameter AW = 8;
parameter BW = 8;
parameter ACCW = 32;

input wire clk;
input wire rst_n;
input wire ce;
input wire signed [AW - 1:0] A_in;
input wire signed [BW - 1:0] B_in;
input wire load_acc;
output wire signed [AW - 1:0] A_out;
output wire signed [BW - 1:0] B_out;
output wire signed [ACCW - 1:0] acc_out;

reg signed [AW - 1:0] A_reg;
reg signed [BW - 1:0] B_reg;
reg signed [(AW + BW) - 1:0] prod_reg;
reg signed [ACCW - 1:0] acc_reg;

always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        A_reg <= 1'sb0;
        B_reg <= 1'sb0;
    end else if (ce) begin
        A_reg <= A_in;
        B_reg <= B_in;
    end
end

always @(posedge clk or negedge rst_n) begin
    if (!rst_n)
        prod_reg <= 1'sb0;
    else if (ce)
        prod_reg <= $signed(A_reg) * $signed(B_reg);
end

always @(posedge clk or negedge rst_n) begin
    if (!rst_n)
        acc_reg <= 1'sb0;
    else if (ce) begin
        if (load_acc)
            acc_reg <= 1'sb0;
        else
            acc_reg <= acc_reg + $signed(prod_reg);
    end
end

assign A_out = A_reg;
assign B_out = B_reg;
assign acc_out = acc_reg;

endmodule
