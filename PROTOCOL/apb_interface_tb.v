`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.07.2024 19:15:56
// Design Name: 
// Module Name: apb_interface_tb
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


module apb_interface_tb;

    reg sys_clk;
    reg sys_reset;
    reg start_transfer;
    reg rw_mode;
    reg [7:0] master_wdata;
    reg [7:0] master_waddr;
    reg [7:0] master_raddr;
    wire [7:0] slave_rdata;
//    wire [7:0] testdata;  //

    
    apb_interface dut (
//        .testdata(testdata), //
        .sys_clk(sys_clk),
        .sys_reset(sys_reset),
        .start_transfer(start_transfer),
        .rw_mode(rw_mode),
        .master_wdata(master_wdata),
        .master_waddr(master_waddr),
        .master_raddr(master_raddr),
//        .slave_cs(1'b1),             
        .slave_rdata(slave_rdata)
    );
    
    initial begin
        sys_clk = 0;
        forever #5 sys_clk = ~sys_clk; 
    end

    
    initial begin
      
        sys_reset = 1;
        start_transfer = 0;
        rw_mode = 0;
        master_wdata = 8'h00;
        master_waddr = 8'h00;
        master_raddr = 8'h00;

        
        #10 sys_reset = 0;
//        #10 sys_reset = 1;

      
        #10 start_transfer = 1;
        rw_mode = 1;             // WRITE MODE
        master_waddr = 8'h15;    // WRITE ADDRESS
        master_wdata = 8'h11;    // WRITE DATA
        #20 start_transfer = 0;

        #20;

        #10 start_transfer = 1;
        rw_mode = 0;             // READ MODE
        master_raddr = 8'h15;    // READ ADDRESS
        #20 start_transfer = 0;
        #20;

        $display("Read Data: %h", slave_rdata);

        #100;
        $stop;
    end

endmodule

