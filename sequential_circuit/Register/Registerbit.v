module Registerbit(
   input wire clk,
   input wire res,
   
   input wire [6:0] d,
   output reg [6:0] q


);
  always@(posedge clk,posedge res)
  begin
    if(res)
    q<=7'b0000_000;
    else
    q<=d;
  end
  

endmodule