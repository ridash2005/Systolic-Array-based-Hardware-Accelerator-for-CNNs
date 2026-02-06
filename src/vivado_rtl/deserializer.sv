module deserializer #(
  parameter WIDTH = 32
) (
  input  logic rst_n,
  input  logic serial_clk,
  input  logic serial_data,
  input  logic frame_sync,
  output logic [WIDTH-1:0] parallel_data,
  output logic data_valid
);

  logic [$clog2(WIDTH):0] bit_counter;
  logic [WIDTH-1:0] shift_reg;
  logic receiving;

  // Note: For professional designs, we should use a CDC (Clock Domain Crossing)
  // synchronizer if clk and serial_clk are asynchronous.
  // This implementation assumes they are synchronous or that the user
  // will provide a synchronized serial_clk.

  always_ff @(posedge serial_clk or negedge rst_n) begin
    if (!rst_n) begin
      bit_counter <= 0;
      shift_reg   <= '0;
      parallel_data <= '0;
      data_valid  <= 0;
      receiving   <= 0;
    end else begin
      if (frame_sync && !receiving) begin
        receiving   <= 1;
        bit_counter <= 1;
        shift_reg   <= {serial_data, {WIDTH-1{1'b0}}};
        data_valid  <= 0;
      end else if (receiving) begin
        if (bit_counter == WIDTH) begin
          receiving   <= 0;
          bit_counter <= 0;
          data_valid  <= 1;
          parallel_data <= shift_reg;
        end else begin
          bit_counter <= bit_counter + 1;
          // Shift in from the left (assuming LSB first in serializer)
          // or from the right. Let's align with serializer:
          // Serializer sent: parallel_data[0], then parallel_data[1]...
          // So we should shift right: {new_bit, shift_reg[WIDTH-1:1]}
          shift_reg   <= {serial_data, shift_reg[WIDTH-1:1]};
          data_valid  <= 0;
        end
      end else begin
        data_valid <= 0;
      end
    end
  end
endmodule
