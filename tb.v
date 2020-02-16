`timescale 1ns/1ns

module tb();
	reg a,clk;
	wire b;
	not_gate F1(a,b);
	
	initial begin 
	 clk = 0;
	 a  = 0;
	
	end 

	always #5 clk=~clk;

	always@(negedge clk)
	begin 
		a = a+1;
	end
 	
endmodule 