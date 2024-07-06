`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.06.2024 22:33:17
// Design Name: 
// Module Name: mux_2_1_tb
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


module mux_2_1_tb;
    reg [1:0]in;
    reg s;
    wire z;
mux_2_1 uut(
    .z(z),
    .s(s),
    .in(in)
);
    initial begin
        in=1'b0;
        s=1'b1;
end
    always #2 in=in+1;
    always #1 s=s+1;
    initial #20 $finish;
endmodule
