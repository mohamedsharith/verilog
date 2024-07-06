`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.06.2024 10:32:07
// Design Name: 
// Module Name: dflip_flop_asy
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


module dflip_flop_asy(output reg q,qbar, input d,clk,clear);
    always @ (posedge clk or negedge clear)
        if (clear==1'b1)
         begin
          q=1'b0;
          qbar=1'b1;
         end
        else
        begin q<=d; qbar<=!d; end
 endmodule
