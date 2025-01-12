// Code your testbench here
// or browse Examples
module alu_tb;
  reg [3:0]a,b;
  reg [2:0]alu_sel;
  wire[7:0]alu_out;
  
  alu dut(
    .a(a),
    .b(b),
    .alu_sel(alu_sel),
    .alu_out(alu_out)
  );
  
//   intial begin 
//     alu_sel = 3'b000;
//     #5;
//     alu_sel = 3'b001;
//     #5;
//     alu_sel = 3'b010;
  
  integer i;
  
  initial begin
    $display("Starting Randomized Test");
    $display("A	B	ALU_SEL	 ALU_OUT");
    
    for(i=0;i<20;i++) begin
      a=$random ;
      b=$random ;
      alu_sel=$random ;
      #10;
      
      $display("%b	  %b	 %b		%b",a,b,alu_sel,alu_out);
    end
    $display("Randomized Alu Test Completed");
    
//     $stop;    
//       #210;
    
//     assign alu_sel=110;
//      assign a=4'b1111;
//     assign b=4'b1111; 
//     $display("%b	%b	  %b	%b",a,b,alu_sel,alu_out);
    $stop;
  end
endmodule
