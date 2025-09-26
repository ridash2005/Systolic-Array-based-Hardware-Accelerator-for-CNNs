#==================================================
# Clock Definitions
#==================================================
create_clock -name clk -period 100.0 -waveform {0 5} [get_ports clk]
create_clock -name A_in_serial_clk -period 20.0 -waveform {0 1} [get_ports A_in_serial_clk]
create_clock -name B_in_serial_clk -period 20.0 -waveform {0 1} [get_ports B_in_serial_clk]

# Clock groups: primary clock and serial clocks are asynchronous
set_clock_groups -asynchronous -group [get_clocks clk] -group [get_clocks A_in_serial_clk] -group [get_clocks B_in_serial_clk]

#==================================================
# Input Delays (from external interface to design)
#==================================================
set_input_delay -clock clk 1.5 [get_ports -filter "{direction == IN && name != \"clk\" && name != \"rst_n\"}"]

#==================================================
# Output Delays (from design to external interface)
#==================================================
set_output_delay -clock clk 1.5 [get_ports {done C_out_serial_data C_out_serial_clk C_out_frame_sync}]

#==================================================
# False Paths / Timing Exceptions
#==================================================
# Reset is asynchronous active low 
set_false_path -from [get_ports rst_n]

#==================================================
# Max Transition and Fanout Limits
#==================================================
set_max_transition 0.1 [get_clocks]
set_max_fanout 10 [get_ports clk]

#==================================================
# Clock Uncertainty (jitter and variation)
#==================================================
set_clock_uncertainty 0.1 -setup -hold [get_clocks clk]
set_clock_uncertainty 0.1 -setup -hold [get_clocks A_in_serial_clk]
set_clock_uncertainty 0.1 -setup -hold [get_clocks B_in_serial_clk]

#==================================================
# Optional: Output Load Constraints (if known)
#==================================================
#set_load 0.05 [get_ports {done C_out_serial_data C_out_serial_clk C_out_frame_sync}]

#==================================================
# Optional: Multicycle Paths (adjust as future optimization)
#==================================================
#set_multicycle_path 2 -from [get_ports start] -to [get_ports done]
