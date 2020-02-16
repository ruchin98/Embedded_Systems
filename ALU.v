`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.08.2019 11:35:53
// Design Name: 
// Module Name: alu
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


module alu(a,b,sel,clk,out);
input signed [31:0] a,b;
input signed [3:0] sel;
input clk;
output reg signed [31:0] out;
wire signed [31:0] t3;
booth f1(a[15:0],b[15:0],clk,t3);
always@(posedge clk,a,b)
    case(sel)
        4'b0001:out = a^b;
        4'b0010:out = a&b;
        4'b0011:out = a|b;
        4'b0100:out = a+b;
        4'b0101:out = a-b;
        4'b0110:out = a>>b;
        4'b0111:out = a<<b;
        4'b1000:out[31:0]=t3[31:0];                 
        default:out = 0;
     endcase
endmodule

