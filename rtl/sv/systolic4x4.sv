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

  logic signed [AW-1:0] A_shift [ROWS-1:0][0:K+COLS-1];
  logic signed [BW-1:0] B_shift [0:K+ROWS-1][COLS-1:0];

  logic ce_local, load_acc;
  int unsigned cycle_cnt;
  logic running;

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

  // Task to load shift buffers with skewed tile data
  task automatic load_shift_buffers();
    int i,j;
    for (i=0; i<ROWS; i++) begin
      for (j=0; j<K+COLS; j++) A_shift[i][j] = '0;
    end
    for (i=0; i<K+ROWS; i++) begin
      for (j=0; j<COLS; j++) B_shift[i][j] = '0;
    end
    for (i=0; i<ROWS; i++) begin
      for (j=0; j<K; j++) begin
        A_shift[i][i+j] = A_in[i][j]; // skew by row index
      end
    end
    for (j=0; j<COLS; j++) begin
      for (i=0; i<K; i++) begin
        B_shift[i+j][j] = B_in[i][j]; // skew by column index
      end
    end
  endtask

  assign ce_local = running;

  // Controller FSM
  always_ff @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      running <= 0;
      cycle_cnt <= 0;
      load_acc <= 0;
      done <= 0;
      for (int rr=0; rr<ROWS; rr++)
        for (int cc=0; cc<COLS; cc++)
          C_out[rr][cc] <= '0;
    end else begin
      if (start && !running) begin
        load_shift_buffers();
        running <= 1;
        cycle_cnt <= 0;
        load_acc <= 1; // clear accumulators this cycle
        done <= 0;
      end else if (running) begin
        load_acc <= 0;

        // Shift streaming buffers down
        for (int rr=0; rr<ROWS; rr++) begin
          for (int s=0; s<K+COLS-1; s++)
            A_shift[rr][s] <= A_shift[rr][s+1];
        end
        for (int cc=0; cc<COLS; cc++) begin
          for (int s=0; s<K+ROWS-1; s++)
            B_shift[s][cc] <= B_shift[s+1][cc];
        end

        cycle_cnt <= cycle_cnt + 1;

        if (cycle_cnt >= (K + ROWS + COLS - 2)) begin
          // Capture final accumulated results
          for (int rr=0; rr<ROWS; rr++)
            for (int cc=0; cc<COLS; cc++)
              C_out[rr][cc] <= acc_wires[rr][cc];
          running <= 0;
          done <= 1;
        end else begin
          done <= 0;
        end
      end else begin
        load_acc <= 0;
        done <= 0;
      end
    end
  end

endmodule
