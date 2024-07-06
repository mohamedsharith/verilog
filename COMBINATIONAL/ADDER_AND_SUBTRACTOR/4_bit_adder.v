`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.06.2024 11:21:58
// Design Name: 
// Module Name: four_bit_adder
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


module four_bit_adder(s,co,a,b,ci);
input [3:0] a,b;
input ci;
output [3:0] s;
output co;
wire [2:0] carry; //wire of 1'st full adder to next
full_adder f1(s[0],carry[0],a[0],b[0],ci);
full_adder f2(s[1],carry[1],a[1],b[1],carry[0]);
full_adder f3(s[2],carry[2],a[2],b[2],carry[1]);
full_adder f4(s[3],co,a[3],b[3],carry[2]);
endmodule

module full_adder(output reg s,co, input a,b,c);
    always @(*)
    begin
    s=a^b^c;
    co=(a&b)|(b&c)|(a&c);
    end
endmodule

module eight_bit_adder(s,co,a,b,ci);
    input [7:0] a,b;
    input ci;
    output [7:0] s;
    output co;
    wire carryy;
 four_bit_adder a1(s[3:0],carryy,a[3:0],b[3:0],ci);
 four_bit_adder a2(s[7:4],co,a[7:4],b[7:4],carryy);
endmodule

module sixteen_bit_adder(s,co,a,b,ci);
    input [15:0] a,b;
    input ci;
    output [15:0] s;
    output co;
    wire carry;
eight_bit_adder b1(s[7:0],carry,a[7:0],b[7:0],ci);
eight_bit_adder b2(s[15:8],co,a[15:8],b[15:8],carry);
endmodule
