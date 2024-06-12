module half_sub_tb;
reg a,b;
wire d,bo;
half_sub uut(
    .d(d),
    .bo(bo),
    .a(a),
    .b(b)
 );
 initial begin
    a=1'b0;
    b=1'b0;
end
    always #2 a=a+1'b1;
    always #3 b=b+1'b1;
initial   #10 $finish;
endmodule
