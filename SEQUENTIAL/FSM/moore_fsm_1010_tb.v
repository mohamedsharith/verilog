`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.06.2024 09:57:53
// Design Name: 
// Module Name: moore_fsm_1010_tb
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


module moore_fsm_1010_tb;
        reg in,clk,rst;
        wire out;
         wire [2:0] cs,ns;
    moore_fsm_1010 uut(
        .in(in),
        .clk(clk),
        .rst(rst),
        .out(out),
         .cs(cs),
         .ns(ns)
        );
    initial begin
  
    clk=0;
    in=0;
    rst=1; #10; 
//    #12;
    rst=0; #10; 
//    #13;
//  in=0; #1;
    in=1; #10;
    in=0; #10;
    in=1; #10;
    in=0; #10;
    in=1; #10;
    in=0; #10;
    end
    always #5 clk=!clk;
    initial #150 $finish;
endmodule
