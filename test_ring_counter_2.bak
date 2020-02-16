




`timescale 1ns/1ns

module test_ring_counter(2) ();
	reg clk,inp;
	wire [3:0] out;
	ring_counter(2) F1(clk,inp,out);
	
	initial 
	begin 
	inp = 1;
	clk = 1;
	end
	always #5 clk=~clk;
	
	initial
	
	begin
	#20 inp=0;
	end


	
	
 	
endmodule 
