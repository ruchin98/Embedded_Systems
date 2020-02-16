





module seven_segment (a,out);

	input [2:0] a;
	output reg [15:0] out;
	always@ (a)
	begin
		case(a)
		3'b001 : out = 16'hFE9F;
		3'b010 : out = 16'hFE25;
		3'b011 : out = 16'hFE0D;
		3'b100 : out = 16'hFE99; 
		3'b101 : out = 16'hFE49;
		3'b110 : out = 16'hFE41;
		3'b111 : out = 16'hFE1F;
		default : out = 16'hFFAA;
		endcase
	end
	
endmodule 