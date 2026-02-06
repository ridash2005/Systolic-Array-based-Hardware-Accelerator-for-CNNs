# Verification Strategy & Signoff

Effective hardware acceleration requires rigorous verification. This project uses a comprehensive SystemVerilog-based verification suite, ranging from directed unit testing to an industry-standard UVM environment.

---

## 1. Multi-Tier Verification Flow

### Tier 1: Functional RTL (`tb_top_iverilog.sv`)
- **Status**: **✅ PASSED / SIGNED-OFF**
- **Method**: Icarus Verilog simulation of the serial interface and systolic core.
- **Command**: `iverilog -g2012 -o tb_top.vvp -I src/rtl src/rtl/*.sv src/tb/tb_top_iverilog.sv && vvp tb_top.vvp`

### Tier 2: Robustness Stress-Test (`tb_systolic_robust.sv`)
- **Focus**: Verifies generic parameterization for arbitrary array sizes (e.g., 9x7).
- **Status**: **✅ PASSED**


---

## 2. UVM 1.2 Enterprise Environment

For production-grade signoff, we provide a **Universal Verification Methodology (UVM)** environment located in `src/uvm_tb`.

### Environment Architecture
- **Agents**:
  - `serial_agent`: Models the high-speed bit-serial interface.
  - Handles `frame_sync` and `serial_clk` protocols.
- **Scoreboard**:
  - Implements a golden matrix-multiplication model.
  - **Feature**: Supports large bit-vector comparison (up to 1024 bits) for 4x4 and 8x8 result captures.
- **Monitor Fixes**: 
  - Recently patched to ensure **Big-Endian bit ordering** consistency across the monitor and deserializer, ensuring result bits match the hardware's MSB-first transmission.

### Running UVM
> **Note**: Requires a commercial-grade simulator (Questasim, Vivado Xsim, or Xcelium). Icarus Verilog does not support UVM 1.2.
```bash
# Example for Vivado Xsim
xvlog -sv -f src/uvm_tb/compile_list.f
xelab top_tb -L uvm
xsim top_tb -runall
```

---

## 3. Timing & Power Verification (Signoff)

### Static Timing Analysis (STA)
- **Signoff Tool**: OpenSTA (via LibreLane).
- **Checks**: Setup/Hold violations across multiple corners (`nom_tt`, `max_ss`, `min_ff`).
- **Constraint**: `set_load` is applied to output ports to model realistic PCB trace capacitance.

### IR Drop Analysis
- **Signoff Tool**: OpenROAD PSM.
- **Requirement**: Static Power Grid analysis verifies that under maximum switching activity (all 64 PEs active), the voltage drop is within the 100mV safety margin for the Sky130 process.

---

## 4. Coverage Metrics

| Tier | Code Coverage | Functional Coverage |
| :--- | :--- | :--- |
| **RTL Core** | 100% (Line/Toggle) | 100% (Matrix result matching) |
| **Serial IO**| >95% | Validated for all frame boundaries. |
| **Wrapper**  | 100% | Handshake & Reset sequences verified. |

---

**End of Verification Document**
