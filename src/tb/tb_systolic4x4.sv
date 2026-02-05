`timescale 1ns/1ps
module tb_systolic4x4();

  parameter AW = 8;
  parameter BW = 8;
  parameter ACCW = 32;
  parameter ROWS = 4;
  parameter COLS = 4;

  reg clk;
  reg rst_n;
  reg start;
  wire done;

  reg signed [AW-1:0] A_tile [0:ROWS-1][0:COLS-1];
  reg signed [BW-1:0] B_tile [0:ROWS-1][0:COLS-1];
  wire signed [ACCW-1:0] C_out  [0:ROWS-1][0:COLS-1];

  Systolic4x4 #(.AW(AW), .BW(BW), .ACCW(ACCW), .ROWS(ROWS), .COLS(COLS), .K(4)) dut (
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

  // Golden matrix multiplication function
  function signed [ACCW-1:0] golden_mul_elem;
    input integer r_in;
    input integer c_in;
    integer k_idx;
    reg signed [ACCW-1:0] s_sum;
    begin
      s_sum = 0;
      for (k_idx=0; k_idx<4; k_idx=k_idx+1) 
        s_sum = s_sum + ($signed(A_tile[r_in][k_idx]) * $signed(B_tile[k_idx][c_in]));
      golden_mul_elem = s_sum;
    end
  endfunction

  integer i, j, k, r, c, cyc, errors;
  reg signed [ACCW-1:0] g_val;

  initial begin
    rst_n = 0; start = 0;
    cyc = 0;
    errors = 0;
    #20;
    rst_n = 1;

    // Initialize A_tile
    A_tile[0][0] = 8'sd1;  A_tile[0][1] = 8'sd2;  A_tile[0][2] = 8'sd3;  A_tile[0][3] = 8'sd4;
    A_tile[1][0] = 8'sd0;  A_tile[1][1] = -8'sd1; A_tile[1][2] = 8'sd2;  A_tile[1][3] = 8'sd3;
    A_tile[2][0] = 8'sd2;  A_tile[2][1] = 8'sd2;  A_tile[2][2] = -8'sd1; A_tile[2][3] = 8'sd1;
    A_tile[3][0] = 8'sd4;  A_tile[3][1] = 8'sd0;  A_tile[3][2] = 8'sd1;  A_tile[3][3] = -8'sd2;

    // Initialize B_tile
    B_tile[0][0] = 8'sd1;  B_tile[0][1] = 8'sd0;  B_tile[0][2] = -8'sd1; B_tile[0][3] = 8'sd2;
    B_tile[1][0] = 8'sd2;  B_tile[1][1] = 8'sd1;  B_tile[1][2] = 8'sd0;  B_tile[1][3] = 8'sd0;
    B_tile[2][0] = -8'sd1; B_tile[2][1] = 8'sd2;  B_tile[2][2] = 8'sd1;  B_tile[2][3] = 8'sd1;
    B_tile[3][0] = 8'sd3;  B_tile[3][1] = -8'sd1; B_tile[3][2] = 8'sd2;  B_tile[3][3] = 8'sd0;

    #20;

    $display("A_tile:");
    for (i=0; i<ROWS; i=i+1) begin
      $write("%0d:", i);
      for (j=0; j<COLS; j=j+1) $write(" %0d", A_tile[i][j]);
      $write("\n");
    end
    $display("B_tile:");
    for (i=0; i<ROWS; i=i+1) begin
      $write("%0d:", i);
      for (j=0; j<COLS; j=j+1) $write(" %0d", B_tile[i][j]);
      $write("\n");
    end

    @(posedge clk);
    start = 1;
    @(posedge clk);
    start = 0;

    while (!done) begin
      @(posedge clk);
      cyc = cyc + 1;
      if (cyc % 10 == 0) $display("Cycle %0d...", cyc);

      if (cyc > 200) begin
        $display("Timeout - test did not finish in 200 cycles.");
        $finish;
      end
    end

    #10;
    $display("DUT finished after %0d cycles.", cyc);
    $display("DUT produced C_out:");
    for (r=0; r<ROWS; r=r+1) begin
      $write("C[%0d] : ", r);
      for (c=0; c<COLS; c=c+1) $write("%0d ", $signed(C_out[r][c]));
      $write("\n");
    end

    errors = 0;
    for (r=0; r<ROWS; r=r+1) begin
      for (c=0; c<COLS; c=c+1) begin
        g_val = golden_mul_elem(r,c);
        if ($signed(C_out[r][c]) !== g_val) begin
          $display("ERROR at (%0d,%0d): got %0d expected %0d", r, c, $signed(C_out[r][c]), g_val);
          errors = errors + 1;
        end
      end
    end

    if (errors == 0) $display("TEST PASSED: All elements matched golden.");
    else $display("TEST FAILED: %0d mismatches.", errors);

    $finish;
  end

endmodule
