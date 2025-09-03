`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/03/18 14:20:38
// Design Name: 
// Module Name: lab03_testbench
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


module lab03_testbench(

    );
    reg [3:0] A;
    reg [3:0] B;
    reg [2:0] ALUctr;
    wire [3:0] F;
    wire cf;
    wire zero;
    wire of;
    
task check;
    
    input [3:0] true_F;
    input true_cf, true_zero, true_of;
    
    begin
        if(F != true_F)
            $display("Error: A = %h, B = %h. F should be %h", A, B, true_F);
        if(cf != true_cf) 
            $display("Error: cf = %d. cf should be %d", cf, true_cf);
        if(zero != true_zero)
            $display("Error: zero = %d. zero should be %d", zero, true_zero);
        if(of != true_of)
            $display("Error: of = %d. of should be %d", of, true_of);
        else
            $display("CORRECT");
    end

endtask

    lab03 t(
            .A(A),
            .B(B),
            .ALUctr(ALUctr),
            .F(F),
            .cf(cf),
            .zero(zero),
            .of(of));
    initial
    begin
        ALUctr = 3'b000; A = 4'b0001; B = 4'b0001; #20; check(4'b0010, 0, 0, 0);
                         A = 4'b0111; B = 4'b0001; #20; check(4'b1000, 1, 0, 0);
                         A = 4'b0000; B = 4'b0000; #20; check(4'b0000, 0, 0, 1);
                         A = 4'b0011; B = 4'b1101; #20; check(4'b0000, 0, 1, 1);
                         A = 4'b0011; B = 4'b1110; #20; check(4'b0001, 0, 1, 0);
        ALUctr = 3'b001; A = 4'b0000; B = 4'b0111; #20; check(4'b1001, 1, 0, 0);
                         A = 4'b1111; B = 4'b1000; #20; check(4'b0111, 0, 0, 0);
                         A = 4'b1111; B = 4'b0111; #20; check(4'b1000, 0, 0, 0);
                         A = 4'b1000; B = 4'b1000; #20; check(4'b0000, 0, 1, 0);
        ALUctr = 3'b010; A = 4'b1000; B = 4'b1000; #20; check(4'b0111, 0, 0, 0);
                         A = 4'b1111; B = 4'b0000; #20; check(4'b0000, 0, 0, 0);
        ALUctr = 3'b011; A = 4'b1111; B = 4'b1000; #20; check(4'b1000, 0, 0, 0);
                         A = 4'b0101; B = 4'b1010; #20; check(4'b0000, 0, 0, 0);                
        ALUctr = 3'b100; A = 4'b0101; B = 4'b1010; #20; check(4'b1111, 0, 0, 0);
                         A = 4'b0100; B = 4'b1110; #20; check(4'b1110, 0, 0, 0);                        
        ALUctr = 3'b101; A = 4'b0101; B = 4'b1010; #20; check(4'b1111, 0, 0, 0);
                         A = 4'b0101; B = 4'b1111; #20; check(4'b1010, 0, 0, 0);                        
        ALUctr = 3'b110; A = 4'b1000; B = 4'b0000; #20; check(4'b0000, 0, 0, 1);
                         A = 4'b0000; B = 4'b1111; #20; check(4'b0001, 0, 0, 0);                       
        ALUctr = 3'b111; A = 4'b0011; B = 4'b0001; #20; check(4'b0000, 0, 0, 0);
                         A = 4'b1000; B = 4'b1000; #20; check(4'b0001, 0, 0, 0);
    end

endmodule
