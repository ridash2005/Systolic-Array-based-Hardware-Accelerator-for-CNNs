`ifndef SERIAL_MONITOR_SV
`define SERIAL_MONITOR_SV

// serial_monitor Module (UVM Component)
// A monitor "listens" to the interface of the hardware (DUT) and translates
// low-level pin signals (clocks, bits) back into high-level data objects (transactions).
class serial_monitor extends uvm_monitor;
  // Standard UVM macro to register this class with the UVM factory
  `uvm_component_utils(serial_monitor)
  
  virtual serial_if vif;     // Virtual interface to access physical pins
  serial_agent_config cfg;   // Configuration object (e.g., bit-width settings)
  uvm_analysis_port #(serial_seq_item) ap; // Port to send collected data to the Scoreboard

  // Constructor: Standard UVM boilerplate
  function new(string name, uvm_component parent);
    super.new(name, parent);
    ap = new("ap", this); // Initialize the output port
  endfunction

  // Build Phase: Fetch configuration and interface from the UVM database
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    // Retrieve the configuration object previously stored by the Test
    if(!uvm_config_db#(serial_agent_config)::get(this, "", "cfg", cfg))
       `uvm_fatal("NOCFG", {"Config object must be set for: ", get_full_name()});
    vif = cfg.vif; // Link the virtual interface
  endfunction

  // Run Phase: The "active" part of the monitor that runs forever during simulation
  task run_phase(uvm_phase phase);
    forever begin
      collect_transaction(); // Continuously look for new data on the pins
    end
  endtask
  
  // Task to handle the actual bit-by-bit capture of a serial frame
  task collect_transaction();
    logic [1023:0] collected_data = 0; // Buffer for incoming bits
    serial_seq_item item = serial_seq_item::type_id::create("item"); // Create a data object
    
    // Step 1: Wait for an edge where 'frame_sync' is high
    @(posedge vif.serial_clk iff (vif.frame_sync === 1));
    
    // Step 2: Capture the first bit (LSB)
    collected_data[0] = vif.serial_data;
    
    // Step 3: Loop for the remaining bits defined in the config
    for(int i=1; i<cfg.width; i++) begin
      @(posedge vif.serial_clk);
      collected_data[i] = vif.serial_data;
    end
    
    // Step 4: Package the bits into a transaction object
    item.data = collected_data;
    item.width = cfg.width;
    
    // Print info and broadcast the transaction via the analysis port
    `uvm_info("MON", $sformatf("Monitor collected data: %h (Width: %0d)", item.data, cfg.width), UVM_HIGH)
    ap.write(item);
  endtask
endclass

`endif
