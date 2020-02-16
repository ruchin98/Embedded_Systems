

module half_adder (a,b,s,c);

	input a;
	input b;
	output c,s;
	assign s = a^b;
	assign c = a&b;
	
endmodule 