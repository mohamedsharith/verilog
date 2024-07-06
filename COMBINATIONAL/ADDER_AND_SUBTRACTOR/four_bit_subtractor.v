`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.06.2024 15:41:47
// Design Name: 
// Module Name: four_bit_subtractor
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


module four_bit_subtractor(d,bo,a,b,c);
    input [3:0] a,b;
    input c;
    output [3:0] d;
    output bo;
    wire [2:0]co;
    //wire [3:0]l; 
  //  xor (l,b,c);
   // assign l=!b+4'b0001;
full_adderr a1(d[0],co[0],a[0],!b[0],c);
full_adderr a2(d[1],co[1],a[1],!b[1],co[0]);
full_adderr a3(d[2],co[2],a[2],!b[2],co[1]);
full_adderr a4(d[3],bo,a[3],!b[3],co[2]);
 endmodule


module full_adderr(output reg s,co, input a,b,c);
    always @(*)
    begin
    s=a^b^c;
    co=(a&b)|(b&c)|(a&c);
    end
endmodule