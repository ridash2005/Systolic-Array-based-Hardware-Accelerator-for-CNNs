# 🚀 Systolic Array Hardware Accelerator for CNNs

[![Hardware](https://img.shields.io/badge/Hardware-SystemVerilog-blue.svg)](https://en.wikipedia.org/wiki/SystemVerilog)
[![PDK](https://img.shields.io/badge/PDK-SkyWater_130nm-brightgreen.svg)](https://skywater-pdk.readthedocs.io/)
[![License](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![Design](https://img.shields.io/badge/Design-ASIC-orange.svg)](docs/ARCHITECTURE.md)
[![Verification](https://img.shields.io/badge/Verification-UVM_1.2-purple.svg)](docs/VERIFICATION.md)

A high-performance, parameterizable **Systolic Array Accelerator** implemented in SystemVerilog, engineered for high-throughput Matrix-Matrix Multiplications (GEMM) in Deep Learning workloads. This project features a production-grade ASIC flow targeting the **SkyWater 130nm PDK** and a robust **UVM 1.2** verification environment.

---

## 🛠️ Project Highlights

-   **Architecture**: Scalable $N \times N$ Processing Element (PE) grid with weight-stationary-ready dataflow.
-   **Performance**: 3-stage pipelined PEs optimized for **100MHz+** timing closure on 130nm silicon.
-   **Connectivity**: Area-efficient **Serialized I/O interface** reduce top-level pin count by >90%.
-   **ASIC Flow**: Fully automated RTL-to-GDSII pipeline using **LibreLane** (OpenLane 2).
-   **Verification**: Comprehensive suite includes randomized SystemVerilog TBs and an industry-standard **UVM environment** with bit-accurate scoreboarding.

---

## 🏗️ Hardware Microarchitecture

The design features a classic **Systolic Array** where data flows spatially between Processing Elements. Each PE is a high-speed MAC unit:

1.  **Staggered Dataflow**: Input matrices are skewed in time using internal shift-register chains to ensure correct spatial-temporal alignment.
2.  **Pipelined MAC**: Separated multiplication and accumulation stages break combinational critical paths, maximizing clock frequency.
3.  **Silicon Wrapper**: Integrated Deserializers (Input) and Serializers (Output) enable a high-bandwidth internal bus to communicate over a limited number of physical chip pins.

> [📖 Explore the Deep Technical Architecture](docs/ARCHITECTURE.md)

---

## 🎨 ASIC Implementation (SkyWater 130nm)

The accelerator is signoff-ready for the SkyWater 130nm process.

-   **Standard Cells**: `sky130_fd_sc_hd` (High Density)
-   **Signoff Checks**: 
    -   ✅ **Zero DRC/LVS violations**: Verified with Magic and Netgen.
    -   ✅ **Timing Closure**: Clean at 100MHz (10ns period) across all corners.
    -   ✅ **Power Integrity**: IR Drop < 0.1% on `VPWR`/`VGND`.
    -   ✅ **Antenna Fixes**: 100% antenna violations repaired.

### 📊 Implementation Metrics (Latest Run)
| Metric | Value |
| :--- | :--- |
| **Clock Frequency** | 100 MHz |
| **Total Cell Area** | ~66,550 μm² |
| **Cell Count** | 8,112 |
| **Utilization** | 50% |
| **Wire Length** | 129,538 μm |

> [📁 View GDSII and Netlist in /implementation](./implementation)


```bash
# Execute the full ASIC flow (Dockerized)
librelane scripts/librelane/config.json --design-dir . --dockerized
```

> [🎨 Read the LibreLane Implementation Guide](docs/LIBRELANE_GUIDE.md)

---

## ✅ Verification

We employ a multi-tiered verification strategy to ensure 100% functional coverage.

-   **UVM Environment**: Supports advanced constrained-random stimulus and coverage-driven verification.
-   **Golden Reference**: Bit-accurate C++/SystemVerilog model for result validation.
-   **Gate-Level Simulation (GLS)**: Validates post-synthesis netlist functionality with timing.

> [✅ Read the Verification Strategy](docs/VERIFICATION.md)

---

## 🚀 Getting Started

### Prerequisites
-   **Icarus Verilog / Vivado**: For RTL simulation.
-   **LibreLane / Docker**: For ASIC implementation.
-   **Python 3.10+**: For support scripts.

### Quick Simulation
```bash
# Compile and run the top-level testbench
iverilog -g2012 -o tb_top.vvp -I src/rtl src/rtl/*.sv src/tb/tb_top_iverilog.sv && vvp tb_top.vvp
```

---

## 📄 License
Licensed under the **MIT License**. See [LICENSE](LICENSE) for more information.
