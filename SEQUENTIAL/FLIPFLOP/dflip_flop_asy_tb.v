`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.06.2024 10:38:33
// Design Name: 
// Module Name: dflip_flop_asy_tb
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


module dflip_flop_asy_tb;
    reg d,clk,clear;
    wire q,qbar;
   dflip_flop_asy uut(
    .d(d),
    .clk(clk),
    .clear(clear),
    .q(q),
    .qbar(qbar)
   );
   initial begin
    d = 1'b0;
    clk = 1'b0;
    clear = 1'b1;
    end
    always #2 d = d+1'b1;
    always #10 clear =1'b0;
    always #5 clk = !clk;
    initial $display ("Time=%g,d=%b,clk=%b,clear=%b",$time,d,clk,clear);
    initial #100 $finish;
endmodule
