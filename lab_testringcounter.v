`timescale 1ns/1ns

module lab_testringcounter();

reg rst,clk;
wire [3:0] out;

lab_ring_counter F1(out,rst,clk);

initial begin 
rst=1;
clk=0;
end
always #10 clk = ~clk;
initial begin
#20 rst=0;
end
endmodule
