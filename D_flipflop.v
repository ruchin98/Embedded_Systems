module D_flipflop(d,clk,q,qbar);

input d,clk;
output reg q,qbar;
always @(negedge clk)
begin
assign q = d;
assign qbar = ~d;
end
endmodule
