# UVM Verification Environment

This directory contains the UVM testbench for the Systolic Array Accelerator.

## Directory Structure
- `agents/`: Contains the UVM agents. Currently `serial_agent` for serial IO verification.
- `env/`: Contains the UVM Environment and Scoreboard.
- `test/`: Contains the Test Library (`test_lib.sv`) and specific tests like `sanity_test`.
- `top/`: Contains the Top Level Module `top_tb.sv` connecting the DUT and Interfaces.

## Comparison Logic
The `scoreboard.sv` implements a reference model for Matrix Multiplication (A x B = C).
It captures input transactions from A and B serial interfaces, computes the expected result, and compares it with the output from C serial interface.

## How to Run
You can use any SystemVerilog/UVM compliant simulator (Vivado, Questa, VCS, etc.).

### Using Vivado (Example)
1. Add all RTL files from `src/rtl`.
2. Add all UVM files from `src/uvm_tb`.
3. Set `top_tb` as the top module.
4. Ensure UVM library is compiled/linked (usually pre-compiled in Vivado 2020+).
5. Run Simulation.

### Using Command Line (Generic)
```bash
vlog +incdir+src/uvm_tb/agents/serial_agent +incdir+src/uvm_tb/env +incdir+src/uvm_tb/test src/rtl/*.sv src/uvm_tb/top/top_tb.sv
vsim top_tb -do "run -all"
```
