# Deep Technical Architecture

This document provides an in-depth look at the hardware implementation of the Systolic Array Accelerator.

## 1. Pipelined Processing Element (PE)

The PE is designed for maximum frequency by pipelining the MAC operation into three distinct stages.

### Internal Microarchitecture
- **Stage 0 (Input)**: `A_in` and `B_in` are captured into `A_reg` and `B_reg`.
- **Stage 1 (Multiply)**: `A_reg` and `B_reg` are multiplied; results stored in `prod_reg`.
- **Stage 2 (Accumulate)**: `prod_reg` is added to the 32-bit `acc_reg`.

This 3-cycle pipeline ensures that the combinational multiplier and adder are separated by registers, allowing the design to meet high timing constraints on the SkyWater 130nm process.

```text
Clock:   T     T+1     T+2     T+3
       [In] -> [Reg] -> [Mult] -> [Acc]
```

## 2. Systolic Array Dataflow (4x4)

The array uses a **Weight-Stationary-ready** dataflow, though currently implemented as a standard systolic GEMM.

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

## 3. Controller FSM

The internal controller (`Systolic4x4.sv`) manages the execution lifecycle through four states:

1.  **IDLE**: Waiting for the `start` signal.
2.  **LOAD**: Captures parallel input matrices into internal skewing shift buffers.
3.  **RUN**: Streams data through the array and increments `cycle_cnt`.
    - Resets `load_acc` on the first cycle to clear previous residues.
4.  **FINISH**: Signals `done` and captures final `acc_reg` values into the top-level `C_out` registers.

### Total Latency Formula
The total execution time in cycles is:
$Latency = K + ROWS + COLS - 1$
For a 4x4 array with K=4, the total runtime is 11 cycles from the start of the `RUN` state.

## 4. Serialized Interface Protocol

The `Systolic4x4_serial_io` wrapper allows the chip to communicate using only a few pins. 

### Deserialization Flow
- **Frame Sync**: High for 1 cycle to signal the start of a matrix bitstream.
- **Bit Stream**: LSB-first streaming of the entire matrix (e.g., 128 bits for 4x4 8-bit Matrix A).
- **Valid Flag**: High when the full matrix is assembled and ready for the systolic core.

### Pin Map (ASIC/PDK Level)
| Pin Name | Direction | Type | Description |
| :--- | :--- | :--- | :--- |
| `clk` | Input | Clock | System Clock |
| `serial_clk` | Input | Clock | High-speed IO Clock |
| `frame_sync` | Input | Signal | Matrix Boundary Sync |
| `serial_data`| Input | Data | Serialized Bitstream |

## 5. Timing & Physical Constraints

- **Target Frequency**: 100 MHz (SkyWater 130nm).
- **Congestion Management**: Strategic PE placement is required to manage the high-fanout `rst_n` and `ce` signals. 
- **Buffer Insertion**: Clock Tree Synthesis (CTS) is critical for balancing the clock across the 16 PEs.
