`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.06.2024 19:13:15
// Design Name: 
// Module Name: half_sub
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


//half_subtractor using dataflow level
module half_sub (output d,bo, input a,b);
assign d=a^b;
assign bo=!a&b;
endmodule


//half_subtractor using gate level
/* module half_sub (output d,bo, input a,b);
    wire abar;
    xor g1(d,a,b);
    not g2(abar,a);
    and g3(bo,abar,b);
endmodule
*/ 

//half_subtractor using behavioral level
/*module half_sub (output reg d,bo, input a,b);
    always @(*)
    begin
    d=a^b;
    bo=!a&b;
end
endmodule  */