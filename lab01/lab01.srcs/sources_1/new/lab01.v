`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/03/06 20:12:33
// Design Name: 
// Module Name: lab01
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


module lab01(
    input [1:0] X0,
    input [1:0] X1,
    input [1:0] X2,
    input [1:0] X3,
    input [1:0] Y,
    output reg [1:0] F
    );
    
    always @ (Y or X0 or X1 or X2 or X3)
        case (Y)
            0: F = X0;
            1: F = X1;
            2: F = X2;
            3: F = X3;
            default: F = 2'b00;
        endcase
        
endmodule
