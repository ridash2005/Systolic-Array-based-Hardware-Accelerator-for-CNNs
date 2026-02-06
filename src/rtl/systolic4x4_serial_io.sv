`timescale 1ns/1ps

// Systolic Array with Serial I/O Interface
// This module wraps the parallel systolic core with serial-to-parallel (deserializer) 
// and parallel-to-serial (serializer) modules. This allows the design to communicate 
// using very few physical pins while still processing data in wide parallel words internally.
module Systolic4x4_serial_io #(
  parameter AW = 8,      // Input A bit-width
  parameter BW = 8,      // Input B bit-width
  parameter ACCW = 32,    // Accumulator bit-width
  parameter ROWS = 2,     // Rows in systolic array
  parameter COLS = 2,     // Columns in systolic array
  parameter K = 2         // Matrix inner dimension
)(
  input  wire clk,         // Main system clock
  input  wire rst_n,       // Main reset
  input  wire start,       // Pulse to begin the overall operation

  // --- Serial Inputs for Matrix A ---
  input  wire A_in_serial_data, // Bit stream for Matrix A
  input  wire A_in_serial_clk,  // Data clock for Matrix A
  input  wire A_in_frame_sync,  // Frame pulse for Matrix A

  // --- Serial Inputs for Matrix B ---
  input  wire B_in_serial_data, // Bit stream for Matrix B
  input  wire B_in_serial_clk,  // Data clock for Matrix B
  input  wire B_in_frame_sync,  // Frame pulse for Matrix B

  // --- Serialized Output for Matrix C ---
  output wire C_out_serial_data, // Bit stream for the results
  output wire C_out_serial_clk,  // Clock for result sync
  output wire C_out_frame_sync,  // Frame pulse for results

  // --- Control Outputs ---
  output wire done               // High when all results have been sent out
);

  // --- Bit-Width Calculations ---
  // Total bits needed to represent entire input/output matrix tiles
  localparam A_WIDTH = ROWS * K * AW;        // Total bits for Matrix A
  localparam B_WIDTH = K * COLS * BW;        // Total bits for Matrix B
  localparam C_WIDTH = ROWS * COLS * ACCW;   // Total bits for Matrix C (results)

  // Internal parallel buses (bridging serial and systolic core)
  wire [A_WIDTH-1:0] A_in_flat;
  wire [B_WIDTH-1:0] B_in_flat;
  wire [C_WIDTH-1:0] C_out_flat;

  // Signal from deserializers indicating they have finished capturing a full matrix
  wire A_in_valid, B_in_valid;

  // --- Input Path: Deserialization ---

  // Reconstruct Matrix A from its serial stream
  deserializer #(.WIDTH(A_WIDTH)) deserializer_A (
    .rst_n(rst_n),
    .serial_clk(A_in_serial_clk),
    .serial_data(A_in_serial_data),
    .frame_sync(A_in_frame_sync),
    .parallel_data(A_in_flat),
    .data_valid(A_in_valid)
  );

  // Reconstruct Matrix B from its serial stream
  deserializer #(.WIDTH(B_WIDTH)) deserializer_B (
    .rst_n(rst_n),
    .serial_clk(B_in_serial_clk),
    .serial_data(B_in_serial_data),
    .frame_sync(B_in_frame_sync),
    .parallel_data(B_in_flat),
    .data_valid(B_in_valid)
  );

  // --- Clock Domain Crossing (CDC) Synchronization ---
  // The 'valid' signals come from fast serial clocks (50MHz) and must be sampled
  // by the slower system clock (10MHz). We use toggle-based synchronizers.

  // Sync for Matrix A
  reg a_toggle;
  always @(posedge A_in_serial_clk or negedge rst_n) begin
    if (!rst_n) a_toggle <= 0;
    else if (A_in_valid) a_toggle <= ~a_toggle;
  end

  reg [2:0] a_sync; // 3-stage synchronizer
  always @(posedge clk or negedge rst_n) begin
    if (!rst_n) a_sync <= 0;
    else a_sync <= {a_sync[1:0], a_toggle};
  end
  wire A_in_valid_sync = a_sync[2] ^ a_sync[1]; // Detect transition (pulse)

  // Sync for Matrix B
  reg b_toggle;
  always @(posedge B_in_serial_clk or negedge rst_n) begin
    if (!rst_n) b_toggle <= 0;
    else if (B_in_valid) b_toggle <= ~b_toggle;
  end

  reg [2:0] b_sync; 
  always @(posedge clk or negedge rst_n) begin
    if (!rst_n) b_sync <= 0;
    else b_sync <= {b_sync[1:0], b_toggle};
  end
  wire B_in_valid_sync = b_sync[2] ^ b_sync[1];

  // --- Central Control Logic ---
  reg systolic_start;      // Signal to trigger the inner core
  wire systolic_done;      // Signal from inner core that it's finished
  reg calculation_running; // Flag: computation is in progress
  reg A_ready, B_ready;    // Flags: local copy of matrix data is complete

  always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
      systolic_start <= 0;
      calculation_running <= 0;
      A_ready <= 0;
      B_ready <= 0;
    end else begin
      // Capture the synchronized 'valid' pulses
      if (A_in_valid_sync) A_ready <= 1;
      if (B_in_valid_sync) B_ready <= 1;

      // When both are ready and user says 'start', begin the core computation
      if (start && A_ready && B_ready && !calculation_running) begin
        systolic_start <= 1;       // Trigger the core
        calculation_running <= 1;  // Update state
        A_ready <= 0;              // Reset flags for next tile
        B_ready <= 0;
      end else begin
        systolic_start <= 0;       // Ensure the trigger is just a pulse
        if (systolic_done)
          calculation_running <= 0;
      end
    end
  end

  // --- The Core: Systolic Array ---
  Systolic4x4 #(
    .AW(AW), .BW(BW), .ACCW(ACCW), .ROWS(ROWS), .COLS(COLS), .K(K)
  ) systolic_inst (
    .clk(clk),
    .rst_n(rst_n),
    .start(systolic_start),
    .A_in_flat(A_in_flat), // Note: Data is stable because we waited for sync
    .B_in_flat(B_in_flat),
    .done(systolic_done),
    .C_out(C_out_flat)
  );

  // --- Output Path: Serialization ---
  reg done_delayed;
  always @(posedge clk or negedge rst_n) begin
    if (!rst_n) done_delayed <= 0;
    else done_delayed <= systolic_done;
  end

  // Convert the wide result matrix back to a serial stream (runs on clk domain)
  /* verilator lint_off PINCONNECTEMPTY */
  serializer #(.WIDTH(C_WIDTH)) serializer_C (
    .rst_n(rst_n),
    .serial_clk(clk),
    .parallel_data(C_out_flat),
    .frame_sync(done_delayed),
    .serial_data(C_out_serial_data),
    .busy()
  );
  /* verilator lint_on PINCONNECTEMPTY */

  // --- Assign Final I/O ---
  assign done = done_delayed;         // Signal to user that core is done
  assign C_out_serial_clk = clk;      // Clock result out using system clock
  assign C_out_frame_sync = done_delayed; // Pulse at the start of result data

endmodule
