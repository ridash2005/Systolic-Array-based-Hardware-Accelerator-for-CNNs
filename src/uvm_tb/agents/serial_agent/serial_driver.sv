`ifndef SERIAL_DRIVER_SV
`define SERIAL_DRIVER_SV

// Imports/Includes handled by package

class serial_driver extends uvm_driver #(serial_seq_item);
  `uvm_component_utils(serial_driver)

  virtual serial_if vif;
  serial_agent_config cfg;
  int width = 16;

  function new(string name, uvm_component parent);
    super.new(name, parent);
  endfunction

  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    if(!uvm_config_db#(serial_agent_config)::get(this, "", "cfg", cfg))
      `uvm_fatal("NOCFG", "Config object must be set for: ", get_full_name(), ".cfg");
    
    vif = cfg.vif;
    width = cfg.width;
  endfunction

  task run_phase(uvm_phase phase);
    vif.serial_clk <= 0;
    vif.frame_sync <= 0;
    vif.serial_data <= 0;
    
    forever begin
      seq_item_port.get_next_item(req);
      drive_item(req);
      seq_item_port.item_done();
    end
  endtask
  
  task drive_item(serial_seq_item item);
    // Drive frame_sync
    vif.serial_clk <= 0;
    vif.frame_sync <= 1;
    vif.serial_data <= item.data[0];
    
    #(10); 
    vif.serial_clk <= 1; // Latch bit 0
    #(10);
    vif.serial_clk <= 0;
    
    vif.frame_sync <= 0;
    
    for(int i=1; i<width; i++) begin
      vif.serial_data <= item.data[i];
      #(10);
      vif.serial_clk <= 1;
      #(10);
      vif.serial_clk <= 0;
    end
    
    vif.serial_data <= 0;
    repeat(item.delay) begin
      #(20); 
    end
  endtask

endclass

`endif
