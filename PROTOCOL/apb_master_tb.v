`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.07.2024 20:41:32
// Design Name: 
// Module Name: apb_master_tb
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


module tb_apb_master;

    // Testbench signals
    reg PCLK;
    reg PRESET;
    reg TRANSFER;
    reg READ_WRITE;
    reg [7:0] PWDATA;
    reg [7:0] PWADDR;
    reg [7:0] PRADDR;
    reg [7:0] SRDATA;
    reg pready;
    wire psel;
    wire penable;
    wire pwrite;
    wire [7:0] owdata;
    wire [7:0] prdata;
    wire [7:0] paddr;

    // Instantiate the apb_master
    apb_master uut (
        .PCLK(PCLK),
        .PRESET(PRESET),
        .TRANSFER(TRANSFER),
        .READ_WRITE(READ_WRITE),
        .PWDATA(PWDATA),
        .PWADDR(PWADDR),
        .PRADDR(PRADDR),
        .SRDATA(SRDATA),
        .pready(pready),
        .psel(psel),
        .penable(penable),
        .pwrite(pwrite),
        .owdata(owdata),
        .prdata(prdata),
        .paddr(paddr)
    );

    // Clock generation
    initial begin
        PCLK = 0;
        forever #5 PCLK = ~PCLK; // 100 MHz clock
    end

    // Test procedure
    initial begin
        // Initialize signals
        PRESET = 1;
        TRANSFER = 0;
        READ_WRITE = 0;
        PWDATA = 8'h00;
        PWADDR = 8'h00;
        PRADDR = 8'h00;
        SRDATA = 8'h00;
        pready = 0;

        // Reset the design
        #10;
        PRESET = 0;
//        #10;
//        PRESET = 1;

        // Write operation
        #10;
        TRANSFER = 1;
        READ_WRITE = 1;
        PWADDR = 8'hA0;
        PWDATA = 8'h55;
        
        #10;pready = 1;
//        TRANSFER = 0;
        #10;pready = 0;
        READ_WRITE=0;
        PRADDR=8'hBB;
        #10; pready=1;
        #10;pready=0;
        #20; TRANSFER=0;
        

        // Read operation
//        #20;
//        TRANSFER = 1;
//        READ_WRITE = 0;
//        PRADDR = 8'hA0;
//        SRDATA = 8'h55;
//        pready = 1;
//        #20;
//        TRANSFER = 0;
//        pready = 0;
//        #20;

        // Display the results
//        $display("Write Address: %h, Write Data: %h", PWADDR, PWDATA);
//        $display("Read Address: %h, Read Data: %h", PRADDR, prdata);

        // Finish simulation
        #50;
        $finish;
    end

endmodule
