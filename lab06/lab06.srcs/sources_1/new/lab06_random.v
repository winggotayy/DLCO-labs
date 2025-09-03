`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/04/13 20:22:47
// Design Name: 
// Module Name: lab06_random
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


module lab06_random(
    input clk,
    input rst,
    input en,
    input [7:0] seed,
    output reg [7:0] LED,
    output reg [7:0] AN,
    output reg [6:0] HEX
    );
    
    // 分频
    reg clk_1s;
    reg [31:0]count_clk;     
    always @ (posedge clk)
        if(count_clk == 49999999)
        begin
            count_clk <= 0;
            clk_1s <= ~clk_1s;
        end
        else
            count_clk <= count_clk + 1;
    
    always @ (posedge clk_1s)
    begin
        if(rst) // 清零
            LED <= 0;
        else if(en) // 输入
            LED <= seed;
        else if(LED == 0)
            LED <= 8'b10001000;
        else    
            LED <= {(LED[4] ^ LED[3] ^ LED[2]^ LED[0]), LED[7:1]};
    end
    
    // 分频
    reg clk_1ms = 0;
    reg [31:0]count_clk2 = 0;  
    always @ (posedge clk)
    begin
    if(count_clk2 == 4999)
    begin
        count_clk2 <= 0;
        clk_1ms <= ~clk_1ms;
    end
    else
        count_clk2 <= count_clk2 + 1;
    end
    
    always @ (*) 
    begin
        if(clk_1ms) 
        begin 
        AN = 8'b11111110;
        case(LED[3:0])
            4'b0000 : HEX = 7'b1000000;
            4'b0001 : HEX = 7'b1111001; 
            4'b0010 : HEX = 7'b0100100; 
            4'b0011 : HEX = 7'b0110000; 
            4'b0100 : HEX = 7'b0011001; 
            4'b0101 : HEX = 7'b0010010; 
            4'b0110 : HEX = 7'b0000010; 
            4'b0111 : HEX = 7'b1111000; 
            4'b1000 : HEX = 7'b0000000; 
            4'b1001 : HEX = 7'b0010000; 
            4'b1010 : HEX = 7'b0001000; 
            4'b1011 : HEX = 7'b0000011; 
            4'b1100 : HEX = 7'b1000110; 
            4'b1101 : HEX = 7'b0100001; 
            4'b1110 : HEX = 7'b0000110; 
            4'b1111 : HEX = 7'b0001110; 
            default : HEX = 7'b1111111; 
        endcase
    end
    else 
    begin 
        AN = 8'b11111101;
        case(LED[7:4])
            4'b0000 : HEX = 7'b1000000;
            4'b0001 : HEX = 7'b1111001; 
            4'b0010 : HEX = 7'b0100100; 
            4'b0011 : HEX = 7'b0110000; 
            4'b0100 : HEX = 7'b0011001; 
            4'b0101 : HEX = 7'b0010010; 
            4'b0110 : HEX = 7'b0000010; 
            4'b0111 : HEX = 7'b1111000; 
            4'b1000 : HEX = 7'b0000000; 
            4'b1001 : HEX = 7'b0010000; 
            4'b1010 : HEX = 7'b0001000; 
            4'b1011 : HEX = 7'b0000011; 
            4'b1100 : HEX = 7'b1000110; 
            4'b1101 : HEX = 7'b0100001; 
            4'b1110 : HEX = 7'b0000110; 
            4'b1111 : HEX = 7'b0001110; 
            default : HEX = 7'b1111111;
        endcase
    end
    
end

endmodule