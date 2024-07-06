`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.06.2024 18:13:53
// Design Name: 
// Module Name: demux_2_1_tb
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


module demux_2_1_tb;
    reg i,s;
    wire[1:0] o;
   demux_2_1 uut(
        .o(o),
        .i(i),
        .s(s)
        );
   initial begin
    s=0;
    i=1;
   end
    always #2 s=s+1'b1;
    initial #10 $finish;   
endmodule
