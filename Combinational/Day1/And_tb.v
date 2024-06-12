`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.06.2024 09:08:24
// Design Name: 
// Module Name: And_tb
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


module And_tb;
reg a,b;
wire y;
And_op andgate(.a(a),.b(b),.y(y));
initial begin
    a=1'b0;b=1'b0;
    #5;a=1'b0;b=1'b1;
    #2;a=1'b1;b=1'b0;
    #2;a=1'b1;b=1'b1;
#10 $finish;
end
always @(y)
    $display("time=%0t\tInput Values:\t a=%b b=%b\t Output Vlue y=%b", $time,a,b,y);
endmodule