# Deep Technical Architecture

This document provides an in-depth look at the hardware implementation of the Systolic Array Accelerator.

## 1. Configuration Parameters

The architecture is fully generic and defined by the following Verilog parameters.

### Design Guidelines
1.  **Bit Widths (`AW`, `BW`)**: Since the design uses **signed** arithmetic, you generally need **`AW >= 2`** and **`BW >= 2`** to represent meaningful positive and negative ranges. There is no upper limit in the logic (e.g., 64-bit or 128-bit works), but total area scales linearly.
2.  **Choosing `K` (Tile Depth)**:
    -   **Exact Match**: If your application multiplies small matrices (e.g., $2 \times 4$ by $4 \times 2$), set `ROWS=2, K=4, COLS=2` to solve it in one pass.
    -   **Tiling (Big Matrices)**: For large real-world matrices (e.g., $1024 \times 1024$), your hardware `K` defines the **Tile Depth**.
        -   *Larger K* (e.g., 16, 32): Improves efficiency by amortizing the pipeline fill/drain time over more calculation cycles. Increases input buffer area.
        -   *Smaller K* (e.g., 2, 4): Lower latency for results, but higher overhead starting/stopping for large problems.

| Parameter | Default | Description | Impact on Hardware |
| :--- | :--- | :--- | :--- |
| **`AW`** | 4 | **Input A Bit-Width**. The width of each element in Matrix A (signed). | Increases FF count and Multiplier size. |
| **`BW`** | 4 | **Input B Bit-Width**. The width of each element in Matrix B (signed). | Increases FF count and Multiplier size. |
| **`ACCW`** | 16 | **Accumulator Width**. Valid width for the output Matrix C. | Must be large enough to prevent overflow: $ACCW \ge AW + BW + \lceil\log_2(K)\rceil$. |
| **`ROWS`** | 2 | **Array Height**. Number of rows in the PE array (and Matrix A/C). | Linear impact on area. Increases latency by $+ROWS$. |
| **`COLS`** | 2 | **Array Width**. Number of columns in the PE array (and Matrix B/C). | Linear impact on area. Increases latency by $+COLS$. |
| **`K`** | 2 | **Dot Product Depth**. The common dimension shared between inputs. If multiplying Matrix A $(M \times K)$ and Matrix B $(K \times N)$, then `K` is the number of columns in A and rows in B. | Increases input loading time, buffer depth, and calculation latency ($+K$). |

## 2. Module-Level Deep Dive (Gate Level)

This section breaks down the hardware into simple digital logic components (Registers, Muxes, Gates) for beginners.

### 2.1 Processing Element (`PE_MAC.sv`)
**What it does**: The brain of the array. It performs $C = C + (A \times B)$.
*   **Registers (D-Flip-Flops)**:
    *   `A_reg`, `B_reg`: Hold inputs for one clock cycle to stabilize them (Pipeling Stage 1).
    *   `prod_reg`: Holds the result of $A \times B$ (Pipelining Stage 2).
    *   `acc_reg`: The 32-bit memory that stores the running total (Accumulator).
*   **Combinational Logic**:
    *   **Multiplier**: An arithmetic unit that takes `A_reg` and `B_reg` and outputs the product.
    *   **Adder**: Adds the current `prod_reg` to the value currently in `acc_reg`.
    *   **Mux (Multiplexer)**: Controlled by `load_acc`; chooses whether `acc_reg` gets `(acc + prod)` or starts fresh with just `prod`.

### 2.2 Deserializer (`deserializer.sv`)
**What it does**: Converts a single wire stream (Serial) into a wide data bus (Parallel).
*   **Shift Register**: A long chain of flip-flops connected in a line.
    *   Every clock cycle, bits shift one step to the right: `reg[N] <= reg[N+1]`.
    *   The new serial bit enters at the start.
*   **Counter**: A simple adder that counts $0, 1, 2...$ to track how many bits have arrived.
*   **Comparator**: Checks `if (counter == WIDTH)`. When true, it tells the system "Data is ready!" (`data_valid=1`).

### 2.3 Internal Skewing Logic (in `Systolic4x4.sv`)
**What it does**: Delays inputs so they arrive at the diagonal PEs at the right time.
*   This is purely a set of **Shift Registers**.
*   **Row 0**: No delay.
*   **Row 1**: Signals pass through 1 Flip-Flop before reaching the array.
*   **Row 2**: Signals pass through 2 Flip-Flops.
*   *Analogy*: Like runners starting a race at different times so they all cross the finish line together.

### 2.4 Serializer (`serializer.sv`)
**What it does**: Converts the wide parallel result back into a single wire stream to leave the chip.
*   **Mux**: Selects between the `parallel_data` (initial load) or the shifted version of itself.
*   **Shift Register**: Upon `start`, it loads the huge 32-bit (or larger) number. Then, it shifts right by 1 bit every clock cycle, pushing the Least Significant Bit (LSB) out the `serial_data` wire.

## 3. Pipelined Processing Element (PE)

The PE is designed for maximum frequency by pipelining the MAC operation into three distinct stages.

### Internal Microarchitecture
- **Stage 0 (Input)**: `A_in` and `B_in` are captured into `A_reg` and `B_reg`.
- **Stage 1 (Multiply)**: `A_reg` and `B_reg` are multiplied; results stored in `prod_reg`.
- **Stage 2 (Accumulate)**: `prod_reg` is added to the 32-bit `acc_reg`.
  - **Control Pipeline**: The `load_acc` signal is pipelined (`load_acc_d1`, `load_acc_d2`) to align with the data latency. When active, it initializes `acc_reg` with the current `prod_reg` (starting a new sum); otherwise, it accumulates.

This 3-cycle pipeline ensures that the combinational multiplier and adder are separated by registers, allowing the design to meet high timing constraints on the SkyWater 130nm process.

```text
Clock:      T       T+1       T+2       T+3
Data:     [In]  -> [Reg]  -> [Mult] -> [Acc]
Control: [Load] -> [D1]   -> [D2]   -> [Clear]
```

## 3. Systolic Array Dataflow (Generic NxM)

The array uses a **Weight-Stationary-ready** dataflow, though currently implemented as a standard systolic GEMM.

### Connectivity & Edge Handling
The array is constructed using `generate` blocks that handle boundary conditions explicitly:
- **Body PEs**: Connected on all sides.
- **Right Edge PEs**: `A_out` ports are left unconnected (floating) to prevent synthesis warnings about unread bits.
- **Bottom Edge PEs**: `B_out` ports are left unconnected for the same reason.

### Input Skewing Schedule
To align data correctly, Matrix A and B must enter the array with a staggered delay:

| Cycle | PE(0,0) Inputs | PE(1,1) Inputs | Note |
| :--- | :--- | :--- | :--- |
| **0** | A(0,0), B(0,0) | - | Start |
| **1** | A(0,1), B(1,0) | - | |
| **2** | A(0,2), B(2,0) | A(1,1), B(1,1) | PE(1,1) starts here |
| **...** | ... | ... | |
| **T_final**| - | A(3,3), B(3,3) | End of streaming |

### Path Propagation
- **Rightward**: `A_out[r][c] = A_reg[r][c]` (1 cycle delay per column).
- **Downward**: `B_out[r][c] = B_reg[r][c]` (1 cycle delay per row).

## 4. Controller FSM

The internal controller (`Systolic4x4.sv`) manages the execution lifecycle through four states:

1.  **IDLE**: Waiting for the `start` signal.
2.  **LOAD**:
    - Captures parallel input matrices into internal skewing shift buffers.
    - **Buffer Clearing**: Explicitly resets the `A_shift` and `B_shift` registers to `0` to prevent "garbage" data from previous runs or uninitialized states from entering the array.
3.  **RUN**: Streams data through the array and increments `cycle_cnt`.
    - Resets `load_acc` on the first cycle to clear previous residues.
4.  **FINISH**: Signals `done` and captures final `acc_reg` values into the top-level `C_out` registers.

### Total Latency Formula
The total execution time in cycles is:
$Latency = K + ROWS + COLS - 1$
For the default 2x2 configuration with K=2, the total runtime is $2 + 2 + 2 - 1 = 5$ cycles from the start of the `RUN` state.

## 5. Serialized Interface Protocol

The `Systolic4x4_serial_io` wrapper allows the chip to communicate using only a few pins. 

### Deserialization Flow
- **Frame Sync**: High for 1 cycle to signal the start of a matrix bitstream.
- **Bit Stream**: LSB-first streaming of the entire matrix (e.g., determines by `ROWS*K*AW`).
- **Valid Flag**: High when the full matrix is assembled and ready for the systolic core.

### Pin Map (ASIC/PDK Level)
| Pin Name | Direction | Type | Description |
| :--- | :--- | :--- | :--- |
| `clk` | Input | Clock | System Core Clock |
| `rst_n` | Input | Reset | Active-Low Asynchronous Reset |
| `start` | Input | Control | Triggers Matrix Multiplication |
| `A_in_serial_clk` | Input | Clock | Serial Clock for Matrix A Input |
| `A_in_serial_data`| Input | Data | Serial Bitstream for Matrix A |
| `B_in_serial_clk` | Input | Clock | Serial Clock for Matrix B Input |
| `B_in_serial_data`| Input | Data | Serial Bitstream for Matrix B |
| `C_out_serial_clk`| Output| Clock | Serial Clock for Result Output (Synchronous to `clk`) |
| `C_out_serial_data`| Output| Data | Serial Bitstream for Result Matrix |

## 6. Timing & Physical Constraints

- **Target Frequency**: 100 MHz (SkyWater 130nm).
- **Congestion Management**: Strategic PE placement is required to manage the high-fanout `rst_n` and `ce` signals. 
- **Buffer Insertion**: Clock Tree Synthesis (CTS) is critical for balancing the clock across the 16 PEs.
