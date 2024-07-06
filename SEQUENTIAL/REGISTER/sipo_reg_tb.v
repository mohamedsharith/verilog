`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.06.2024 15:32:02
// Design Name: 
// Module Name: sipo_reg_tb
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


module sipo_reg_tb;
            reg d,clk,clr;
            wire [3:0]q;
        sipo_reg uut(
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
//            #2 d=1;
//            #2 d=0;
//            #2 d=1;
//            #2 d=0;        
            end             
        always #1 clk=!clk;   
        always #2 d=!d;
        initial $monitor("d=%b--->q=%b",d,q);
        initial #50 $finish;                                                                      
endmodule
