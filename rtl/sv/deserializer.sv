module deserializer #(
  parameter WIDTH = 32
) (
  input  logic clk,
  input  logic rst_n,
  input  logic serial_clk,
  input  logic serial_data,
  input  logic frame_sync,
  output logic [WIDTH-1:0] parallel_data,
  output logic data_valid
);

  logic [$clog2(WIDTH):0] bit_idx;
  logic [WIDTH-1:0] shift_reg;
  logic receiving;

  always_ff @(posedge serial_clk or negedge rst_n) begin
    if (!rst_n) begin
      bit_idx <= 0;
      shift_reg <= 0;
      parallel_data <= 0;
      data_valid <= 0;
      receiving <= 0;
    end else begin
      if (frame_sync && !receiving) begin
        bit_idx <= 0;
        receiving <= 1;
        shift_reg[0] <= serial_data;
        data_valid <= 0;
      end else if (receiving) begin
        bit_idx <= bit_idx + 1;
        shift_reg <= {serial_data, shift_reg[WIDTH-1:1]};
        if (bit_idx == WIDTH-1) begin
          parallel_data <= shift_reg;
          data_valid <= 1;
          receiving <= 0;
        end else begin
          data_valid <= 0;
        end
      end else begin
        data_valid <= 0;
      end
    end
  end
endmodule
