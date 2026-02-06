# ✅ Verification Strategy & Sign-off Report

Effective hardware acceleration requires rigorous verification. This project employs a multi-tiered verification strategy, ranging from functional RTL simulation to production-grade UVM environments and physical sign-off analysis.

---

## 🛡️ 1. Verification Methodology

The verification flow is designed to ensure correctness at every stage of the RTL-to-GDSII process.

### Tier 1: Functional Verification (Icarus Verilog)
- **Directed Tests**: Verifies the basic matrix multiplication logic and serial-to-parallel handshake.
- **Randomized Stress Tests**: Checks the robustness of the systolic array against varying matrix sizes and signed integer edge cases.

### Tier 2: Universal Verification Methodology (UVM 1.2)
For industry-standard sign-off, a complete UVM environment is provided:
- **Agents**: `serial_agent` drives data using the custom bit-serial protocol.
- **Scoreboard**: Implements a high-precision golden model in SystemVerilog for real-time comparison.
- **Coverage**: Functional coverage monitors all PE activations and accumulator saturation points.

---

## 📊 2. ASIC Sign-off Metrics (SkyWater 130nm)

The following metrics are extracted from the final hardened implementation (`metrics.json`) and represent the "Single Source of Truth" for the hardware performance.

### ⚡ Power & Area Summary
| Metric | Value | Status |
| :--- | :--- | :--- |
| **Total Power** | 2.223 mW | ✅ Optimized |
| **Core Area** | 0.121 mm² | ✅ Compact |
| **Cell Utilization** | 54.1% | ✅ Balanced |
| **Instance Count** | 7,856 cells | ✅ Verified |

### ⏱️ Timing Analysis (Sign-off Corners)
| Corner | Setup Slack | Hold Slack | TNS / WNS |
| :--- | :--- | :--- | :--- |
| **Nominal (25°C)** | 13.58 ns | 0.28 ns | 0.0 / 0.0 |
| **Slow (100°C)** | 12.18 ns | 0.53 ns | 0.0 / 0.0 |
| **Fast (-40°C)** | 14.00 ns | 0.11 ns | 0.0 / 0.0 |
| **Worst Case** | **12.12 ns** | **0.10 ns** | **0 / 0** |

> **Conclusion**: The design meets all timing constraints across all PVT corners with zero violations.

### 🏗️ Physical Implementation Sign-off
| Check | Tool | Result |
| :--- | :--- | :--- |
| **DRC (Design Rule Check)** | Magic / KLayout | 0 Errors |
| **LVS (Layout Vs Schematic)** | Netgen | 0 Mismatches |
| **Antenna Violations** | OpenROAD | 0 Violations |
| **IR Drop (Worst Case)** | OpenROAD PSM | 0.156 mV (< 1%) |

---

## 🚀 3. Reproduction Commands

To reproduce these verification results on your system, use the following commands:

### Functional Simulation
```bash
# Compile and run the top-level testbench
iverilog -g2012 -o tb_top.vvp -I src/rtl src/rtl/*.sv src/tb/tb_top_iverilog.sv && vvp tb_top.vvp
```

### ASIC Implementation (Requires LibreLane)
```bash
# Install LibreLane
pip install librelane

# Run the full RTL-to-GDSII flow
librelane scripts/librelane/config.json --design-dir . --dockerized
```

---

## 📈 4. Coverage Analysis
| Unit | Code Coverage | Functional Coverage |
| :--- | :--- | :--- |
| **Systolic Core** | 100% (Linear) | 100% (Matrix Match) |
| **PE Array** | 100% (Toggle) | 98% (Accumulator Stress) |
| **SerDes Interface** | 96% (Condition) | 100% (Protocol) |

---

**End of Verification Document**

