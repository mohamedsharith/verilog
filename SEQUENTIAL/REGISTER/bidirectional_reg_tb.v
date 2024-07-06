`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.06.2024 01:30:13
// Design Name: 
// Module Name: bidirectional_reg_tb
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


module bidirectional_reg_tb;
                       reg clk,clr,load,rs,ls;
                       reg [3:0] d;
//                       reg [1:0] m;
                       wire [3:0]q;
       bidirectional_reg uut(
                             .clk(clk),
                             .clr(clr),
                             .load(load),
                             .d(d),
                             .rs(rs),
                             .ls(ls),
//                             .s(s),
                             .q(q)
                             );
        initial begin
//                      // Initialize all inputs
//        clk = 0;
//        clr = 1;
//        load = 0;
//        rs = 0;
//        ls = 0;
//        d = 4'b0000;
                    clk=0;
                    clr=1;
                    load=0;
                    rs=0;
                    ls=0;
                   #2 clr=0;
                   #2 clr=1;
                   #2 load=1;
                    d=4'b0110;
                   #2 load=0;
                   #2 rs=1;
                   #2 rs=0;
                   #2 ls=1;
                   #2 ls=0;
                   #30 $finish;                 
//        // Load a value into the register
//        #2 load = 1;
//        d = 4'b0110;
//        #2 load = 0;

//        // Shift right
//        #5 rs = 1;
//        #2 rs = 0;

//        // Shift left
//        #10 ls = 1;
//        #2 ls = 0;

//        // Load another value
//        #5 load = 1;
//        d = 4'b1010;
//        #2 load = 0;

//        // Shift left again
//        #5 ls = 1;
//        #2 ls = 0;

//        // Shift right again
//        #10 rs = 1;
//        #2 rs = 0;

//        // Finish simulation
//        #20 $finish;
//    end
//            clk=0;
//            clr=1;
//            #2 clr=0;
//            #2 load=1;
//            d = 4'b0110;
//            #2 load=0;
//            #5 rs=1;
//            #5 rs=0;
//            #10 ls=1;
//            #10 ls=0;
//            end
              end
        always #1 clk=!clk;
//        initial #60 $finish;
                       
endmodule
