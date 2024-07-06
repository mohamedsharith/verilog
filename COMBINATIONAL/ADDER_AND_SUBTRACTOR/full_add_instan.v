`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.06.2024 17:59:08
// Design Name: 
// Module Name: full_add_instan
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

//full_adder using instantion or full_adder using two half_adder
module full_add_instan(output s,c0, input a,b,ci);
    wire t,k;
    half v1(t,c,a,b);
    half v2(s,k,t,ci);
    or (c0,k,c);
endmodule

//half_adder using dataflow level
module half(output s,c, input a,b);
assign s=a^b;
assign c=a&b;
endmodule
