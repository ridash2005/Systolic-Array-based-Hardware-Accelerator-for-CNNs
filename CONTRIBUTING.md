# Contributing

Thank you for your interest in improving the Systolic Array Accelerator! We welcome contributions from the community.

## How to Contribute

1. **Report Bugs**: Use GitHub Issues to report bugs or request features.
2. **Submit Changes**:
   - Fork the repository.
   - Create a new branch (`feat/your-feature` or `fix/your-fix`).
   - Ensure your code follows the SystemVerilog coding style used in the project (clean, commented, and modular).
   - Update tests in `src/tb/` if applicable.
   - Submit a Pull Request with a clear description of the changes.

## Coding Standards
- Use `logic` instead of `reg`/`wire` where applicable.
- Use `always_ff`, `always_comb`, and `always_latch`.
- Ensure all modules are parameterized (widths, array size).
- Provide end-to-end testbenches for new modules.
