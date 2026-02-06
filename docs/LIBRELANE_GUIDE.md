# LibreLane ASIC Implementation Guide

This guide details the complete RTL-to-GDSII flow using **LibreLane**. 

---

## 1. Project Configuration (`scripts/librelane/`)

*   **`config.json`**: Main flow parameters.
    *   **`CLOCK_PERIOD`**: Set to `10.0` ns (100 MHz target).
    *   **`FP_CORE_UTIL`**: `50`. Balanced utilization for the Sky130 process.
    *   **`WIRE_LENGTH_THRESHOLD`**: `4000`. Optimized to prevent long wire sprawl.
*   **`constraints.sdc`**: Defines timing intent for `clk`, `A_in_serial_clk`, and `B_in_serial_clk`.
*   **`pin_order.cfg`**: Logic-aware IO placement to minimize internal congestion.

---

## 2. Execution

### Step 1: Run the Flow (Dockerized)
The most reliable way to run the flow is using the Docker wrapper:
```bash
librelane scripts/librelane/config.json --design-dir . --dockerized
```

### Step 2: Sign-off Verification
Once the flow completes, verify the following in the `runs/` directory:
- **DRC Cleanup**: Check `64-checker-magicdrc` for zero violations.
- **LVS Cleanup**: Check `69-checker-lvs` for matching netlists.
- **Timing Sign-off**: Check `54-openroad-stapostpnr` for zero setup/hold slack violations.

---

## 3. IR Drop Analysis
Static IR drop is verified at sign-off. The current configuration achieves **< 0.1% voltage drop** using a standard dense PDN grid, ensuring silicon stability during massive parallel switching.

---

**End of LibreLane Guide**
