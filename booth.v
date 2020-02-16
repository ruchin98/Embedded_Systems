`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.08.2019 11:46:47
// Design Name: 
// Module Name: booth
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


module booth(a,b,clk,out);
output reg signed [31:0] out;
input signed [15:0] a,b;
input clk;
integer i;
reg q,temp;
reg signed[15:0] ot,bb,z;
always @(posedge clk,a,b)
begin
bb[15:0]=b[15:0];
ot=16'd0;
q=1'b0;
z=-a;
$display("base - ot : %b  bb : %b  q : %d  z : %b",ot,bb,q,z);
 for(i=0;i<16;i=i+1) 
    begin
      temp=bb[0];
      if((temp==1 && q==1) || (temp==0 && q==0))
         $display("In 11or00 - ot : %b  bb : %b  q : %d ",ot,bb,q);
       else if(temp==1 && q==0)
         begin
           ot=ot+z;
           $display("In 10 - ot : %b  bb : %b  q : %d ",ot,bb,q);
         end
         else if(temp==0 && q==1)
           begin
             ot=ot+a;   
             $display("In 01 - ot : %b  bb : %b  q : %d ",ot,bb,q);
           end
           q=bb[0];
           bb=bb>>1;
           bb[15]=ot[0];
           ot=ot>>>1;
    end
  out[31:16] = ot[15:0];
  out[15:0] = bb[15:0];
end
endmodule

