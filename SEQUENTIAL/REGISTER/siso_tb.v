`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.06.2024 11:56:40
// Design Name: 
// Module Name: siso_tb
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


module siso_tb;
            reg d,clk,clr;
            wire q;
    siso uut(
             .d(d),
             .clk(clk),
             .clr(clr),
             .q(q)
             );
    initial begin
            d=0;
            clk=0;
            clr=1;
            #10 clr=1'b0;
            #2 d=1;
            #2 d=0;
            #2 d=1;
            #2 d=0;
            end
        always #1 clk=!clk;
        initial #50 $finish;
            endmodule
