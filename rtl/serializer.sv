module serializer #(
  parameter WIDTH = 32
) (
  input  logic clk,
  input  logic rst_n,
  input  logic serial_clk,
  input  logic [WIDTH-1:0] parallel_data,
  input  logic frame_sync,
  output logic serial_data,
  output logic busy
);

  logic [$clog2(WIDTH):0] bit_idx;
  logic [WIDTH-1:0] shift_reg;
  logic transmitting;

  always_ff @(posedge serial_clk or negedge rst_n) begin
    if (!rst_n) begin
      bit_idx <= 0;
      shift_reg <= 0;
      serial_data <= 0;
      busy <= 0;
      transmitting <= 0;
    end else begin
      if (frame_sync && !transmitting) begin
        shift_reg <= parallel_data;
        bit_idx <= 0;
        busy <= 1;
        transmitting <= 1;
        serial_data <= parallel_data[0];
      end else if (transmitting) begin
        bit_idx <= bit_idx + 1;
        shift_reg <= shift_reg >> 1;
        serial_data <= shift_reg[1]; // next bit
        if (bit_idx == WIDTH - 1) begin
          busy <= 0;
          transmitting <= 0;
        end
      end
    end
  end

endmodule
