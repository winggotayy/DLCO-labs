`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/06/24 21:05:14
// Design Name: 
// Module Name: ps2_keyboard
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


module ps2_keyboard(
    input clk,
    input clrn,
    input ps2_clk,
    input ps2_data,
    input nextdata_n,
    output [7:0] data,
	output reg ready,
	output reg overflow,
	output reg [2:0] out_wptr,
    output reg [2:0] out_rptr
    );
	
	// internal signal, for test
	reg [9:0] buffer;          // ps2_data bits
	reg [7:0] fifo[7:0];       // data fifo
	reg [2:0] w_ptr,r_ptr;     // fifo write and read pointers
	reg [3:0] count;           // count ps2_data bits
	// detect falling edge of ps2_clk
	reg [2:0] ps2_clk_sync;
    reg [2:0] i;

	always @(posedge clk) 
	begin
	   ps2_clk_sync <= {ps2_clk_sync[1:0],ps2_clk};
	end

	wire sampling = ps2_clk_sync[2] & ~ps2_clk_sync[1];

	always @(posedge clk) begin
	   out_wptr = w_ptr;
	   out_rptr = r_ptr;
	   if (clrn == 1) begin // reset
	       count <= 0; w_ptr <= 0; r_ptr <= 0; overflow <= 0; ready<= 0;
	   end
	   else begin
	   if ( ready ) begin // read to output next data
	       if(nextdata_n == 1'b1) //read next data
	       begin
	           r_ptr <= r_ptr + 3'b1;
	           if(w_ptr==(r_ptr+1'b1)) //empty
	               ready <= 1'b0;
	       end
	   end
	   if (sampling) begin
	       if (count == 4'd10) begin
	           count <= 0; // for next
	           if ((buffer[0] == 0) && // start bit
	               (ps2_data) && // stop bit
	               (^buffer[9:1])) begin // odd parity
	                   fifo[w_ptr] <= buffer[8:1]; // kbd scan code
	                   w_ptr <= w_ptr+3'b1;
	                   ready <= 1'b1;
	                   overflow <= overflow | (r_ptr == (w_ptr + 3'b1));
	           end
	       end else begin
	           buffer[count] <= ps2_data; // store ps2_data
	           count <= count + 3'b1;
	       end
	   end
	   end
	end	
	assign data = fifo[r_ptr]; //always set output data

endmodule
