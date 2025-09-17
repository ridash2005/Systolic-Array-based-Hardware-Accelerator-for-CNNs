# Systolic-Accelerator

## Description  
AISCAL-Systolic-Accelerator is an RTL implementation of a parameterizable systolic array accelerator designed for efficient matrix multiplication using serialized input/output interfaces. The project includes a complete and fully verified RTL design along with comprehensive testbenches for functional simulation, including both parallel and serialized data flow verification.

## Current Project Status  
The RTL design is fully verified through simulation. The ASIC physical design flow is in progress using the OpenLane 2 open-source ASIC toolchain targeting the SkyWater 130nm PDK and open-source standard cell libraries.

Recent OpenLane runs have completed synthesis, placement, clock tree synthesis (CTS), and initial routing stages. Multiple warnings were generated, indicating areas for improvement to reach full signoff readiness:

- RTL lint warnings that require cleaning up.  
- Nets without global routing coverage due to congestion or placement constraints.  
- Setup timing violations unresolved at worst-case corners.  
- Large high-fanout nets affecting routing performance.  
- Output pins lacking antenna diffusion information, potentially causing antenna effect risks.  
- Detailed routing warnings about LEF enclosure and cutclass definitions.  
- Incomplete IR drop analysis due to missing voltage source files.

These show the physical design flow is underway but requires further design adjustments, constraint tuning, and possibly library/configuration updates.

## Key Features  
- Modular 4x4 systolic array accelerator with serial I/O interfaces.  
- Parameterized widths and matrix sizes for flexibility.  
- Full SystemVerilog testbenches verifying serialization, deserialization, and matrix multiplication.  
- Target technology: SkyWater 130nm PDK using open-source standard cells.

## Next Steps  
- Resolve RTL lint warnings and optimize netlist for better synthesis and routing.  
- Adjust placement and routing constraints to fix global routing gaps and reduce congestion.  
- Address timing violations by buffering, resizing, and constraint refinement.  
- Add antenna diffusion info in standard/custom cells to avoid antenna violations.  
- Complete floorplanning, CTS, detailed routing, and signoff with OpenLane 2.  
- Produce final GDSII and prepare for tapeout with open-source EDA toolchain.
