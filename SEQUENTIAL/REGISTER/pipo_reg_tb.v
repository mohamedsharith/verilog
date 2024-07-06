`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.06.2024 15:37:07
// Design Name: 
// Module Name: pipo_reg_tb
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


module pipo_reg_tb;
            reg [3:0] d;
            reg clk,clr;
            wire [3:0]q;
        pipo_reg uut(
                    .d(d),
                    .clk(clk),
                    .clr(clr),
                    .q(q)
                    );
        always #1 clk=!clk;
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
       
        
//        always #2 d=!d;
//       always @(posedge clk);
        initial $monitor("clk=%b--.time=%g-->d=%b--->q=%b",clk,$time,d,q);
        initial #50 $finish;                                                                      
endmodule