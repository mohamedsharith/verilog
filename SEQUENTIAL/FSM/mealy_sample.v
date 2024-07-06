`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.06.2024 12:23:29
// Design Name: 
// Module Name: mealy_sample
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


module mealy_sample(input clk,x,rst,
        output reg y);
        
    parameter s0=00,s1=01,s2=10,s3=11;
    reg [1:0]cs,ns;
    
    always @(posedge clk)
    begin 
        if(rst) begin y=0;cs=s0;ns=s0;
        end
        else 
        begin
         cs=ns; 
          end
  
    
    //always @(cs,x)

        case(cs)
        s0: ns=x?s1:s0;
        y=0;
        $display("s0");
        end
        
        s1:begin 
        assign ns=x?s1:s2;
        y=0;
        $display("s1");
        end
        
        s2:begin 
        assign ns=x?s1:s0;
        assign y=x?1'b1:0;
        $display("s2"); 
        end
        endcase 
        end
       
        endmodule
