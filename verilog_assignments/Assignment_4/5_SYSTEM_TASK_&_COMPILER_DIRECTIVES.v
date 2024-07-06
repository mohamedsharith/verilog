Display the console output for the following.`timescale 10ns/1ns
parameter P = 15.5;
reg a;
initial begin
    $monitor($realtime, " Value of a = %b", a);
    #P a = 1'b1;
    #P a = 1'b0;
end

// 0.000000 Value of a = x
// 155.000000 Value of a = 1
// 310.000000 Value of a = 0
