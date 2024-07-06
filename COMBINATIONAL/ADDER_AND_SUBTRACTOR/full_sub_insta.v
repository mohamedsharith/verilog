`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.06.2024 13:52:25
// Design Name: 
// Module Name: full_sub_insta
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


module full_sub_insta(output D,BO, input A,B,C);
wire t,k,n;
half_subt h1(t,n,A,B);
half_subt h2(D,k,t,C);
or (BO,k,n);
endmodule

module half_subt(output d,b, input x,y);
    assign d=x^y;
    assign b=!x&y;
endmodule


// d=a^b^c; borrow=(!a&b)+(a^b)&c);
/*module full_sub(output d,borrow, input a,b,c);
wire x,y,z
xor a1(x,a,b); //wire =x
xor a2(d,x,c);
not a3(abar,a);
and a4(y,abar,b); //wire=y
and a5(z,x,c); //wire=z
or a6(borrow,y,z);
endmodule
*/