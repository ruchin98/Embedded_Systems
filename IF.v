`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/23/2019 02:47:32 PM
// Design Name: 
// Module Name: IF
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


module IF(ex_npc,sel,reg_memory,pc);
input [31:0]ex_npc;
input sel;
output [31:0]reg_memory;
output [31:0]pc;

wire [31:0]pc_out;
wire [31:0]add_out;
wire [31:0]npc;

IF_mux f3(add_out,ex_npc,sel,npc);
IF_pc f1(npc,pc_out);
IF_add f2(pc_out,add_out);
IF_mem f4(pc_out,reg_memory,pc);
endmodule
