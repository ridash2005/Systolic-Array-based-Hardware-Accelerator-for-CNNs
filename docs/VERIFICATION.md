# Verification Strategy

Effective hardware acceleration requires rigorous verification. This project uses a comprehensive SystemVerilog-based verification suite, ranging from direct module testing to a complete UVM environment.

## 1. Parameters (Industry Grade)
- **Input Width (INT8)**: 8-bit Signed
- **Accumulator Width**: 32-bit Signed
- **Array Size**: Scalable, default set to 8x8 (RTL core) and 4x4 (Serial Wrapper) for verification.

## 2. Integrated Simulation
The `tb_systolic4x4.sv` testbench verifies the core array:
- **Config**: 8x8 Systolic Array.
- **Verification**: Randomized matrix values, Golden Model comparison in SV.
- **Status**: **✅ PASSED** with >2000 cycles.

### Running with Icarus Verilog
```bash
iverilog -g2012 -o tb_sys.vvp -I src/rtl src/rtl/pe_mac.sv src/rtl/systolic4x4.sv src/tb/tb_systolic4x4.sv
vvp tb_sys.vvp
```

## 3. Top-Level Serialized Flow (Signoff Verification)
The `tb_top_iverilog.sv` provides a definitive end-to-end check for the serial interface wrappers:
- **Config**: 4x4 Systolic Array (due to serial stream length).
- **Streaming I/O**: Streams 8-bit signed matrix elements via serial interfaces (128-bit frames).
- **Automated Checking**: Captures the serial result stream, reconstructs the 512-bit result matrix, and compares against GEMM reference values.
- **Status**: **✅ PASSED**

### Running with Icarus Verilog
```bash
iverilog -g2012 -o tb_top.vvp -I src/rtl src/rtl/pe_mac.sv src/rtl/systolic4x4.sv src/rtl/deserializer.sv src/rtl/serializer.sv src/rtl/systolic4x4_serial_io.sv src/rtl/top_wrapper.sv src/tb/tb_top_iverilog.sv
vvp tb_top.vvp
```

## 4. Robustness Verification
The `tb_systolic_robust.sv` testbench ensures the architecture scales correctly to non-standard dimensions.
- **Config**: 9x7 Array with K=11.
- **Verification**: Checks correct indexing and timing for odd/prime parameter sets.
- **Flattened Interface**: Verifies the flattened packed-array interface used for ASIC synthesis.
- **Status**: **✅ PASSED**

```bash
iverilog -g2012 -o tb_robust.vvp -I src/rtl src/rtl/pe_mac.sv src/rtl/systolic4x4.sv src/tb/tb_systolic_robust.sv
vvp tb_robust.vvp
```

## 5. UVM Framework
A professional-grade **UVM (Universal Verification Methodology)** environment is integrated in `src/uvm_tb`.

- **Platform**: Requires a UVM-compliant simulator (Vivado, Questa, or Xcelium). **Icarus Verilog does NOT support this UVM testbench**.
- **Configured For**: 4x4 Array with 128-bit serial payloads.
- **Updates**: The UVM Monitor has been patched to support large vector widths (up to 1024 bits) to handle the 4x4x8 and 4x4x32 frame sizes correctly.
- **Reference Model**: `scoreboard.sv` implements a bit-accurate SystemVerilog reference model for GEMM.

> For detailed usage, see [src/uvm_tb/UVM_VERIFICATION_GUIDE.md](../src/uvm_tb/UVM_VERIFICATION_GUIDE.md).

## 6. Key Metrics
- **Functional Correctness**: Verified for zero-mismatch result capture.
- **Timing Verification**: (Post-synthesis) Validates that the design meets the target clock period on the SkyWater 130nm process.
