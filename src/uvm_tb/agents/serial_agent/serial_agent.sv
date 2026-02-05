`ifndef SERIAL_AGENT_SV
`define SERIAL_AGENT_SV

// Imports/Includes handled by package

class serial_agent extends uvm_agent;
  `uvm_component_utils(serial_agent)
  
  serial_agent_config cfg;
  serial_driver driver;
  serial_monitor monitor;
  serial_sequencer sequencer;
  
  function new(string name, uvm_component parent);
    super.new(name, parent);
  endfunction

  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    if(!uvm_config_db#(serial_agent_config)::get(this, "", "cfg", cfg))
       `uvm_fatal("NOCFG", "Config object must be set for: ", get_full_name(), ".cfg");
       
    monitor = serial_monitor::type_id::create("monitor", this);
    if(cfg.is_active == UVM_ACTIVE) begin
      driver = serial_driver::type_id::create("driver", this);
      sequencer = serial_sequencer::type_id::create("sequencer", this);
    end
  endfunction

  function void connect_phase(uvm_phase phase);
    if(cfg.is_active == UVM_ACTIVE) begin
      driver.seq_item_port.connect(sequencer.seq_item_export);
    end
  endfunction

endclass

`endif
