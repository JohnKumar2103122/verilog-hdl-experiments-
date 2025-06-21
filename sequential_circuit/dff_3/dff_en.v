module dff_en(
  input wire clk,
  input wire d,
  input wire en,
  input wire res,
  output reg  q
  


);
always@( posedge clk,posedge res)
begin
    if(res)
    q<=1'b0;
    else if(en)
    q<=d;
end



endmodule