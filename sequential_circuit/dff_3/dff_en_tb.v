`timescale 1ps/1ps
module  dff_en_tb;
  reg clk;
  reg res;
  reg en;
  reg d;
  wire q;
  dff_en circuit1(clk,res,en,d,q);
  always begin
    clk=~clk;
    #10;
  end
  initial begin
    $dumpfile("test2.vcd");
    $dumpvars(0,dff_en_tb);
   clk<=0;
   res<=1;
   d<=0;
   en<=0;
   #20;
   res<=0;
   d<=1;
  en<=1;
  #20;
  $finish;

  end
  initial begin
    $monitor("clk=%b res=%b en=%b d=%b q=%b",clk,res,en,d,q);
  end
    endmodule