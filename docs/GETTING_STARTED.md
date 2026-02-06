# 🚀 Setup & Implementation Guide

This guide provides an end-to-end framework for setting up, simulating, and hardening the **Systolic Array Accelerator**. It merges functional verification workflows with production-grade ASIC physical design strategies using the **SkyWater 130nm PDK**.

---

## 🛠️ 1. Environment Prerequisites

Ensure your system meets the following specifications for a clean execution of the EDA tools.

### 🐧 System Requirements
*   **OS**: Ubuntu 22.04+ or WSL2 (Windows Subsystem for Linux).
*   **Memory**: 8GB RAM minimum (16GB recommended for ASIC routing stages).
*   **Storage**: 10GB free space for Docker images and PDK files.

### 📦 Tools & Dependencies
| Tool | Purpose | Installation Command |
| :--- | :--- | :--- |
| **Icarus Verilog** | Functional RTL Simulation | `sudo apt install iverilog` |
| **GTKWave** | Waveform Visualization | `sudo apt install gtkwave` |
| **Docker** | ASIC Flow & Tool Isolation | [Official Docker Install](https://docs.docker.com/engine/install/) |
| **LibreLane** | RTL-to-GDSII Automated Flow | `pip install librelane` |

---

## 🧪 2. Functional Verification Phase

Before hardening to silicon, validate the logic using the provided high-fidelity testbenches.

### 2.1 Primary RTL Simulation
This testbench validates the SerDes interface and the 4x4 compute grid.
```bash
# Compile and run the top-level test
iverilog -g2012 -o tb_top.vvp -I src/rtl src/rtl/*.sv src/tb/tb_top_iverilog.sv && vvp tb_top.vvp
```

### 2.2 Waveform Debugging
Inspect the staggered dataflow and partial sum accumulations.
```bash
gtkwave dump.vcd
```
*   **Key Signals**: Observe `A_reg[i]` and `B_reg[j]` within the `pe_mac` instances to visualize the systolic "wave".

---

## 💎 3. ASIC Implementation Flow (LibreLane)

This phase transforms your Verilog code into a physical layout (GDSII) ready for fabrication.

### 📝 3.1 Hardware Configuration
The implementation is tuned via `scripts/librelane/config.json`:
*   **Target Clock**: 100MHz (`CLOCK_PERIOD = 10.0`).
*   **Cell Density**: 55% (`FP_CORE_UTIL = 55`).
*   **Power Grid**: Dense PDN on Metal 4/5 to mitigate IR drop during peak parallel switching.

### 🚀 3.2 Executing the Flow
Run the full automated pipeline (Synthesis -> Placement -> Routing -> Sign-off).
```bash
# Run the dockerized production flow
librelane scripts/librelane/config.json --design-dir . --dockerized --tag PRODUCTION_V1
```

### 🛠️ 3.3 Advanced Stage Control
If you encounter timing violations or routing congestion, you can re-run specific stages:
```bash
# Resume from detailed placement to fix density issues
librelane scripts/librelane/config.json --design-dir . --dockerized --from OpenROAD.DetailedPlacement
```

---

## 📊 4. Sign-off & Results Analysis

A run is successful only if it passes the following industrial sign-off criteria.

| Check | Tool | Metric for Success |
| :--- | :--- | :--- |
| **Setup Timing** | OpenSTA | Slack > 0ns |
| **Hold Timing** | OpenSTA | Slack > 0.1ns |
| **DRC** | Magic | 0 Violations |
| **LVS** | Netgen | Netlists Match |
| **IR Drop** | OpenROAD PSM | < 2% Voltage Drop |

### 📂 4.1 Generated Artifacts
All final outputs are located in `runs/PRODUCTION_V1/final/`:
- **`gds/`**: Binary layout file for the foundry.
- **`verilog/`**: Post-routing gate-level netlist.
- **`metrics.json`**: Comprehensive report on area, power, and performance.

---

## 📚 Further Reading
*   [🏗️ **Architecture Deep Dive**](docs/ARCHITECTURE.md)
*   [✅ **Verification & Sign-off Report**](docs/VERIFICATION.md)
*   [🛠️ **Ultimate Command Reference**](docs/COMMAND_REFERENCE.md)

---

**End of Guide**
