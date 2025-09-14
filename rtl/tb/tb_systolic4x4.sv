`timescale 1ns/1ps
module tb_systolic4x4();

  parameter AW = 8;
  parameter BW = 8;
  parameter ACCW = 32;
  parameter ROWS = 4;
  parameter COLS = 4;

  logic clk;
  logic rst_n;
  logic start;
  logic done;

  logic signed [AW-1:0] A_tile [0:ROWS-1][0:COLS-1];
  logic signed [BW-1:0] B_tile [0:ROWS-1][0:COLS-1];
  logic signed [ACCW-1:0] C_out  [0:ROWS-1][0:COLS-1];

  Systolic4x4 #(.AW(AW), .BW(BW), .ACCW(ACCW)) dut (
    .clk(clk),
    .rst_n(rst_n),
    .start(start),
    .A_in(A_tile),
    .B_in(B_tile),
    .done(done),
    .C_out(C_out)
  );

  // 100 MHz clock generation
  initial clk = 0;
  always #5 clk = ~clk;

  // Initialize input matrices
  task init_matrices();
    A_tile[0] = '{ 8'sd1,  8'sd2,  8'sd3,  8'sd4 };
    A_tile[1] = '{ 8'sd0, -8'sd1,  8'sd2,  8'sd3 };
    A_tile[2] = '{ 8'sd2,  8'sd2, -8'sd1,  8'sd1 };
    A_tile[3] = '{ 8'sd4,  8'sd0,  8'sd1, -8'sd2 };

    B_tile[0] = '{ 8'sd1,  8'sd0, -8'sd1, 8'sd2 };
    B_tile[1] = '{ 8'sd2,  8'sd1,  8'sd0, 8'sd0 };
    B_tile[2] = '{-8'sd1,  8'sd2,  8'sd1, 8'sd1 };
    B_tile[3] = '{ 8'sd3, -8'sd1,  8'sd2, 8'sd0 };
  endtask

  // Golden matrix multiplication for verification
  function automatic signed [ACCW-1:0] golden_mul_elem(int r, int c);
    signed [ACCW-1:0] s = 0;
    for (int k=0; k<4; k++) s += $signed(A_tile[r][k]) * $signed(B_tile[k][c]);
    return s;
  endfunction

  initial begin
    rst_n = 0; start = 0;
    #20;
    rst_n = 1;
    init_matrices();
    #20;

    $display("A_tile:");
    for (int i=0; i<ROWS; i++) $display("%0d: %p", i, A_tile[i]);
    $display("B_tile:");
    for (int j=0; j<COLS; j++) $display("%0d: %p", j, B_tile[j]);

    @(posedge clk);
    start = 1;
    @(posedge clk);
    start = 0;

    int cyc = 0;
    while (!done) begin
      @(posedge clk);
      cyc++;

      $display("Cycle %0d:", cyc);
      for (int r=0; r<ROWS; r++) begin
        $write(" A_row%0d |", r);
        for (int c=0; c<COLS; c++)
          $write(" %0d", $signed($signed($cast(signed'(dut.rows[r].cols[c].pe_i.A_in))));
        $write("\n");
      end

      for (int r=0; r<ROWS; r++) begin
        $write(" ACC_row%0d |", r);
        for (int c=0; c<COLS; c++)
          $write(" %0d", $signed($cast(signed'(dut.rows[r].cols[c].pe_i.acc_out))));
        $write("\n");
      end

      if (cyc > 200) begin
        $display("Timeout - test did not finish in 200 cycles.");
        $finish;
      end
    end

    #10;
    $display("DUT produced C_out:");
    for (int r=0; r<ROWS; r++) begin
      $write("C[%0d] : ", r);
      for (int c=0; c<COLS; c++) $write("%0d ", C_out[r][c]);
      $write("\n");
    end

    int errors = 0;
    for (int r=0; r<ROWS; r++) begin
      for (int c=0; c<COLS; c++) begin
        signed [ACCW-1:0] g = golden_mul_elem(r,c);
        if (C_out[r][c] !== g) begin
          $display("ERROR at (%0d,%0d): got %0d expected %0d", r, c, C_out[r][c], g);
          errors++;
        end
      end
    end

    if (errors == 0) $display("TEST PASSED: All elements matched golden.");
    else $display("TEST FAILED: %0d mismatches.", errors);

    $finish;
  end

endmodule
