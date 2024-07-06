`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.06.2024 13:33:19
// Design Name: 
// Module Name: mux_8_1_tb
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


module mux_8_1_tb;
    reg [7:0] i;
    reg [0:2] s;
    wire o;
   mux_8_1 uut(
    .o(o),
    .i(i),
    .s(s)
   );
    initial begin
     i=8'b01110110;
        #2 s = 3'b000;
        #2 s = 3'b001;
        #2 s = 3'b010;
        #2 s = 3'b011;
        #2 s = 3'b100;
        #2 s = 3'b101;
        #2 s = 3'b110;
        #2 s = 3'b111;
     end
     initial $monitor("time=%g,o=%b,s=%b,i=%b",$time,o,s,i);
     initial #30 $finish;
endmodule
