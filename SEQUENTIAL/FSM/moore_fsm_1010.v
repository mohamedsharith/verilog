`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.06.2024 09:27:31
// Design Name: 
// Module Name: moore_fsm_1010
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


module moore_fsm_1010(
        output reg out,
        input in,clk,rst ,
        output reg[2:0] cs,ns       
);
   
        parameter [2:0]s0= 3'b000;
        parameter [2:0]s1= 3'b001;
        parameter [2:0]s2= 3'b010;
        parameter [2:0]s3= 3'b011;
        parameter [2:0]s4= 3'b100;
    always@(posedge clk)
        begin
        if(rst) begin
            out=1'b0;
            cs=s0;
         ns=s0;
            end
        else
            begin
            cs=ns;
            end
            end
   always @ (cs,in)
               begin
        case(cs)
        s0: begin out=1'b0; 
        if(in) begin
            //out=1'b0;
            ns=s1; end
            else begin
            //out=1'b0;
            ns=s0; end
            end
         s1:  begin out=1'b0; 
          if(in) begin
           // out=1'b0;
            ns=s1; end
            else begin
            //out=1'b0;
            ns=s2; end
            end
         s2:  begin out=1'b0; 
          if(in) begin
            //out=1'b0;
            ns=s3; end
            else begin
            //out=1'b0;
            ns=s0; end
            end
         s3:  begin out=1'b0; 
         if(in==0) begin
            //out=1'b0;
            ns=s4; end
            else begin
            //out=1'b0;
            ns=s1; end
            end
         s4:  begin out=1'b1; 
         if(in) begin
            //out=1'b1;
            ns=s3; end
            else begin
            //out=1'b1;
            ns=s0; end
            end  
            endcase
            end
                    
endmodule 
//module moore_fsm_1010(
//        output reg start_shifting,
//        input data,clk,reset,
//        output reg [2:0] cs,ns        
//);
       
//        parameter [2:0]s0= 3'b000;
//        parameter [2:0]s1= 3'b001;
//        parameter [2:0]s2= 3'b010;
//        parameter [2:0]s3= 3'b011;
//        parameter [2:0]s4= 3'b100;
//    always@(posedge clk)
//        begin
//            if(reset) begin
//            start_shifting<=1'b0;
//            cs<=s0;
////            ns=s0;
//            end
//        else
//            begin
//            cs=ns;
//            end
//            end
//    always @ (cs,data)
//               begin
//        case(cs)
//        s0: begin start_shifting=1'b0; 
//            if(data) begin
//            //out=1'b0;
//            ns=s1; end
//            else begin
//            //out=1'b0;
//            ns=s0; end
//            end
//         s1:  begin start_shifting=1'b0; 
//             if(data) begin
//           // out=1'b0;
//            ns=s2; end
//            else begin
//            //out=1'b0;
//            ns=s0; end
//            end
//         s2:  begin start_shifting=1'b0; 
//             if(data) begin
//            //out=1'b0;
//            ns=s2; end
//            else begin
//            //out=1'b0;
//            ns=s3; end
//            end
//         s3:  begin start_shifting=1'b0; 
//             if(data) begin
//            //out=1'b0;
//            ns=s4; end
//            else begin
//            //out=1'b0;
//            ns=s0; end
//            end
//         s4:  begin start_shifting=1'b1; 
//             if(data) begin
//            //out=1'b1;
//            ns=s2; end
//            else begin
//            //out=1'b1;
//            ns=s0; end
//            end  
//            endcase
//            end
      
        
//endmodule
