`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.06.2024 14:54:30
// Design Name: 
// Module Name: full_sub_gatelevel
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

// d=a^b^c; borrow=(!a&b)+!(a^b)&c);
module full_sub_gatelevel(input a,b,c , output d, borrow );
wire m,k,l,abar,mbar;
xor a1(m,a,b); //wire =m
xor a2(d,m,c);
not a3(abar,a);
and u1(k,abar,b); //wire=k
not a7(mbar,m);    //
and u2(l,mbar,c); //wire=l
or a6(borrow,k,l);
endmodule
