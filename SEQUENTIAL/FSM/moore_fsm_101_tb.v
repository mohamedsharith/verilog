`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.06.2024 10:22:12
// Design Name: 
// Module Name: moore_fsm_101_tb
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


module moore_fsm_101_tb;
          reg in,clk,clr;
          wire out;
      moore_fsm_101 uut(
                        .in(in),
                        .clk(clk),
                        .clr(clr),
                        .out(out),
                        .cs(cs),.ns(ns)
                        );
            initial begin
                    clk=0;
                    clr=1;
                    in=0;
                    #10
                    clr=0;
                    #10
                    in=0;
                    #10
                    in=1;
                    #10
                    in=0;
                    #10
                    in=1;
                    #10
                    in=0;
            end
            always #5 clk=!clk;
endmodule
                    
                    

