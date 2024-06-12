`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.06.2024 18:11:10
// Design Name: 
// Module Name: full_add_insta_tb
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


module full_add_insta_tb;
    reg a,b,ci;
    wire s,c0;
    full_add_instan uut(
        .s(s),
        .c0(c0),
        .a(a),
        .b(b),
        .ci(ci)
);
initial begin
    a=1'b1;
    b=1'b0;
    ci=1'b1;
    end
    always #2 a=a+1'b1;
    always #3 b=b+1'b1;
    always #4 ci=ci+1'b1;
initial $monitor($time,"s=%b,c=%b,a=%b,b=%b,ci=%b",s,c0,a,b,ci);
initial #100$finish;
endmodule
