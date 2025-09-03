`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/04/11 19:26:52
// Design Name: 
// Module Name: lab04_timer_test
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


module lab04_timer_test(

    );
    reg clk;
	reg en;
	reg stop;
	reg reset;
	wire endone;
	wire [7:0] AN;
	wire [6:0] hex;
	
	lab04_timer t1(
	   .clk(clk),
	   .en(en),
	   .stop(stop),
	   .reset(reset),
	   .endone(endone),
	   .AN(AN),
	   .hex(hex));
	   
	initial
	begin
	   clk = 0;
	   en = 0; stop = 1; reset = 1; #10;
	   en = 1; stop = 0; reset = 0; #10;
	   en = 1; stop = 1; reset = 0; #10;
	   en = 1; stop = 1; reset = 1; #10;
	$display("Running testbench");
	end
	
	always
	begin
	   clk = ~clk; #1;
	end
	
endmodule
