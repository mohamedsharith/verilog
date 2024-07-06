`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.06.2024 18:23:50
// Design Name: 
// Module Name: four_bit_subtractor_tb
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


module four_bit_subtractor_tb;
    reg [3:0] a,b;
    reg c;
    wire [3:0]d;
    wire bo;
         four_bit_subtractor uut(
            .d(d),
            .bo(bo),
            .a(a),
            .b(b),
            .c(c)
        );
    initial begin
        a=4'b0000;
        b=4'b0000;
        c=1;
    end
        always #1 a=a+1'b1;
        always #2 b=b+1'b1;
    initial #100 $finish;    
endmodule