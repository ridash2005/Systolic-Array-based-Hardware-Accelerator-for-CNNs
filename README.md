# Systolic-Accelerator

## Description:
AISCAL-Systolic-Accelarator is an RTL implementation of a parameterizable systolic array accelerator designed for efficient matrix multiplication using serialized input/output interfaces. The project includes a complete and fully verified RTL design along with comprehensive testbenches for functional simulation, including both parallel and serialized data flow verification.

Currently, the focus of development and testing is on the RTL design with verified correctness through simulation. The ASIC physical design (synthesis, placement, routing, and signoff) remains to be completed using the next-generation open-source ASIC toolchain, OpenLane 2.

### Key Features:
- Modular RTL design of a 4x4 systolic array accelerator with serial I/O.
- Comprehensive SystemVerilog testbenches verifying serialization, deserialization, and matrix multiplication functionality.
- Parameterized widths and matrix sizes for flexibility.
- Ready for ASIC physical implementation via OpenLane 2 flow.
- Target technology: SkyWater 130nm PDK with open-source standard cells.

### Next Steps:
- Complete ASIC implementation including synthesis, floorplanning, placement, clock tree synthesis, routing, and signoff by leveraging OpenLane 2.
- Generate GDSII layout and prepare for tapeout with industry-standard open-source EDA tools.
