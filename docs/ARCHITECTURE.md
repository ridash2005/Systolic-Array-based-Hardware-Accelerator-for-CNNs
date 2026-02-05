# Deep Technical Architecture

This document provides a comprehensive, in-depth technical analysis of the Systolic Array Hardware Accelerator. It covers configuration parameters, microarchitectural details, gate-level implementation, dataflow strategies, and physical design considerations.

---

## 1. Configuration Parameters

The architecture is fully generic and defined by the following SystemVerilog parameters. These parameters allow the design to be scaled from small embedded cores to large data-center class accelerators.

### Design Guidelines
1.  **Bit Widths (`AW`, `BW`)**: 
    -   The design uses **signed** two's complement arithmetic.
    -   Minimum practical width is 2 bits.
    -   Common configurations: `AW=8, BW=8` (INT8 Inference), `AW=16, BW=16` (INT16 Training/Inference).
    -   Area scales roughly linearly with bit width for storage, but quadratically for multipliers.
2.  **Choosing `K` (Tile Depth)**:
    -   **Exact Match**: If your application multiplies small matrices (e.g., $2 \times 4$ by $4 \times 2$), set `ROWS=2, K=4, COLS=2` to solve it in one pass without tiling.
    -   **Tiling (Big Matrices)**: For large real-world matrices (e.g., $1024 \times 1024$) that exceed on-chip memory, the hardware `K` defines the **Tile Depth**.
        -   *Larger K* (e.g., 16, 32): Improves arithmetic intensity (ops/byte) by amortizing the pipeline fill/drain time over more calculation cycles. Increases input buffer area.
        -   *Smaller K* (e.g., 2, 4): Lower latency for first result, but higher overhead starting/stopping for large problems.

| Parameter | Default | Description | Impact on Hardware |
| :--- | :--- | :--- | :--- |
| **`AW`** | 8 | **Input A Bit-Width**. The width of each element in Matrix A (signed, default 8-bit). | Increases Flip-Flop count and Multiplier logic size. |
| **`BW`** | 8 | **Input B Bit-Width**. The width of each element in Matrix B (signed, default 8-bit). | Increases Flip-Flop count and Multiplier logic size. |
| **`ACCW`** | 32 | **Accumulator Width**. Valid width for the output Matrix C (default 32-bit). | Must be large enough to prevent overflow. Formula: $ACCW \ge AW + BW + \lceil\log_2(K)\rceil$. |
| **`ROWS`** | 2 | **Array Height**. Number of rows in the PE array (and Matrix A/C). | Linear impact on area. Increases latency by $+ROWS$ cycles to drain results. |
| **`COLS`** | 2 | **Array Width**. Number of columns in the PE array (and Matrix B/C). | Linear impact on area. Increases latency by $+COLS$ cycles to fill pipeline. |
| **`K`** | 2 | **Dot Product Depth**. The common dimension shared between inputs. If multiplying Matrix A $(M \times K)$ and Matrix B $(K \times N)$, then `K` is the number of columns in A and rows in B. | Increases input loading time, skew buffer depth, and total calculation latency ($+K$). |

---

## 2. Module-Level Deep Dive (Gate Level)

This section breaks down the hardware into simple digital logic components (Registers, Muxes, Gates) to explain the microarchitecture.

### 2.1 Processing Element (`pe_mac.sv`)
**What it does**: The computational heart of the array. It performs the operation $C = C + (A \times B)$.

*   **Pipeline Stage 0 (Input Capture)**: 
    *   **Registers**: `A_reg`, `B_reg`.
    *   **Function**: Captures the input operands `A_in` and `B_in` on the rising edge of `clk` when `ce` (chip enable) is high. This isolates the PE from the long interconnect wires of the previous row/column.
*   **Pipeline Stage 1 (Multiplication)**: 
    *   **Logic**: Signed Multiplier ($AW \times BW$).
    *   **Register**: `prod_reg`.
    *   **Function**: Computes product and stores it. This breaks the critical path between the multiplier and the adder.
*   **Pipeline Stage 2 (Accumulation)**: 
    *   **Logic**: Adder ($ACCW$-bit).
    *   **Register**: `acc_reg` (The Accumulator).
    *   **Mux**: Controlled by a delayed version of `load_acc`. 
        - If `load_acc` is active: `acc_reg <- prod_reg` (Starts a new dot product).
        - If `load_acc` is inactive: `acc_reg <- acc_reg + prod_reg` (Accumulates).

### 2.2 Core Array & Interconnect (`systolic4x4.sv`)
**What it does**: Instantiates the grid of PEs and manages data movement.

*   **Flattened Interface**: The module uses flattened vectors (e.g., `input wire [ROWS*K*AW-1:0] A_in_flat`) instead of unpacked arrays.
    *   **Why?**: This is crucial for compatibility with open-source synthesis tools like **Yosys**, which have limited support for SystemVerilog unpacked ports in top-level modules.
    *   **Mechanism**: Internal `generate` loops pack and unpack these flat vectors into 2D arrays for easy indexing within the RTL.
*   **Skewing Logic (Shift Registers)**: 
    *   Matrix A rows and Matrix B columns must arrive staggered.
    *   **Row 0**: No delay.
    *   **Row 1**: 1 cycle delay (1 Flip-Flop).
    *   **Row N**: N cycle delays.
    *   This ensures that $A[0,0]$ and $B[0,0]$ meet at PE(0,0) at $T=0$, while $A[0,1]$ and $B[1,0]$ meet at PE(0,1) and PE(1,0) at $T=1$.

### 2.3 Deserializer (`deserializer.sv`)
**What it does**: Converts a high-speed single-bit stream into a wide parallel bus.

*   **Shift Register**: A chain of Flip-Flops `WIDTH` bits long.
    *   On each `serial_clk` edge, data shifts: `shift_reg <= {new_bit, shift_reg[high:1]}`.
*   **Frame Sync Detection**: Monitors the `frame_sync` input. A high pulse resets the internal bit counter and starts a new capture window.
*   **Valid Signal**: When the counter reaches `WIDTH`, `data_valid` goes high for one cycle, indicating the parallel output is stable.

### 2.4 Serializer (`serializer.sv`)
**What it does**: Converts the wide parallel result bus into a single output stream.

*   **Load Mode**: When `frame_sync` is high, the massive parallel result vector (e.g., 512 bits) is parallel-loaded into the shift register.
*   **Shift Mode**: For the next $N$ cycles, the register shifts out one bit at a time on `serial_data`.
*   **Busy Flag**: Asserts `busy` while shifting to prevent new data from overwriting the current frame.

---

## 3. Pipelined Processing Element (PE) Architecture

The PE is designed for **maximum operating frequency** (Fmax) by pipelining the MAC operation into three distinct clock cycles.

### Internal Microarchitecture
- **Stage 0 (Input)**: `A_in` and `B_in` are captured into `A_reg` and `B_reg`.
- **Stage 1 (Multiply)**: `A_reg` and `B_reg` are multiplied; results stored in `prod_reg`.
- **Stage 2 (Accumulate)**: `prod_reg` is added to the 32-bit `acc_reg`.
  - **Control Pipeline**: The `load_acc` signal is pipelined (`load_acc_d1`, `load_acc_d2`) to align with the data latency. When active, it initializes `acc_reg` with the current `prod_reg` (starting a new sum); otherwise, it accumulates.

### Timing Benefits
This 3-cycle pipeline ensures that the slow combinational multiplier and the carry-chain intensive adder are separated by registers. In physical design terms, this prevents the logic depth from becoming `Multiplier_Depth + Adder_Depth`, keeping it to `max(Multiplier_Depth, Adder_Depth)`, which significantly boosts Fmax on the SkyWater 130nm process.

```text
Clock:      T       T+1       T+2       T+3
Data:     [In]  -> [Reg]  -> [Mult] -> [Acc]
Control: [Load] -> [D1]   -> [D2]   -> [Clear]
```

---

## 4. Systolic Array Dataflow Strategy

The array uses a **Weight-Stationary-ready** dataflow, though currently implemented as a standard systolic GEMM (Output Stationary flow where partial sums move, or Input Stationary where inputs move). In this specific design:
- **Inputs Move**: A flows Left->Right, B flows Top->Bottom.
- **Weights/Partials Stationary**: Accumulators stay in the PEs until the calculation is finished, then are read out.

### Connectivity & Edge Handling
The array is constructed using `generate` blocks that handle boundary conditions explicitly:
- **Body PEs**: Connected on all sides.
- **Right Edge PEs**: `A_out` ports are typically unconnected (or passed to a monitor).
- **Bottom Edge PEs**: `B_out` ports are unconnected.

### Input Skewing Schedule
To align data correctly, Matrix A and B must enter the array with a staggered delay:

| Cycle | PE(0,0) Inputs | PE(1,1) Inputs | Note |
| :--- | :--- | :--- | :--- |
| **0** | A(0,0), B(0,0) | - | Start |
| **1** | A(0,1), B(1,0) | - | |
| **2** | A(0,2), B(2,0) | A(1,1), B(1,1) | PE(1,1) starts here |
| **...** | ... | ... | |
| **T_final**| - | A(3,3), B(3,3) | End of streaming |

### Calculation Latency Formula
The total execution time in cycles from `start` to `done` is:
$$Latency = K + ROWS + COLS - 1 + Pipeline\_Depth$$

---

## 5. Controller FSM

The internal controller (`Systolic4x4.sv`) manages the execution lifecycle through a Finite State Machine:

1.  **IDLE**: 
    -   Reset state.
    -   Waits for `start` signal.
    -   Clears shift registers and accumulators.
2.  **LOAD**:
    -   Activated when `start` is detected.
    -   Captures parallel input matrices into the internal skewing shift buffers.
    -   **Important**: Explicitly resets the unused portions of logic to avoid X-propagation.
3.  **RUN**: 
    -   Enables the `ce` (Chip Enable) signal for PEs.
    -   Shifts the skew buffers every cycle to feed new data into the array.
    -   Increments `cycle_cnt`.
    -   Manages `load_acc` timing to ensure accumulators reset at the start of a dot product.
4.  **FINISH**:
    -   Triggered when `cycle_cnt` reaches the target.
    -   Maps the PE accumulator values (internal 2D array) to the flattened output bus `C_out`.
    -   Asserts `done` high for one cycle.
    -   Returns to IDLE.

---

## 6. ASIC ASIC Implementation & Pinout

### Serialized Interface Protocol
To make the design practical for physical tapeouts with limited pins (like TinyTapeout or QFN packages), we implemented a bit-serial interface wrapper.

1.  **Deserialization**: 
    -   Incoming Serial Data (A and B) is clocked by high-speed serial clocks (`A_in_serial_clk`, `B_in_serial_clk`).
    -   Once a full frame (matrix tile) is received, a `valid` signal triggers the core.
2.  **Core Computation**: 
    -   Runs on the slower System Clock (`clk`).
3.  **Serialization**:
    -   Results are loaded into a shift register and streamed out on `C_out_serial_data` using the System Clock.

### Pin Map (ASIC/PDK Level)

| Pin Name | Direction | Type | Description |
| :--- | :--- | :--- | :--- |
| `clk` | Input | Clock | **System Core Clock**. Drives the systolic array and control logic. |
| `rst_n` | Input | Reset | **Active-Low Asynchronous Reset**. Globally resets all FFs. |
| `start` | Input | Control | Triggers the Matrix Multiplication operation. |
| `A_in_serial_clk` | Input | Clock | **Serial Clock (A)**. High-speed clock for shifting in Matrix A. |
| `A_in_serial_data`| Input | Data | Serial Bitstream for Matrix A. |
| `A_in_frame_sync` | Input | Sync | Pulse indicating start of Matrix A frame. |
| `B_in_serial_clk` | Input | Clock | **Serial Clock (B)**. High-speed clock for shifting in Matrix B. |
| `B_in_serial_data`| Input | Data | Serial Bitstream for Matrix B. |
| `B_in_frame_sync` | Input | Sync | Pulse indicating start of Matrix B frame. |
| `C_out_serial_clk`| Output| Clock | **Serial Clock (C)**. Copy of `clk`, provided for source-synchronous capture. |
| `C_out_serial_data`| Output| Data | Serial Bitstream for Result Matrix C. |
| `C_out_frame_sync`| Output| Sync | Pulse indicating start of Result frame. |
| `done` | Output | Status | High for 1 cycle when calculation completes. |

---

## 7. Physical Design Constraints

### Clock Domains
- **Core Domain**: `clk` (Target: 10-20 MHz for low power, up to 100MHz for performance).
- **IO Domain A**: `A_in_serial_clk` (Target: 50 MHz+).
- **IO Domain B**: `B_in_serial_clk` (Target: 50 MHz+).
- *Crossing*: The design handles Domain Crossing via the `valid` handshake signals and double-flop synchronizers (in the silicon wrapper logic, not shown in RTL but implied by separate clock trees).

### Floorplanning
- **Aspect Ratio**: Square (1.0) recommended for balanced row/column routing.
- **Power Grid**: Standard robust PDN (Power Delivery Network) with vertical and horizontal stripes on high metal layers (Met4/Met5) to prevent IR drop during dense matrix operations.

### Congestion
- **Issue**: Systolic arrays have dense local connectivity between PEs.
- **Mitigation**: The PEs are designed to tile naturally. However, the `rst_n` and `clk` signals have high fanout (connected to every FF). Clock Tree Synthesis (CTS) settings in the ASIC config must effectively buffer these signals.

---

**End of Architecture Document**
