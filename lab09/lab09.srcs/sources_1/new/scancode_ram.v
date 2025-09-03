`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/06/24 21:26:43
// Design Name: 
// Module Name: scancode_ram
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module scancode_ram(
    input [7:0] din,
    input caps_state,
    output [7:0] dout
    );

    reg [7:0] ascii_lower [255:0];
    reg [7:0] ascii_upper [255:0];

    initial 
    begin
        $readmemh("F:/DigitalDesign2023/lab09/scancode/ascii_lower.txt", ascii_lower, 0, 255);
        $readmemh("F:/DigitalDesign2023/lab09/scancode/ascii_upper.txt", ascii_upper, 0, 255);
    end

    assign dout = (caps_state)?ascii_upper[din]:ascii_lower[din];

endmodule
