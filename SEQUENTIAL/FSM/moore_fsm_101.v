`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.06.2024 09:08:07
// Design Name: 
// Module Name: moore_fsm_101
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


module moore_fsm_101(
                    output reg out,
                    output reg [1:0] cs,ns,
                    input clk,clr,in
                    );
//               reg [0:1]cs,ns;
                parameter [0:1] s0=2'b00;
                parameter [0:1] s1=2'b01;
                parameter [0:1] s2=2'b10;
                parameter [0:1] s3=2'b11;
            always @(posedge clk)
            begin
            if(clr) begin
                out=1'b0;
                cs=s0; ns=s0;
                end
            else begin
                cs=ns;
            end
            end
            always @(cs,in)
            begin
            case(cs)
                s0: begin out=1'b0;
                    if(in) begin
                        ns=s1; end
                    else begin
                        ns=s0; end
                    end
                 s1: begin out=1'b0;
                    if(in) begin
                        ns=s1; end
                    else begin
                        ns=s2; end
                    end
                 s2: begin out=1'b0;
                    if(in) begin
                        ns=s3; end
                    else begin
                        ns=s2; end
                    end
                 s3: begin out=1'b1;
                    if(in) begin
                        ns=s1; end
                    else begin
                        ns=s2; end
                    end
                endcase
                end
                endmodule
