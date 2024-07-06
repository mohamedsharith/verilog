`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.06.2024 22:28:38
// Design Name: 
// Module Name: mux_2_1
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


/*module mux_2_1(z,in,s);
    input [3:0] in;
    input s;
    output z;
assign z= s ? in[1] : in[0];
endmodule */

/*module mux_2_1(z,in,s);
    input [1:0] in;
    input s;
    output reg z;
  always @(*) begin
    case (s)
    1'b0: z = in[0];
    1'b1: z = in[1];
    default: z = 0;
  endcase
 end
endmodule*/

module mux_2_1(z,in,s);
    input [1:0] in;
    input s;
    output reg z;
  always @(*) begin
    if (s==1'b0)
        z=in[0];
    else 
        z=in[1];
        end
    endmodule
