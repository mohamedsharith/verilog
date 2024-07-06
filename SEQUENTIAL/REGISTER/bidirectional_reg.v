`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.06.2024 01:17:41
// Design Name: 
// Module Name: bidirectional_reg
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


module bidirectional_reg(
                        input clk,clr,load,
                        input [3:0]d,
                        input rs,ls,
                        output reg [3:0] q
                        );
//                        reg [3:0] temp;
            always @(posedge clk) begin
                if (clr==0)
                    q=4'b0000;
                else begin
                if(load) begin
                    q<=d;
                 end
                else if(ls==1) begin
                    q<={q[2:0],d[0]};
                end
                else if(rs==1) begin
                    q<={d[3],q[3:1]};
                end
            end  
        end
//            assign [3:0]q=[3:0]temp;
endmodule
