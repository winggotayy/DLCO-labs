`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/04/13 15:58:15
// Design Name: 
// Module Name: lab05_registerfile
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


module lab05_registerfile(
    input clk,
    input we,
    //input [3:0] inaddr,     //SW[7:4]
    //input [3:0] outaddr,    //SW[11:8]
    //input [3:0] din,        //SW[3:0]
    input [15:0] SW,
    output reg [7:0] AN,
    output reg [6:0] HEX,
    output reg [3:0] LED
);

wire [3:0] dout2;
reg [3:0] dout;

blk_mem_gen_0 ipRAM(.addra(SW[15:12]), .clka(clk), .dina(SW[3:0]), .douta(dout2), .ena(1'b1), .wea(we));

    reg [7:0] ram [15:0]; // 定义16个8位存储单元

    // 从文件中初始化RAM
    initial 
    begin
    $readmemh("F:/digitaldesign/mem1.txt", ram, 0, 15);
    end

    // 读取数据
    //assign dout = ram[outaddr];

    // 写入数据
    always @(posedge clk) 
    begin
    if(we) 
    begin
        ram[SW[7:4]] <= SW[3:0];
    end
    dout <= ram[SW[11:8]];
    end
  
    // 分频
    reg [31:0]count_clk2 = 0;  
	reg clk_1ms = 0;
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
  
    always @ (*) begin
    if(clk_1ms) 
    begin 
        AN = 8'b11111110;
        case(dout)
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
        AN = 8'b11101111;
        case(dout2)
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
    LED <= SW[3:0];
end

endmodule

