module logical_op;
        reg[3:0] i1,i2;
        initial begin
                i1=4'h6;
                i2=4'h2;
                $display("for operator: (&&):%h",i1&&i2);
                $display("for operator: (||):%h",i1||i2);
                $display("for operator: (!):%h",!i1);
        end
endmodule
