`timescale 1ps/1ps
module multiplexer_tb;
reg [1:0] S;
reg [3:0] I;
wire Y;

multiplexer uut(

 .S(S),
 .I(I),
 .Y(Y)



);
initial begin 

    I[0]=1;
    I[1]=2;
    I[2]=3;
    I[3]=4;
    #20;
    
    
     S[1]=0;
      S[0]=0;
     #20
    
     S[1]=0;
      S[0]=1;
     #20;
    
     S[1]=1;
      S[0]=0;
     #20;
     
     S[1]=1;
     S[0]=1;

    

   



    end
   
    
  initial begin
        $monitor("S[0]=%d S[1]=%d I[0]=%d I[1]=%d I[2]=%d I[3]=%d Y=%d\n",S[0],S[1],I[0],I[1],I[2],I[3],Y);
    end
    endmodule
