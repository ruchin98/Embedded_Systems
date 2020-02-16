module FSM(s,state,out,clk);

input  s;
//reg s,state;
output out,state;
reg state;
always@(posedge clk)
begin
if(s == 1)
if(state==0)
out=0,state=1;

if(state==1)
out=0,state=1;

if(state=2)
out=0,state=3;

if(state =3)
out=1,state=1;

if(s==0)
if(state=0)
out=0,state=0;

if(stat


if(s==0 && state == 0)
out=0; state=0;

else if(s == 1 && state == 1)
out=0;
state=1;
else if(s==0 && state == 1)
out=0;
state=2;

else if(s == 1 && state == 2)
out=0;
state=3;
else if(s==0 && state == 2)
out=0;
state=0;

else if(s == 1 && state == 3)
out=1;
state=1;
else if(s==0 && state == 3)
out=0;
state=2;
end
endmodule

