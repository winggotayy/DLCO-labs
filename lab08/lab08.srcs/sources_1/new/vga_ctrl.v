`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/15 19:52:07
// Design Name: 
// Module Name: vga_ctrl
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


module vga_ctrl(
    input pclk,				//25MHzʱ��
	input reset,			//��λ
	input [11:0]vga_data,	//�ϲ�ģ���ṩ��vGA��ɫ����
	output [9:0]h_addr,		//�ṩ���ϲ�ģ��ĵ�ǰɨ�����ص�����
	output [9:0]v_addr,
	output hsync,			//��ͬ������ͬ���ź�
	output vsync,
	output valid,			//�����ź�
	output [3:0]vga_r,		//��������ɫ�ź�
	output [3:0]vga_g,
	output [3:0]vga_b
	);

	//640x480�ֱ����µ�VGA��������
	parameter h_frontporch = 96;
	parameter h_active = 144;
	parameter h_backporch = 784;
	parameter h_total = 800;
	
	parameter v_frontporch = 2;
	parameter v_active = 35;
	parameter v_backporch = 515;
	parameter v_total = 525;

	//���ؼ���ֵ
	reg [9:0] x_cnt;
	reg [9:0] y_cnt;
	wire h_valid;
	wire v_valid;
	
	always @ (posedge reset or posedge pclk) //�����ؼ���
		if (reset == 1'b1)
			x_cnt <= 1;
		else
		begin
			if (x_cnt == h_total)
				x_cnt <= 1;
			else
				x_cnt <= x_cnt + 10'd1;
		end

	always @ (posedge pclk) //�����ؼ���
		if (reset == 1'b1)
			y_cnt <= 1;
		else
		begin
			if (y_cnt == v_total & x_cnt == h_total)
				y_cnt <= 1;
			else if (x_cnt == h_total)
				y_cnt <= y_cnt + 10'd1;
		end
	//����ͬ���ź�
	assign hsync = (x_cnt > h_frontporch);
	assign vsync = (y_cnt > v_frontporch);
	//���������ź�
	assign h_valid = (x_cnt > h_active) & (x_cnt <= h_backporch);
	assign v_valid = (y_cnt > v_active) & (y_cnt <= v_backporch);
	assign valid = h_valid & v_valid;
	//���㵱ǰ��Ч��������
	assign h_addr = h_valid ? (x_cnt - 10'd145) : {10{1'b0}};
	assign v_addr = v_valid ? (y_cnt - 10'd36) : {10{1'b0}};
	//�����������ɫֵ
	assign vga_r = valid ? vga_data[11:8] : 0;
	assign vga_g = valid ? vga_data[7:4] : 0;
	assign vga_b = valid ? vga_data[3:0] : 0;
	
endmodule
