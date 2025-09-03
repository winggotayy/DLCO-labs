`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/07 15:11:11
// Design Name: 
// Module Name: keyboard
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


`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/04/19 20:00:19
// Design Name: 
// Module Name: final_keyboard
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


module keyboard(
    input clk,
    input en,
    output [4:0] LED,
    output reg [7:0] AN,
    output reg [6:0] HEX,
    inout PS2_CLK,
    inout PS2_DATA
    );
    
    wire [7:0] code;
    wire [7:0] ascii_res;
    wire ready;
    
    reg [7:0] tmp;
    reg [7:0] cnt = 8'h00;
    reg Q = 1;
    
    reg next_data_n = 0;
    reg [7:0] prev_code = 8'h00;
    reg [7:0] cur_code = 8'h00;
    reg key_pressed = 0; 
    reg shift_state_n = 0;
    reg caps_state_n = 0;
    reg ctrl_state_n = 0;
    reg release_flag = 0;

ps2_keyboard pb(clk, en, PS2_CLK, PS2_DATA, next_data_n, code, ready, LED[0]);
scancode_ram sc(clk, tmp, shift_state_n, caps_state_n, ctrl_state_n, ascii_res);

    assign LED[1] = key_pressed;
    assign LED[2] = shift_state_n;
    assign LED[3] = caps_state_n;
    assign LED[4] = ctrl_state_n;
    
    // 分频
    reg clk_1s;
    reg [31:0]count_clk;    
    
    always @ (posedge clk) 
    begin
        next_data_n = 0;
        if (ready) 
        begin
            prev_code = cur_code;
            cur_code = code;
        
            if (release_flag) begin
                release_flag = 0;
                prev_code = 0;
                if (cur_code == 8'h58) 
                    caps_state_n = ~caps_state_n;
            end
            
            if (cur_code != prev_code && cur_code != 8'hF0 && prev_code != 8'hF0)
                cnt = cnt + 1;
            
            if (cur_code == prev_code || prev_code == 0 || cur_code == 8'hF0) begin
                if (cur_code == 8'h12) shift_state_n = 1;
                if (cur_code == 8'h14) ctrl_state_n = 1;
//                if (cur_code == 8'h58) caps_state_n = 1;
//                begin
//                    if(caps_state_n == 1)
//                        caps_state_n = ~caps_state_n;
//                end
//                if (key_pressed == 0 || (non_service_key_pressed)) press_counter = press_counter + 1;
                key_pressed = 1;
            end
        end
        
        
        // 为了不显示FO通码
        if (cur_code == 8'hF0) begin
            tmp = prev_code;
        end else begin
            tmp = cur_code;
        end
        
        // 判断
        if (prev_code == 8'hF0) 
        begin
            release_flag = 1;
            if (cur_code == 8'h12) shift_state_n = 0;
            if (cur_code == 8'h14) ctrl_state_n = 0;
//            if (cur_code == 8'h58) caps_state_n = 0;
            key_pressed = 0 || ctrl_state_n || shift_state_n;
//            if(caps_state_n == 0)begin
//               caps_state_n = ~caps_state_n;
//            end
        end   
    end

    reg [2:0] clk_1ms = 0;
    reg [31:0]count_clk2 = 0;  
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
        count_clk2 <= count_clk2 + 3'b001;
    if(temp == 6)
        temp <= 3'b000;
    end
    
    always @ (*) 
    begin
    // 低两位：当前按键的键码
    if(Q) begin
        if (clk_1ms == 3'b000) 
        begin 
        AN = 8'b11111110;
        case(tmp[3:0])
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
        else if (clk_1ms == 3'b001) 
        begin 
        AN = 8'b11111101;
        case(tmp[7:4])
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
    // 中间两位：对应的ASCII码
        else if (clk_1ms == 3'b010)
        begin 
        AN = 8'b11110111;
        case(ascii_res[3:0])
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
        else if (clk_1ms == 3'b011) 
        begin 
        AN = 8'b11101111;
        case(ascii_res[7:4])
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
    // 高两位：按键的总次数
        else if (clk_1ms == 3'b100) 
        begin 
        AN = 8'b10111111;
        case(cnt[3:0])
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
        else if (clk_1ms == 3'b101)  
        begin 
        AN = 8'b01111111;
        case(cnt[7:4])
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
end    
  
endmodule

