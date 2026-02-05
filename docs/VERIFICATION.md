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

## 3. Top-Level Serialized Flow (Signoff Verification)
The `tb_top_iverilog.sv` provides a definitive end-to-end check for Icarus Verilog:
- **Streaming I/O**: Streams 4-bit signed matrix elements via serial interfaces.
- **Cycle-Accurate**: Fixed synchronization race conditions using precise delays.
- **Automated Checking**: Captures the serial result stream, reconstructs the 64-bit matrix, and compares against GEMM reference values.
- **Status**: **✅ PASSED** (Validated for 2x2 tiles with signed accumulation).

## 4. UVM Framework
A professional-grade **UVM (Universal Verification Methodology)** environment is integrated in `src/uvm_tb`:
- **VIPs**: Custom Serial Protocol Agents with Monitor/Driver/Sequencer.
- **Scoreboard**: Implements the "Oracle" reference model in high-level SV.
- **Randomization**: Constrained-random testing for edge-case coverage.
- **Architectural Status**: Fixed and synchronized for cross-simulator compatibility.

## 5. Key Metrics
- **Functional Correctness**: Verified for zero-mismatch result capture.
- **Timing Verification**: (Post-synthesis) Validates that the design meets the target clock period on the SkyWater 130nm process.
