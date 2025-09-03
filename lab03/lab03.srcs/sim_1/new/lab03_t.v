`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/03/15 20:19:27
// Design Name: 
// Module Name: lab03_t
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


module lab03_t(

    );
    
task check;
    input [2:0] ALUctr;
    input [3:0] A, B, F, true_F; //测试结果和预期结果
    input cf, true_cf, of, true_of;

    begin
        $display("ALUctr = %b, A = %h, B =%h, F = %h, cf = %b, of = %b", ALUctr, A, B, F, cf, of);
        if(F != true_F)
            $display("C error. std_C = %h", true_C);
        if(cf != true_cf)
            $display("cf error. std_cf = %b", true_cf);
        if(of != true_of)
            $display("of error. std_of = %b", true_of);
    end
endtask

endmodule
/*
initial
begin
//加法
$display("ADD Test: ");
SW[2:0] = 0;
    //1+1
    SW[6:3] = 1;
    SW[10:7] = 1;
    #20 check(SW[2:0], SW[6:3], SW[10:7], LED[3:0], 2, LED[4], 0, LED[5], 0);
    //4+5, of = 1
    SW[6:3] = 4;
    SW[10:7] = 5;
    #20 check(SW[2:0], SW[6:3], SW[10:7], LED[3:0], 9, LED[4], 0, LED[5], 1);
    //1+(-1), cf = 1
    SW[6:3] = 1;
    SW[10:7] = 4'b1111;
    #20 check(SW[2:0], SW[6:3], SW[10:7], LED[3:0], 0, LED[4], 1, LED[5], 0);

//减法
$display("SUB Test: ");
SW[2:0] = 1;
    //4-5
    SW[6:3] = 4;
    SW[10:7] = 5;
    #20 check(SW[2:0], SW[6:3], SW[10:7], LED[3:0], 4'b1111, LED[4], 0, LED[5], 0);
    //7-6, cf = 1
    SW[6:3] = 7;
    SW[10:7] = 6;
    #20 check(SW[2:0], SW[6:3], SW[10:7], LED[3:0], 1, LED[4], 1, LED[5], 0);
    //6-(-4), of = 1
    SW[6:3] = 6;
    SW[10:7] = 4'b1100;
    #20 check(SW[2:0], SW[6:3], SW[10:7], LED[3:0], 10, LED[4], 0, LED[5], 1);

//取反
$display("NOT Test: ");
SW[2:0] = 2;
    SW[6:3] = 4'b1010;
    #20 check(SW[2:0], SW[6:3], SW[10:7], LED[3:0], 4'b0101, LED[4], 0, LED[5], 0);

//与
$display("AND Test: ");
SW[2:0] = 3;
    //4-5
    SW[6:3] = 4'b1010;
    SW[10:7] = 4'b0110;
    #20 check(SW[2:0], SW[6:3], SW[10:7], LED[3:0], 4'b0010, LED[4], 0, LED[5], 0);

//或
$display("OR Test: ");
SW[2:0] = 4;
    //4-5
    SW[6:3] = 4'b1010;
    SW[10:7] = 4'b0110;
    #20 check(SW[2:0], SW[6:3], SW[10:7], LED[3:0], 4'b1110, LED[4], 0, LED[5], 0);

//异或
$display("XOR Test: ");
SW[2:0] = 5;
    //4-5
    SW[6:3] = 4'b1010;
    SW[10:7] = 4'b0110;
    #20 check(SW[2:0], SW[6:3], SW[10:7], LED[3:0], 4'b1100, LED[4], 0, LED[5], 0);

//比较大小
$display("GREATER THAN Test: ");
SW[2:0] = 6;
    //5 > 1
    SW[6:3] = 5;
    SW[10:7] = 1;
    #20 check(SW[2:0], SW[6:3], SW[10:7], LED[3:0], 1, LED[4], 0, LED[5], 0);
    //5 > -2
    SW[6:3] = 5;
    SW[10:7] = 4'b1110;
    #20 check(SW[2:0], SW[6:3], SW[10:7], LED[3:0], 1, LED[4], 0, LED[5], 0);
    //1 < 5
    SW[6:3] = 1;
    SW[10:7] = 5;
    #20 check(SW[2:0], SW[6:3], SW[10:7], LED[3:0], 0, LED[4], 0, LED[5], 0);
    //-2 < 5
    SW[6:3] = 4'b1110;
    SW[10:7] = 5;
    #20 check(SW[2:0], SW[6:3], SW[10:7], LED[3:0], 0, LED[4], 0, LED[5], 0);

//判断相等
$display("EQUAL TO Test: ");
SW[2:0] = 7;
    //5 != -2
    SW[6:3] = 5;
    SW[10:7] = 4'b1110;
    #20 check(SW[2:0], SW[6:3], SW[10:7], LED[3:0], 0, LED[4], 0, LED[5], 0);
    //1 == 1
    SW[6:3] = 1;
    SW[10:7] = 1;
    #20 check(SW[2:0], SW[6:3], SW[10:7], LED[3:0], 1, LED[4], 0, LED[5], 0);
end
*/


