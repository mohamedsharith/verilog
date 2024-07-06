`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.06.2024 22:00:39
// Design Name: 
// Module Name: piso
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


module piso(
            input [3:0] d,
            input clk,clr,sel,
            output reg  q
            );
            reg [3:0] temp;
            always @(posedge clk)
            if (clr==1)
                temp<=4'b0000;
            else 
            if (sel==0)
            temp<=d;
            else begin
            q<=temp[0];
            temp<=temp>>1;
            end
endmodule
