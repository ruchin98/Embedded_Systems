
`timescale 1ns / 1ns


module test_fd();
reg clk,rst;
wire  cnt;
Frequency_divider c1(clk,rst,cnt);
initial
begin
clk=0;
forever #5 clk=~clk;
end
initial 
begin
rst=1;
#20;
rst=0;
end
endmodule
