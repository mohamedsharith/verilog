`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.06.2024 23:07:14
// Design Name: 
// Module Name: full_add_tb
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


module full_add_tb;
reg a,b,c1;
wire s,c;
full_add uut(
    .s(s),
    .c(c),
    .a(a),
    .b(b),
    .c1(c1)
);
initial begin
    {a,b,c1}=3'b000;
    #2 {a,b,c1}=3'b001;
    #2 {a,b,c1}=3'b010;
    #2 {a,b,c1}=3'b011;
    #2 {a,b,c1}=3'b100;
    #2 {a,b,c1}=3'b101;
    #2 {a,b,c1}=3'b110;
    #2 {a,b,c1}=3'b111;
end
initial $monitor("time=%g,s=%b,c=%b,a=%b,b=%b,c1=%b",$time,s,c,a,b,c1);
initial
#20  $finish;
endmodule