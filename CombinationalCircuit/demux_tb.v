`timescale 1ps/1ps
module demux_tb;
 reg [1:0] s;
 reg i;
 wire [3:0] y;


 demux uut(
   .s(s),
   .i(i),
   .y(y)
 );

 initial begin 
     i=1;
  #20;
 
  s[0]=0;
  s[1]=0;
  #20;
  s[0]=1;
  s[1]=0;
  #20;
  s[0]=0;
  s[1]=1;
  #20;
  s[0]=1;
  s[1]=1;


 end 
 initial begin 
    $monitor("s[1]=%d s[0]=%d y[0]=%d y[1]=%d y[2]=%d y[2]=%d \n",s[1],s[0],y[0],y[1],y[2],y[3]);
 end



endmodule