



`timescale 1ns/1ns

module test_2_1_mux();
	reg a,clk;
	reg b,s0;
	wire c;
	to_one_mux F1(a,b,s0,c);
	
	initial begin 
	 clk = 0;
	 a  = 0;
	b = 1;
	s0=0;
	
	end 

	always #5 clk=~clk;

	always@(negedge clk)
	begin 
		s0 = s0 + 1;
	end
 	
endmodule 