`timescale 1ns/1ns
module test_milimoore();
reg inp,clk;
wire out;
milimoore f1(inp,clk,out);

initial begin 
clk=0;
inp=0;
end
always #5 clk = ~clk;
initial begin
#5 inp = 1;
#5 inp=1;
#5 inp=1;
#5 inp = 0;
end
endmodule