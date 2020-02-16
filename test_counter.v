



`timescale 1ns/1ns

module test_counter();
	reg rst,clk;
	wire [3:0] out;
	counter_f2 F1(rst,clk,out);
	
	initial 
	begin 
	rst=1;
	clk = 1;
	end
	always #10 clk=~clk;
	initial
	begin
	#20 rst=0;
	end


	
	
 	
endmodule 