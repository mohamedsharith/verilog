`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.06.2024 15:40:43
// Design Name: 
// Module Name: moore_nonoverlap_tb
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
////////////////////////////////////MOORE_FSM_1010_TB_CORRECT_CODE//////////////////////////////////////////////


module moore_nonoverlap_tb;
        reg in,clk,rst;
        wire out;
         wire [2:0] cs,ns;
    moore_nonoverlap uut(
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
//initial begin 
//        dumpfile("dump.vcd");
//        dumpvars;
//end
endmodule