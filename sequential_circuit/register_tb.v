`timescale 1ps/1ps
module register_tb;
reg clk;
reg res;
wire [6:0]q;
Counter Counter_circuit1(clk,res,q);
always begin
    clk=~clk;
    #10;
end
initial begin
    clk<=0;
    res<=1;
    #20;
    res<=0;
    #20;
    #20;
    #20;
    #20;
    $finish;
end
initial begin
    $monitor("clk=%b res=%b q=%b",clk,res,q);

end
endmodule
