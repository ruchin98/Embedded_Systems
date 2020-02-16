


module counter (rst,clk,out);

	input rst,clk;
	output [2:0] out;
	reg [2:0] out;
	always@(posedge clk,posedge rst)
	begin
		if(rst)
			out <= 3'b000;	
		else
			out <= out + 3'b001;
	end
	
endmodule 