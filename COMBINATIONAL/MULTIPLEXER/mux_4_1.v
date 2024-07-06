`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.06.2024 23:18:47
// Design Name: 
// Module Name: mux_4_1
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


module mux_4_1(z,i,s);
    output reg z;
    input [3:0] i;
    input [1:0] s;
   always @(*) begin
    case(s)
        2'd0: z =i[0];
        2'd1: z =i[1];
        2'd2: z =i[2];
        2'd3: z =i[3];
    default: $display("invalid sel input");
    endcase
    end
endmodule
