



module four_one_mux (a,b,c,d,s0,s1,out);

	input a,b,c,d,s0,s1;
	output out;
	wire w1,w2;
	to_one_mux f1(a,b,s1,w1);
	to_one_mux f2(c,d,s1,w2);
	to_one_mux f3(w1,w2,s0,out);
	
endmodule 