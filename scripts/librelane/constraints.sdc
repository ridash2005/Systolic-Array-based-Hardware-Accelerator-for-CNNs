#===============================================================================
# SDC Timing Constraints - Systolic Array Hardware Accelerator
# Target: SkyWater 130nm PDK (sky130A)
# Design: top_wrapper (8x8 Systolic Array with Serial I/O)
#===============================================================================

#-------------------------------------------------------------------------------
# Clock Definitions
#-------------------------------------------------------------------------------

# Primary system clock - 10 MHz (100ns period)
# This drives the core systolic array computation
create_clock -name clk -period 100.0 [get_ports clk]

# Serial interface clocks - 50 MHz (20ns period)
# These drive the high-speed serial data interfaces
create_clock -name A_in_serial_clk -period 20.0 [get_ports A_in_serial_clk]
create_clock -name B_in_serial_clk -period 20.0 [get_ports B_in_serial_clk]

#-------------------------------------------------------------------------------
# Clock Domain Crossings
#-------------------------------------------------------------------------------

# Primary and serial clocks are asynchronous - no timing paths between them
set_clock_groups -asynchronous \
    -group [get_clocks clk] \
    -group [get_clocks A_in_serial_clk] \
    -group [get_clocks B_in_serial_clk]

#-------------------------------------------------------------------------------
# Input Constraints
#-------------------------------------------------------------------------------

# Control signals (relative to system clock)
set_input_delay -clock clk -max 10.0 [get_ports start]
set_input_delay -clock clk -min 1.0  [get_ports start]

# Serial A input (relative to A serial clock)
set_input_delay -clock A_in_serial_clk -max 5.0 [get_ports A_in_serial_data]
set_input_delay -clock A_in_serial_clk -min 1.0 [get_ports A_in_serial_data]
set_input_delay -clock A_in_serial_clk -max 5.0 [get_ports A_in_frame_sync]
set_input_delay -clock A_in_serial_clk -min 1.0 [get_ports A_in_frame_sync]

# Serial B input (relative to B serial clock)
set_input_delay -clock B_in_serial_clk -max 5.0 [get_ports B_in_serial_data]
set_input_delay -clock B_in_serial_clk -min 1.0 [get_ports B_in_serial_data]
set_input_delay -clock B_in_serial_clk -max 5.0 [get_ports B_in_frame_sync]
set_input_delay -clock B_in_serial_clk -min 1.0 [get_ports B_in_frame_sync]

#-------------------------------------------------------------------------------
# Output Constraints
#-------------------------------------------------------------------------------

# Control outputs (relative to system clock)
set_output_delay -clock clk -max 10.0 [get_ports done]
set_output_delay -clock clk -min 1.0  [get_ports done]

# Serial C output (relative to system clock - generated internally)
set_output_delay -clock clk -max 10.0 [get_ports C_out_serial_data]
set_output_delay -clock clk -min 1.0  [get_ports C_out_serial_data]
set_output_delay -clock clk -max 10.0 [get_ports C_out_serial_clk]
set_output_delay -clock clk -min 1.0  [get_ports C_out_serial_clk]
set_output_delay -clock clk -max 10.0 [get_ports C_out_frame_sync]
set_output_delay -clock clk -min 1.0  [get_ports C_out_frame_sync]

#-------------------------------------------------------------------------------
# Timing Exceptions
#-------------------------------------------------------------------------------

# Asynchronous reset - no timing requirement
set_false_path -from [get_ports rst_n]

#-------------------------------------------------------------------------------
# Clock Uncertainty (Jitter + On-Chip Variation)
#-------------------------------------------------------------------------------

# System clock uncertainty
set_clock_uncertainty -setup 0.5 [get_clocks clk]
set_clock_uncertainty -hold  0.3 [get_clocks clk]

# Serial clock uncertainties
set_clock_uncertainty -setup 0.3 [get_clocks A_in_serial_clk]
set_clock_uncertainty -hold  0.2 [get_clocks A_in_serial_clk]
set_clock_uncertainty -setup 0.3 [get_clocks B_in_serial_clk]
set_clock_uncertainty -hold  0.2 [get_clocks B_in_serial_clk]

#-------------------------------------------------------------------------------
# Design Constraints
#-------------------------------------------------------------------------------

# Maximum transition time (slew rate)
set_max_transition 1.0 [current_design]

# Maximum fanout
set_max_fanout 16 [current_design]

# Maximum capacitance (pF)
set_max_capacitance 0.5 [current_design]

#-------------------------------------------------------------------------------
# End of Constraints
#-------------------------------------------------------------------------------
