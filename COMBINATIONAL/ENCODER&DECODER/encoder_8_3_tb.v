`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.06.2024 09:27:01
// Design Name: 
// Module Name: encoder_8_3_tb
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


module encoder_8_3_tb;
    reg [7:0] i;
    wire [2:0] o;
   encoder_8_3 uut(
        .i(i),
        .o(o)
   );
   initial begin
   #2 i=8'h01;
   #2 i=8'h02;
   #2 i=8'h04;
   #2 i=8'h08;
   #2 i=8'h10;
   #2 i=8'h20;
   #2 i=8'h40;
   #2 i=8'h80;
      end
   initial #40 $finish;
   
    /* int u; 
    initial begin
    i=8'b1; #1;
    for(u=0; u<8; u++) begin
      $display("i = %h(in dec:%0d) -> o = %0h", i, u, o);
      i=i<<1; #1;
    end
  end */
endmodule
