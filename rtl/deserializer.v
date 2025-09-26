module deserializer #(
    parameter WIDTH = 32
)(
    input  wire              clk,          // systolic array clock
    input  wire              rst_n,
    input  wire              serial_clk,   // serial data clock
    input  wire              serial_data,
    input  wire              frame_sync,
    output reg  [WIDTH-1:0] parallel_data,
    output reg               data_valid
);

    // ---------------- Internal signals ----------------
    reg [$clog2(WIDTH)-1:0] bit_idx;
    reg [WIDTH-1:0] shift_reg;
    reg receiving;
    reg serial_word_ready;
    reg [WIDTH-1:0] serial_word;

    // Toggle for clock domain crossing
    reg serial_toggle;
    reg serial_toggle_sync1, serial_toggle_sync2;
    reg [WIDTH-1:0] word_buffer;

    // ---------------- Serial clock domain ----------------
    always @(posedge serial_clk or negedge rst_n) begin
        if (!rst_n) begin
            bit_idx           <= 0;
            shift_reg         <= 0;
            receiving         <= 1'b0;
            serial_word       <= 0;
            serial_word_ready <= 1'b0;
        end else begin
            if (frame_sync && !receiving) begin
                // Start receiving new word
                bit_idx           <= 0;
                receiving         <= 1'b1;
                shift_reg[0]      <= serial_data;  // first LSB bit
                serial_word_ready <= 1'b0;
            end else if (receiving) begin
                shift_reg <= {serial_data, shift_reg[WIDTH-1:1]}; // LSB-first
                bit_idx   <= bit_idx + 1;
                if (bit_idx == WIDTH-1) begin
                    serial_word       <= shift_reg;
                    serial_word_ready <= 1'b1;
                    receiving         <= 1'b0;
                end else begin
                    serial_word_ready <= 1'b0;
                end
            end else begin
                serial_word_ready <= 1'b0;
            end
        end
    end

    // ---------------- Toggle and buffer latch ----------------
    always @(posedge serial_clk or negedge rst_n) begin
        if (!rst_n) begin
            serial_toggle <= 1'b0;
            word_buffer   <= 0;
        end else if (serial_word_ready) begin
            serial_toggle <= ~serial_toggle;  // toggle to signal new word
            word_buffer   <= serial_word;     // latch word for clk domain
        end
    end

    // ---------------- Synchronize toggle to clk domain ----------------
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            serial_toggle_sync1 <= 1'b0;
            serial_toggle_sync2 <= 1'b0;
        end else begin
            serial_toggle_sync1 <= serial_toggle;
            serial_toggle_sync2 <= serial_toggle_sync1;
        end
    end

    // ---------------- Detect edge and update outputs ----------------
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            parallel_data <= 0;
            data_valid    <= 1'b0;
        end else if (serial_toggle_sync1 ^ serial_toggle_sync2) begin
            // toggle edge detected → new word ready
            parallel_data <= word_buffer;
            data_valid    <= 1'b1;
        end else begin
            data_valid    <= 1'b0;
        end
    end

endmodule
