`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.06.2024 22:40:11
// Design Name: 
// Module Name: half_adder_tb
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
module half_adder_tb;
reg a;
reg b;
wire s;
wire c;
half_adder uut(
    .s(s),
    .c(c),
    .a(a),
    .b(b)
    );
    initial begin
    a=1'b0;
    b=1'b0;
    #2; a=1'b0; b=1'b1;
    #2; a=1'b1; b=1'b0;
    #2; a=1'b1; b=1'b1;#2;
end
initial $monitor("time=%g,s=%b,c=%b,a=%b,b=%b", $time,s,c,a,b);
initial
begin  
#10; 
$finish;
end
endmodule
