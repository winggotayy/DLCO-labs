`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/04/12 19:38:57
// Design Name: 
// Module Name: lab04_clock
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


module lab04_clock(
	input clk,								
	input [1:0] sel,	//功能选择			
	input [2:0] adj,	//调整时间：001, 010, 100分别为s, m, h
	input stpwtch_en,	//秒表计数
	input stpwtch_rst,	//秒表清零
	input alm_stp,		//关闭闹钟
	output reg alarm,		//闹钟闪烁
	output reg [7:0] AN,
    output reg [6:0] hex
	);

integer h, m, s;							//内部存储：小时、分钟、秒
integer h_alm, m_alm, s_alm;				//内部存储：闹钟对应的时间
integer h_stpwtch, m_stpwtch, s_stpwtch;	//内部存储：秒表对应的时间

reg [3:0] hr1;  //小时数输出：十位+个位
reg [3:0] hr0;					
reg [3:0] min1; //分钟数输出：十位+个位
reg [3:0] min0;	
reg [3:0] sec1; //秒数输出：十位+个位
reg [3:0] sec0;

initial 
begin
	h = 0; m = 0; s = 0;
	h_alm = 24; m_alm = 0; s_alm = 0;
	h_stpwtch = 0; m_stpwtch = 0; s_stpwtch = 0;
end 

    //分频
    reg [31:0] count_clk = 0;
    reg clk_1s = 0;
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
		//时钟计时模块
		if (h == 23 && m == 59 && s == 59) begin
			h <= 0; m <= 0; s <= 0;
		end
		else if (m == 59 && s == 59) begin
			h <= h + 1; m <= 0; s <= 0;
		end
		else if (s == 59) begin
			m <= m + 1; s <= 0;
		end
		else s <= s + 1;

		case (sel)
			
			0: 
			begin //正常计时
				hr1 <= h / 10; hr0 <= h % 10;
				min1 <= m / 10; min0 <= m % 10;
				sec1 <= s / 10; sec0 <= s % 10;
				
				//检查当前时间与闹钟设置时间是否一致，一致则alarm为1
				if (h == h_alm && m == m_alm && s == s_alm)
					alarm = 1;
				else 
					alarm = alarm;
				//闹钟的关闭
				if (!alm_stp)	
					alarm =	0;
				else 
					alarm = alarm;
			end			
			
			1: 
			begin //调整时间 
				if(adj == 3'b001)
					if (s < 59)
						s <= s + 1;
					else 
						s <= 0;	
				if(adj == 3'b010)
					if (m  < 59)
						m <= m + 1;
					else 
						m <= 0;
				if(adj == 3'b100)
					if (h < 23)
						h <= h + 1;
					else 
						h <= 0;
				
				hr1 <= h / 10; hr0 <= h % 10;
				min1 <= m / 10; min0 <= m % 10;
				sec1 <= s / 10; sec0 <= s % 10;
			end
			
			2: 
			begin //闹钟		
			 if(adj == 3'b001)
					if (s_alm <= 59)
						s_alm <= s_alm + 1;
					else 
						s_alm <= 0;	
				if(adj == 3'b010)
					if (m_alm  <= 59)
						m_alm <= m_alm + 1;
					else 
						m_alm <= 0;
				if(adj == 3'b100)
					if (h_alm <= 23)
						h_alm <= h_alm + 1;
					else 
						h_alm <= 0;	

				
				hr1 <= h_alm / 10; hr0 <= h_alm % 10;
				min1 <= m_alm / 10; min0 <= m_alm % 10;
				sec1 <= s_alm / 10; sec0 <= s_alm % 10;
			end
			
			3: 
			begin //秒表
				if (stpwtch_rst) begin //清零
					h_stpwtch <= 0; m_stpwtch <= 0; s_stpwtch <= 0;
				end
				else if (stpwtch_en) begin //计数
					if (h_stpwtch == 23 && m_stpwtch == 59 && s_stpwtch == 59) begin
						h_stpwtch <= 0; m_stpwtch <= 0; s_stpwtch <= 0;
					end
					else if (m_stpwtch == 59 && s_stpwtch == 59) begin
						h_stpwtch <= h_stpwtch + 1; m <= 0; s <= 0;
					end
					else if (s == 59) begin
						m_stpwtch <= m_stpwtch + 1; s_stpwtch <= 0;
					end
					else
						s_stpwtch <= s_stpwtch + 1;
				end
				else begin //暂停
					h_stpwtch <= h_stpwtch; m_stpwtch <= m_stpwtch; s_stpwtch <= s_stpwtch;
				end
				
				hr1 <= h_stpwtch / 10; hr0 <= h_stpwtch % 10;
				min1 <= m_stpwtch / 10; min0 <= m_stpwtch % 10;
				sec1 <= s_stpwtch / 10; sec0 <= s_stpwtch % 10;
			end
			
			default: 
			begin
				hr1 <= hr1; hr0 <= hr0;
				min1 <= min1; min0 <= min0;
				sec1 <= sec1; sec0 <= sec0;
			end

		endcase

	end
	
	//分频
	reg [31:0]count_clk2 = 0;  
	reg [2:0] clk_1ms = 0;
	reg [2:0] temp = 0;
    always @ (posedge clk)
    begin
    if(count_clk2 == 4999)
    begin
        count_clk2 <= 0;
        temp <= temp + 3'b001;
        clk_1ms <= temp;
    end
    else
        count_clk2 <= count_clk2 + 1;
    
    if(temp == 6)
        temp <= 3'b000;
    end
    
    always @ (*)
    begin
    if (clk_1ms == 3'b000)
    begin
        AN = 8'b11111110;
        case(sec0)
		    4'b0000: hex = 7'b1000000;
		    4'b0001: hex = 7'b1111001;
		    4'b0010: hex = 7'b0100100;
		    4'b0011: hex = 7'b0110000;
		    4'b0100: hex = 7'b0011001;
		    4'b0101: hex = 7'b0010010;
		    4'b0110: hex = 7'b0000010;
		    4'b0111: hex = 7'b1111000;
		    4'b1000: hex = 7'b0000000;
		    4'b1001: hex = 7'b0010000;
		    endcase
    end
    else if (clk_1ms == 3'b001) 
    begin
        AN = 8'b11111101;
		case(sec1)
		    4'b0000: hex = 7'b1000000;
		    4'b0001: hex = 7'b1111001;
		    4'b0010: hex = 7'b0100100;
		    4'b0011: hex = 7'b0110000;
		    4'b0100: hex = 7'b0011001;
		    4'b0101: hex = 7'b0010010;
		    4'b0110: hex = 7'b0000010;
		    4'b0111: hex = 7'b1111000;
		    4'b1000: hex = 7'b0000000;
		    4'b1001: hex = 7'b0010000;
		endcase
    end
    else if (clk_1ms == 3'b010)
    begin
        AN = 8'b11111011;
		case(min0)
		    4'b0000: hex = 7'b1000000;
		    4'b0001: hex = 7'b1111001;
		    4'b0010: hex = 7'b0100100;
		    4'b0011: hex = 7'b0110000;
		    4'b0100: hex = 7'b0011001;
		    4'b0101: hex = 7'b0010010;
		    4'b0110: hex = 7'b0000010;
		    4'b0111: hex = 7'b1111000;
		    4'b1000: hex = 7'b0000000;
		    4'b1001: hex = 7'b0010000;
		endcase
    end
    else if (clk_1ms == 3'b011)
    begin
        AN = 8'b11110111;
		case(min1)
		    4'b0000: hex = 7'b1000000;
		    4'b0001: hex = 7'b1111001;
		    4'b0010: hex = 7'b0100100;
		    4'b0011: hex = 7'b0110000;
		    4'b0100: hex = 7'b0011001;
		    4'b0101: hex = 7'b0010010;
		    4'b0110: hex = 7'b0000010;
		    4'b0111: hex = 7'b1111000;
		    4'b1000: hex = 7'b0000000;
		    4'b1001: hex = 7'b0010000;
		endcase
    end
    else if (clk_1ms == 3'b100)
    begin
        AN = 8'b11101111;
		case(hr0)
		    4'b0000: hex = 7'b1000000;
		    4'b0001: hex = 7'b1111001;
		    4'b0010: hex = 7'b0100100;
		    4'b0011: hex = 7'b0110000;
		    4'b0100: hex = 7'b0011001;
		    4'b0101: hex = 7'b0010010;
		    4'b0110: hex = 7'b0000010;
		    4'b0111: hex = 7'b1111000;
		    4'b1000: hex = 7'b0000000;
		    4'b1001: hex = 7'b0010000;
		endcase
    end
    else if (clk_1ms == 3'b101)
    begin
        AN = 8'b11011111;
		case(hr1)
		    4'b0000: hex = 7'b1000000;
		    4'b0001: hex = 7'b1111001;
		    4'b0010: hex = 7'b0100100;
		    4'b0011: hex = 7'b0110000;
		    4'b0100: hex = 7'b0011001;
		    4'b0101: hex = 7'b0010010;
		    4'b0110: hex = 7'b0000010;
		    4'b0111: hex = 7'b1111000;
		    4'b1000: hex = 7'b0000000;
		    4'b1001: hex = 7'b0010000;
		endcase
    end        
    end

endmodule
