



`timescale 1ns/1ns

module test_4_1_mux();
	reg a,b,c,d,s1,s0,clk;
	wire out;
	four_one_mux F1(a,b,c,d,s0,s1,out);
	
	initial begin 
	 clk = 0;
	 a  = 0;
	b = 1;
	c=0;
	d=1;
	s0 = 0;
	s1 = 0;
	
	end 

	always #5 clk=~clk;

	always@(negedge clk)
	begin 
		s0 = s0 + 1;
		s1 = s1 + 1;
	end
	
	
 	
endmodule 