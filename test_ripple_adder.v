



`timescale 1ns/1ns

module test_ripple_adder();
	reg [3:0] a,b;
	wire [3:0] s;
	wire cout;
	ripple_adder F1(a,b,0,s,cout);
	
	initial begin 
	 a = 4'b1010;
	b[0] = 1;
	b[1] = 1;
	b[2] = 0;
	b[3] = 0;
	#10  a = 1; 
	end 
	
	
	
	
 	
endmodule 