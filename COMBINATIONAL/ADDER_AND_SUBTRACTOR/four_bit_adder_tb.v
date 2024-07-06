`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.06.2024 11:51:40
// Design Name: 
// Module Name: four_bit_adder_tb
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


module four_bit_adder_tb;
    reg [15:0] a,b;
    reg ci;
    wire [15:0]s;
    wire co;
         sixteen_bit_adder uut(
            .s(s),
            .co(co),
            .a(a),
            .b(b),
            .ci(ci)
        );
    initial begin
        a=15'b0000000000000000;
        b=15'b0000000000000000;
        ci=0;
    end
        always #1 a=a+1'b1;
        always #2 b=b+1'b1;
    initial #200 $finish;    
endmodule
