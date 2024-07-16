module apb_interface (
    input sys_clk,
    input sys_reset,
    input start_transfer,
    input rw_mode,
    input [7:0] master_wdata,    // FROM EXTERNAL MASTER
    input [7:0] master_waddr,    // FROM EXTERNAL MASTER
    input [7:0] master_raddr,    // FROM EXTERNAL MASTER
//    input slave_cs,              // SLAVE CHIP SELECT FOR READ AND WRITE
    input slave_write_enable,    // FOR SLAVE WRITE OPERATION
    output [7:0] slave_rdata     // FOR SLAVE READ DATA OUT
//    output reg [7:0] testdata    //
);

    // Internal wires for connecting master and slave
    wire [7:0] internal_wdata;    // Write data from master to slave
    wire [7:0] internal_rdata;    // Read data from slave to master
    wire [7:0] internal_addr;     // Address from master to slave
    wire internal_psel;           // Selection of slave
    wire internal_penable;        // Enable the slave
    wire internal_pwrite;         // Read or write to the slave
    wire internal_pready;         // Indicate the slave is ready (feedback for simplicity)

    // Instantiate the APB master
    apb_master master (
        .PCLK(sys_clk),
        .PRESET(sys_reset),
        .TRANSFER(start_transfer),
        .READ_WRITE(rw_mode),
//        .PWDATA(testdata),  //
        .PWDATA(master_wdata),
        .PWADDR(master_waddr),
        .PRADDR(master_raddr),
        .SRDATA(internal_rdata),
        .pready(internal_pready),
        .psel(internal_psel),
        .penable(internal_penable),
        .pwrite(internal_pwrite),
        .owdata(internal_wdata),
        .prdata(internal_rdata),
        .paddr(internal_addr)
    );

    // Instantiate the SRAM slave
    sram_slave1 slave (
        .saddr(internal_addr),
        .sdatain(internal_wdata),
        .clk(sys_clk),
//        .SCS(internal_psel && internal_penable), // Slave is selected and enabled
        .SWRITE(internal_pwrite),
        .srdataout(slave_rdata)
    );

    // Ready signal generation for simplicity (assuming the slave is always ready)
    assign internal_pready = 1'b1;

endmodule
