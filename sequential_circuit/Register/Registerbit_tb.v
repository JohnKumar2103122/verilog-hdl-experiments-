`timescale 1ns/1ns
module Registerbit_tb;
reg clk;
reg res;
reg [6:0] d;
wire [6:0] q;
 

 Registerbit circuit1(clk,res,d,q);
 always begin
    clk=~clk;
    #10;
 end
 initial begin
    $dumpfile("test3.vcd");
    $dumpvars(0,Registerbit_tb);
    
    clk<=0;
    res<=1;
    
    d<=7'b0000_000;
    #20;
    res<=0;
    d<=7'b0000_111;
    #20;
    $finish;

 end
 initial begin
    $monitor("clk=%b res=%b d=%b q=%b",clk,res,d,q);
 end

endmodule