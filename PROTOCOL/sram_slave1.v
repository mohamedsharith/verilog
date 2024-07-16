`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.07.2024 10:42:23
// Design Name: 
// Module Name: sram_slave1
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


module sram_slave1(
                  input  [7:0]saddr,    // ADDRESS FOR WRITE AND READ FROM MASTER
                  input  [7:0]sdatain,  // WRITE DATA FROM MASTER
                  input  clk,          // CLOCK INPUT FOR ALL
//                  input  SCS,           // SLAVE CHIP SELECT FOR READ AND WRITE
//                  input [7:0]SRD,           // SLAVE READ DATA FROM THE SLAVE
                  input  SWRITE,           // FOR SLAVE WRITE OPERATION
                  output [7:0]srdataout  // FOR SLAVE READ DATA OUT
);
    // INTERNAL MEMORY DECLARATION
    reg [0:7] memory [0:255]; // 256 x 8-BIT MEMORY

    // DATA OUTPUT REGISTER
    reg [0:7] dataout_reg;

    // ASSIGN OUTPUT
    assign srdataout = memory[dataout_reg];
//    assign SRD = 8'h87;

    always @(posedge clk) begin
//        if (SCS) begin
            if (SWRITE) begin
                // WRITE OPERATION
                memory[saddr] = sdatain;
             end
                if(!SWRITE)  begin          
                // READ OPERATION
                dataout_reg = saddr;
            end
        end
//    end
endmodule
