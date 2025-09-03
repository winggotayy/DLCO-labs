`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/06/25 15:42:02
// Design Name: 
// Module Name: vga
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


module vga(
    input clk,
    input [4:0] SW,
    input [11:0] write_pos,
    input [7:0] ascii_code,
    output reg [11:0] sym_idx,
    output [7:0] LED,
    output [3:0] VGA_R,
    output [3:0] VGA_G,
    output [3:0] VGA_B,
    output VGA_VS,
    output VGA_HS
    );
    
    wire vga_clk;
    wire pxl_color_code;
    reg [11:0] bg_color;
    reg [11:0] text_color;
    wire [9:0] h_addr;
    wire [8:0] v_addr;
    wire hsync;
    wire vsync;
    wire valid;
    wire [18:0] addr;
    wire [159:0] bitmap;
    reg [17:0] counter;
    reg [7:0] bit_idx;
    reg [7:0] bit_idx_start;
    
    wire clk_2hz;
    wire clk_10hz;
    
    initial 
    begin
        text_color = 12'heee;
        bg_color = 12'h111;
        bit_idx_start = 0;
        sym_idx = 1'b0;
    end
    
    clkgen_2hz(
        .clkin(clk),
        .clkout(clk_2hz)
    );
    
    clkgen_5hz(
        .clkin(clk),
        .clkout(clk_10hz)
    );
    
    clk_wiz_0(
       .clk_in1(clk),
       .reset(SW[1]),
       .locked(LED[7]),
       .clk_out1(vga_clk)
    );
    
    vga_ctrl(
        .pclk(vga_clk),
        .reset(SW[1]),
        .vga_data(pxl_color_code?text_color:bg_color),
        .h_addr(h_addr),
        .v_addr(v_addr),
        .hsync(hsync),
        .vsync(vsync),
        .valid(valid),
        .vga_r(VGA_R),
        .vga_g(VGA_G),
        .vga_b(VGA_B)
    );
    
    blk_mem_gen_1(
        .clka(clk),
        .addra(ascii_code),
        .douta(bitmap),
        .ena(1)
    );
    
    always @ (posedge vga_clk) 
    begin
        if (valid) 
        begin
            if (bit_idx == bit_idx_start + 8'd9) 
            begin
                if ((sym_idx + 12'd1) % 12'd64 == 0) 
                begin
                    if (bit_idx == 8'd159) 
                    begin
                        bit_idx_start = 8'd0;
                        if (sym_idx == 12'd1919)
                            sym_idx = 12'd0;
                        else
                            sym_idx = sym_idx + 12'd1;
                    end 
                    else 
                    begin
                        bit_idx_start = bit_idx_start + 8'd10;
                        sym_idx = sym_idx - 12'd63;
                    end
                end 
                else 
                begin
                    sym_idx = sym_idx + 12'd1;
                end
                
                bit_idx = bit_idx_start;
            end
            else 
            begin
                bit_idx = bit_idx + 8'd1;
            end
        end
    end
    
    assign pxl_color_code = (write_pos == sym_idx && bit_idx % 10 <= 5)?
                                (clk_2hz)?
                                    1'b1:
                                    1'b0
                                :
                                bitmap[bit_idx];
    
    assign VGA_VS = vsync;
    assign VGA_HS = hsync;
    
endmodule
