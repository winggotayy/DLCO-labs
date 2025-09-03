`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/03/14 19:40:40
// Design Name: 
// Module Name: lab03
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


module lab03(
    input [3:0] A,
    input [3:0] B,
    input [2:0] ALUctr,
    output reg [3:0] F,
    output reg cf,
    output reg zero,
    output reg of
    );
    
    integer a;
    integer b;
    reg [3:0] B_com;
    
    always @ (*) 
    begin cf = 0; of = 0; F = 0;
        case(ALUctr)
    
            3'b000: //A+B
            begin
                {cf, F} = A + B;
                of = (A[3] == B[3]) && (F[3] != A[3]);
            end
             
            3'b001: //A-B
            begin
                B_com = ~B + 1;
                {cf, F} = A + B_com;
                of = (A[3] != B[3]) && (F[3] != A[3]);
            end
            
            3'b010: //Not A
            begin
                F = ~A;
            end
            
            3'b011: //A and B
            begin
                F = A & B;
            end
          
            3'b100: //A or B
            begin
                F = A | B;
            end
          
            3'b101: //A xor B
            begin
                F = A ^ B;
            end
            
            3'b110: //比较大小
            begin
                a = -A[3]*8 + A[2]*4 + A[1]*2 + A[0];
                b = -B[3]*8 + B[2]*4 + B[1]*2 + B[0];
                F = a > b;
            end
            
            3'b111: //判断相等
            begin
                F = (A == B);
            end
        endcase
    end
    
endmodule
