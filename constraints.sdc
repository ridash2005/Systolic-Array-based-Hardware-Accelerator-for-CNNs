# Define primary clock 'clk' with 10 ns period (100 MHz)
create_clock -name clk -period 10.0 -waveform {0 5} [get_ports clk]

create_clock -name A_in_serial_clk -period 2.0 -waveform {0 1} [get_ports A_in_serial_clk]
create_clock -name B_in_serial_clk -period 2.0 -waveform {0 1} [get_ports B_in_serial_clk]


# Input delay: delay for all input ports except the clock and reset
set_input_delay -clock clk 1.5 [get_ports -filter "{direction == IN && name != \"clk\" && name != \"rst_n\"}"]

# Output delay: delay for all output ports relative to clk rising edge
set_output_delay -clock clk 1.5 [get_ports {done C_out_serial_data C_out_serial_clk C_out_frame_sync}]

# False path for asynchronous active-low reset 'rst_n'
set_false_path -from [get_ports rst_n]

# Maximum transition time for data signals (applies to all clocks)
set_max_transition 0.1 [get_clocks]

# Maximum fanout limit for clock network (apply to clock port)
set_max_fanout 10 [get_ports clk]

# Clock uncertainty to cover clock jitter and variation (setup and hold)
set_clock_uncertainty 0.1 -setup -hold [get_clocks clk]

# Optional: Disable timing on reset net throughout the design if reset is asynchronous
#set_false_path -through [get_ports rst_n]  # Uncomment if applicable
