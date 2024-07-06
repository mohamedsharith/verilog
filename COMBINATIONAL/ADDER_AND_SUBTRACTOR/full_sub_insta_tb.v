`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.06.2024 14:02:28
// Design Name: 
// Module Name: full_sub_insta_tb
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


module full_sub_insta_tb;
    reg A,B,C;
    wire D,BO;
full_sub_insta uut(
    .D(D),
    .BO(BO),
    .A(A),
    .B(B),
    .C(C)
);
initial begin
   A=1'b0;
   B=1'b0;
   C=1'b0;
end
    always #2 A=A+1'b1;
    always #3 B=B+1'b1;
  always #4 C=C+1'b1;
initial $monitor("time=%t,D=%b,B=%b,A=%b,B=%b,C=%b",$time,D,BO,A,B,C);
initial #20 $finish;
endmodule
