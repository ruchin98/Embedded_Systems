module milimoore(inp,clk,out);

input inp,clk;
output reg out=0;
always@(posedge clk)
begin
if(inp)
if(out==1)
out=0;
else out=1;
end
endmodule;
