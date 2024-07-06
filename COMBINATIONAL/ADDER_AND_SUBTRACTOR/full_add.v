`timescale 1ns / 1ps


//full_adder using behavioral level
module full_add (output reg s,c, input a,b,c1);
always@(*)
begin
    s=a^b^c1;
    c=(a&b)|(b&c)|(a&c);
end
endmodule

//full_adder using gate level
/* module full_add(output s,co, input a,b,c);
    wire k,t1,t2;
    xor g1(k,a,b);
    xor g2(s,k,c);
    and g3(t1,a,b);
    and g4(t2,k,c);
    or g5(co,t2,t1);
endmodule  */


//full_adder using data flow level
/* module full_add(output s,co, input a,b,c);
    assign s=a^b^c;
    assign co=(a&b)|(b&c)|(a&c);
endmodule  */