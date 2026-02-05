`ifndef SERIAL_SEQUENCER_SV
`define SERIAL_SEQUENCER_SV

// Imports/Includes handled by package

class serial_sequencer extends uvm_sequencer #(serial_seq_item);
  `uvm_component_utils(serial_sequencer)
  function new(string name, uvm_component parent);
    super.new(name, parent);
  endfunction
endclass

`endif
