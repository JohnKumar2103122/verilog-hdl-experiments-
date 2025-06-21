module demux(
    input [1:0] s,
    input i ,
    output [3:0] y 



);
assign y[0]=~s[1]&~s[0]&i;
assign y[1]=~s[1]&s[0]&i;
assign y[2]=s[1]&~s[0]&i;
assign y[3]=s[1]&s[0]&i;
endmodule