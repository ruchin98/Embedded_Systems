


`timescale 1ns/1ns

module test_full_adder();
	reg a,clk;
	reg b,c;
	wire sout,cout;
	full_adder F1(a,b,c,sout,cout);
	
	initial begin 
	 clk = 0;
	 a  = 0;
	b = 1;
	c=1;
	
	end 

	always #5 clk=~clk;

	always@(negedge clk)
	begin 
		a = a+1;
		b = b+1;
	end
	
	
 	
endmodule 