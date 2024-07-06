`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.06.2024 15:41:19
// Design Name: 
// Module Name: srflip_flop_tb
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


module srflip_flop_tb;
        reg s,r,clk,clr,preset;
        wire q,qbar;
    srflip_flop_syn uut(
        .s(s),
        .r(r),
        .clk(clk),
        .clr(clr),
        .preset(preset),
        .q(q),
        .qbar(qbar)
    );
    
    initial begin
        s=0;
        r=0;
        clk=0;
        clr=0;
        #10 preset=0;
        #10 preset=1;
    end
    always #2 {s,r}={s,r}+1;
    always #1 clk=!clk;
    always #10 clr=clr+1;
    initial #60 $finish;    
    endmodule
