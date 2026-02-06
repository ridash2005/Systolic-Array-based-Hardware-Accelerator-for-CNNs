# Getting Started

Follow these instructions to set up, simulate, and synthesize the Systolic Array Accelerator.

## Prerequisites

### Simulation
- **Icarus Verilog**: For functional simulation.
- **GTKWave**: For viewing waveform results (.vcd files).

### ASIC Flow
- **LibreLane**: The RTL-to-GDSII flow.
- **Docker**: Required for industrial tool reproducibility.

## 1. Functional Simulation

The testbenches are located in `src/tb/`. To run the top-level simulation:

1. **Compile & Run (Single Command)**:
   ```bash
   iverilog -g2012 -o tb_top.vvp -I src/rtl src/rtl/*.sv src/tb/tb_top_iverilog.sv && vvp tb_top.vvp
   ```
2. **View Results**:
   The simulation will print "PASSED" and generate a `dump.vcd` file.
   ```bash
   gtkwave dump.vcd
   ```

## 2. ASIC Implementation

The design is signoff-ready for the SkyWater 130nm process using **LibreLane**.

1. **Setup**:
   ```bash
   pip install librelane
   ```
2. **Run Flow**:
   ```bash
   librelane scripts/librelane/config.json --design-dir . --dockerized
   ```
3. **Check Outputs**:
   Final GDSII and reports are generated in the `runs/` directory.

## 3. Project Structure

- `src/rtl/`: Design source files.
- `src/tb/`: Functional testbenches.
- `src/uvm_tb/`: Production-grade UVM environment.
- `scripts/librelane/`: ASIC implementation configuration.
- `docs/`: Technical documentation.
- `implementation/`: Hardened GDSII and sign-off netlists.
