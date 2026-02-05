`ifndef SERIAL_AGENT_CONFIG_SV
`define SERIAL_AGENT_CONFIG_SV

// Imports/Includes handled by package

class serial_agent_config extends uvm_object;
  `uvm_object_utils(serial_agent_config)
  
  virtual serial_if vif;
  uvm_active_passive_enum is_active = UVM_ACTIVE;
  int width = 16;
  
  function new(string name = "serial_agent_config");
    super.new(name);
  endfunction
endclass

`endif
