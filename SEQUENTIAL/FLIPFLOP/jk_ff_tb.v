`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.06.2024 17:20:14
// Design Name: 
// Module Name: jk_ff_tb
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


module jk_ff_tb;
        reg j,k,clk,clr,preset;
        wire q,qbar;
    jk_ff uut(
            .j(j),
            .k(k),
            .clk(clk),
            .clr(clr),
            .preset(preset),
            .q(q),
            .qbar(qbar)
            );
    initial begin
        j=0;
        k=0;
        clk=0;
        clr=0;
        #10 preset=0;
        #10 preset=1;
        end
        always #2{j,k}={j,k}+1;
        always #1clk=!clk;
        always #10 clr=clr+1;
        initial #60 $finish;
endmodule
