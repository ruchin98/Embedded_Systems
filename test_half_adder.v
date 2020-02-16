

`timescale 1ns/1ns

module test_half_adder();
	reg a,clk;
	reg b;
	wire c,s;
	half_adder F1(a,b,s,c);
	
	initial begin 
	 clk = 0;
	 a  = 0;
	b = 1;
	
	end 

	always #5 clk=~clk;

	always@(negedge clk)
	begin 
		a = a+1;
	end
	
	always@(posedge clk)
	begin 
		b = b+1;
	end
 	
endmodule 