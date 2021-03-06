
`timescale 1ns/1ns

module test_and();
	reg a,clk;
	reg b;
	wire c;
	and_gate F1(a,b,c);
	
	initial begin 
	 clk = 0;
	 a  = 0;
	b = 0;
	
	end 

	always #5 clk=~clk;

	always@(negedge clk)
	begin 
		a = a+1;
		b = b+1;
	end
 	
endmodule 