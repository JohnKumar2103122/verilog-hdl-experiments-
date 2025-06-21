module decoder(
   input [1:0] A,
   input E,
   output [3:0]Y
);
assign Y[0]=~A[0]&~A[1]&E;
assign Y[1]=A[0]&~A[1]&E;
assign Y[2]=~A[0]&A[1]&E;
assign Y[3]=A[0]&A[1]&E;

    
endmodule