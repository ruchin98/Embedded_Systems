`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.08.2019 11:45:51
// Design Name: 
// Module Name: alu_tb
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


module alu_tb();
reg signed [31:0] a;
reg signed [31:0] b;
reg [3:0] sel;
reg clk;
wire signed [31:0] out;
alu a1(a,b,sel,clk,out);
initial
    begin
        clk=1;
        a=5;
        b=2;
end
always #10 clk=~clk;
initial
    begin
       #20 sel=1;
       #20 sel=2;
       #20 sel=3;
       #20 sel=4;
       #20 sel=5;
       #20 sel=6;
       #20 sel=7;
       #20 sel=8;
       #20 sel=8; a=10; b=5;
       #20 sel=8; a=-10; b=13;
       #40 $finish;
end 
endmodule

