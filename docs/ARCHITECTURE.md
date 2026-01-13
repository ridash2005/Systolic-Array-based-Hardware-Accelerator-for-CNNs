# Architecture Overview

This project implements a **Systolic Array-based Hardware Accelerator** specifically optimized for Convolutional Neural Network (CNN) operations, primarily Dense (Fully Connected) and Convolutional layers which are essentially Matrix-Matrix Multiplications (GEMM).

## 1. Processing Element (PE)
Each Processing Element is the heart of the systolic array. It performs a Multiply-Accumulate (MAC) operation in a pipelined fashion.

- **Multiplication Stage**: Multiplies incoming 8-bit signed operands (A and B).
- **Accumulation Stage**: Adds the product to a 32-bit internal accumulator.
- **Systolic Propagation**: Registers and passes the operands A to the right and B downwards in the next clock cycle.

### PE Block Diagram
```text
          B_in
           |
           v
      +----------+
A_in ->|  MAC PE  |-> A_out
      +----------+
           |
           v
          B_out
```

## 2. 4x4 Systolic Array
The array consists of 16 PEs arranged in a 4x4 grid. 

### Data Flow
- **Matrix A (Activations)**: Streamed row-wise from the left.
- **Matrix B (Weights)**: Streamed column-wise from the top.
- **Skewing**: To ensure that the correct elements meet at the correct PE at the correct time, the input rows and columns are "skewed" (delayed).
  - Row `i` is delayed by `i` cycles.
  - Column `j` is delayed by `j` cycles.

### Result Collection
After $K + ROWS + COLS - 2$ cycles (where $K$ is the inner dimension), the final accumulated results are captured in the output registers.

## 3. Serialized I/O Wrapper
To optimize for pin-constrained ASIC designs (like the TinyTapeout or SkyWater 130nm runs), the accelerator includes:
- **Deserializers**: Convert high-speed serial bitstreams into parallel matrix tiles.
- **Serializers**: Stream the final 32-bit matrix results back out.
- **Frame Sync**: Uses frame synchronization signals to delimit matrix boundaries in the serial stream.

## 4. Control Logic
An FSM-based controller manages the feeding of data from shift buffers into the array, triggers the accumulation reset, and signals the completion of the computation via the `done` flag.
