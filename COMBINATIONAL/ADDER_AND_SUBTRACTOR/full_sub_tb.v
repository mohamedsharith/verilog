module full_sub_tb;
reg a,b,c;
wire d,bo;
full_sub dut(
    .di(d),
    .bor(bo),
    .a(a),
    .b(b),
    .c(c)
);
initial begin
    a=1'b1;
    b=1'b0;
    c=1'b1;
end
    always #2 a=a+1'b1;
    always #3 b=b+1'b1;
    always #4 c=c+1'b1;
initial #100 $finish;
endmodule
