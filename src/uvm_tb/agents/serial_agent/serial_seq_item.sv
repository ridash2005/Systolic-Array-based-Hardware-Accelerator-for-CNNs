`ifndef SERIAL_SEQ_ITEM_SV
`define SERIAL_SEQ_ITEM_SV

// Imports/Includes handled by package

class serial_seq_item extends uvm_sequence_item;
  
  rand logic [63:0] data;
  rand int delay;
  int width;

  `uvm_object_utils_begin(serial_seq_item)
    `uvm_field_int(data, UVM_ALL_ON)
    `uvm_field_int(delay, UVM_ALL_ON)
    `uvm_field_int(width, UVM_ALL_ON)
  `uvm_object_utils_end

  constraint c_delay { delay inside {[0:10]}; }

  function new(string name = "serial_seq_item");
    super.new(name);
  endfunction

endclass

`endif
