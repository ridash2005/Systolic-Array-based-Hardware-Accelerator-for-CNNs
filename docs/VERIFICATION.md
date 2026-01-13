# Verification Strategy

Effective hardware acceleration requires rigorous verification. This project uses a comprehensive SystemVerilog-based verification suite.

## 1. Unit Testing
Each component is verified in isolation:
- **PE_MAC**: Verified for correct multiplication and accumulation over multiple cycles, including overflow handling (32-bit width).
- **Serializer/Deserializer**: Verified for bit-perfect data recovery and frame synchronization.

## 2. Integrated Simulation
The `tb_systolic4x4.sv` testbench verifies the core array:
- Feeds randomized matrix tiles.
- Models the expected output in SystemVerilog.
- Compares RTL results against the golden model.

## 3. Top-Level Serialized Flow
The `tb_top_wrapper.sv` mimics a real-world system where data is streamed into the chip:
- Streams Matrix A and Matrix B bits.
- Monitors the `done` signal.
- Reads back the serialized results.
- Validates the end-to-end serialized GEMM operation.

## 4. Key Metrics
- **Functional Coverage**: Ensures all matrix indices and typical value ranges are exercised.
- **Timing Verification**: (Post-synthesis) Validates that the design meets the target clock period on the SkyWater 130nm process.
