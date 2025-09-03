`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/03/14 21:32:53
// Design Name: 
// Module Name: lab02
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


module lab02(
    input [7:0] X,
    input en,
    output reg valid,
    output [6:0] F,
    output reg [7:0] AN,
    output reg [2:0] led
    );
    
    reg [6:0] F;
    
    always @ (en or X) begin
    if(!en)
        begin
        F <= 7'b1111111;
        valid = 0;
        end
    else if(X[7] == 1)
        begin
        F <= 7'b1111000;
        valid = 1;
        led = 3'b111;
        AN = 8'b11111110;
        end
    else if(X[6] == 1) 
        begin 
        F <= 7'b0000010;
        valid = 1;
        led = 3'b110;
        AN = 8'b11111110;
        end
    else if(X[5] == 1) 
        begin 
        F <= 7'b0010010;
        valid = 1;
        led = 3'b101;
        AN = 8'b11111110;
        end
    else if(X[4] == 1) 
        begin 
        F <= 7'b0011001;
        valid = 1;
        led = 3'b100;
        AN = 8'b11111110;
        end
    else if(X[3] == 1) 
        begin 
        F <= 7'b0110000;
        valid = 1;
        led = 3'b011;
        AN = 8'b11111110;
        end
    else if(X[2] == 1) 
        begin 
        F <= 7'b0100100;
        valid = 1;
        led = 3'b010;
        AN = 8'b11111110;
        end
    else if(X[1] == 1) 
        begin 
        F <= 7'b1111001;
        valid = 1;
        led = 3'b001;
        AN = 8'b11111110;
        end
    else if(X[0] == 1) 
        begin 
        F <= 7'b1000000;
        valid = 1;
        led = 3'b000;
        AN = 8'b11111110;
        end
    else      
        begin 
        F <= 7'b1111111; 
        valid = 0;
        AN = 8'b11111110;
        end
    end
    
endmodule
