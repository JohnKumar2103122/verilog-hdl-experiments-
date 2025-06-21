`timescale 1ps/1ps
module dff_res_tb;
  reg clk;
  reg res;
  reg d;
  wire q;

  dff_res circuit1(clk,res,d,q);
  always begin
    clk=~clk;
    #10;
  end
  initial begin
  $dumpfile("test1.vcd");
  $dumpvars(0,dff_res_tb);
  clk<=0;
  res<=1;
  d<=0;
  #20;
  clk<=1;
  res<=0;
  d<=1;
  #20;
  $finish;
  end
  initial begin
    $monitor("clk=%b res=%b d=%b q=%b",clk,res,d,q);
  

  end



endmodule