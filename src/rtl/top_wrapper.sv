`timescale 1ns/1ps

// Top-Level Wrapper for the ASIC/Physical Design flow.
// This module provides a clean, serial interface to the hardware.
// Using a serial interface significantly reduces the number of physical pins (I/O) 
// required on the chip, making it easier to manufacture.
module top_wrapper #(
  parameter AW = 8,      // Input A bit-width
  parameter BW = 8,      // Input B bit-width
  parameter ACCW = 32,    // Accumulator bit-width
  parameter ROWS = 2,     // Number of rows in the systolic grid
  parameter COLS = 2,     // Number of columns in the systolic grid
  parameter K = 2         // Matrix multiplication inner dimension
)(
  input  wire clk,         // Global system clock
  input  wire rst_n,       // Global asynchronous active-low reset
  input  wire start,       // Trigger signal to begin processing

  // --- Serialized Inputs for Matrix A ---
  input  wire A_in_serial_data, // Single-wire data stream for Matrix A
  input  wire A_in_serial_clk,  // Clock associated with Matrix A data
  input  wire A_in_frame_sync,  // Pulse to indicate start of a bit-stream frame

  // --- Serialized Inputs for Matrix B ---
  input  wire B_in_serial_data, // Single-wire data stream for Matrix B
  input  wire B_in_serial_clk,  // Clock associated with Matrix B data
  input  wire B_in_frame_sync,  // Pulse to indicate start of a bit-stream frame

  // --- Serialized Output for Matrix C ---
  output wire C_out_serial_data, // Single-wire output stream for results
  output wire C_out_serial_clk,  // Clock for result synchronization
  output wire C_out_frame_sync,  // Pulse indicating result frame boundary

  // --- Control Outputs ---
  output wire done               // High when the entire process is complete
);

  // This wrapper instantiates the 'Systolic4x4_serial_io' module.
  // The 'top_wrapper' is used as the "Top" module by the ASIC flow (LibreLane/OpenLane).
  
  wire C_out_serial_clk_internal;

  Systolic4x4_serial_io #(
    .AW(AW), 
    .BW(BW), 
    .ACCW(ACCW), 
    .ROWS(ROWS), 
    .COLS(COLS), 
    .K(K)
  ) core_inst (
    .clk(clk),
    .rst_n(rst_n),
    .start(start),
    // Connect serial signals directly to the inner Serial-IO handler
    .A_in_serial_data(A_in_serial_data),
    .A_in_serial_clk(A_in_serial_clk),
    .A_in_frame_sync(A_in_frame_sync),
    .B_in_serial_data(B_in_serial_data),
    .B_in_serial_clk(B_in_serial_clk),
    .B_in_frame_sync(B_in_frame_sync),
    .C_out_serial_data(C_out_serial_data),
    .C_out_serial_clk(C_out_serial_clk_internal),
    .C_out_frame_sync(C_out_frame_sync),
    .done(done)
  );

  // We removed the manual 'sky130_fd_sc_hd__clkbuf_4' instantiation.
  // Manual clock buffers can confuse CTS (Clock Tree Synthesis) tools, causing 
  // them to skip the main clock net. We now let CTS handle the entire clock tree 
  // automatically. The output port is simply tied to the internal clock net.
  assign C_out_serial_clk = C_out_serial_clk_internal;

endmodule
