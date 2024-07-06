`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.06.2024 15:12:51
// Design Name: 
// Module Name: srflip_flop_syn
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


module srflip_flop_syn(output reg q,qbar, input s,r,clk,clr,preset);
        always @(posedge clk)
            if (clr==1'b1)
            begin q<=1'b1; qbar<=1'b0; end
            else 
            if (preset==1'b1)
            begin q<=1'b0; qbar<=1'b1; end
            else
            case ({s,r})
                2'b00: begin q<=q; qbar<=qbar; end
                2'b01: begin q<=1'b0; qbar<=1'b1; end
                2'b10: begin q<=1'b1; qbar<=1'b0; end
                2'b11: begin q<=1'bx; qbar<=1'bx; end
            default : {q,qbar}<=2'bxx;
            endcase
endmodule
