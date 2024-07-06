`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.06.2024 13:13:10
// Design Name: 
// Module Name: mux_8_1
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


module mux_8_1(o,i,s);
    output o;
    input [7:0] i;
    input [2:0] s;
    wire [5:0] k;
    mux_2_1_8 a1(k[0],i[1:0],s[0]);
    mux_2_1_8 a2(k[1],i[3:2],s[0]);
    mux_2_1_8 a3(k[2],i[5:4],s[0]);
    mux_2_1_8 a4(k[3],i[7:6],s[0]);
    mux_2_1_8 a5(k[4],k[1:0],s[1]);
    mux_2_1_8 a6(k[5],i[3:2],s[1]);
    mux_2_1_8 a7(o,k[5:4],s[2]);
endmodule

module mux_2_1_8(o,i,s);
    input [0:1] i;
    input s;
    output reg o;
    always @(*) begin
        if (s==1'b0)
            o = i[0];
        else 
            o = i[1];
        end
endmodule
    