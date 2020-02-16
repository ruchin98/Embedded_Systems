//// This is duty cycle code

module counterby2(clk, rst,out1,out2,out3);
input clk,rst;
output reg out1,out2;
output out3;
always @(posedge clk or posedge rst)
begin
if(rst)
out1<=0;
else
 out1<=out1+1;
end

always@(negedge clk or posedge rst)
begin
if(rst)
out2<=0;
else
 out2<=out2 + 1;
end
assign out3=(out1)&(out2);
endmodule