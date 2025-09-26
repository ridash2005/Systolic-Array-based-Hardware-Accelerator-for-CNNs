module top_wrapper(
    input  wire clk,
    input  wire rst_n,
    input  wire start,                 // Start signal for systolic operation

    // Serial input A
    input  wire A_in_serial_data,
    input  wire A_in_serial_clk,
    input  wire A_in_frame_sync,

    // Serial input B
    input  wire B_in_serial_data,
    input  wire B_in_serial_clk,
    input  wire B_in_frame_sync,

    // Serial output C
    output wire C_out_serial_data,
    output wire C_out_serial_clk,
    output wire C_out_frame_sync,

    output wire done                  // Done signal from systolic array
);

    // ---------------- Instantiate Systolic4x4_serial_io ----------------
    Systolic4x4_serial_io uut (
        .clk(clk),
        .rst_n(rst_n),
        .start(start),
        // A input serial interface
        .A_in_serial_data(A_in_serial_data),
        .A_in_serial_clk(A_in_serial_clk),
        .A_in_frame_sync(A_in_frame_sync),
        // B input serial interface
        .B_in_serial_data(B_in_serial_data),
        .B_in_serial_clk(B_in_serial_clk),
        .B_in_frame_sync(B_in_frame_sync),
        // C output serial interface
        .C_out_serial_data(C_out_serial_data),
        .C_out_serial_clk(C_out_serial_clk),
        .C_out_frame_sync(C_out_frame_sync),
        // Done signal
        .done(done)
    );

endmodule
