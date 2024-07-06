`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.06.2024 15:06:12
// Design Name: 
// Module Name: full_sub_gate_tb
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


module full_sub_gate_tb;
    reg a,b,c;
    wire d,borrow;
full_sub_gatelevel uut(
    .d(d),
    .borrow(borrow),
    .a(a),
    .b(b),
    .c(c)
);
initial begin
   a=1'b0;
   b=1'b1;
   c=1'b1;
end
   always #2 a =a + 1'b1;
   always #3 b =b + 1'b1;
   always #4 c =c + 1'b1;
//initial $monitor("time=%t,D=%b,B=%b,A=%b,B=%b,C=%b",$time,D,BO,A,B,C);
initial #20 $finish;
endmodule
