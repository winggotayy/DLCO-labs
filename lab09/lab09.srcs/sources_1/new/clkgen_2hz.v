`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/06/25 15:40:27
// Design Name: 
// Module Name: clkgen_2hz
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


module clkgen_2hz(
    input clkin,
    output reg clkout
    );
    
    reg [24:0] clkcount;
    
    always @ (posedge clkin) 
    begin
        if (clkcount >= 25'd25000000) 
        begin
            clkcount = 0;    
            clkout = ~clkout;
        end
        else 
            clkcount = clkcount + 1;     
    end
    
endmodule
