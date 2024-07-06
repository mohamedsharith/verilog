`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.06.2024 11:03:24
// Design Name: 
// Module Name: siso
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


module siso(
            input clk,clr,d,output  q
            );
            reg [3:0] temp;
            always @(posedge clk)
            if (clr==1)
                temp=4'b0000;
            else
            begin
            temp=temp>>1;
            temp[3]=d;
             
            end
            assign q=temp[0]; 
           
endmodule
