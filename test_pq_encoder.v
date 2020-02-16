
`timescale 1ns/1ns

module test_pq_encoder();
 
reg [3:0] i;
wire [1:0] a;
priority_encoder f1(i,a);
initial begin
i = 4'b0001;
#10 i = 4'b1110;
#10 i = 4'b0100;
end
endmodule
