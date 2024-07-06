//module four_bit_syn_counter(input clk,rst,up_down,
//                                                                                                                output reg [3:0] count);
//  always@(posedge clk )begin
//  if(rst)
//    count <= 4'b0000;
//  else
//    if(up_down)
//     count <= count+1;
//    else
//      count <= count-1;
//  end
//endmodule

module four_bit_syn_counter(
                            input rst,clk,up_down,load,
                            output reg [3:0] count,
                            input [3:0] data
                            );
            always @(posedge clk)
                    begin if(rst)
                            count<=0;
                          else if(load)
                            count<=data;
                          else if(up_down)
                            count<=count+1;
                          else
                            count<=count-1;
                     end
                     


endmodule
            
