`timescale 1ns/1ps

// Systolic Array Module
// A systolic array is a grid of Processing Elements (PEs) that work in parallel.
// Data flows through the array like blood through a heart (hence "systolic"), 
// allowing for high-throughput matrix multiplication with minimal memory access.
module Systolic4x4 #(
  parameter AW   = 8,      // Input A bit-width
  parameter BW   = 8,      // Input B bit-width
  parameter ACCW = 32,     // Accumulator bit-width
  parameter ROWS = 2,      // Number of rows in the PE grid
  parameter COLS = 2,      // Number of columns in the PE grid
  parameter K    = 2       // Inner dimension of matrices (A is ROWS x K, B is K x COLS)
)(
  input  wire clk,         // System clock
  input  wire rst_n,       // Asynchronous active-low reset
  input  wire start,       // Trigger to begin computation

  // Flattened packed arrays for inputs (required for compatibility with some synthesis tools)
  input  wire signed [ROWS*K*AW-1:0] A_in_flat,
  input  wire signed [K*COLS*BW-1:0] B_in_flat,

  output reg  done,                           // High when computation is complete
  output reg  [ROWS*COLS*ACCW-1:0] C_out      // Flattened output matrix (ROWS x COLS)
);

  // --- Internal Data Structures ---

  // Unpack the flattened inputs into 2D arrays for easier logical access
  wire signed [AW-1:0] A_in [0:ROWS-1][0:K-1];
  wire signed [BW-1:0] B_in [0:K-1][0:COLS-1];
  
  // Logical mapping of A_in_flat to 2D array A_in
  genvar gi, gj;
  generate
    for (gi = 0; gi < ROWS; gi = gi + 1) begin : unpack_a_rows
      for (gj = 0; gj < K; gj = gj + 1) begin : unpack_a_cols
        assign A_in[gi][gj] = A_in_flat[(gi*K + gj)*AW +: AW];
      end
    end
  endgenerate
  
  // Logical mapping of B_in_flat to 2D array B_in
  generate
    for (gi = 0; gi < K; gi = gi + 1) begin : unpack_b_rows
      for (gj = 0; gj < COLS; gj = gj + 1) begin : unpack_b_cols
        assign B_in[gi][gj] = B_in_flat[(gi*COLS + gj)*BW +: BW];
      end
    end
  endgenerate

  // Intermediate wires to connect PEs to each other
  wire signed [AW-1:0]  A_wires    [0:ROWS-1][0:COLS-1];   // Inputs to each PE
  wire signed [BW-1:0]  B_wires    [0:ROWS-1][0:COLS-1];   // Inputs to each PE
  wire signed [AW-1:0]  A_outs     [0:ROWS-1][0:COLS-2];   // Horizontal connections between PEs
  wire signed [BW-1:0]  B_outs     [0:ROWS-2][0:COLS-1];   // Vertical connections between PEs
  wire signed [ACCW-1:0] acc_wires [0:ROWS-1][0:COLS-1];  // Internal accumulation results

  // --- Input Skewing Registers ---
  // In a systolic array, inputs must be "skewed" in time.
  // Row 0 gets its data first, then Row 1 with 1 cycle delay, etc.
  // These shift registers handle that timing offset.
  reg signed [AW-1:0] A_shift [0:ROWS-1][0:K+ROWS-1];
  reg signed [BW-1:0] B_shift [0:K+COLS-1][0:COLS-1];

  wire ce_local;        // Clock Enable for the entire PE grid
  reg [31:0] cycle_cnt; // Tracks how many cycles the computation has been running
  
  // State Machine Definitions
  localparam IDLE   = 2'b00; // Waiting for start signal
  localparam LOAD   = 2'b01; // Preparing the skewed data
  localparam RUN    = 2'b10; // Processing data through the array
  localparam FINISH = 2'b11; // Capturing results and signaling completion
  reg [1:0] state;

  // --- Grid of Processing Elements ---
  // We use a nested loop to instantiate the grid of PEs.
  genvar r, c;
  generate
    for (r = 0; r < ROWS; r = r + 1) begin : rows
      for (c = 0; c < COLS; c = c + 1) begin : cols
        // The PE instantiation handles boundary conditions (edge PEs don't need output wires)
        /* verilator lint_off PINCONNECTEMPTY */
        if (r < ROWS-1 && c < COLS-1) begin : body_pe
           PE_MAC #(.AW(AW), .BW(BW), .ACCW(ACCW)) pe_i (
            .clk(clk), .rst_n(rst_n), .ce(ce_local),
            .A_in(A_wires[r][c]), .B_in(B_wires[r][c]),
            .load_acc(cycle_cnt == (r + c)), // Logic to clear accumulator for a new tile
            .A_out(A_outs[r][c]), .B_out(B_outs[r][c]), .acc_out(acc_wires[r][c])
          );
        end else if (r == ROWS-1 && c < COLS-1) begin : bottom_edge_pe
           PE_MAC #(.AW(AW), .BW(BW), .ACCW(ACCW)) pe_i (
            .clk(clk), .rst_n(rst_n), .ce(ce_local),
            .A_in(A_wires[r][c]), .B_in(B_wires[r][c]),
            .load_acc(cycle_cnt == (r + c)),
            .A_out(A_outs[r][c]), .B_out(), .acc_out(acc_wires[r][c])
          );
        end else if (r < ROWS-1 && c == COLS-1) begin : right_edge_pe
           PE_MAC #(.AW(AW), .BW(BW), .ACCW(ACCW)) pe_i (
            .clk(clk), .rst_n(rst_n), .ce(ce_local),
            .A_in(A_wires[r][c]), .B_in(B_wires[r][c]),
            .load_acc(cycle_cnt == (r + c)),
            .A_out(), .B_out(B_outs[r][c]), .acc_out(acc_wires[r][c])
          );
        end else begin : corner_pe
           PE_MAC #(.AW(AW), .BW(BW), .ACCW(ACCW)) pe_i (
            .clk(clk), .rst_n(rst_n), .ce(ce_local),
            .A_in(A_wires[r][c]), .B_in(B_wires[r][c]),
            .load_acc(cycle_cnt == (r + c)),
            .A_out(), .B_out(), .acc_out(acc_wires[r][c])
          );
        end
      end
      /* verilator lint_on PINCONNECTEMPTY */
    end
  endgenerate

  // --- Signal Routing Logic ---
  // Connects the A_in and B_in to the first row/col, and connects PE outputs to neighbors.
  generate
    for (r = 0; r < ROWS; r = r + 1) begin : conn_rows
      for (c = 0; c < COLS; c = c + 1) begin : conn_cols
        if (c == 0) begin : first_col
          assign A_wires[r][c] = A_shift[r][0]; // Input A comes from the shift register
        end else begin : other_cols
          assign A_wires[r][c] = A_outs[r][c-1]; // Input A comes from the PE to its left
        end
        if (r == 0) begin : first_row
          assign B_wires[r][c] = B_shift[0][c]; // Input B comes from the shift register
        end else begin : other_rows
          assign B_wires[r][c] = B_outs[r-1][c]; // Input B comes from the PE above it
        end
      end
    end
  endgenerate

  // The array only computes during the RUN state (and starts capturing data in LOAD)
  assign ce_local = (state == RUN || state == LOAD);

  // --- Controller FSM Logic ---
  integer i, j, rr, cc, s;
  
  always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      // Initial state on hardware reset
      state <= IDLE;
      cycle_cnt <= 0;
      done <= 0;
      C_out <= 0;
      // Initialize all shift registers to zero
      for (i = 0; i < ROWS; i = i + 1) 
        for (j = 0; j < K+ROWS; j = j + 1) A_shift[i][j] <= 0;
      for (i = 0; i < K+COLS; i = i + 1)
        for (j = 0; j < COLS; j = j + 1) B_shift[i][j] <= 0;
    end else begin
      case (state)
        IDLE: begin
          done <= 0;
          if (start) begin
            state <= LOAD;
            // Load and skew Matrix A: Row 'i' is offset by 'i' cycles
            for (i = 0; i < ROWS; i = i + 1) begin
              for (j = 0; j < K; j = j + 1) begin
                A_shift[i][i+j] <= A_in[i][j];
              end
            end
            // Load and skew Matrix B: Column 'j' is offset by 'j' cycles
            for (j = 0; j < COLS; j = j + 1) begin
              for (i = 0; i < K; i = i + 1) begin
                B_shift[i+j][j] <= B_in[i][j];
              end
            end
          end
        end

        LOAD: begin
          state <= RUN; // Move to processing
          cycle_cnt <= 0;
        end

        RUN: begin
          cycle_cnt <= cycle_cnt + 1;
          // Shift Matrix A rightwards into the array
          for (rr = 0; rr < ROWS; rr = rr + 1) begin
            for (s = 0; s < K+ROWS-1; s = s + 1)
              A_shift[rr][s] <= A_shift[rr][s+1];
            A_shift[rr][K+ROWS-1] <= 0;
          end
          // Shift Matrix B downwards into the array
          for (cc = 0; cc < COLS; cc = cc + 1) begin
            for (s = 0; s < K+COLS-1; s = s + 1)
              B_shift[s][cc] <= B_shift[s+1][cc];
            B_shift[K+COLS-1][cc] <= 0;
          end
          // Wait until the very last bit of data has exited the array grid
          if (cycle_cnt >= (K + ROWS + COLS - 1)) begin
            state <= FINISH;
          end
        end

        FINISH: begin
          // Map internal PE accumulation results back to the flattened output matrix
          for (rr = 0; rr < ROWS; rr = rr + 1)
            for (cc = 0; cc < COLS; cc = cc + 1)
              C_out[(rr*COLS+cc)*ACCW +: ACCW] <= acc_wires[rr][cc];
          done <= 1; // Signal that result is ready
          state <= IDLE;
        end
        default: state <= IDLE;
      endcase
    end
  end

endmodule
