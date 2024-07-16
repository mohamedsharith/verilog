`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.07.2024 10:42:23
// Design Name: 
// Module Name: apb_master
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


module apb_master(
                  input PCLK,PRESET,TRANSFER,READ_WRITE,
                  input [7:0]PWDATA,    // FROM EXTERNAL MASTER  
                  input [7:0]PWADDR,    // FROM EXTERNAL MASTER
                  input [7:0]PRADDR,    // FROM EXTERNAL MASTER
                  input [7:0]SRDATA,     // FROM SLAVE READ DATA
                  input pready,         // FROM SLAVE 
                  output reg psel,          // SELECTION OF SLAVE
                  output reg penable,       // ENABLE THE SLAVE
                  output reg pwrite,        // READ OR WRITE TO THE SLAVE
                  output reg [7:0]owdata,   // WRITE DATA FROM EXTERNAL MASTER
                  output reg [7:0]prdata,
                  output reg [7:0]paddr     // ADDRESS FROM EXTERNAL MASTER
                  );
                  
                  reg [2:0] current_state,next_state;
                  parameter IDLE=3'b001,SETUP=3'b010,ACCESS=3'b100;
                  
                  always @(posedge PCLK)
                    begin
                        pwrite=READ_WRITE;   //ASSIGN EXTERNAL READ_WRIE TO THIS MASTER
                        if(PRESET==1) begin
                            current_state = IDLE;
                            next_state = IDLE;
                            paddr=0;        // OUTPUT ADDRESS SHOULD BE ZERO
                            owdata=0;       // OUTPUT WRITE DATA SHOULD BE ZERO
                            end
                        else
                            current_state=next_state;
                    end
                 always @(posedge PCLK,current_state,TRANSFER) begin      // THIS ALWAYS BLOCK CHANGES BASED ON SENSITIVE LIST
                 case (current_state)
                    IDLE: begin
                        psel=0;
                        penable=0;
                        paddr=0;
                        owdata=0;
                        if(TRANSFER==1)
                            next_state=SETUP;
                        else
                            next_state=IDLE;
                          end
                   SETUP: begin
                        psel=1;
                        penable=0;
                        if(pwrite && TRANSFER) begin
                            paddr=PWADDR;       // ASSIGN EXTERNAL WRITE ADDRESS TO THIS MASTER
                            owdata=PWDATA;      // ASSIGN EXTERNAL WRITE DATA TO THIS MASTER
                            next_state=ACCESS;
                            end
                        else if(!pwrite && TRANSFER) begin
                            paddr=PRADDR;      // ASSIGN EXTERNAL READ ADDRESS TO THIS MASTER
                            prdata=SRDATA;      // ASSIGN SLAVE READ DATA TO THIS MASTER
                            next_state=ACCESS;
                            end
                          end
                  ACCESS: begin 
                        psel=1;
                        penable=1;
                        if(pready==0) begin
                            if(pwrite==1) begin
                                paddr=PWADDR;       // ASSIGN EXTERNAL WRITE ADDRESS TO THIS MASTER
                                owdata=PWDATA;      // ASSIGN EXTERNAL WRITE DATA TO THIS MASTER
                                next_state=ACCESS;
                                end
//                            else if(!pwrite) begin
else begin
                                paddr=PRADDR;       // ASSIGN EXTERNAL READ ADDRESS TO THIS MASTER
                                prdata=SRDATA;      // ASSIGN SLAVE READ DATA TO THIS MASTER
                                next_state=ACCESS;
                                end
                            end
                        else if(pready==1 && TRANSFER==1) begin
                            if(pwrite==1) begin
                                paddr=PWADDR;           // ASSIGN EXTERNAL WRITE ADDRESS TO THIS MASTER
                                owdata=PWDATA;          // ASSIGN EXTERNAL WRITE DATA TO THIS MASTER
                                next_state=SETUP;
                                end
//                            else if(!pwrite) begin
else begin
                               paddr=PRADDR;        // ASSIGN EXTERNAL READ ADDRESS TO THIS MASTER
                                prdata=SRDATA;      // ASSIGN SLAVE READ DATA TO THIS MASTER
                                next_state=SETUP;
                                end
                            end
                        else if(pready==1 && !TRANSFER==0) begin
                              if(pwrite==1) begin
                                paddr=PWADDR;           // ASSIGN EXTERNAL WRITE ADDRESS TO THIS MASTER
                                owdata=PWDATA;          // ASSIGN EXTERNAL WRITE DATA TO THIS MASTER
                                next_state=IDLE;
                                end
//                              else if(!pwrite) begin
else begin
                                paddr=PRADDR;           // ASSIGN EXTERNAL READ ADDRESS TO THIS MASTER
                                prdata=SRDATA;          // ASSIGN SLAVE READ DATA TO THIS MASTER
                                next_state=IDLE;
                                end  
                            end
                        end
                        default: next_state=IDLE;
                        endcase
                        end
endmodule
