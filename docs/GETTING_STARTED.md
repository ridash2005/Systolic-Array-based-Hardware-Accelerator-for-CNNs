# Getting Started

Follow these instructions to set up, simulate, and synthesize the Systolic Array Accelerator.

## Prerequisites

### Simulation
- **Icarus Verilog**: For functional simulation.
- **GTKWave**: For viewing waveform results (.vcd files).
- **SystemVerilog Support**: Ensure your Icarus Verilog version is 11.0 or newer.

### ASIC Flow
- **OpenLane 2**: The open-source ASIC flow.
- **SkyWater 130nm PDK**: The target technology.

## 1. Functional Simulation

The testbenches are located in `src/tb/`. To run the top-level simulation:

1. Compile the design and testbench:
   ```bash
   iverilog -g2012 -o sim.vvp src/rtl/*.sv src/tb/tb_top_wrapper.sv
   ```
2. Run the simulation:
   ```bash
   vvp sim.vvp
   ```
3. Open the waveform:
   ```bash
   gtkwave dump.vcd
   ```

## 2. ASIC Synthesis & PnR with OpenLane

The design is pre-configured for OpenLane 2. The configuration files are in `scripts/openlane/`.

1. Set up your OpenLane environment.
2. Run the flow:
   ```bash
   python3 ./flow.py --design scripts/openlane --config scripts/openlane/config.json
   ```
3. Check the `runs/` directory for synthesis reports, timing analysis, and final GDSII.

## 3. Project Structure

- `src/rtl/`: SystemVerilog source files for the design.
- `src/tb/`: SystemVerilog testbenches.
- `scripts/openlane/`: Tcl and JSON configurations for ASIC implementation.
- `docs/`: Detailed technical documentation.
- `assets/`: Architectural diagrams and images.
