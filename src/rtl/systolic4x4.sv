`timescale 1ns/1ps

module Systolic4x4 #(
  parameter AW   = 8,
  parameter BW   = 8,
  parameter ACCW = 32,
  parameter ROWS = 2,
  parameter COLS = 2,
  parameter K    = 2
)(
  input  wire clk,
  input  wire rst_n,
  input  wire start,

  // Flattened packed arrays for Yosys compatibility
  input  wire signed [ROWS*K*AW-1:0] A_in_flat,
  input  wire signed [K*COLS*BW-1:0] B_in_flat,

  output reg done,
  output reg [ROWS*COLS*ACCW-1:0] C_out
);

  // Unpack inputs internally
  wire signed [AW-1:0] A_in [0:ROWS-1][0:K-1];
  wire signed [BW-1:0] B_in [0:K-1][0:COLS-1];
  
  // Unpack A_in_flat
  genvar gi, gj;
  generate
    for (gi = 0; gi < ROWS; gi = gi + 1) begin : unpack_a_rows
      for (gj = 0; gj < K; gj = gj + 1) begin : unpack_a_cols
        assign A_in[gi][gj] = A_in_flat[(gi*K + gj)*AW +: AW];
      end
    end
  endgenerate
  
  // Unpack B_in_flat
  generate
    for (gi = 0; gi < K; gi = gi + 1) begin : unpack_b_rows
      for (gj = 0; gj < COLS; gj = gj + 1) begin : unpack_b_cols
        assign B_in[gi][gj] = B_in_flat[(gi*COLS + gj)*BW +: BW];
      end
    end
  endgenerate

  // Internal signals
  wire signed [AW-1:0]  A_wires    [0:ROWS-1][0:COLS-1];
  wire signed [BW-1:0]  B_wires    [0:ROWS-1][0:COLS-1];
  wire signed [AW-1:0]  A_outs     [0:ROWS-1][0:COLS-2];
  wire signed [BW-1:0]  B_outs     [0:ROWS-2][0:COLS-1];
  wire signed [ACCW-1:0] acc_wires [0:ROWS-1][0:COLS-1];

  // Shift registers for input skewing
  reg signed [AW-1:0] A_shift [0:ROWS-1][0:K+ROWS-1];
  reg signed [BW-1:0] B_shift [0:K+COLS-1][0:COLS-1];

  wire ce_local;
  reg [31:0] cycle_cnt;
  
  localparam IDLE   = 2'b00;
  localparam LOAD   = 2'b01;
  localparam RUN    = 2'b10;
  localparam FINISH = 2'b11;
  reg [1:0] state;

  // NxN array of PEs
  genvar r, c;
  generate
    for (r = 0; r < ROWS; r = r + 1) begin : rows
      for (c = 0; c < COLS; c = c + 1) begin : cols
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
            .B_out(),
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
            .A_out(),
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
            .A_out(),
            .B_out(),
            .acc_out(acc_wires[r][c])
          );
        end
      end
    end
  endgenerate

  generate
    for (r = 0; r < ROWS; r = r + 1) begin : conn_rows
      for (c = 0; c < COLS; c = c + 1) begin : conn_cols
        if (c == 0) begin : first_col
          assign A_wires[r][c] = A_shift[r][0];
        end else begin : other_cols
          assign A_wires[r][c] = A_outs[r][c-1];
        end
        if (r == 0) begin : first_row
          assign B_wires[r][c] = B_shift[0][c];
        end else begin : other_rows
          assign B_wires[r][c] = B_outs[r-1][c];
        end
      end
    end
  endgenerate

  assign ce_local = (state == RUN);

  // Controller FSM
  integer i, j, rr, cc, s;
  
  always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      state <= IDLE;
      cycle_cnt <= 0;
      done <= 0;
      C_out <= 0;
      // Reset shift registers
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
            for (i = 0; i < ROWS; i = i + 1) begin
              for (j = 0; j < K; j = j + 1) begin
                A_shift[i][i+j] <= A_in[i][j];
              end
            end
            for (j = 0; j < COLS; j = j + 1) begin
              for (i = 0; i < K; i = i + 1) begin
                B_shift[i+j][j] <= B_in[i][j];
              end
            end
          end
        end

        LOAD: begin
          state <= RUN;
          cycle_cnt <= 0;
        end

        RUN: begin
          cycle_cnt <= cycle_cnt + 1;
          for (rr = 0; rr < ROWS; rr = rr + 1) begin
            for (s = 0; s < K+ROWS-1; s = s + 1)
              A_shift[rr][s] <= A_shift[rr][s+1];
            A_shift[rr][K+ROWS-1] <= 0;
          end
          for (cc = 0; cc < COLS; cc = cc + 1) begin
            for (s = 0; s < K+COLS-1; s = s + 1)
              B_shift[s][cc] <= B_shift[s+1][cc];
            B_shift[K+COLS-1][cc] <= 0;
          end
          if (cycle_cnt >= (K + ROWS + COLS - 1)) begin
            state <= FINISH;
          end
        end

        FINISH: begin
          for (rr = 0; rr < ROWS; rr = rr + 1)
            for (cc = 0; cc < COLS; cc = cc + 1)
              C_out[(rr*COLS+cc)*ACCW +: ACCW] <= acc_wires[rr][cc];
          done <= 1;
          state <= IDLE;
        end
        default: state <= IDLE;
      endcase
    end
  end

endmodule
