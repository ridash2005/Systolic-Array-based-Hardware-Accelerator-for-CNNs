`timescale 1ns/1ps

module Systolic4x4 #(
  parameter int AW   = 4,
  parameter int BW   = 4,
  parameter int ACCW = 16,
  parameter int ROWS = 2,
  parameter int COLS = 2,
  parameter int K    = 2
)(
  input  logic clk,
  input  logic rst_n,
  input  logic start,

  input  logic signed [AW-1:0] A_in [ROWS-1:0][K-1:0],
  input  logic signed [BW-1:0] B_in [K-1:0][COLS-1:0],

  output logic done,
  output logic signed [ACCW-1:0] C_out [ROWS-1:0][COLS-1:0]
);

  // Parameter Validation
  initial begin
    if (ACCW < (AW + BW + $clog2(K))) begin
      $warning("PARAMETER WARNING: ACCW (%0d) may be too small for AW(%0d)+BW(%0d) with K=%0d. Potential overflow!", ACCW, AW, BW, K);
    end
  end

  // Internal signals
  logic signed [AW-1:0]  A_wires    [ROWS-1:0][COLS-1:0];
  logic signed [BW-1:0]  B_wires    [ROWS-1:0][COLS-1:0];
  logic signed [AW-1:0]  A_outs     [ROWS-1:0][COLS-2:0];
  logic signed [BW-1:0]  B_outs     [ROWS-2:0][COLS-1:0];
  logic signed [ACCW-1:0] acc_wires [ROWS-1:0][COLS-1:0];

  // Shift registers for input skewing
  // A_shift[row][depth]
  logic signed [AW-1:0] A_shift [ROWS-1:0][0:K+COLS-1];
  // B_shift[depth][col]
  logic signed [BW-1:0] B_shift [0:K+ROWS-1][COLS-1:0];

  logic ce_local;
  int unsigned cycle_cnt;
  
  typedef enum logic [1:0] {IDLE, LOAD, RUN, FINISH} state_t;
  state_t state;

  // 4x4 array of PEs
  genvar r, c;
  generate
    for (r = 0; r < ROWS; r++) begin : rows
      for (c = 0; c < COLS; c++) begin : cols
        if (r < ROWS-1 && c < COLS-1) begin : body_pe
           PE_MAC #(.AW(AW), .BW(BW), .ACCW(ACCW)) pe_i (
            .clk(clk),
            .rst_n(rst_n),
            .ce(ce_local),
            .A_in(A_wires[r][c]),
            .B_in(B_wires[r][c]),
            .load_acc(cycle_cnt == (r + c)),
            .A_out(A_outs[r][c]),
            .B_out(B_outs[r][c]),
            .acc_out(acc_wires[r][c])
          );
        end else if (r == ROWS-1 && c < COLS-1) begin : bottom_edge_pe
           PE_MAC #(.AW(AW), .BW(BW), .ACCW(ACCW)) pe_i (
            .clk(clk),
            .rst_n(rst_n),
            .ce(ce_local),
            .A_in(A_wires[r][c]),
            .B_in(B_wires[r][c]),
            .load_acc(cycle_cnt == (r + c)),
            .A_out(A_outs[r][c]),
            .B_out(), // Unused vertical output
            .acc_out(acc_wires[r][c])
          );
        end else if (r < ROWS-1 && c == COLS-1) begin : right_edge_pe
           PE_MAC #(.AW(AW), .BW(BW), .ACCW(ACCW)) pe_i (
            .clk(clk),
            .rst_n(rst_n),
            .ce(ce_local),
            .A_in(A_wires[r][c]),
            .B_in(B_wires[r][c]),
            .load_acc(cycle_cnt == (r + c)),
            .A_out(), // Unused horizontal output
            .B_out(B_outs[r][c]),
            .acc_out(acc_wires[r][c])
          );
        end else begin : corner_pe
           PE_MAC #(.AW(AW), .BW(BW), .ACCW(ACCW)) pe_i (
            .clk(clk),
            .rst_n(rst_n),
            .ce(ce_local),
            .A_in(A_wires[r][c]),
            .B_in(B_wires[r][c]),
            .load_acc(cycle_cnt == (r + c)),
            .A_out(), // Unused
            .B_out(), // Unused
            .acc_out(acc_wires[r][c])
          );
        end
      end
    end
  endgenerate

  // Connect neighbor chaining in systolic array
  generate
    for (r=0; r<ROWS; r++) begin : conn_rows
      for (c=0; c<COLS; c++) begin : conn_cols
        assign A_wires[r][c] = (c == 0) ? A_shift[r][0] : A_outs[r][c-1];
        assign B_wires[r][c] = (r == 0) ? B_shift[0][c] : B_outs[r-1][c];
      end
    end
  endgenerate

  assign ce_local = (state == RUN);

  // Controller FSM
  always_ff @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      state <= IDLE;
      cycle_cnt <= 0;
      cycle_cnt <= 0;
      done <= 0;
      
      // Reset shift registers
      for (int i=0; i<ROWS; i++) 
        for (int j=0; j<K+COLS; j++) A_shift[i][j] <= '0;
      for (int i=0; i<K+ROWS; i++)
        for (int j=0; j<COLS; j++) B_shift[i][j] <= '0;
      
      // Reset outputs
      for (int rr=0; rr<ROWS; rr++)
        for (int cc=0; cc<COLS; cc++)
          C_out[rr][cc] <= '0;
          
    end else begin
      case (state)
        IDLE: begin
          done <= 0;
          if (start) begin
            state <= LOAD;
            // Pre-load shifting buffers with skewed data
            for (int i=0; i<ROWS; i++) begin
              for (int j=0; j<K; j++) begin
                A_shift[i][i+j] <= A_in[i][j];
              end
            end
            for (int j=0; j<COLS; j++) begin
              for (int i=0; i<K; i++) begin
                B_shift[i+j][j] <= B_in[i][j];
              end
            end
          end
        end

        LOAD: begin
          state <= RUN;
          cycle_cnt <= 0;
          
          // Clear inputs to avoid garbage
          for (int i=0; i<ROWS; i++) 
            for (int j=0; j<K+COLS; j++) A_shift[i][j] <= '0;
          for (int i=0; i<K+ROWS; i++)
            for (int j=0; j<COLS; j++) B_shift[i][j] <= '0;
        end

        RUN: begin
          cycle_cnt <= cycle_cnt + 1;

          // Shift streaming buffers
          for (int rr=0; rr<ROWS; rr++) begin
            for (int s=0; s<K+COLS-1; s++)
              A_shift[rr][s] <= A_shift[rr][s+1];
            A_shift[rr][K+COLS-1] <= '0;
          end
          for (int cc=0; cc<COLS; cc++) begin
            for (int s=0; s<K+ROWS-1; s++)
              B_shift[s][cc] <= B_shift[s+1][cc];
            B_shift[K+ROWS-1][cc] <= '0;
          end

          // Stop when last result has updated acc_reg
          // Latency = K (elements) + (ROWS-1) (skew) + (COLS-1) (prop) + 2 (PE pipeline)
          if (cycle_cnt >= (K + ROWS + COLS - 1)) begin
            state <= FINISH;
          end
        end

        FINISH: begin
          // Capture results
          for (int rr=0; rr<ROWS; rr++)
            for (int cc=0; cc<COLS; cc++)
              C_out[rr][cc] <= acc_wires[rr][cc];
          done <= 1;
          state <= IDLE;
        end

        default: state <= IDLE;
      endcase
    end
  end

endmodule

