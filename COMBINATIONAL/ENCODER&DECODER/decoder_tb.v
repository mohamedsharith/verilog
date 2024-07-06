`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.06.2024 17:18:27
// Design Name: 
// Module Name: decoder_tb
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


module decoder_tb;
    reg [2:0] i;
    wire [7:0] o;
  decoder uut(
        .i(i),
        .o(o)
  );
     initial begin
      $monitor("in = %b -> out = %b", i, o);
        i=3'b000; #2;
        i=3'b001; #2;
        i=3'b010; #2;
        i=3'b011; #2;
        i=3'b100; #2;
        i=3'b101; #2;
        i=3'b110; #2;
        i=3'b111; #2;
     end
     initial #18 $finish;
endmodule
