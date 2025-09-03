`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/06/25 15:49:20
// Design Name: 
// Module Name: clkgen_1kz
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


module clkgen_1kz(
    input clkin,
    output reg clkout
    );
    
    reg [27:0] clkcount;
    
    always @ (posedge clkin) 
    begin
        if (clkcount >= 27'd50000) 
        begin
            clkcount = 0;    
            clkout = ~clkout;
        end
        else 
            clkcount = clkcount + 1;     
    end
    
endmodule
