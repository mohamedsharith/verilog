`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.06.2024 22:18:23
// Design Name: 
// Module Name: b2g_conv
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
module b2g_conv(b,g);
    input [0:3] b;
    output [0:3] g;
    
    assign g[0] = b[0];
    assign g[1] = b[0]^b[1];
    assign g[2] = b[1]^b[2];
    assign g[3] = b[2]^b[3];  
      
endmodule

