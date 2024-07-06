`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.06.2024 15:27:15
// Design Name: 
// Module Name: pipo_reg
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


module pipo_reg(
                output reg [3:0]q,
                input [3:0]d,
                input clk,clr
                );
            always @(posedge clk)
            if(clr==1)
                q=4'b0000;
            else begin
          q=d;
            end
            
endmodule
