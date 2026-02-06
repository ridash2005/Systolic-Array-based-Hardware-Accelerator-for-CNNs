# 🛠️ Comprehensive Command Reference

This document provides a single-source-of-truth for all terminal commands required to interact with, verify, and implement the Systolic Array Accelerator.

---

## 🧪 1. Functional Logic Simulation (Icarus Verilog)

These commands are used for rapid iterative development and functional logic validation.

### 📥 1.1 Full System Test (Serial-to-Parallel)
Validates the entire SoC-style wrapper including SerDes logic and the 4x4 array.
```bash
# Compilation
iverilog -g2012 -o tb_top.vvp -I src/rtl src/rtl/*.sv src/tb/tb_top_iverilog.sv

# Simulation Execution
vvp tb_top.vvp
```
*   **Result**: Expect a `PASSED` status and a generated `dump.vcd`.

### 🛡️ 1.2 Parameterized Robustness Test
Validates the generic RTL for non-standard array dimensions (e.g., 9x7).
```bash
# Compilation (includes logic and robust testbench)
iverilog -g2012 -o tb_robust.vvp -I src/rtl src/rtl/pe_mac.sv src/rtl/systolic4x4.sv src/tb/tb_systolic_robust.sv

# Execution
vvp tb_robust.vvp
```

### 📺 1.3 Waveform Inspection
```bash
# Load the latest VCD into GTKWave
gtkwave dump.vcd
```

---

## 🛡️ 2. Enterprise Verification (UVM 1.2)

UVM commands require an industry-standard simulator (Vivado Xsim, Questasim, etc.).

### 📂 2.1 Vivado Xsim (AMD/Xilinx)
```bash
# Step 1: Compile UVM sources
xvlog --sv -f src/uvm_tb/compile_list.f -L uvm

# Step 2: Elaborate with timescale precision
xelab top_tb -L uvm -timescale 1ns/1ps -debug typical

# Step 3: Run randomized stimulus
xsim top_tb -R
```

### 🔄 2.2 Questasim / Siemens EDA
```bash
# Compile and run in CLI mode
vlog -f src/uvm_tb/compile_list.f
vsim top_tb -c -do "run -all; quit"
```

---

## 💎 3. ASIC Implementation (LibreLane)

These commands transform RTL into hardware. **Docker** is required for environment isolation.

### 🏗️ 3.1 RTL-to-GDSII Clean Run
```bash
# Execute the full pipeline with a descriptive tag
librelane scripts/librelane/config.json --design-dir . --dockerized --tag PRODUCTION_SIGN_OFF
```

### 🛠️ 3.2 Targeted Stage Execution
To save time during physical design iteration, you can run specific tool commands.
```bash
# Re-run Static Timing Analysis (STA) only
librelane scripts/librelane/config.json --design-dir . --dockerized --only OpenROAD.STAPostPNR
```

### 📈 3.3 Metric Extraction
```bash
# Parse the results JSON via terminal
python -m json.tool runs/PRODUCTION_SIGN_OFF/final/metrics.json
```

---

## 🧹 4. Repository Utilities & Maintenance

### 🧽 4.1 Clean Build Artifacts
```powershell
# Windows PowerShell (Clean recursive logs and binaries)
Get-ChildItem -Include *.vvp, *.vcd, *.log, *.jou, *.pb -Recurse | Remove-Item

# Linux/WSL
rm -rf *.vvp *.vcd *.log xsim.dir/ .librelane_work/
```

### 🕵️ 4.2 Verilator Linting
Identify potential hardware bugs before simulation.
```bash
verilator --lint-only -Isrc/rtl src/rtl/top_wrapper.sv --top-module top_wrapper -Wall
```

---

## 📋 5. Hardware Specifications Cheat-Sheet

| Item | Specification |
| :--- | :--- |
| **Logic** | 8x8 Multiply-Accumulate (MAC) |
| **PDK** | SkyWater 130nm (`sky130_fd_sc_hd`) |
| **Clocks** | `clk` (Target 100MHz), 2x Serial Clocks |
| **I/O** | Bit-Serial (SerDes) |
| **Reset** | Async Active-Low |

---

**End of Command Reference**
