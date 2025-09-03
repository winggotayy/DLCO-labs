`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/03/15 19:06:53
// Design Name: 
// Module Name: lab02_test
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


module lab02_test(

    );
    reg [7:0] X;
    reg en;
    wire valid;
    wire [6:0] F;
    
    lab02 t1(
        .X(X),
        .en(en),
        .valid(valid));
        
    initial
    begin
        en = 1'b0; X = 8'b00000000; #10;
                   X = 8'b11111111; #10;
        en = 1'b1; X = 8'b00000000; #10;
                   X = 8'b00001111; #10;
                   X = 8'b10000000; #10;
                   X = 8'b11111111; #10;           
    end
endmodule
