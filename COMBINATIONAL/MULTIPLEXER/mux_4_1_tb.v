`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.06.2024 23:39:40
// Design Name: 
// Module Name: mux_4_1_tb
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
`timescale 1ns / 1ps

module mux_4_1_tb;
    reg [3:0] i;
    reg [1:0] s;
    wire z;

    // Instantiate the Unit Under Test (UUT)
    mux_4_1 uut (
        .z(z),
        .i(i),
        .s(s)
    );

    initial begin
        // Monitor signal values
      //  $monitor("sel = %b -> i3 = %0b, i2 = %0b, i1 = %0b, i0 = %0b -> z = %0b", s, i3, i2, i1, i0, z);
        
        // Set initial input values
        {i[3:0]} = 4'b0101; // Assign initial values to inputs

        // Test each selection input systematically
        s = 2'b00; #20;  // Test for s = 00
        s = 2'b01; #20;  // Test for s = 01
        s = 2'b10; #20;  // Test for s = 10
        s = 2'b11; #20;  // Test for s = 11

        // Change input values to test different conditions
        {i[3:0]} = 4'b1010; 

        // Test each selection input again with new input values
        s = 2'b00; #20;
        s = 2'b01; #20;
        s = 2'b10; #20;
        s = 2'b11; #20;

        // Test random values of s
        repeat(6) begin
            s = $random; // Ensure s is within 2-bit range
            #20;
        end

        // End the simulation
        $finish;
    end
endmodule

