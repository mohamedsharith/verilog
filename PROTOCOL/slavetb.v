`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.07.2024 19:59:54
// Design Name: 
// Module Name: slavetb
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


module slavetb;

    // Testbench signals
    reg [7:0] saddr;
    reg [7:0] sdatain;
    reg clk;
    reg swrite;
    wire [7:0] srdataout;

    // Instantiate the sram_slave1
    sram_slave1 uut (
        .saddr(saddr),
        .sdatain(sdatain),
        .clk(clk),
        .SWRITE(swrite),
        .srdataout(srdataout)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk; // 100 MHz clock
    end

    // Test procedure
    initial begin
        // Initialize signals
        saddr = 8'h00;
        sdatain = 8'h00;
        swrite = 0;

        // Write operation
        #10;
        saddr = 8'h10;       // Address to write
        sdatain = 8'hA5;     // Data to write
        swrite = 1;          // Enable write
        #10;
        swrite = 0;          // Disable write

        // Wait for a few clock cycles
        #20;

        // Read operation
        #10;
        saddr = 8'h10;       // Address to read
        swrite = 0;          // Enable read
        #10;

        // Display the read data
        $display("Read Data from Address 0x10: %h", srdataout);

        // Finish simulation
        #100;
        $stop;
    end

endmodule
