`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.07.2024 14:35:15
// Design Name: 
// Module Name: four_bit_syn_counter_tb
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


module four_bit_syn_counter_tb;
  reg clk,rst,up_down,load;
  reg [3:0] data;
  wire [3:0] count;
 
 four_bit_syn_counter uut(.clk(clk),
                          .data(data),
                          .rst(rst), 
                          .up_down(up_down),
                          .count(count),
                          .load(load)
                          );

  initial begin
    clk=0;
    forever #5 clk=~clk;
    
  end

  initial begin
      $monitor("input values :clk:%b,rst:%b,up_down:%b, output values: count:%b",clk,rst,up_down,count);
    rst=1;
   #10 rst=0;
   #5 load=1;
   data=4'b0011;
   #5 load =0;
   #5 up_down=1;
//   #10 rst =0;
    #30 up_down=0;
   # 30 up_down=1;
   # 30 up_down =0;
   #100  $finish; 
    

  end
endmodule
