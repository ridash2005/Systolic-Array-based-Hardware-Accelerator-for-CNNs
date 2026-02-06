`timescale 1ns/1ps

// Deserializer Module
// Converts a single-wire serial data stream into a wide parallel data bus.
// This is essential for receiving large matrices over a limited number of pins.
module deserializer #(
  parameter WIDTH = 32 // Target bit-width of the parallel output
) (
  input  wire rst_n,       // Asynchronous active-low reset
  input  wire serial_clk,  // High-speed clock for the serial data
  input  wire serial_data, // The actual data bits arriving one by one
  input  wire frame_sync,  // Pulse indicating the start of a data packet (frame)
  output reg [WIDTH-1:0] parallel_data, // The final reconstructed parallel value
  output reg data_valid    // Pulse indicating parallel_data is complete and ready
);

  // --- Internal State ---
  reg [WIDTH-1:0] shift_reg; // Temporary storage to "shift in" the bits
  reg [31:0] bit_cnt;        // Counter to track how many bits have been received
  reg active;                // Flag: 1 if we are currently mid-capture

  // Process data on every clock pulse of the serial interface
  always @(posedge serial_clk or negedge rst_n) begin
    if (!rst_n) begin
      // Reset all internal logic to zero
      shift_reg <= 0;
      parallel_data <= 0;
      data_valid <= 0;
      bit_cnt <= 0;
      active <= 0;
    end else begin
      // Logic to start capturing data
      if (frame_sync && !active) begin
        active <= 1;        // Mark as active
        bit_cnt <= 1;       // Start counting from the first bit
        shift_reg <= {serial_data, {(WIDTH-1){1'b0}}}; // Capture the first bit
        data_valid <= 0;    // Output is not yet ready
      end 
      // Logic while capturing bits
      else if (active) begin
        // Shift incoming bit into the most significant position
        shift_reg <= {serial_data, shift_reg[WIDTH-1:1]};
        
        // Check if we have reached the target bit-width
        if (bit_cnt == WIDTH - 1) begin
          active <= 0;      // Done capturing
          data_valid <= 1;  // Signal that parallel data is now valid
          // Save the final reconstructed value (including the last bit)
          parallel_data <= {serial_data, shift_reg[WIDTH-1:1]};
        end else begin
          bit_cnt <= bit_cnt + 1; // Prepare for the next bit
        end
      end 
      // If idle, ensure data_valid is low
      else begin
        data_valid <= 0;
      end
    end
  end
  
endmodule
