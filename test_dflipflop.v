`timescale 1ns/1ns

module test_dflipflop();

reg d,clk;
wire q,qbar;

D_flipflop F1(d,clk,q,qbar);

initial begin
clk=1;
d=1;
end

always #5 clk = ~clk;

initial begin 
#10 d=0;
#5 d=1;
end
endmodule

