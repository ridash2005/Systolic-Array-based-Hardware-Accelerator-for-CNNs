# Pin Constraints for Systolic4x4 serialized interface design

# Control signals
set_io clk                GPIO_1    -dir input
set_io rst_n              GPIO_2    -dir input
set_io start              GPIO_3    -dir input
set_io done               GPIO_4    -dir output

# Serialized A_in input stream
set_io A_in_serial_data   GPIO_5    -dir input
set_io A_in_serial_clk    GPIO_6    -dir input
set_io A_in_frame_sync    GPIO_7    -dir input

# Serialized B_in input stream
set_io B_in_serial_data   GPIO_8    -dir input
set_io B_in_serial_clk    GPIO_9    -dir input
set_io B_in_frame_sync    GPIO_10   -dir input

# Serialized C_out output stream
set_io C_out_serial_data  GPIO_11   -dir output
set_io C_out_serial_clk   GPIO_12   -dir output
set_io C_out_frame_sync   GPIO_13   -dir output
