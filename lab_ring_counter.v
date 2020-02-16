module lab_ring_counter(out,rst,clk);

input rst,clk;
output reg [3:0] out = 0;
always @(posedge clk)
begin
	if(rst) out[0] = 1;
else
out[0] <= out[3];
out[1] <= out[0];
out[2] <= out[1];
out[3] <= out[2];

end
endmodule
 