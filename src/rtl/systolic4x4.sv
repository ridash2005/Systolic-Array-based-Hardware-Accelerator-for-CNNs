`timescale 1ns/1ps

module Systolic4x4 #(
  parameter int AW   = 8,
  parameter int BW   = 8,
  parameter int ACCW = 32,
  parameter int ROWS = 4,
  parameter int COLS = 4,
  parameter int K    = 4
)(
  input  logic clk,
  input  logic rst_n,
  input  logic start,

  input  logic signed [AW-1:0] A_in [ROWS-1:0][K-1:0],
  input  logic signed [BW-1:0] B_in [K-1:0][COLS-1:0],

  output logic done,
  output logic signed [ACCW-1:0] C_out [ROWS-1:0][COLS-1:0]
);

  // Internal signals
  logic signed [AW-1:0]  A_wires    [ROWS-1:0][COLS-1:0];
  logic signed [BW-1:0]  B_wires    [ROWS-1:0][COLS-1:0];
  logic signed [AW-1:0]  A_outs     [ROWS-1:0][COLS-1:0];
  logic signed [BW-1:0]  B_outs     [ROWS-1:0][COLS-1:0];
  logic signed [ACCW-1:0] acc_wires [ROWS-1:0][COLS-1:0];

  // Shift registers for input skewing
  // A_shift[row][depth]
  logic signed [AW-1:0] A_shift [ROWS-1:0][0:K+COLS-1];
  // B_shift[depth][col]
  logic signed [BW-1:0] B_shift [0:K+ROWS-1][COLS-1:0];

  logic ce_local, load_acc;
  int unsigned cycle_cnt;
  
  typedef enum logic [1:0] {IDLE, LOAD, RUN, FINISH} state_t;
  state_t state;

  // 4x4 array of PEs
  genvar r, c;
  generate
    for (r = 0; r < ROWS; r++) begin : rows
      for (c = 0; c < COLS; c++) begin : cols
        PE_MAC #(.AW(AW), .BW(BW), .ACCW(ACCW)) pe_i (
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
      load_acc <= 0;
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
          load_acc <= 1; // Clear accumulators for the first cycle of RUN
        end

        RUN: begin
          load_acc <= 0;
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

