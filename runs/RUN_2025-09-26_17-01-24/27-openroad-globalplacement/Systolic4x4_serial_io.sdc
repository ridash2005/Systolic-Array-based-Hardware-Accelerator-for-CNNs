###############################################################################
# Created by write_sdc
###############################################################################
current_design Systolic4x4_serial_io
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name clk -period 100.0000 -waveform {0.0000 5.0000} [get_ports {clk}]
set_clock_uncertainty 0.1000 clk
set_propagated_clock [get_clocks {clk}]
create_clock -name A_in_serial_clk -period 20.0000 -waveform {0.0000 1.0000} [get_ports {A_in_serial_clk}]
set_clock_uncertainty 0.1000 A_in_serial_clk
set_propagated_clock [get_clocks {A_in_serial_clk}]
create_clock -name B_in_serial_clk -period 20.0000 -waveform {0.0000 1.0000} [get_ports {B_in_serial_clk}]
set_clock_uncertainty 0.1000 B_in_serial_clk
set_propagated_clock [get_clocks {B_in_serial_clk}]
set_clock_groups -name group1 -asynchronous \
 -group [get_clocks {A_in_serial_clk}]\
 -group [get_clocks {B_in_serial_clk}]\
 -group [get_clocks {clk}]
set_output_delay 1.5000 -clock [get_clocks {clk}] -add_delay [get_ports {C_out_frame_sync}]
set_output_delay 1.5000 -clock [get_clocks {clk}] -add_delay [get_ports {C_out_serial_clk}]
set_output_delay 1.5000 -clock [get_clocks {clk}] -add_delay [get_ports {C_out_serial_data}]
set_output_delay 1.5000 -clock [get_clocks {clk}] -add_delay [get_ports {done}]
set_false_path\
    -from [get_ports {rst_n}]
###############################################################################
# Environment
###############################################################################
###############################################################################
# Design Rules
###############################################################################
set_max_transition 0.1000 [get_clocks {A_in_serial_clk}]
set_max_transition 0.1000 [get_clocks {B_in_serial_clk}]
set_max_transition 0.1000 [get_clocks {clk}]
set_max_fanout 10.0000 [get_ports {clk}]
