`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/04/14 20:14:59
// Design Name: 
// Module Name: lab06_random_test
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


module lab06_random_test(

    );
    
    reg clk;
    reg rst;
    reg en;
    reg [7:0] seed;
    wire [7:0] LED;
    wire [7:0] AN;
    wire [6:0] HEX;
    
    lab06_random t1(
        .clk(clk),
        .rst(rst),
        .en(en),
        .seed(seed),
        .LED(LED),
        .AN(AN),
        .HEX(HEX));
    
    initial
    begin
        clk = 0; seed = 8'b10111001; rst = 1; en = 1; #10;
        en = 0; #2000;
        $stop;
    $display("RUnning testbench");
    end
    
    always
	begin
	   clk = ~clk; #1;
	end         
	
endmodule
