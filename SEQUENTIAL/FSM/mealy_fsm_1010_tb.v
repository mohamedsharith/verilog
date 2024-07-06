`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.06.2024 16:09:12
// Design Name: 
// Module Name: mealy_fsm_1010_tb
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


module mealy_fsm_1010_tb;
        reg in,clk,rst;
        wire out;
    mealy_fsm_1010 uut(
        .in(in),
        .clk(clk),
        .rst(rst),
        .out(out)
        );
    initial begin
    in=0;
    clk=0;
    rst=1; #10;
    rst=0; #10;
  
    in=1; #10;
    in=0; #10;
    in=1; #10;
    in=0; #10;
    in=1; #10;
    in=0; #10;
    in=1; #10;
    in=0; #10;
    in=1; #10;
        end
    always #5 clk=!clk;
    initial #100 $finish;
endmodule
