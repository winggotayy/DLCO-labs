`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/06/24 21:03:31
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


module keyboard(
    input clk,
    input next_n,
    input reset,
    input PS2_CLK,
    input PS2_DATA,
    output reg key_pressed,
    output reg [7:0] press_counter,
    output reg non_service_key_pressed,
    output reg shift_state,
    output reg ctrl_state,
    output reg caps_state,
    output reg [7:0] keycode
    );
    
    reg key_released;
    reg [7:0] curr_keycode;
    reg [7:0] prev_keycode;
    
    wire [7:0] keydata;
    wire ready;
    wire overflow;
    
    initial 
    begin
        key_pressed = 0;
        key_released = 1;
        curr_keycode = 0;
        prev_keycode = 0;
        shift_state = 0;
        ctrl_state = 0;
        caps_state = 0;
    end

    ps2_keyboard(
        .clk(clk),
        .clrn(reset),
        .ps2_clk(PS2_CLK),
        .ps2_data(PS2_DATA),
        .nextdata_n(next_n),
        .data(keydata),
	    .ready(ready),
	    .overflow(owerflow),
	    .out_wptr(out_wptr),
	    .out_rptr(out_rptr)
    );


    always @ (posedge clk) 
    begin
        if (reset) 
        begin
            key_pressed = 0;
            key_released = 1;
            curr_keycode = 0;
            prev_keycode = 0;
            shift_state = 0;
            ctrl_state = 0;
            caps_state = 0;
            press_counter = 0;
        end
        
        if (ready) 
        begin
            prev_keycode = curr_keycode;
            curr_keycode = keydata;
            
            
            if (key_released)
            begin
                key_released = 0;
                prev_keycode = 0;
                
            end
            
            if (curr_keycode != prev_keycode && curr_keycode != 8'hF0 && prev_keycode != 8'hF0) 
            begin
                if (curr_keycode == 8'h58) caps_state = ~caps_state;
                press_counter = press_counter + 1;
            end
            
            if (curr_keycode == prev_keycode || prev_keycode == 0 || curr_keycode == 8'hF0) 
            begin
                if (curr_keycode == 8'h12) shift_state = 1;
                if (curr_keycode == 8'h14) ctrl_state = 1;
                key_pressed = 1;
            end
        end
        

        if (curr_keycode == 8'hF0) 
        begin
            keycode = prev_keycode;
        end 
        else 
        begin
            keycode = curr_keycode;
        end

        if (prev_keycode == 8'hF0) 
        begin
            key_released = 1;
            if (curr_keycode == 8'h12) shift_state = 0;
            if (curr_keycode == 8'h14) ctrl_state = 0;
            if (press_counter > 0)
                press_counter = press_counter - 1;
            key_pressed = 0 || ctrl_state || shift_state;
        end
    
    end
    
endmodule
