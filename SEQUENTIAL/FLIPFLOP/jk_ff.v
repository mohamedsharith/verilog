`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.06.2024 17:09:01
// Design Name: 
// Module Name: jk_ff
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


module jk_ff(
    output reg q,qbar,
    input j,k,clk,clr,preset
    );
    always @(posedge clk)
        if (clr==1)
        begin q<=1;qbar<=0; end
        else
        if (preset==1)
        begin q<=0;qbar<=1; end
        else
        case({j,k})
        2'b00 : begin q<=q; qbar<=qbar; end
        2'b01 : begin q<=0; qbar<=1; end
        2'b10 : begin q<=1; qbar<=0; end
        2'b11 : begin q<=!q; qbar<=!qbar; end
        default: {q,qbar}<=2'bxx;
        endcase
endmodule

/* 
`define SET 2'b10
`define RESET 2'b01
`define TOGGLE 2'b11
`define HOLD 2'b00

module jk_flip_flop (
    input clk,
    input j, k,
    output reg q
);
    always @(posedge clk) begin
        case ({j, k})
            `SET: q <= 1;
            `RESET: q <= 0;
            `TOGGLE: q <= ~q;
            `HOLD: q <= q;
        endcase
    end
endmodule
*/
