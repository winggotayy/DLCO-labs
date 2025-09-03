`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/06/25 15:50:00
// Design Name: 
// Module Name: displaynum
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


module displaynum(
    input [31:0] num,
    input clk,
    input [7:0] AN_active_map,
    output reg [7:0] AN, 
    output reg [6:0] HEX
    );

    reg [3:0] number;
    reg [17:0] counter;
    reg [2:0] tick;
    wire clk_1kz;
    
    initial 
	begin
        counter = 18'd0;
        number = 4'd0;
        tick = 0;
    end
    
    clkgen_1kz(
        .clkin(clk),
        .clkout(clk_1kz)
    );
    
    always @ (posedge clk_1kz) 
    begin
        tick = counter[17:15];

        case (tick)
            0:number = num[3:0]; 
	        1:number = num[7:4]; 
	        2:number = num[11:8]; 
	        3:number = num[15:12];
	        4:number = num[19:16];
            5:number = num[23:20];
            6:number = num[27:24];
            7:number = num[31:28];
        endcase

        counter <= counter + 1;
    end

    always @ (*) 
    begin
        AN=8'b11111111;
        AN[tick] = 0;
        
        case (number)
            4'hf: HEX = 7'b0001110;
            4'he: HEX = 7'b0000110;
            4'hd: HEX = 7'b0100001;
            4'hc: HEX = 7'b1000110;
            4'hb: HEX = 7'b0000011;
            4'ha: HEX = 7'b0001000;
            4'h9: HEX = 7'b0010000;
            4'h8: HEX = 7'b0000000;
            4'h7: HEX = 7'b1111000;
            4'h6: HEX = 7'b0000010;
            4'h5: HEX = 7'b0010010;
            4'h4: HEX = 7'b0011001; 
            4'h3: HEX = 7'b0110000;
            4'h2: HEX = 7'b0100100;
            4'h1: HEX = 7'b1111001;
            4'h0: HEX = 7'b1000000;
            default: HEX = 7'b1001001;
        endcase
    end

endmodule

