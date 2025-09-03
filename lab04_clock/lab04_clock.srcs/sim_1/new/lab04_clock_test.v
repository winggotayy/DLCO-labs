`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/04/14 17:48:04
// Design Name: 
// Module Name: lab04_clock_test
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


module lab04_clock_test(

    );
    
    reg clk;
    reg [1:0] sel;
    reg [2:0] adj;
    reg stpwtch_en;
    reg stpwtch_rst;	
	reg alm_stp;		
	wire alarm;		
	wire [7:0] AN;
    wire [6:0] hex;
	
    lab04_clock t1(
        .clk(clk),
        .sel(sel),
        .adj(adj),
        .stpwtch_en(stpwtch_en),
        .stpwtch_rst(stpwtch_rst),
        .alm_stp(alm_stp),
        .alarm(alarm),
        .AN(AN),
        .hex(hex)
    );  
    
    initial
    begin
        clk = 0;
        sel = 2'b00; alm_stp = 0; #10;
                     alm_stp = 1; #10;
        sel = 2'b01; adj = 3'b001; #10;
       	             adj = 3'b010; #10;
       	             adj = 3'b100; #10;
        sel = 2'b10; adj = 3'b001; #10;
       	             adj = 3'b010; #10;
       	             adj = 3'b100; #10;
       	sel = 2'b11; stpwtch_en = 0; #10; stpwtch_en = 1; #10;
       	             stpwtch_rst = 0; #10; stpwtch_rst = 1; #10;       
	   	$display("Running testbench");
	end
	
	always
	begin
	   clk = ~clk; #1;
	end
	    
endmodule
