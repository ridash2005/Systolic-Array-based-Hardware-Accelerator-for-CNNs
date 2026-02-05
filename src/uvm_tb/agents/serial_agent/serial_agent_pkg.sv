`ifndef SERIAL_AGENT_PKG_SV
`define SERIAL_AGENT_PKG_SV

package serial_agent_pkg;

import uvm_pkg::*;
`include "uvm_macros.svh"

`include "serial_seq_item.sv"
`include "serial_agent_config.sv"
`include "serial_driver.sv"
`include "serial_monitor.sv"
`include "serial_sequencer.sv"
`include "serial_agent.sv"

endpackage

`endif
