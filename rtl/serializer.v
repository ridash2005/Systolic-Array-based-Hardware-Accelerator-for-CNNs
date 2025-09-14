module serializer (
    clk,
    rst_n,
    serial_clk,
    parallel_data,
    frame_sync,
    serial_data,
    busy
);
    parameter WIDTH = 32;
    input wire clk;
    input wire rst_n;
    output wire serial_clk;
    input wire [WIDTH - 1:0] parallel_data;
    output wire frame_sync;
    output reg serial_data;
    output reg busy;

    reg [$clog2(WIDTH):0] bit_idx;
    reg [WIDTH - 1:0] shift_reg;
    reg transmitting;

    // Add synthesis keep attribute to outputs and internal regs to prevent pruning
    (* keep = "true" *) reg [$clog2(WIDTH):0] kept_bit_idx;
    (* keep = "true" *) reg [WIDTH - 1:0] kept_shift_reg;
    (* keep = "true" *) reg kept_transmitting;

	  // Assign outputs
    assign serial_clk  = clk;       // drive serializer output clock
    assign frame_sync  = transmitting; // or pulse when new frame starts

    always @(posedge serial_clk or negedge rst_n) begin
        if (!rst_n) begin
            bit_idx <= 0;
            kept_bit_idx <= 0;
            shift_reg <= 0;
            kept_shift_reg <= 0;
            serial_data <= 0;
            busy <= 0;
            transmitting <= 0;
            kept_transmitting <= 0;
        end else if (frame_sync && !transmitting) begin
            shift_reg <= parallel_data;
            kept_shift_reg <= parallel_data;
            bit_idx <= 0;
            kept_bit_idx <= 0;
            busy <= 1;
            transmitting <= 1;
            kept_transmitting <= 1;
            serial_data <= parallel_data[0];
        end else if (transmitting) begin
            bit_idx <= bit_idx + 1;
            kept_bit_idx <= kept_bit_idx + 1;
            shift_reg <= shift_reg >> 1;
            kept_shift_reg <= kept_shift_reg >> 1;
            serial_data <= shift_reg[1];
            if (bit_idx == (WIDTH - 1)) begin
                busy <= 0;
                transmitting <= 0;
                kept_transmitting <= 0;
            end
        end
    end
endmodule
