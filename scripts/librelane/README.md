# LibreLane ASIC Configuration Files

This directory contains the configuration files required for ASIC implementation using LibreLane (OpenLane 2).

## Files

| File | Description |
|------|-------------|
| `config.json` | Main LibreLane configuration with all synthesis, placement, and routing parameters |
| `constraints.sdc` | SDC timing constraints (clock definitions, I/O delays, timing exceptions) |
| `pin_order.cfg` | Pin placement configuration for I/O pin ordering |

## Quick Start

```bash
# From project root directory
librelane scripts/librelane/config.json --design-dir . --dockerized
```

## Configuration Overview

### Target Technology
- **PDK:** SkyWater 130nm (sky130A)
- **Standard Cells:** sky130_fd_sc_hd (High Density)

### Clock Specifications
- **System Clock:** 10 MHz (100ns period)
- **Serial Clocks:** 50 MHz (20ns period)

### Physical Design Parameters
- **Core Utilization:** 35%
- **Placement Density:** 40%
- **Max Routing Layer:** met4
- **Aspect Ratio:** 1.0 (square)

## Modifying Parameters

### To increase frequency:
```json
"CLOCK_PERIOD": 50.0  // 20 MHz
```

### To reduce area:
```json
"FP_CORE_UTIL": 50,
"PL_TARGET_DENSITY": 0.55
```

### To improve routability:
```json
"FP_CORE_UTIL": 25,
"PL_TARGET_DENSITY": 0.35
```

## Output Location

Results are generated in `runs/RUN_<timestamp>/` relative to the project root.
