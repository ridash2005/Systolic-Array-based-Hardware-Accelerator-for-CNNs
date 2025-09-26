module serializer (
    clk,
    rst_n,
    start,              // <--- NEW input
    parallel_data,
    serial_clk,
    frame_sync,
    serial_data,
    busy
);
    parameter WIDTH = 32;
    input clk;
    input rst_n;
    input start;
    input [WIDTH-1:0] parallel_data;
    output serial_clk;          // wire by default
    output wire frame_sync;     // assigned by continuous assign
    output reg serial_data;     // assigned in always block, so reg type
    output wire busy;           // assigned by continuous assign

    reg [$clog2(WIDTH)-1:0] bit_idx;
    reg [WIDTH-1:0] shift_reg;
    reg transmitting;

    // Outputs
    assign serial_clk = clk;          // serializer runs at system clock
    assign frame_sync = transmitting; // high while sending
    assign busy       = transmitting; // busy flag

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            bit_idx      <= 0;
            shift_reg    <= 0;
            transmitting <= 0;
            serial_data  <= 0;
        end else begin
            if (!transmitting) begin
                if (start) begin
                    // load and begin transmission
                    shift_reg    <= parallel_data;
                    bit_idx      <= 0;
                    transmitting <= 1;
                end
            end else begin
                // shift out data
                serial_data <= shift_reg[0];
                shift_reg   <= shift_reg >> 1;
                bit_idx     <= bit_idx + 1;

                if (bit_idx == WIDTH - 1) begin
                    transmitting <= 0; // done
                end
            end
        end
    end

endmodule
