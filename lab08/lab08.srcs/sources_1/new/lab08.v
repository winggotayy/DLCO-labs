`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/15 19:50:49
// Design Name: 
// Module Name: lab08
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


module lab08(
    input clk,
    input [1:0] SW,
    output [1:0] LED,
    output [3:0] VGA_R,
    output [3:0] VGA_G,
    output [3:0] VGA_B,
    output VGA_VS,
    output VGA_HS
    );
    
    wire VGA_CLK;
    wire [11:0] VGA_DATA;
    wire [9:0] H_ADDR;
    wire [8:0] V_ADDR;
    wire HSYNC;
    wire VSYNC;
    wire VALID;
    wire [18:0] addr;
 
    clk_wiz_0 myvgaclk(
       .clk_in1(clk),
       .reset(SW[0]),
       .locked(LED[0]),
       .clk_out1(VGA_CLK));
    
    blk_mem_gen_0 myvgaram(
        .clka(VGA_CLK),
        .addra(addr),
        .dina(1'b0),
        .douta(VGA_DATA),
        .ena(1'b1),
        .wea(1'b0));
        
    vga_ctrl myvga(
        .pclk(VGA_CLK),
        .reset(SW[1]),
        .vga_data(VGA_DATA),
        .h_addr(H_ADDR),
        .v_addr(V_ADDR),
        .hsync(HSYNC),
        .vsync(VSYNC),
        .valid(VALID),
        .vga_r(VGA_R),
        .vga_g(VGA_G),
        .vga_b(VGA_B));
    
    assign addr = {H_ADDR, V_ADDR};
    assign VGA_VS = VSYNC;
    assign VGA_HS = HSYNC;
    
endmodule
