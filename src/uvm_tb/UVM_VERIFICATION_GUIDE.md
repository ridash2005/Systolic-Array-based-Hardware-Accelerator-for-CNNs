# UVM Verification Guide for Systolic Array Accelerator

This document provides a comprehensive guide to understanding, running, and modifying the UVM testbench for the Systolic Array Hardware Accelerator.

## 1. Testbench Architecture

The testbench is designed using the Universal Verification Methodology (UVM) to ensure modularity, reusability, and robust verification capabilities.

### 1.1 Top Level (`top_tb.sv`)
The top level module:
- Generates the system clock (`clk`) and reset (`rst_n`).
- Instantiates the specific Design Under Test (DUT): `top_wrapper`.
- Instantiates logic interfaces for serial communication.
- Starts the UVM test via `run_test()`.

### 1.2 UVM Environment (`env_pkg.sv`)
The environment (`env`) acts as a container for all verification components:
- **Agents**: 
  - `agent_a`: Active agent driving stream A inputs.
  - `agent_b`: Active agent driving stream B inputs.
  - `agent_c`: Passive agent monitoring stream C outputs (results).
- **Scoreboard**: 
  - Subscribes to analysis ports from all agents.
  - Performs reference model execution (Matrix Multiplication).
  - Compares the DUT output against the reference model.

### 1.3 Serial Agent (`serial_agent_pkg.sv`)
A reusable VIP (Verification IP) for the custom serial protocol used by the accelerator.
- **Driver**: deserializes high-level `serial_seq_item` transactions into bit-level toggling of `serial_data`, `serial_clk`, and `frame_sync`.
- **Monitor**: Observes the interface, reconstructs parallel data from the serial stream, and publishes transactions to the scoreboard.
- **Sequencer**: Arbitrates transaction flow from tests to the driver.

### 1.4 Test Library (`test_lib.sv`)
Contains the base test and derived test cases:
- `sanity_test`: Sends a fixed, known pattern (All 1s matrix).
- `random_test`: Randomizes input matrices for thorough coverage.

---

## 2. Directory Structure

```
src/uvm_tb/
├── agents/
│   └── serial_agent/    # Reusable Serial Protocol Agent
│       ├── serial_agent.sv
│       ├── serial_driver.sv
│       ├── serial_monitor.sv
│       └── ...
├── env/                # Environment and Reference Model
│   ├── env.sv
│   ├── scoreboard.sv    # The "Oracle" for checking correctness
│   └── env_pkg.sv
├── test/               # Test Cases
│   └── test_lib.sv
├── top/                # Top Level Module
│   └── top_tb.sv
├── compile_list.f      # Compilation arguments
└── README_UVM.md       # Quick start guide
```

---

## 3. How to Run Simulation

### 3.1 Prerequisite
You need a SystemVerilog simulator that supports UVM (e.g., Vivado Simulator, Questasim, VCS, Xcelium).

### 3.2 Running with Vivado (CLI)
1. **Navigate** to the project root.
2. **Execute** the following commands:

```bash
# Compile and Run using xvlog/xelab
xvlog --sv -f src/uvm_tb/compile_list.f -L uvm
xelab top_tb -L uvm -timescale 1ns/1ps -debug typical
xsim top_tb -R
```

### 3.3 Running with Questasim / ModelSim
```bash
vlog -f src/uvm_tb/compile_list.f
vsim top_tb -do "run -all"
```

---

## 4. Understanding the Reference Model

The scoreboard implements a behavioral matrix multiplication model.
1. It buffers incoming A and B transactions.
2. It parses the packed bits (Serial Stream -> Flattened Vector -> Matrix).
3. It computes `C = A * B` using SystemVerilog's high-level arithmetic.
4. When a result arrives from 'C', it compares it against the expected calculation.

**Sign Handling**: The design uses 4-bit signed integers. 
- Example: `1111` is -1. `1000` is -8. 
- The scoreboard correctly identifies sign bits and performs sign-extension before multiplication.

---

## 5. Adding New Tests

To add a new test case:
1. Open `src/uvm_tb/test/test_lib.sv`.
2. Define a new class extending `base_test`.
3. Implement `main_sequence()` logic.

**Example: Corner Case Test (Max Values)**
```systemverilog
class max_val_test extends base_test;
  `uvm_component_utils(max_val_test)
  // ... constructor ...
  
  task main_sequence();
      serial_seq_item item_a = serial_seq_item::type_id::create("item_a");
      // Fill with 0x7 (Max positive 4-bit integer)
      item_a.data = 64'h7777777777777777; 
      // ... drive ...
  endtask
endclass
```
4. Update `top_tb.sv` to run `"max_val_test"` or use `+UVM_TESTNAME=max_val_test` command line argument.

