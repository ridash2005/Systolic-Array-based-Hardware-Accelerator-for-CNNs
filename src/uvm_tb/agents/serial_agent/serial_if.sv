`ifndef SERIAL_IF_SV
`define SERIAL_IF_SV

interface serial_if(input logic clk, input logic rst_n);
  // Signals
  logic serial_clk;
  logic serial_data;
  logic frame_sync;
  
endinterface

`endif
