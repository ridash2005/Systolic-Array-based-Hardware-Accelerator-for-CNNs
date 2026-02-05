`ifndef TEST_LIB_SV
`define TEST_LIB_SV

import uvm_pkg::*;
`include "uvm_macros.svh"
import serial_agent_pkg::*;
import env_pkg::*;

// Base Sequence for serial agent
class serial_base_seq extends uvm_sequence #(serial_seq_item);
  `uvm_object_utils(serial_base_seq)
  
  logic [63:0] data_to_send;
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
    cfg_a.width = 16;
    if(!uvm_config_db#(virtual serial_if)::get(this, "", "vif_a", cfg_a.vif))
       `uvm_fatal("TEST", "No vif_a")
    uvm_config_db#(serial_agent_config)::set(this, "e.agent_a", "cfg", cfg_a);

    cfg_b = serial_agent_config::type_id::create("cfg_b");
    cfg_b.is_active = UVM_ACTIVE;
    cfg_b.width = 16;
    if(!uvm_config_db#(virtual serial_if)::get(this, "", "vif_b", cfg_b.vif))
       `uvm_fatal("TEST", "No vif_b")
    uvm_config_db#(serial_agent_config)::set(this, "e.agent_b", "cfg", cfg_b);

    cfg_c = serial_agent_config::type_id::create("cfg_c");
    cfg_c.is_active = UVM_PASSIVE;
    cfg_c.width = 64;
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
  task run_matrix_pair(logic [63:0] a, logic [63:0] b);
    serial_base_seq seq_a, seq_b;
    seq_a = serial_base_seq::type_id::create("seq_a");
    seq_b = serial_base_seq::type_id::create("seq_b");
    
    seq_a.data_to_send = a;
    seq_a.width_to_send = 16;
    seq_b.data_to_send = b;
    seq_b.width_to_send = 16;
    
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
    run_matrix_pair(64'h1111, 64'h1111);
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
       logic [15:0] ra, rb;
       ra = $urandom();
       rb = $urandom();
       run_matrix_pair(ra, rb);
       #2000;
    end
    #5000;
  endtask
endclass

`endif
