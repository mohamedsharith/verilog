4.Display the console output for the following
timescale 10ns/1ns
parameter P=15.5;
reg a;
initial
begin
  $monitor($time,"Value of a = %b",a); 
  #P a=1'b1:
 #P a = 1'b0;
end

// 0 Value of a = x  // Initial value (may start as x or z depending on simulator)
// 155 Value of a = 1
// 310 Value of a = 0
