`timescale 1ps/1ps
module PriorityEncoder_tb;
reg [3:0] Y;
wire [1:0] A;
PriorityEncoder uut(
  .Y(Y),
  .A(A)



);

initial begin
   #20;
     Y[1]=0;
     Y[2]=0;
     Y[3]=0;
     #20;
     Y[1]=1;
     Y[2]=0;
     Y[3]=0;
     #20
     Y[1]=0;
     Y[2]=1;
     Y[3]=0;
     #20;
     Y[1]=0;
     Y[2]=0;
     Y[3]=1;


    end
    initial begin
        $monitor("Y[1]=%d Y[2]=%d Y[3]=%d A[0]=%d A[1]=%d\n",Y[1],Y[2],Y[3],A[0],A[1]);
    end



    endmodule