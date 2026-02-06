# 🛠️ Ultimate Command Reference

This document provides every terminal command needed to simulate, verify, and implement the Systolic Array Accelerator.

---

## 1. Functional Simulation (Icarus Verilog)
Use these commands for quick logic verification. They require **Icarus Verilog** and **GTKWave**.

### 1.1 Top-Level Serial Simulation (Primary)
Validates the full system including the Serial I/O wrappers.
```bash
# Compile
iverilog -g2012 -o tb_top.vvp -I src/rtl src/rtl/*.sv src/tb/tb_top_iverilog.sv

# Run
vvp tb_top.vvp
```
*   **Expected Output**: `TEST PASSED: Serial output matches expected GEMM result (All 4s)!`
*   **Artifact**: Generates `dump.vcd`.

### 1.2 Robustness & Parameter Test
Stress-tests the design with non-standard matrix sizes (e.g., 9x7).
```bash
# Compile
iverilog -g2012 -o tb_robust.vvp -I src/rtl src/rtl/pe_mac.sv src/rtl/systolic4x4.sv src/tb/tb_systolic_robust.sv

# Run
vvp tb_robust.vvp
```

### 1.3 View Waveforms
```bash
gtkwave dump.vcd
```

---

## 2. Professional Verification (UVM 1.2)
UVM requires a commercial-grade simulator. These commands assume you are in the project root.

### 2.1 Running with Vivado Simulator (XSim)
```bash
# Step 1: Compile all sources and UVM components
xvlog --sv -f src/uvm_tb/compile_list.f -L uvm

# Step 2: Elaborate the design
xelab top_tb -L uvm -timescale 1ns/1ps -debug typical

# Step 3: Run the simulation (randomized test)
xsim top_tb -R
```

### 2.2 Running with Questasim / ModelSim
```bash
# Compile and run in one go
vlog -f src/uvm_tb/compile_list.f
vsim top_tb -c -do "run -all; quit"
```
*   **Sign-off Criteria**: Look for `UVM_INFO` Match messages and `0 UVM_ERROR`.

---

## 3. ASIC Implementation (LibreLane)
Transforms your RTL into silicon layouts (GDSII). Requires **Docker** installed.

### 3.1 Run Full RTL-to-GDSII Flow
```bash
librelane scripts/librelane/config.json --design-dir . --dockerized --tag RUN_FINAL
```
*   **Status**: This takes ~15-30 minutes. 
*   **Outputs**: View final GDSII in `runs/RUN_FINAL/final/gds/top_wrapper.gds`.

### 3.2 Run Specific Stages (Advanced)
If you only want to re-run from a specific point (e.g., after fixing a routing issue):
```bash
# Run flow starting from detailed routing
librelane scripts/librelane/config.json --design-dir . --dockerized --from OpenROAD.DetailedRouting
```

### 3.3 Check Sign-off Metrics
```bash
# View the summary report
cat runs/RUN_FINAL/final/metrics.json
```

---

## 4. Repository Utilities
### 4.1 Clean build artifacts
```powershell
# Windows PowerShell
Remove-Item *.vvp, *.vcd, *.log -ErrorAction SilentlyContinue

# Linux/WSL
rm -f *.vvp *.vcd *.log
```

### 4.2 Verify RTL Consistency
```bash
# Run Verilator lint check
verilator --lint-only -Isrc/rtl src/rtl/top_wrapper.sv --top-module top_wrapper
```

---

## 🏗️ Hardware Specs (Quick Ref)
*   **Target PDK**: SkyWater 130nm
*   **Standard Cell**: `sky130_fd_sc_hd`
*   **Sign-off Clock**: 10ns (100 MHz)
*   **Inputs**: 8-bit Signed (Int8)
*   **Accumulator**: 32-bit Signed
