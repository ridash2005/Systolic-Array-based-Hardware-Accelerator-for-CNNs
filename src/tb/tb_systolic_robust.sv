`timescale 1ns/1ps
module tb_systolic_robust();

  // Robustness Parameters: Uneven dimensions
  parameter AW = 8;
  parameter BW = 8;
  parameter ACCW = 32;
  
  // Prime number dimensions to test indexing/boundary logic stress
  parameter ROWS = 9;
  parameter COLS = 7;
  parameter K = 11;

  reg clk;
  reg rst_n;
  reg start;
  wire done;

  reg signed [AW-1:0] A_tile [0:ROWS-1][0:K-1];
  reg signed [BW-1:0] B_tile [0:K-1][0:COLS-1];
  wire [ROWS*COLS*ACCW-1:0] C_out_flat;
  logic signed [ACCW-1:0] C_out [0:ROWS-1][0:COLS-1];

  // Flatten signals for DUT
  reg [ROWS*K*AW-1:0] A_flat;
  reg [K*COLS*BW-1:0] B_flat;

  integer idx_r, idx_c, idx_k;
  always @* begin
    for(idx_r=0; idx_r<ROWS; idx_r=idx_r+1) begin
      for(idx_k=0; idx_k<K; idx_k=idx_k+1) begin
        A_flat[(idx_r*K+idx_k)*AW +: AW] = A_tile[idx_r][idx_k];
      end
    end
    for(idx_k=0; idx_k<K; idx_k=idx_k+1) begin
      for(idx_c=0; idx_c<COLS; idx_c=idx_c+1) begin
        B_flat[(idx_k*COLS+idx_c)*BW +: BW] = B_tile[idx_k][idx_c];
      end
    end
    // Unpack C_out for verification
    for(idx_r=0; idx_r<ROWS; idx_r=idx_r+1) begin
      for(idx_c=0; idx_c<COLS; idx_c=idx_c+1) begin
        C_out[idx_r][idx_c] = C_out_flat[(idx_r*COLS + idx_c)*ACCW +: ACCW];
      end
    end
  end

  Systolic4x4 #(.AW(AW), .BW(BW), .ACCW(ACCW), .ROWS(ROWS), .COLS(COLS), .K(K)) dut (
    .clk(clk),
    .rst_n(rst_n),
    .start(start),
    .A_in_flat(A_flat),
    .B_in_flat(B_flat),
    .done(done),
    .C_out(C_out_flat)
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
      for (k_idx=0; k_idx<K; k_idx=k_idx+1) 
        s_sum = s_sum + ($signed(A_tile[r_in][k_idx]) * $signed(B_tile[k_idx][c_in]));
      golden_mul_elem = s_sum;
    end
  endfunction

  integer i, j, k_idx, r, c, cyc, errors;
  reg signed [ACCW-1:0] g_val;

  initial begin
    rst_n = 0; start = 0;
    cyc = 0;
    errors = 0;
    
    // Initialize matrices with random values
    for (i=0; i<ROWS; i=i+1) begin
      for (j=0; j<K; j=j+1) begin
         A_tile[i][j] = $random % 128; // Random INT8
      end
    end

    for (i=0; i<K; i=i+1) begin
      for (j=0; j<COLS; j=j+1) begin
         B_tile[i][j] = $random % 128; // Random INT8
      end
    end

    #20;
    rst_n = 1;

    #20;

    $display("Test Configuration: Robustness Check");
    $display("  Array Size: %0dx%0d", ROWS, COLS);
    $display("  Inner Dim (K): %0d", K);
    $display("  Bit Widths: A=%0d, B=%0d, ACC=%0d", AW, BW, ACCW);

    @(posedge clk);
    start = 1;
    @(posedge clk);
    start = 0;

    while (!done) begin
      @(posedge clk);
      cyc = cyc + 1;
      if (cyc > 5000) begin
        $display("Timeout - test did not finish in 5000 cycles.");
        $finish;
      end
    end

    #10;
    $display("DUT finished after %0d cycles.", cyc);

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

    if (errors == 0) $display("ROBUSTNESS TEST PASSED: All %0d elements matched golden.", ROWS*COLS);
    else $display("ROBUSTNESS TEST FAILED: %0d mismatches.", errors);

    $finish;
  end

endmodule
