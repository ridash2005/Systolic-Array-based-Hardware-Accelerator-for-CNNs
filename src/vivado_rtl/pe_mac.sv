module PE_MAC #(
  parameter AW = 8,
  parameter BW = 8,
  parameter ACCW = 32
) (
  input  logic                clk,
  input  logic                rst_n,
  input  logic                ce,
  input  logic signed [AW-1:0] A_in,
  input  logic signed [BW-1:0] B_in,
  input  logic                load_acc,
  output logic signed [AW-1:0] A_out,
  output logic signed [BW-1:0] B_out,
  output logic signed [ACCW-1:0] acc_out
);

  // Stage registers
  logic signed [AW-1:0] A_reg;
  logic signed [BW-1:0] B_reg;

  // pipeline product stage
  logic signed [AW+BW-1:0] prod_reg;

  // accumulator register
  logic signed [ACCW-1:0] acc_reg;

  // Pipeline stage 0: register inputs
  always_ff @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      A_reg <= '0;
      B_reg <= '0;
    end else if (ce) begin
      A_reg <= A_in;
      B_reg <= B_in;
    end
  end

  // Pipeline stage 1: multiply
  always_ff @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      prod_reg <= '0;
    end else if (ce) begin
      prod_reg <= $signed(A_reg) * $signed(B_reg);
    end
  end

  // Pipeline registers for load_acc to match data latency (2 stages: input->prod, prod->acc)
  logic load_acc_d1, load_acc_d2;

  always_ff @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      load_acc_d1 <= 0;
      load_acc_d2 <= 0;
    end else if (ce) begin
      load_acc_d1 <= load_acc;
      load_acc_d2 <= load_acc_d1;
    end
  end

  // Pipeline stage 2: accumulate
  always_ff @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      acc_reg <= '0;
    end else if (ce) begin
      if (load_acc_d2) begin
        acc_reg <= $signed(prod_reg); // Load first product
      end else begin
        acc_reg <= acc_reg + $signed(prod_reg);
      end
    end
  end

  // Outputs: pass through registered operands and accumulator output
  assign A_out = A_reg;
  assign B_out = B_reg;
  assign acc_out = acc_reg;

endmodule
