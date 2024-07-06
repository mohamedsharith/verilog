`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.06.2024 10:41:32
// Design Name: 
// Module Name: priority_encoder_tb
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


module priority_encoder_tb;
    reg [7:0] i;
    wire[2:0] o;
        priority_encoder uut(
                .o(o),
                .i(i)
        );
        initial begin 
            i=8'h01;
         #2 i=8'h02;
         #2 i=8'h04;
         #2 i=8'h08;
         #2 i=8'h10;
         #2 i=8'h20;
         #2 i=8'h40;
         #2 i=8'h80;
        end
        initial #20 $finish;
endmodule
