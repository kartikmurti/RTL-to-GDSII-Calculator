module calculator (
input clk,
input reset,
input [3:0] A,
input [3:0] B,
input [1:0] op,
output reg [7:0] result
);
always @(posedge clk or posedge reset) begin
if (reset)
result <= 8'b0;
else begin
case(op)
2'b00: result <= A + B;
2'b01: result <= A - B;
2'b10: result <= A * B;
2'b11: result <= (B != 0) ? (A / B) : 8'b0;
default: result <= 8'b0;
endcase
end
end
endmodule
