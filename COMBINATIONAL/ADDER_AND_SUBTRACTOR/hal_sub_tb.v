`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.06.2024 18:06:01
// Design Name: 
// Module Name: hal_str_tst
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


module hal_str_tst;
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
