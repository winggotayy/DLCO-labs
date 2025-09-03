`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/03/14 20:01:20
// Design Name: 
// Module Name: lab03_test
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


module lab03_test(

    );

task check;
    input [2:0] ALUctr;
    input [3:0] A, B, F, std_F;
    input cf, std_cf, of, std_of;
    
    begin
        $display("ALUctrl = %b, A = %h, B = %h, C = %h, cf = %b, of = %b", ALUctr, A, B, F, cf, of);
        
endmodule
