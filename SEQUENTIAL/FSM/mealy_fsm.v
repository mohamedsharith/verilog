`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.06.2024 22:59:25
// Design Name: 
// Module Name: mealy_fsm
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


module mealy_fsm(
        input in,clk,rst,
        output reg out
        );
    reg[1:0] cs;
    reg[1:0] ns;    
        
    parameter [1:0]s0 = 2'b00;
    parameter [1:0]s1 = 2'b01;
    parameter [1:0]s2 = 2'b10;
    
    always @(posedge clk)
        begin
        if(rst) begin
            out = 1'b0;
            cs = s0;
            ns = s0; end 
        else
            begin
               cs = ns;
            case(cs)
            s0: if(in) begin
                out = 1'b0;
                ns = s1; end
                else begin
                out = 1'b0; 
                ns = s0; end
            s1: if(in) begin
                out = 1'b0;
                ns = s1; end
                else begin
                out = 1'b0;
                ns = s2; end
            s2: if(in) begin
                out = 1'b1;
                ns = s1; end
                else begin
                out = 1'b0;
                ns = s0; end     
            endcase
            end
            end
            
                      
endmodule




