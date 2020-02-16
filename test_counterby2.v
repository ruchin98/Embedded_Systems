// Duty cycle code
`timescale 1ns / 1ns



module test_counterby2();
reg clk,rst;
wire  out1,out2,out3;
counterby2 f1 (clk,rst,out1,out2,out3);
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

