`timescale 1ns/1ps

// Processing Element (PE) with Multiply-Accumulate (MAC) capability.
// This is the fundamental building block of a systolic array.
// It multiplies two input numbers and adds the result to an internal accumulator.
module PE_MAC #(
  parameter AW = 8,      // Bit-width of input A (Weight or Activation)
  parameter BW = 8,      // Bit-width of input B (Activation or Weight)
  parameter ACCW = 32    // Bit-width of the Accumulator (to prevent overflow)
) (
  input  wire                clk,      // System clock
  input  wire                rst_n,    // Asynchronous active-low reset
  input  wire                ce,       // Clock enable (gate processing)
  input  wire signed [AW-1:0] A_in,     // Data input from left/above
  input  wire signed [BW-1:0] B_in,     // Data input from above/left
  input  wire                load_acc, // Control signal: 1 to start a new accumulation
  output wire signed [AW-1:0] A_out,    // Data output to right/below (passed through)
  output wire signed [BW-1:0] B_out,    // Data output to below/right (passed through)
  output wire signed [ACCW-1:0] acc_out // Current accumulation result
);

  // --- Internal Storage ---

  // Registers to hold input A and B for one clock cycle before passing them on.
  // This "staging" creates the systolic behavior where data moves step-by-step.
  reg signed [AW-1:0] A_reg;
  reg signed [BW-1:0] B_reg;

  // Register to hold the product of (A * B). 
  // Pipelining the multiplication helps the design run at higher speeds.
  reg signed [AW+BW-1:0] prod_reg;

  // The Accumulator register: stores the running sum of products.
  reg signed [ACCW-1:0] acc_reg;

  // --- Logic Stages ---

  // Pipeline Stage 0: Registering the Inputs
  // On every clock pulse (with rst_n high and ce high), capture the input data.
  always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      A_reg <= 0; // Clear register on reset
      B_reg <= 0; // Clear register on reset
    end else if (ce) begin
      A_reg <= A_in; // Store input A
      B_reg <= B_in; // Store input B
    end
  end

  // Pipeline Stage 1: Multiplication
  // Takes the stored inputs from the previous stage and calculates their product.
  always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      prod_reg <= 0; // Clear product on reset
    end else if (ce) begin
      prod_reg <= A_reg * B_reg; // Multiply stored A and B
    end
  end

  // Delay Registers for Control Signal
  // The 'load_acc' signal must travel through the pipeline at the same speed as the data
  // so that it hits the accumulator stage exactly when the first valid product arrives.
  reg load_acc_d1, load_acc_d2;

  always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      load_acc_d1 <= 0;
      load_acc_d2 <= 0;
    end else if (ce) begin
      load_acc_d1 <= load_acc;    // Sync delay 1
      load_acc_d2 <= load_acc_d1; // Sync delay 2 (matches multiplication latency)
    end
  end

  // Pipeline Stage 2: Accumulation
  // Adds the current product to the running total in the accumulator.
  always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      acc_reg <= 0; // Clear accumulator on reset
    end else if (ce) begin
      if (load_acc_d2) begin
        acc_reg <= prod_reg; // Start fresh: Replace current sum with the new product
      end else begin
        acc_reg <= acc_reg + prod_reg; // Add current product to the existing sum
      end
    end
  end

  // --- Outputs ---
  // Assign internal registers to the output ports.
  assign A_out = A_reg;    // Data output A (passed to next PE)
  assign B_out = B_reg;    // Data output B (passed to next PE)
  assign acc_out = acc_reg; // Final or intermediate MAC result

endmodule
