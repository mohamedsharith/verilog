`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.06.2024 16:15:21
// Design Name: 
// Module Name: universal_reg
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

/*
module universal_reg(
                    input clk,clr,
                    input [1:0]s,
                    input [3:0]d,
                    output [3:0]q
                     );
                    reg[3:0] r_reg,r_next;
        always @(posedge clk) begin
            if(clr) begin
                r_reg<=4'b0000;
            end
            else begin
                r_reg=r_next;
            end
            end
            always @(posedge clk) begin
            case(s)
                2'b00: r_next=r_reg;
                2'b01: r_next={r_reg[2:0],d[0]};
                2'b10: r_next={d[3],r_reg[3:1]};
                2'b11: r_next=d;
                default r_next=r_reg;
            endcase
            end
           
        assign q=r_reg;
endmodule */
module universal_reg(input clk, reset, 
input [1:0] mode, 
input [3:0]parallel_in, 
output reg [3:0]parallel_out);


always@(posedge clk or reset)begin
if(reset)begin
   parallel_out<=4'b0000;
 end else begin
   case(mode)
     2'b00: parallel_out<=parallel_out;
     2'b01: parallel_out<={parallel_out[0],parallel_out[3:1]};
     2'b10: parallel_out<={ parallel_out[2:0],parallel_out[3]}; // in case parallel_in means it depend only input (1010)
     2'b11: parallel_out<=parallel_in;
     default: parallel_out<=parallel_out;
     endcase
     end
     end

endmodule
