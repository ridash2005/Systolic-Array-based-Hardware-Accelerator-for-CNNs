`timescale 1ns/1ps
module tb_systolic4x4();

  // Industry-grade parameters
  // INT8 Quantization: 8-bit weights and activations
  parameter AW = 8;
  parameter BW = 8;
  // 32-bit Accumulator to prevent overflow during MAC operations
  parameter ACCW = 32;
  // Array Size: 8x8 (Typical small block for inference engines, scalable to 16x16 or 32x32)
  parameter ROWS = 8;
  parameter COLS = 8;
  parameter K = 8; // Inner dimension

  reg clk;
  reg rst_n;
  reg start;
  wire done;

  reg signed [AW-1:0] A_tile [0:ROWS-1][0:K-1];
  reg signed [BW-1:0] B_tile [0:K-1][0:COLS-1];
  wire [ROWS*COLS*ACCW-1:0] C_out_flat;
  reg signed [ACCW-1:0] C_out [0:ROWS-1][0:COLS-1];

  // Flatten signals for DUT
  reg [ROWS*K*AW-1:0] A_flat;
  reg [K*COLS*BW-1:0] B_flat;

  always @* begin
    for(int i=0; i<ROWS; i++) begin
      for(int j=0; j<K; j++) begin
        A_flat[(i*K+j)*AW +: AW] = A_tile[i][j];
      end
    end
    for(int i=0; i<K; i++) begin
      for(int j=0; j<COLS; j++) begin
        B_flat[(i*COLS+j)*BW +: BW] = B_tile[i][j];
      end
    end
  end

  always @* begin
    for(int r=0; r<ROWS; r++) begin
      for(int c=0; c<COLS; c++) begin
        C_out[r][c] = C_out_flat[(r*COLS + c)*ACCW +: ACCW];
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
    // Using relatively small values to avoid overflow if ACCW was small, 
    // but with 32-bit ACCW and 8-bit inputs, overflow is impossible for K=8.
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

    $display("Test Configuration:");
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
      if (cyc % 50 == 0) $display("Cycle %0d...", cyc);

      if (cyc > 2000) begin
        $display("Timeout - test did not finish in 2000 cycles.");
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

    if (errors == 0) $display("TEST PASSED: All %0d elements matched golden.", ROWS*COLS);
    else $display("TEST FAILED: %0d mismatches.", errors);

    $finish;
  end

endmodule
