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

  logic [WIDTH-1:0] shift_reg;
  integer bit_cnt;
  logic active;

  always_ff @(posedge serial_clk or negedge rst_n) begin
    if (!rst_n) begin
      shift_reg <= 0;
      parallel_data <= 0;
      data_valid <= 0;
      bit_cnt <= 0;
      active <= 0;
    end else begin
      if (frame_sync && !active) begin
        active <= 1;
        bit_cnt <= 1;
        shift_reg <= {serial_data, {WIDTH-1{1'b0}}};
        data_valid <= 0;
      end else if (active) begin
        shift_reg <= {serial_data, shift_reg[WIDTH-1:1]};
        if (bit_cnt == WIDTH - 1) begin
          active <= 0;
          data_valid <= 1;
          parallel_data <= {serial_data, shift_reg[WIDTH-1:1]};
        end else begin
          bit_cnt <= bit_cnt + 1;
        end
      end else begin
        data_valid <= 0;
      end
    end
  end
endmodule
