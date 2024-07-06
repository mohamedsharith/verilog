`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.06.2024 17:58:20
// Design Name: 
// Module Name: demux_2_1
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


module demux_2_1(o,i,s);
    output reg [1:0] o;
    input i,s;
   /* assign o[0]=!s&i;
    assign o[1]=s&i; */
   /*  always @ (*)
    case (s)
        1'b0: begin o[0]=i;o[1]=1'b0; end
        1'b1: begin o[1]=i;o[0]=1'b0; end
    default:o[1:0] = 2'bxx;
    endcase */
    always @(*)
        begin 
        if(s==1'b0) begin
            o[0]=i;
            o[1]=1'b0;
            end
        else
        begin      
        o[1]=i;
        o[0]=1'b0;
        end
        end
 endmodule