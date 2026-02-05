`ifndef ENV_SV
`define ENV_SV

// Includes handled by package


class env extends uvm_env;
  `uvm_component_utils(env)

  serial_agent agent_a;
  serial_agent agent_b;
  serial_agent agent_c;
  scoreboard scb;
  
  function new(string name, uvm_component parent);
    super.new(name, parent);
  endfunction

  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    
    agent_a = serial_agent::type_id::create("agent_a", this);
    agent_b = serial_agent::type_id::create("agent_b", this);
    agent_c = serial_agent::type_id::create("agent_c", this);
    scb     = scoreboard::type_id::create("scb", this);
    
  endfunction

  function void connect_phase(uvm_phase phase);
    agent_a.monitor.ap.connect(scb.val_a);
    agent_b.monitor.ap.connect(scb.val_b);
    agent_c.monitor.ap.connect(scb.val_c);
  endfunction

endclass

`endif
