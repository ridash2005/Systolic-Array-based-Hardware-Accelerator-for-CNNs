# 🚀 Systolic Array Hardware Accelerator for CNNs

[![Hardware](https://img.shields.io/badge/Hardware-SystemVerilog-blue.svg)](https://en.wikipedia.org/wiki/SystemVerilog)
[![PDK](https://img.shields.io/badge/PDK-SkyWater_130nm-brightgreen.svg)](https://skywater-pdk.readthedocs.io/)
[![License](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![Design](https://img.shields.io/badge/Design-ASIC-orange.svg)](docs/ARCHITECTURE.md)

A high-performance, parameterizable **4x4 Systolic Array Accelerator** implemented in SystemVerilog, designed for efficient Matrix-Matrix Multiplications (GEMM) in Deep Learning workloads. This project features a complete ASIC flow targeting the **SkyWater 130nm PDK** using the **OpenLane** toolchain.

---

## 📖 Table of Contents
- [Overview](#overview)
- [Key Features](#key-features)
- [Hardware Architecture](#hardware-architecture)
- [Advanced Serialization](#advanced-serialization)
- [Getting Started](#getting-started)
- [ASIC Flow & Physical Design](#asic-flow--physical-design)
---

## 🌟 Overview
In modern AI silicon (like NVIDIA's Tensor Cores), systolic arrays are the standard for high-throughput tensor computations. This project implements a **Weight-Stationary-ready** systolic architecture that minimizes data movement and maximizes Processing Element (PE) utilization through spatial parallelism.

![Architecture Diagram](assets/architecture.png)

---

## ✨ Key Features
- **Highly Modular PE Design**: Pipelined MAC units with 8-bit signed inputs and 32-bit accumulators.
- **Spatial Parallelism**: 16 PEs operating in parallel with systolic data propagation (Right/Down).
- **Latency-Optimized Control**: Integrated hardware controller handles input skewing and result collection.
- **ASIC Optimized**: Serialized I/O interface to reduce pin count, targeting high-density cell-based layouts.
- **Verified for RTL Signoff**: Comprehensive SystemVerilog testbenches with randomized stimulus.

---

## 🏗️ Hardware Architecture

### Processing Element (PE)
Each PE performs $C = C + (A \times B)$. It is designed with architectural registered outputs to ensure high-frequency timing closure by breaking long combinational paths across the array.

### Dataflow Strategy
The array uses an **Input Skewing** technique where Matrix A rows and Matrix B columns are delayed by their respective indices. This ensures that the correctly indexed elements from both matrices arrive at the target PE simultaneously.

> [Read the full ARCHITECTURE.md here](docs/ARCHITECTURE.md)

---

## 📡 Advanced Serialization
To make the design practical for physical tapeouts with limited pins (e.g., TinyTapeout or low-cost QFN packages), we implemented:
- **Frame-Sync Deserializers**: Captures 128-bit matrix tiles from a single serial bitstream.
- **Pipelined Serializers**: Streams 32-bit results back with minimal overhead.

> [Check the VERIFICATION.md for simulation details](docs/VERIFICATION.md)

---

## 🛠️ Getting Started

### Quick Simulation (Icarus Verilog)
```bash
# Compile
iverilog -g2012 -o sim.vvp src/rtl/*.sv src/tb/tb_top_wrapper.sv

# Run
vvp sim.vvp
```

### Detailed Setup
Refer to [GETTING_STARTED.md](docs/GETTING_STARTED.md) for environment setup and waveform viewing instructions.

---

## 🎨 ASIC Flow & Physical Design
The project includes a complete OpenLane 2 configuration for the SkyWater 130nm process.

- **Synthesis**: Yosys mapping to Sky130 standard cells.
- **Floorplanning**: Custom pin placement and power ring definition.
- **Placement & Routing**: High-density routing with timing-driven optimization.

---

## 📄 License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
