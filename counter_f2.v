
 


module counter_f2 (rst,clk,out);
	input rst,clk;
	output reg [3:0]out;
	always @(posedge clk,posedge rst)
	begin
	if(rst)
		out <=0;
	else
		out<=out+1;
	end
	
	
endmodule 
