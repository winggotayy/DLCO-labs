`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/07 15:08:18
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
    input clk,
    input [7:0] din, 
	input shift_state, 		//shift键是否被按下
	input caps_state, 		//caps键是否被按下
	input ctrl_state,		//ctrl键是否被按下
	output reg [7:0] dout
    );
    
    reg [7:0] ascii [255:0];
    reg [7:0] ascii_shift [255:0];
    reg [7:0] ascii_caps [255:0];

initial
begin
	$readmemh("F:/DigitalDesign2023/lab07/scancode/ascii.txt", ascii, 0, 255);
	$readmemh("F:/DigitalDesign2023/lab07/scancode/ascii_shift.txt", ascii_shift, 0, 255);
	$readmemh("F:/DigitalDesign2023/lab07/scancode/ascii_caps.txt", ascii_caps, 0, 255);
end
	
always @ (*)
begin
	if(shift_state && !caps_state)
		dout <= ascii_shift[din];
	else if(caps_state && !shift_state)
		dout <= ascii_caps[din];
	else 
		dout <= ascii[din];
end
endmodule

