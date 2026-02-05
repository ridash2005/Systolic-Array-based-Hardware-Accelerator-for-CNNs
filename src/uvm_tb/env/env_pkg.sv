`ifndef ENV_PKG_SV
`define ENV_PKG_SV

package env_pkg;

import uvm_pkg::*;
`include "uvm_macros.svh"

import serial_agent_pkg::*;

`include "scoreboard.sv"
`include "env.sv"

endpackage

`endif
