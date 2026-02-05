`ifndef SERIAL_MONITOR_SV
`define SERIAL_MONITOR_SV

// Imports/Includes handled by package

class serial_monitor extends uvm_monitor;
  `uvm_component_utils(serial_monitor)
  
  virtual serial_if vif;
  serial_agent_config cfg;
  uvm_analysis_port #(serial_seq_item) ap;

  function new(string name, uvm_component parent);
    super.new(name, parent);
    ap = new("ap", this);
  endfunction

  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    if(!uvm_config_db#(serial_agent_config)::get(this, "", "cfg", cfg))
       `uvm_fatal("NOCFG", "Config object must be set for: ", get_full_name(), ".cfg");
    vif = cfg.vif;
  endfunction

  task run_phase(uvm_phase phase);
    forever begin
      collect_transaction();
    end
  endtask
  
  task collect_transaction();
    logic [1023:0] collected_data = 0;
    serial_seq_item item = serial_seq_item::type_id::create("item");
    
    // Wait for start of frame
    do begin
      @(posedge vif.serial_clk);
    end while (vif.frame_sync !== 1);
    
    // Capture LSB
    collected_data[0] = vif.serial_data;
    
    // Capture remaining bits
    for(int i=1; i<cfg.width; i++) begin
      @(posedge vif.serial_clk);
      collected_data[i] = vif.serial_data;
    end
    
    item.data = collected_data;
    item.width = cfg.width;
    `uvm_info("MON", $sformatf("Monitor collected data: %h (Width: %0d)", item.data, cfg.width), UVM_HIGH)
    ap.write(item);
  endtask
endclass

`endif
