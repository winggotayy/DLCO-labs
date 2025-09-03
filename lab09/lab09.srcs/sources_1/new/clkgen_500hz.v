`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/06/24 20:37:28
// Design Name: 
// Module Name: clkgen_500hz
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


module clkgen_500hz(
    input clkin,
    output reg clkout
    );
    
    reg [27:0] clkcount;
    
    always @ (posedge clkin) 
    begin
        clkout = 1'b0;
        if (clkcount >= 27'd1000000) 
        begin
            clkcount = 0;    
            clkout = 1'b1;
        end
        else 
            clkcount = clkcount + 1;     
    end
    
endmodule
