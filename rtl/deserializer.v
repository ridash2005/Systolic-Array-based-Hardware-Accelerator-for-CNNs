module deserializer (
    clk,
    rst_n,
    serial_clk,
    serial_data,
    frame_sync,
    parallel_data,
    data_valid
);
    parameter WIDTH = 32;
    input wire clk;
    input wire rst_n;
    input wire serial_clk;
    input wire serial_data;
    input wire frame_sync;
    output reg [WIDTH - 1:0] parallel_data;
    output reg data_valid;

    reg [$clog2(WIDTH):0] bit_idx;
    (* keep = "true" *) reg [$clog2(WIDTH):0] kept_bit_idx;
    reg [WIDTH - 1:0] shift_reg;
    (* keep = "true" *) reg [WIDTH - 1:0] kept_shift_reg;
    reg receiving;
    (* keep = "true" *) reg kept_receiving;

    always @(posedge serial_clk or negedge rst_n) begin
        if (!rst_n) begin
            bit_idx <= 0;
            kept_bit_idx <= 0;
            shift_reg <= 0;
            kept_shift_reg <= 0;
            parallel_data <= 0;
            data_valid <= 0;
            receiving <= 0;
            kept_receiving <= 0;
        end else if (frame_sync && !receiving) begin
            bit_idx <= 0;
            kept_bit_idx <= 0;
            receiving <= 1;
            kept_receiving <= 1;
            shift_reg[0] <= serial_data;
            kept_shift_reg[0] <= serial_data;
            data_valid <= 0;
        end else if (receiving) begin
            bit_idx <= bit_idx + 1;
            kept_bit_idx <= kept_bit_idx + 1;
            shift_reg <= {serial_data, shift_reg[WIDTH - 1:1]};
            kept_shift_reg <= {serial_data, kept_shift_reg[WIDTH - 1:1]};
            if (bit_idx == (WIDTH - 1)) begin
                parallel_data <= shift_reg;
                data_valid <= 1;
                receiving <= 0;
                kept_receiving <= 0;
            end else
                data_valid <= 0;
        end else
            data_valid <= 0;
    end
endmodule
