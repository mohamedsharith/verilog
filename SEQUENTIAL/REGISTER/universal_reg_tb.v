/* module universal_reg_tb;
                    reg clk,clr;
                    reg[1:0] s;
                    reg[3:0] d;
                    wire [3:0] q;
        universal_reg uut(
                       .clk(clk),
                       .clr(clr),
                       .s(s),
                       .d(d),
                       .q(q)
                       );
        initial begin
                clk=0;
                clr=1;
                 s=2'b00;
                d=4'b0000;
               
                #10 clr=0;
                #10 s=2'b00;
               // d=0110;
                #10 s=2'b01;
                d=4'b0110;
                #10 s=2'b10;
                #10 s=2'b11;
        end
        always #1 clk=!clk;
        initial #150 $finish;
endmodule   */
/*module universal_reg_tb;
    // Declare inputs as regs and outputs as wires
    reg clk;
    reg clr;
    reg [1:0] s;
    reg [3:0] d;
    wire [3:0] q;

    // Instantiate the Unit Under Test (UUT)
    universal_reg uut (
        .clk(clk),
        .clr(clr),
        .s(s),
        .d(d),
        .q(q)
    );

    // Clock generation
    always #5 clk = ~clk; // Toggle clock every 5 time units

    initial begin
        // Initialize inputs
        clk = 0;
        clr = 1;
        s = 2'b00;
        d = 4'b0000;

        // Apply reset
        #10 clr = 0;

        // Hold state (s = 2'b00)
        #10 s = 2'b00;
        d = 4'b1111;

        // Shift left (s = 2'b01)
        #10 s = 2'b01;
        d = 4'b0001;

        // Shift right (s = 2'b10)
        #10 s = 2'b10;
        d = 4'b1000;

        // Load new value (s = 2'b11)
        #10 s = 2'b11;
        d = 4'b1010;

        // Hold state (s = 2'b00) again
        #10 s = 2'b00;

        // Reset the register
        #10 clr = 1;
        #10 clr = 0;

        // Finish the simulation
        #50 $finish;
    end

    initial begin
        // Monitor the signals
        $monitor("At time %t: clr=%b, s=%b, d=%b, q=%b", $time, clr, s, d, q);
    end
endmodule*/
module universal_reg_tb;
reg clk,reset;
reg [1:0] mode;
reg  [3:0] parallel_in;
wire [3:0] parallel_out;
universal_reg uut(clk,reset,mode,parallel_in, parallel_out);

initial begin
$monitor("$time=%t; clk=%b; reset=%b; mode=%b; parallel_in=%b; parallel_out=%b;", $time,clk,reset, mode,parallel_in,parallel_out);
clk=0;
#10 reset=1;
mode=2'b00;
parallel_in=4'b000;



#10 reset=0;

 #10 mode=2'b11;  parallel_in=4'b1100;//parallel_out
#10  mode=2'b00; //hold 


#10 mode=2'b01;  
#10 mode=2'b01; 

#10 mode=2'b10;
#10 mode=2'b10;

#10 mode=2'b00;

#100 $finish;
end
always #3 clk=!clk;
endmodule
