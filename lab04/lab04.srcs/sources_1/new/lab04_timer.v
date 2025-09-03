`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/03/29 12:59:10
// Design Name: 
// Module Name: lab04_timer
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


module lab04_timer(
    input clk,
	input en,
	input stop,
	input reset,
	output reg endone,
	output reg [7:0] AN,
	output reg [6:0] hex
    );

    reg [3:0] h;
    reg [3:0] l;
    reg [6:0] counter;
    reg clk_1s;
    reg [31:0]count_clk;  

    initial
    begin
    h = 0;
    l = 0;
    counter = 0;
    clk_1s = 0;
    count_clk = 0;
    end

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
        if(!en)
        begin 
            h = 0;
            l = 0;
            counter = 0;
        end
        else
        begin 
            endone = 0;

            if(reset)
            begin
                h = 0;
                l = 0;
                counter = 0;
            end

            else if(stop)
            begin
                h = h;
                l = l;
                counter = counter;
            end

            else
            begin
                if(counter == 59)
                begin
                    endone = counter % 2;
                    counter = 0;
                end
                else
                    counter = counter + 1;

                if(counter < 60)
                begin
                    l = counter % 10;
                    h = (counter - (counter % 10)) / 10;
                end
                else
                begin
                    l = l;
                    h = h;
                end
            end
	    end
    end
    
    reg clk_1ms;
    reg [31:0]count_clk2;  
    
    always @ (posedge clk)
    if(count_clk2 == 4999)
    begin
        count_clk2 <= 0;
        clk_1ms <= ~clk_1ms;
    end
    else
        count_clk2 <= count_clk2 + 1;
        
    always @ (*)
    begin
    if(clk_1ms)
    begin
        AN = 8'b11111101;
        case(h)
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
    else
    begin
        AN = 8'b11111110;
		    case(l)
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
