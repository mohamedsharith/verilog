`timescale 1ns / 1ps


//hslf adder using gate level
module half_adder(s,c,a,b);
input a,b;
output s,c;
xor (s,a,b);
and (c,a,b);
endmodule


//half adder using data flow level
/* module half_adder(output s,c, input a,b);
    assign s=a^b;
    assign c=a&b;
endmodule */

//half adder using behavioral level
/* module half_adder(s,c,,a,b);
    input(a,b);
    output reg (s,c);
    always @(*)
    begin
    s=a^b;
    c=a&b;
    end
endmodule */
