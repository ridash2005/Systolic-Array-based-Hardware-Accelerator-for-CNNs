# Define primary clock 'clk' with 2 ns period (500 MHz)
create_clock -name clk -period 2.0 -waveform {0 1} [get_ports clk]

# Input delay: inputs relative to clk rising edge
set_input_delay -clock clk 1.5 [all_inputs]

# Output delay: outputs relative to clk rising edge
set_output_delay -clock clk 1.5 [all_outputs]

# False path for asynchronous active-low reset 'rst_n'
set_false_path -from [get_ports rst_n]

# Maximum transition time for data signals
set_max_transition 0.1 [get_clocks clk]

# Maximum fanout limit for clock network
set_max_fanout 10

# Clock uncertainty to cover clock jitter and variation
set_clock_uncertainty 0.1 -setup -hold [get_clocks clk]

# Optional: Disable timing on reset net throughout the design if reset is asynchronous
# set_false_path -through [get_ports rst_n]  # Uncomment if required by flow

# Note: No generated clocks or multiple clock domains in current design
