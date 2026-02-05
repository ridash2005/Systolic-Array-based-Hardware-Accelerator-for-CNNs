`timescale 1ns/1ps

import uvm_pkg::*;
`include "uvm_macros.svh"
import serial_agent_pkg::*;
import env_pkg::*;
`include "test_lib.sv"
`include "serial_if.sv"

module top_tb;

  logic clk;
  logic rst_n;
  logic start;
  logic done;

  // Interfaces
  serial_if intf_a(clk, rst_n);
  serial_if intf_b(clk, rst_n);
  serial_if intf_c(clk, rst_n);

  // Clock Generation
  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

  // Reset & Start
  initial begin
    rst_n = 0;
    start = 0;
    #100;
    rst_n = 1;
    #100;
    start = 1;
  end

  // DUT Instantiation
  top_wrapper #(
    .AW(4), .BW(4), .ACCW(16), .ROWS(2), .COLS(2), .K(2)
  ) dut (
    .clk(clk),
    .rst_n(rst_n),
    .start(start),
    
    // A
    .A_in_serial_data(intf_a.serial_data),
    .A_in_serial_clk (intf_a.serial_clk),
    .A_in_frame_sync (intf_a.frame_sync),
    
    // B
    .B_in_serial_data(intf_b.serial_data),
    .B_in_serial_clk (intf_b.serial_clk),
    .B_in_frame_sync (intf_b.frame_sync),
    
    // C
    .C_out_serial_data(intf_c.serial_data),
    .C_out_serial_clk (intf_c.serial_clk),
    .C_out_frame_sync (intf_c.frame_sync),
    
    .done(done)
  );

  initial begin
    uvm_config_db#(virtual serial_if)::set(null, "uvm_test_top", "vif_a", intf_a);
    uvm_config_db#(virtual serial_if)::set(null, "uvm_test_top", "vif_b", intf_b);
    uvm_config_db#(virtual serial_if)::set(null, "uvm_test_top", "vif_c", intf_c);
    
    // Waveform Dump
    $dumpfile("dump.vcd");
    $dumpvars(0, top_tb);
    
    run_test("random_test");
  end

endmodule
