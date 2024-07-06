`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.06.2024 15:52:43
// Design Name: 
// Module Name: mealy_fsm_1010
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


module mealy_fsm_1010(
        output reg out,
        input in,clk,rst        
);
        reg [2:0] cs,ns;
        parameter [2:0]s0= 3'b000;
        parameter [2:0]s1= 3'b001;
        parameter [2:0]s2= 3'b010;
        parameter [2:0]s3= 3'b011;
    always@(posedge clk)
        begin
        if(rst) begin
            out=1'b0;
            cs=s0;
            ns=s0;
            end
        else begin
          
            cs=ns; 
        case(cs)
        s0: if(in) begin
            out=1'b0;
            ns=s1; end
            else begin
            out=1'b0;
            ns=s0; end
         s1: if(in) begin
            out=1'b0;
            ns=s1; end
            else begin
            out=1'b0;
            ns=s2; end
          s2: if(in) begin
            out=1'b0;
            ns=s3; end
            else begin
            out=1'b0;
            ns=s0; end
           s3: if(in) begin
            out=1'b0;
            ns=s1; end
            else begin
            out=1'b1;
            ns=s2; end
            
            endcase
            end
            end
           
        
        
endmodule

