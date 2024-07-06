`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.06.2024 16:27:55
// Design Name: 
// Module Name: decoder
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


module decoder(
    input [2:0] i,
    output reg [7:0]o 
);
    always @ (*) begin 
        case(i)
         3'b000: o[0]=8'b00110001;
         3'b001: o[1]=8'b00000010;
         3'b010: o[2]=8'b00000100;
         3'b011: o[3]=8'b00001000;
         3'b100: o[4]=8'b00010000;
         3'b101: o[5]=8'b00100000;
         3'b110: o[6]=8'b01000000;
         3'b111: o[7]=8'b10000000;
      default: o=8'b10000000;
        endcase
        end
endmodule

