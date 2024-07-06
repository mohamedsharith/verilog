`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.06.2024 09:14:54
// Design Name: 
// Module Name: b2g_tb
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


module b2g_tb;
    reg [0:3]b;
    wire [0:3]g;
    
   b2g_conv a1(b,g);
   initial begin
   $monitor("binary=%b, gray=%b",b,g);
   
   b = 4'b1011;
   b = 4'b0111;#2;
   b = 4'b0101;#2;
   b = 4'b1100;#2;
   b = 4'b1111;#2;
    #20 $finish;
    end
endmodule
