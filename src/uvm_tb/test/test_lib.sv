`ifndef TEST_LIB_SV
`define TEST_LIB_SV

import uvm_pkg::*;
`include "uvm_macros.svh"
import serial_agent_pkg::*;
import env_pkg::*;

// Base Sequence for serial agent
class serial_base_seq extends uvm_sequence #(serial_seq_item);
  `uvm_object_utils(serial_base_seq)
  
  logic [1023:0] data_to_send;
  int width_to_send;

  function new(string name = "serial_base_seq");
    super.new(name);
  endfunction

  task body();
    req = serial_seq_item::type_id::create("req");
    start_item(req);
    req.data = data_to_send;
    req.width = width_to_send;
    req.delay = 0;
    finish_item(req);
  endtask
endclass

class base_test extends uvm_test;
  `uvm_component_utils(base_test)

  env e;
  serial_agent_config cfg_a, cfg_b, cfg_c;

  function new(string name, uvm_component parent);
    super.new(name, parent);
  endfunction

  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    e = env::type_id::create("e", this);

    // Create and Set Configs
    cfg_a = serial_agent_config::type_id::create("cfg_a");
    cfg_a.is_active = UVM_ACTIVE;
    cfg_a.width = 128; // 4x4x8
    if(!uvm_config_db#(virtual serial_if)::get(this, "", "vif_a", cfg_a.vif))
       `uvm_fatal("TEST", "No vif_a")
    uvm_config_db#(serial_agent_config)::set(this, "e.agent_a", "cfg", cfg_a);

    cfg_b = serial_agent_config::type_id::create("cfg_b");
    cfg_b.is_active = UVM_ACTIVE;
    cfg_b.width = 128; // 4x4x8
    if(!uvm_config_db#(virtual serial_if)::get(this, "", "vif_b", cfg_b.vif))
       `uvm_fatal("TEST", "No vif_b")
    uvm_config_db#(serial_agent_config)::set(this, "e.agent_b", "cfg", cfg_b);

    cfg_c = serial_agent_config::type_id::create("cfg_c");
    cfg_c.is_active = UVM_PASSIVE;
    cfg_c.width = 512; // 4x4x32
    if(!uvm_config_db#(virtual serial_if)::get(this, "", "vif_c", cfg_c.vif))
       `uvm_fatal("TEST", "No vif_c")
    uvm_config_db#(serial_agent_config)::set(this, "e.agent_c", "cfg", cfg_c);

  endfunction
  
  task run_phase(uvm_phase phase);
    phase.raise_objection(this);
    main_sequence();
    phase.drop_objection(this);
  endtask
  
  virtual task main_sequence();
  endtask
  
  // Helper to run a sequence on multiple agents
  task run_matrix_pair(logic [1023:0] a, logic [1023:0] b);
    serial_base_seq seq_a, seq_b;
    seq_a = serial_base_seq::type_id::create("seq_a");
    seq_b = serial_base_seq::type_id::create("seq_b");
    
    seq_a.data_to_send = a;
    seq_a.width_to_send = 128;
    seq_b.data_to_send = b;
    seq_b.width_to_send = 128;
    
    fork
      seq_a.start(e.agent_a.sequencer);
      seq_b.start(e.agent_b.sequencer);
    join
  endtask
endclass

class sanity_test extends base_test;
  `uvm_component_utils(sanity_test)
  function new(string name, uvm_component parent);
    super.new(name, parent);
  endfunction
  
  task main_sequence();
    `uvm_info("TEST", "Starting sanity_test sequence", UVM_LOW)
    // A matrix: [1 1; 1 1], B matrix: [1 1; 1 1]
    // A matrix: 4x4 of 1s (8-bit) -> 128 bits of 0x01
    logic [1023:0] ones_matrix;
    // Each 8-bit element is 1. 16 elements.
    // 16 * 8 = 128.
    // We want 0x010101...01
    // Simplest way:
    ones_matrix = 0;
    for(int i=0; i<16; i++) ones_matrix[i*8 +: 8] = 8'h01;
    
    run_matrix_pair(ones_matrix, ones_matrix);
    #5000;
  endtask
endclass

class random_test extends base_test;
  `uvm_component_utils(random_test)
  function new(string name, uvm_component parent);
    super.new(name, parent);
  endfunction

  task main_sequence();
    `uvm_info("TEST", "Starting random_test sequence", UVM_LOW)
    repeat(10) begin
       logic [127:0] ra, rb;
       ra = 0; rb = 0;
       for(int k=0; k<4; k++) ra[k*32 +: 32] = $urandom();
       for(int k=0; k<4; k++) rb[k*32 +: 32] = $urandom();
       run_matrix_pair(ra, rb);
       #2000;
    end
    #5000;
  endtask
endclass

`endif
