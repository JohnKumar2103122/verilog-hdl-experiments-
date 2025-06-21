module Counter;

reg clk;
reg res;
wire [6:0] count;

adder uut (
    .clk(clk),
    .res(res),
    .count(count)
);

initial begin
    clk = 0;
    forever #10 clk = ~clk; // Clock with 10 time units period
end

initial begin
    $dumpfile("test.vcd");
    $dumpvars(0,Counter);
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
    $monitor("clk=%b res=%b count=%d",clk,res,count);

end

endmodule
