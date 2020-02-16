


`timescale 1ns/1ns

module test_not();
	reg a,clk;
	wire b;
	not_gate F1(a,b);
	
	initial begin 
	a=0;
	#10 a=a+1;
	#10 a=a+1;
	end
 	
endmodule 