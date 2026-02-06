`timescale 1ns/1ps

// Testbench for the Systolic Array (Parallel Version)
// This testbench generates random input matrices, runs them through the DUT,
// and compares the results against a "golden" (software-like) calculation.
module tb_systolic4x4();

  // --- Simulation Parameters ---
  parameter AW = 8;      // Input A bit-width (INT8)
  parameter BW = 8;      // Input B bit-width (INT8)
  parameter ACCW = 32;    // Wide accumulator to prevent overflow
  parameter ROWS = 8;     // Test with an 8x8 array
  parameter COLS = 8;
  parameter K = 8;        // Inner dimension for matrix multiplication

  // --- Clock and Control Signals ---
  reg clk;         // Simulation clock
  reg rst_n;       // Active-low reset
  reg start;       // Trigger signal for the DUT
  wire done;        // Status signal from the DUT

  // --- Data Storage ---
  // 2D arrays to hold matrix tiles for readable code
  reg signed [AW-1:0] A_tile [0:ROWS-1][0:K-1];
  reg signed [BW-1:0] B_tile [0:K-1][0:COLS-1];
  
  // Flattened wires to connect to the DUT's port interface
  wire [ROWS*COLS*ACCW-1:0] C_out_flat;
  reg signed [ACCW-1:0] C_out [0:ROWS-1][0:COLS-1]; // Unpacked results

  // Flattened input registers
  reg [ROWS*K*AW-1:0] A_flat;
  reg [K*COLS*BW-1:0] B_flat;

  // Combining 2D matrix A into a single flat vector for the DUT
  always @* begin
    for(int i=0; i<ROWS; i++) begin
      for(int j=0; j<K; j++) begin
        A_flat[(i*K+j)*AW +: AW] = A_tile[i][j];
      end
    end
    // Combining 2D matrix B into a single flat vector for the DUT
    for(int i=0; i<K; i++) begin
      for(int j=0; j<COLS; j++) begin
        B_flat[(i*COLS+j)*BW +: BW] = B_tile[i][j];
      end
    end
  end

  // Unpacking the DUT's flat output vector back into a readable 2D matrix C
  always @* begin
    for(int r=0; r<ROWS; r++) begin
      for(int c=0; c<COLS; c++) begin
        C_out[r][c] = C_out_flat[(r*COLS + c)*ACCW +: ACCW];
      end
    end
  end

  // --- Device Under Test (DUT) Instantiation ---
  Systolic4x4 #(.AW(AW), .BW(BW), .ACCW(ACCW), .ROWS(ROWS), .COLS(COLS), .K(K)) dut (
    .clk(clk),
    .rst_n(rst_n),
    .start(start),
    .A_in_flat(A_flat),
    .B_in_flat(B_flat),
    .done(done),
    .C_out(C_out_flat)
  );

  // --- Clock Generation ---
  // Creates a 100 MHz clock (10ns period: 5ns high, 5ns low)
  initial clk = 0;
  always #5 clk = ~clk;

  // --- Golden Model (Reference) ---
  // This function performs matrix multiplication in standard software style.
  // We use it to verify that the hardware grid is calculating the exact same thing.
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

  // --- Main Test Sequence ---
  integer i, j, k_idx, r, c, cyc, errors;
  reg signed [ACCW-1:0] g_val;

  initial begin
    // Setup initial states
    rst_n = 0; start = 0;
    cyc = 0;
    errors = 0;
    
    // Initialize input matrices with random INT8 values
    for (i=0; i<ROWS; i=i+1) begin
      for (j=0; j<K; j=j+1) begin
         A_tile[i][j] = $random % 128; 
      end
    end

    for (i=0; i<K; i=i+1) begin
      for (j=0; j<COLS; j=j+1) begin
         B_tile[i][j] = $random % 128;
      end
    end

    // Hold reset for a few cycles
    #20;
    rst_n = 1;
    #20;

    $display("--- Starting Systolic Array Test ---");
    $display("Configuration: %0dx%0d array, K=%0d", ROWS, COLS, K);

    // Trigger the computation
    @(posedge clk);
    start = 1;
    @(posedge clk);
    start = 0;

    // Monitor the 'done' signal while counting cycles
    while (!done) begin
      @(posedge clk);
      cyc = cyc + 1;
      if (cyc % 50 == 0) $display("Cycle %0d...", cyc);

      // Safety: stop if simulation hangs
      if (cyc > 2000) begin
        $display("TIMEOUT: Hardware did not finish.");
        $finish;
      end
    end

    #10;
    $display("Computation finished in %0d cycles.", cyc);

    // --- Validation Phase ---
    // Compare every element of the hardware output C against the golden model
    errors = 0;
    for (r=0; r<ROWS; r=r+1) begin
      for (c=0; c<COLS; c=c+1) begin
        g_val = golden_mul_elem(r,c);
        if ($signed(C_out[r][c]) !== g_val) begin
          $display("MISMATCH at [%0d,%0d]: HW=%0d, Golden=%0d", r, c, $signed(C_out[r][c]), g_val);
          errors = errors + 1;
        end
      end
    end

    // Final report
    if (errors == 0) 
      $display("SUCCESS: All %0d results match!", ROWS*COLS);
    else 
      $display("FAILURE: Found %0d mismatches.", errors);

    $finish; // End simulation
  end

endmodule
