`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.08.2019 20:28:42
// Design Name: 
// Module Name: tb_booth
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_booth();
reg signed [15:0] a;
reg signed [15:0] b;
reg clk;
wire signed [31:0] out;
booth b1(a,b,clk,out);
initial begin
clk=1;
a=4;
b=3;  
end
always #10 clk=~clk;
initial begin
#20 a=3;b=2;
#20 a=5;b=5;
#20 a=-10;b=13;
end
endmodule

