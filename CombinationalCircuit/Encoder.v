module Encoder (
  input [3:0] Y,
  output [1:0] A
    

);
assign A[0]=Y[3]+Y[1];
assign A[1]=Y[3]+Y[2];
    
endmodule
