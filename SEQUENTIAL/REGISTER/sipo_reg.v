`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.06.2024 15:08:15
// Design Name: 
// Module Name: sipo_reg
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


module sipo_reg(
            input d,clk,clr,
            output reg [3:0]q);
        reg [3:0]temp;
    always @(posedge clk)// begin
        if (clr==1)//begin
        q=4'b0000;
//        end
        else 
        begin
      /*  temp[0]=temp[1];
        temp[1]=temp[2];
        temp[2]=temp[3];
        temp[3]=d; */
        temp=q>>1;
        q={d,temp[2:0]};
        end 
//        assign q=temp;
        endmodule