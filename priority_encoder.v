                                             



module priority_encoder (i,a);
	input [3:0] i;
	output [1:0] a;
	reg [1:0] a;
	always @(i)
	begin
		casex (i)
		4'bxxx1 :a = 2'b00;
		4'bxx10 :a = 2'b01;
		4'bx100 :a = 2'b10;
		4'b1000 :a = 2'b11;
		endcase
	end
	
	
endmodule 