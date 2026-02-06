# Deep Technical Architecture

This document provides a comprehensive, in-depth technical analysis of the Systolic Array Hardware Accelerator. It covers configuration parameters, microarchitectural details, gate-level implementation, dataflow strategies, and physical design considerations.

---

## 1. Architectural Philosophy

The design targets **Int8 inference acceleration** for Convolutional Neural Networks (CNNs). The primary objective is to maximize **Compute Intensity** (Operations per DRAM byte access) by utilizing a spatial processing grid that minimizes data movement.

### Design Principles:
1.  **Register-Rich Interconnect**: Every Processing Element (PE) is bounded by registers. This localized communication ensures that signal propagation delay is independent of the total array size, enabling high-frequency operation.
2.  **Massive Parallelism**: An $N \times N$ grid performs $N^2$ Multiply-Accumulate (MAC) operations per clock cycle.
3.  **Serialized I/O for Silicon Efficiency**: To resolve the "Pin-Limited" bottleneck of ASIC designs, a high-speed serial interface is used to feed the wide systolic parallel bus.

---

## 2. Configuration Parameters

The architecture is fully generic and defined by SystemVerilog parameters.

| Parameter | Default | Description | Impact on Hardware |
| :--- | :--- | :--- | :--- |
| **`AW`** | 8 | **Input A Bit-Width**. Signed INT8 by default. | Increases FF count and Multiplier logic size. |
| **`BW`** | 8 | **Input B Bit-Width**. Signed INT8 by default. | Increases FF count and Multiplier logic size. |
| **`ACCW`** | 32 | **Accumulator Width**. Default 32-bit. | Prevents overflow for $K$ accumulations. |
| **`ROWS`** | 8 | **Array Height**. Number of rows in the PE grid. | Linear area scaling. Adds $+ROWS$ drain latency. |
| **`COLS`** | 8 | **Array Width**. Number of columns in the PE grid. | Linear area scaling. Adds $+COLS$ fill latency. |
| **`K`** | 8 | **Dot Product Depth**. Inner dimension of GEMM. | Increases skew buffer depth and loading time. |

---

## 3. Module-Level Microarchitecture

### 3.1 Processing Element (PE) - `pe_mac.sv`
The PE is optimized for **Fmax** through a 3-stage pipeline.

*   **Stage 0: Operand Capture**:
    -   Registers `A_reg` and `B_reg` capture inputs from neighbors.
    -   **Digital Design Choice**: Using registers at the input prevents combinational paths from spanning multiple PEs, which would otherwise devastate timing closure in large arrays.
*   **Stage 1: Signed Multiplication**:
    -   A $8 \times 8$ signed multiplier computes the partial product.
    -   Result is stored in `prod_reg`.
*   **Stage 2: Accumulation**:
    -   A 32-bit adder performs $Acc = Acc + Prod$.
    -   **Control Logic**: The `load_acc` signal is pipelined through 2 stages (`d1`, `d2`) to align with the data latency. This allows the PE to reset its accumulator seamlessly when a new tile starts without losing a clock cycle.

### 3.2 Top-Level Wrapper (ASIC Interface) - `top_wrapper.sv`
The ASIC wrapper implements a robust Clock Domain Crossing (CDC) friendly interface.

-   **Deserialization Logic**:
    -   Two separate high-speed serial clocks (`A_in_serial_clk`, `B_in_serial_clk`) shift data into input registers.
    -   Once 128 bits (for 4x4) are captured, a `valid` pulse triggers the core array.
-   **Clock Buffering**:
-   **Clocking**:
    -   All clocks (`clk`, serial clocks) are balanced using automated **Clock Tree Synthesis (CTS)** via OpenROAD to ensure minimum skew across the PE grid.


---

## 4. Systolic Dataflow & Timing

### 4.1 Input Skewing Technique
Systolic arrays require data to be "skewed" in time. Without skewing, $A[1,0]$ would reach PE(1,0) at the same time $A[0,0]$ reaches PE(0,0), even though PE(1,0) shouldn't process it until one cycle later when the partial sum moves.

- **Implementation**: The `systolic4x4.sv` uses shift-register chains on the boundaries to delay row $i$ by $i$ cycles and column $j$ by $j$ cycles.

### 4.2 Pipeline Critical Path Analysis
In the SkyWater 130nm process, the critical path is typically the **32-bit carry-chain** in the PE accumulator or the **multiplier's compressor tree**.
- **Optimization**: By separating the multiplier and adder with `prod_reg`, we achieve valid timing at **100MHz+**, even with the relatively slow 130nm standard cells.

---

## 5. Physical Design & ASIC Signoff

Implementing a systolic array on silicon requires specific strategies handled by the **LibreLane** (OpenLane 2) flow:

### 5.1 Floorplanning & Congestion
- **Global Placement**: We use `FP_CORE_UTIL = 50` to maintain a compact design while ensuring routability for standard cells.
- **Pin Order**: Serialized interfaces minimize the 130nm bond-pad count and prevent top-level routing congestion.

### 5.2 Power Integrity (IR Drop Mitigation)
Systolic arrays exhibit high switching activity.
- **Power Grid**: A dense PDN is generated across all metal layers.
- **Analysis**: The flow includes PSM analysis to verify that the array remains stable under peak load (< 0.1% IR Drop).


### 5.3 Antenna Repair
Deep sub-micron processes suffer from the "Antenna Effect" where long metal wires during fabrication collect charge and damage gates.
- **Strategy**: We use heuristic diode insertion and the `OpenROAD.RepairAntennas` step to automatically protect gates.

---

## 6. Digital Design Trade-offs

| Feature | Design Choice | Benefit |
| :--- | :--- | :--- |
| **Arithmetic** | 2's Complement | Simplifies signed logic compared to sign-magnitude. |
| **Reset** | Asynchronous Active-Low | Standard for SkyWater 130nm, low area overhead. |
| **Interfaces** | Flattened Vectors | Required for Yosys synthesis compatibility (OpenSource tools). |
| **I/O** | Bit-Serial | Reduces pin count from ~1000 down to 15, enabling cheap packaging. |

---

**End of Architecture Document**
