`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/06/24 20:12:29
// Design Name: 
// Module Name: lab09
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


module lab09(
    input clk,
    input [4:0] SW,
    input PS2_CLK,
    input PS2_DATA,
    output [7:0] LED,
    output [3:0] VGA_R,
    output [3:0] VGA_G,
    output [3:0] VGA_B,
    output VGA_VS,
    output VGA_HS
    );

    wire [7:0] keycode;
    wire key_pressed;
    wire [7:0] press_counter_wire;
    wire non_service_key_pressed;
    reg service_key_pressed;
    wire shift_state;
    wire ctrl_state;
    wire caps_state;

    wire [7:0] ascii_code;
    reg [11:0] bg_color;
    reg [11:0] text_color;    
    wire [11:0] sym_idx;
    reg [11:0] write_pos;
    reg [25:0] counter;
    reg [7:0] bit_idx;
    reg [7:0] bit_idx_start;
    reg write_sym;
    wire [7:0] num_disp_active_map;
    wire [7:0] sym_to_write;
    reg [7:0] row_end_pos [29:0];
    
    wire clk_500hz;
    
    initial begin
        text_color = 12'h222;
        bg_color = 12'h3ee;
        bit_idx_start = 8'd0;
        bit_idx = 8'd0;
        write_pos = 12'h0;
    end

/* KEYBOARD */

    clkgen_500hz clk500(
        .clkin(clk),
        .clkout(clk_500hz)
    );
    
    always @ (posedge clk) 
    begin
        service_key_pressed = key_pressed && ((keycode == 8'h66) || (keycode == 8'h5a) || (keycode == 8'h29));
        
        if (shift_state && press_counter_wire == 1)
            write_sym = 1'b0;
        else if (write_sym == 1'b0 && counter == 0 && 
            (key_pressed && sym_to_write != 8'b0 || service_key_pressed)) 
        begin
            counter = 26'd50000000;
            write_sym = 1'b1;
        end
        else if (counter >  26'd1 &&
            (key_pressed && sym_to_write != 8'b0 || service_key_pressed))
        begin
            counter = counter - 26'd1;
            write_sym = 1'b0;
        end
        else if (counter == 26'd1 && (key_pressed && sym_to_write != 8'b0 || service_key_pressed))
        begin
            if (clk_500hz) 
                write_sym = ~write_sym;
        end
        else 
        begin
            counter = 0;
            write_sym = 1'b0;
        end        
    end
        
    keyboard kb(
        .clk(clk),
        .next_n(1),
        .reset(SW[2]),
        .PS2_CLK(PS2_CLK),
        .PS2_DATA(PS2_DATA),
        .key_pressed(key_pressed),
        .press_counter(press_counter_wire),
        .non_service_key_pressed(non_service_key_pressed),
        .shift_state(shift_state),
        .ctrl_state(ctrl_state),
        .caps_state(caps_state),
        .keycode(keycode)
    );
    
    scancode_ram scram(
        .din(keycode),
        .caps_state(shift_state || caps_state),
        .dout(sym_to_write)
    );

    assign LED[0] = non_service_key_pressed;
    assign LED[1] = key_pressed;
    assign LED[2] = shift_state;
    assign LED[3] = ctrl_state;
    assign LED[4] = caps_state;

/* VGA */

    blk_mem_gen_0 ram(
        .clka(write_sym),
        .clkb(clk),
        .addra(write_pos),
        .addrb(sym_idx),
        .dina(sym_to_write),
        .doutb(ascii_code),
        .ena(1),
        .enb(1),
        .wea(1)
    );
    
    always @ (posedge write_sym) 
    begin
        if (keycode == 8'h5a)       // Enter 
        begin 
            row_end_pos[write_pos / 64] <= (write_pos % 64);
            write_pos <= (write_pos + 64) - (write_pos + 64) % 64;
        end
        else if (keycode == 8'h66)  // Backspace 
        begin 
            if (write_pos > 0)
                if (write_pos % 64 == 0) 
                begin
                    write_pos <= write_pos - (64 - row_end_pos[write_pos / 64 - 1]);
                    row_end_pos[write_pos / 64 - 1] <= 8'd0;
                end
                else
                    write_pos <= write_pos - 1;
        end 
        else 
        begin
            write_pos <= write_pos + 1;
            if (write_pos % 63 == 0)
                row_end_pos[write_pos / 64] <= 8'd63;
        end
    end
    
    vga _vga_(
        .clk(clk),
        .SW(SW),
        .write_pos(write_pos),
        .ascii_code(ascii_code),
        .sym_idx(sym_idx),
        .LED(LED),
        .VGA_R(VGA_R),
        .VGA_G(VGA_G),
        .VGA_B(VGA_B),
        .VGA_VS(VGA_VS),
        .VGA_HS(VGA_HS)
    );

    displaynum dpnum(
        .num({press_counter_wire, 8'd0, sym_to_write, keycode}),
        .clk(clk),
        .AN_active_map(num_disp_active_map),
        .AN(AN),
        .HEX(HEX)
    );
  
    assign num_disp_active_map = (key_pressed)?8'b11111111:8'b11110000;

endmodule
