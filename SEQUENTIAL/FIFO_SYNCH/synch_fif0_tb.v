module syn_fifo_tb;
            reg clk,reset,write_en,read_en;
            reg [7:0] data_in;
            wire full,empty;
            wire [7:0] out;
            
        syn_fifo uut(
                        .clk(clk),
                        .reset(reset),
                        .write_en(write_en),
                        .read_en(read_en),
                        .data_in(data_in),
                        .full(full),
                        .empty(empty),
                        .out(out)
                    );
                    
                    
        initial begin
            clk=1'b0;
            forever #5 clk=!clk;
        end
        
        initial begin
            reset=1;
            write_en=0;
            read_en=0;
            data_in=8'b0;
         #10reset=0;
         #10reset=1;
            write;
         #10read;
         #200 $finish;
         end
         
         task write;
            begin
                write_en = 1;
                read_en = 0;
                data_in = $random;
            end
         endtask
         task read;
            begin
                write_en=0;
                read_en =1;
            end
         endtask
         
         
endmodule
