





module ring_counter (clk,inp,out);

	input clk;
	input  inp;
	output reg [3:0] out;
	always@(posedge clk)
	begin
		if(inp)
			out <= 4'b1000;	
		else
			out <= { out[2:0],out[3]};
	end
	
endmodule 