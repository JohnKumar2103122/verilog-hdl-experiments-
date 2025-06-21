module dff_res(
  input wire clk,
  input wire d,
  input wire res,
  output reg q

);
 always @(posedge clk,posedge res)
 begin
    if(res)
    q<=1'b0;
    else
    q<=d;
 end

endmodule