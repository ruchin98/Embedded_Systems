
module Frequency_divider(input clk,input rst,output cnt);
reg[3:0] cnt_up;
always @(posedge clk or posedge rst)
begin
if(rst)
cnt_up<=4'd0;
else cnt_up<=cnt_up+ 4'd1;
end
assign cnt=cnt_up[0];
endmodule