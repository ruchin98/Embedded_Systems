


module 2_1_mux (a,b,c,d);

	input a;
	input b;
	input c;
	output d;
	assign d = c&b | (~c)&a;
	
endmodule 