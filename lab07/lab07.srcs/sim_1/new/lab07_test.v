`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/07 15:50:40
// Design Name: 
// Module Name: lab07_test
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


module ps2_keyboard_model(
    output reg ps2_clk,
    output reg ps2_data);
parameter [31:0] kbd_clk_period = 60;
initial ps2_clk = 1'b1;

task kbd_sendcode;
    input [7:0] code;   //  key to be sent
    integer i;
    
    reg [10:0] send_buffer;
    begin
        send_buffer[0] = 1'b0;      // start bit
        send_buffer[8:1] = code;    // code
        send_buffer[9] = ~(^code);  // odd parity bit
        send_buffer[10] = 1'b1;     // stop bit
        i = 0;
        while(i < 11) begin
            // set kbd_data
            ps2_data = send_buffer[i];
            #(kbd_clk_period/2) ps2_clk = 1'b0;
            #(kbd_clk_period/2) ps2_clk = 1'b1;
            i = i + 1;
        end    
    end
endtask

/* parameter */
parameter [31:0] clock_period = 10;

/* ps2_keyboard interface signals */
reg clk,clrn;
wire [7:0] data;
wire ready,overflow;
wire kbd_clk, kbd_data;
reg nextdata_n;

ps2_keyboard_model model(
    .ps2_clk(kbd_clk),
    .ps2_data(kbd_data));

ps2_keyboard inst(
    .clk(clk),
    .clrn(clrn),
    .ps2_clk(kbd_clk),
    .ps2_data(kbd_data),
    .data(data),
    .ready(ready),
    .nextdata_n(nextdata_n),
    .overflow(overflow));

initial begin /* clock driver */
    clk = 0;
    forever
    #(clock_period/2) clk = ~clk;
end

initial begin
    clrn = 1'b0; #20;
    clrn = 1'b1; #20;
    model.kbd_sendcode(8'h1C); // press 'A'
    #20 nextdata_n =1'b0; #20 nextdata_n =1'b1;//read data
    model.kbd_sendcode(8'hF0); // break code
    #20 nextdata_n =1'b0; #20 nextdata_n =1'b1; //read data
    model.kbd_sendcode(8'h1C); // release 'A'
    #20 nextdata_n =1'b0; #20 nextdata_n =1'b1; //read data
    model.kbd_sendcode(8'h1B); // press 'S'
    #20 model.kbd_sendcode(8'h1B); // keep pressing 'S'
    #20 model.kbd_sendcode(8'h1B); // keep pressing 'S'
    model.kbd_sendcode(8'hF0); // break code
    model.kbd_sendcode(8'h1B); // release 'S'
    #20;
    $stop;
end

module lab08_test();
    reg clk;
    reg en;
    wire [4:0] LED;
    wire [7:0] AN;
    wire [6:0] HEX;
    reg PS2_CLK;
    reg PS2_DATA;
    
    lab08 t1(
        .clk(clk),
        .en(en),
        .LED(LED),
        .AN(AN),
        .HEX(HEX),
        .PS2_CLK(PS2_CLK),
        .PS2_DATA(PS2_DATA));
         
endmodule
