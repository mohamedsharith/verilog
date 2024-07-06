`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.07.2024 11:52:48
// Design Name: 
// Module Name: g2b_conv_tb
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


module g2b_conv_tb;
    reg [0:3]g;
    wire [0:3]b;
    
   g2b_conv a2(g,b);
   initial begin
   $monitor("binary=%b, gray=%b",b,g);
   
   g = 4'b1011;
   g = 4'b0111;#2;
   g = 4'b0101;#2;
   g = 4'b1100;#2;
   g = 4'b1111;#2;
    #20 $finish;
    end
endmodule