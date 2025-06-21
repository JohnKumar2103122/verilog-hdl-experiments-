module adder (
    input wire clk,       // Clock input
    input wire res,     // Synchronous reset input
    output reg [6:0] count // 7-bit counter output (0 to 127)
);

always @(posedge clk) begin
    if (res)
        count <= 7'b0000000; // Reset counter to 0
    else
        count <= count + 1;  // Increment counter
end

endmodule
