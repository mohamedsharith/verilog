`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.06.2024 12:25:04
// Design Name: 
// Module Name: mealy_sample_tb
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


module mealy_sample_tb;

reg clk, x, rst;
wire y;

mealy_sample u(
          .clk(clk),
          .x(x),
          .rst(rst),
          .y(y)
          );
//clk, x, rst, y);


initial begin
   x = 0;
        clk = 0;
    rst=1; #10;
    rst = 0; #10;
    end
    always #10 x = x+1;
    always #5 clk=!clk;
   
   /* rst = 1;
    x = 0;
    @(posedge clk); // Wait for a clock edge
    @(posedge clk); // Wait for another clock edge to ensure reset is properly applied
    rst = 0;
    
    // Apply test vectors
    #9 x = 1;
    #11 x = 0;
    #9 x = 1;
    #11 x = 0;
    #9 x = 1;
    #11 x = 0;
    #9 x = 1; */
    initial #100 $finish;


endmodule