`timescale 1ns/1ns

module practice_test();
reg [3:0] a,b;
wire [3:0] s;
wire cout;

practice F1(a,b,0,s,cout);

initial begin
a = 4'b0011;
b = 4'b0101;
#10
a = 4'b0000;
b=4'b0001;
end
endmodule
