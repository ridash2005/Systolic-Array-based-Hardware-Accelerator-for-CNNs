module serializer #(
  parameter WIDTH = 32
) (
  input    rst_n,
  input    serial_clk,
  input    [WIDTH-1:0] parallel_data,
  input    frame_sync,
  output reg serial_data,
  output reg busy
);

  reg [WIDTH-1:0] shift_reg;
  integer bit_cnt;

  always @(posedge serial_clk or negedge rst_n) begin
    if (!rst_n) begin
      serial_data <= 1'b0;
      busy <= 1'b0;
      shift_reg <= 0;
      bit_cnt <= 0;
    end else begin
      if (frame_sync && !busy) begin
        serial_data <= parallel_data[0];
        shift_reg   <= {1'b0, parallel_data[WIDTH-1:1]};
        bit_cnt     <= 1;
        busy        <= 1'b1;
      end else if (busy) begin
        serial_data <= shift_reg[0];
        shift_reg   <= {1'b0, shift_reg[WIDTH-1:1]};
        if (bit_cnt == WIDTH - 1) begin
          busy <= 1'b0;
        end else begin
          bit_cnt <= bit_cnt + 1;
        end
      end else begin
        serial_data <= 1'b0;
      end
    end
  end
endmodule
