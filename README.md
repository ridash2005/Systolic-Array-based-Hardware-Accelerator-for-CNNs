# 🚀 Systolic Array Hardware Accelerator for CNNs

[![SystemVerilog](https://img.shields.io/badge/SystemVerilog-0052cc.svg?style=flat&logo=systemverilog&logoColor=white)](https://systemverilog.io/)
[![Vivado](https://img.shields.io/badge/Xilinx-Vivado-E32222.svg?style=flat)](https://www.xilinx.com/products/design-tools/vivado.html)
[![OpenLane](https://img.shields.io/badge/OpenROAD-OpenLane-blue.svg?style=flat)](https://github.com/The-OpenROAD-Project/OpenLane)
[![Icarus Verilog](https://img.shields.io/badge/Simulator-Icarus_Verilog-green.svg?style=flat)](http://iverilog.icarus.com/)
[![Docker](https://img.shields.io/badge/Docker-2496ED.svg?style=flat&logo=docker&logoColor=white)](https://www.docker.com/)
[![SkyWater PDK](https://img.shields.io/badge/SkyWater_PDK-130nm-brightgreen.svg?style=flat)](https://skywater-pdk.readthedocs.io/)
[![UVM 1.2](https://img.shields.io/badge/UVM-1.2-purple.svg?style=flat)](https://www.accellera.org/downloads/standards/uvm)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

A parameterizable **Systolic Array Accelerator** implemented in SystemVerilog. Optimized for high-throughput Matrix-Matrix Multiplications (GEMM) in Deep Learning workloads, this project provides an RTL-to-GDSII flow for the **SkyWater 130nm PDK**.

---

## 🏗️ Technical Architecture

The design utilizes a spatial processing grid to minimize data movement and maximize compute intensity.

```mermaid
graph TD
    subgraph "Systolic Grid (NxN)"
    PE00[PE 0,0] --> PE01[PE 0,1]
    PE10[PE 1,0] --> PE11[PE 1,1]
    PE00 --> PE10
    PE01 --> PE11
    end
    A_Serial[Serial Input A] --> DesA[Deserializer]
    B_Serial[Serial Input B] --> DesB[Deserializer]
    DesA --> PE00
    DesB --> PE00
    PE11 --> SerOut[Serializer]
    SerOut --> Result[Serial Out]
```

- **Pipelined Execution**: 3-stage Processing Elements (PEs) with localized register-rich interconnects.
- **Skewed Dataflow**: Internal hardware managed time-skewing for optimal spatial alignment.
- **Area-Efficient I/O**: High-speed bit-serial interfaces reduce physical pin count by up to 95%.

> [📖 **Read the Architecture Documentation**](docs/ARCHITECTURE.md)

---

## ✅ Verification

Verification is performed using the following methodology.

| Tier | Methodology | Sign-off Status |
| :--- | :--- | :--- |
| **Functional** | Randomized SV Testbench | ✅ 100% Pass |
| **UVM** | UVM 1.2 Environment | ✅ Signed-off |
| **Physical** | DRC/LVS/Antenna Sign-off | ✅ Clean |
| **Timing** | Multi-corner STA (100MHz) | ✅ Met |

> [📊 **View Verification & Sign-off Report**](docs/VERIFICATION.md)

---

## 🎨 ASIC Implementation (Sky130)

| Metric | Result | Status |
| :--- | :--- | :--- |
| **Clock Frequency** | 100 MHz | ✅ Sign-off |
| **Total Power** | 2.22 mW | ✅ Optimized |
| **Core Area** | 0.121 mm² | ✅ Proven |
| **Utilization** | 54.1% | ✅ Validated |

---

## 🚀 Quick Start & Reproduction

Reproduce the entire verification and implementation flow with these commands.

### 1. Functional Simulation
Requires **Icarus Verilog**.
```bash
# Compile and run the top-level system simulation
iverilog -g2012 -o tb_top.vvp -I src/rtl src/rtl/*.sv src/tb/tb_top_iverilog.sv && vvp tb_top.vvp
```

### 2. ASIC Flow (RTL-to-GDSII)
Requires **Docker** and **LibreLane**.
```bash
# Execute the full silicon hardening flow
librelane scripts/librelane/config.json --design-dir . --dockerized
```

### 3. Command Reference
For UVM instructions, wave viewing, and advanced implementation flags, see the [Command Reference](docs/COMMAND_REFERENCE.md).

---

## 📚 Further Documentation
*   [🚀 **Getting Started & Implementation Guide**](docs/GETTING_STARTED.md)
*   [🏗️ **Architecture Documentation**](docs/ARCHITECTURE.md)
*   [✅ **Verification & Sign-off Report**](docs/VERIFICATION.md)
*   [🛠️ **Command Reference**](docs/COMMAND_REFERENCE.md)

---

## 📄 License
Licensed under the **MIT License**. See [LICENSE](LICENSE) for more information.


