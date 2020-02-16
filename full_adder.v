

module full_adder (a,b,c,sout,cout);

	input a;
	input b;
	input c;
	output cout,sout;
	wire w1,w2,w3;
	half_adder f1(a,b,w1,w2);
	half_adder f2(w1,c,sout,w3);
	assign cout = w3|w2;
	
	
endmodule 