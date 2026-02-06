`timescale 1ns/1ps

// Serializer Module
// Converts a wide parallel data bus into a single-wire serial stream.
// This is used to output the results of the systolic array computation efficiently.
module serializer #(
  parameter WIDTH = 32 // Bit-width of the parallel data to be serialized
) (
  input    rst_n,           // Asynchronous active-low reset
  input    serial_clk,      // Clock for the serial interface
  input    [WIDTH-1:0] parallel_data, // The wide data to be sent out
  input    frame_sync,      // Pulse to trigger the start of serialization
  output reg serial_data,   // The output bit stream (one bit per clock)
  output reg busy           // High while data is being transmitted
);

  // --- Internal State ---
  reg [WIDTH-1:0] shift_reg; // Holds the parallel data while it's being shifted out
  integer bit_cnt;           // Counts how many bits have been transmitted

  // Logic to process the serialization
  always @(posedge serial_clk or negedge rst_n) begin
    if (!rst_n) begin
      // Default values on hardware reset
      serial_data <= 1'b0;
      busy <= 1'b0;
      shift_reg <= 0;
      bit_cnt <= 0;
    end else begin
      // Trigger serialization on frame_sync signal
      if (frame_sync && !busy) begin
        serial_data <= parallel_data[0];            // Send the first bit immediately
        shift_reg   <= {1'b0, parallel_data[WIDTH-1:1]}; // Store remaining bits
        bit_cnt     <= 1;                          // Start counting
        busy        <= 1'b1;                       // Signal that we are now busy
      end 
      // Continue shifting bits while busy
      else if (busy) begin
        serial_data <= shift_reg[0];                // Send the next bit in the buffer
        shift_reg   <= {1'b0, shift_reg[WIDTH-1:1]}; // Shift the buffer right
        
        // Detect when all bits have been sent
        if (bit_cnt == WIDTH - 1) begin
          busy <= 1'b0;                             // Transmission complete
        end else begin
          bit_cnt <= bit_cnt + 1;                   // Increment counter
        end
      end 
      // Idle state: output zeros
      else begin
        serial_data <= 1'b0;
      end
    end
  end
endmodule
