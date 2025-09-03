`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/06/25 15:41:17
// Design Name: 
// Module Name: clkgen_5hz
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


module clkgen_5hz(
    input clkin,
    output reg clkout
    );
    
    reg [27:0] clkcount;
    
    always @ (posedge clkin) 
    begin
        if (clkcount >= 27'd10000000) 
        begin
            clkcount = 0;    
            clkout = ~clkout;
        end
        else 
            clkcount = clkcount + 1;     
    end
    
endmodule
