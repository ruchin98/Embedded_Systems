

`timescale 1ns/1ns

module test_or();
	reg a,clk;
	reg b;
	wire c;
	or_gate F1(a,b,c);
	
	initial begin 
	a=0;
	b=0;
	#10 a=a+1;
	b=b+1;
	#10 a=a+1;
	b=b+1;
	end
 	
endmodule 