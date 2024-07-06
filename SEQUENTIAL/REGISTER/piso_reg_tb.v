`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.06.2024 22:09:19
// Design Name: 
// Module Name: piso_reg_tb
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


module piso_reg_tb;
                reg [3:0]d;
                reg clk,clr,sel;
                wire q;
            piso uut(
                    .d(d),
                    .clk(clk),
                    .clr(clr),
                    .q(q),
                    .sel(sel)
                    );
            initial begin
                clk=0;
                clr=1;
                #3 clr=0;
                #2 sel=0;
                d=4'b0100;
                #2 sel=1;
                #10 sel=0;
                d=4'b1110;
                #2 sel=1;
            end
            always #1 clk=!clk;
//            always #2 d=!d;
            initial #100 $finish;
            initial $monitor("d=%b-->>q=%b",d,q); 
endmodule
