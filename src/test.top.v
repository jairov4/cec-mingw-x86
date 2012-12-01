module ABRO(rst, clk, O, A, B, R);
input rst, clk;
input A;
input B;
input R;
output O;
ABRO_blif u_main(.rst(rst), .clk(clk), .O(O), .A(A), .B(B), .R(R));
endmodule

module d_ff0(rst, clk, q, d);
input rst, clk, d;
output q;
reg q;
always @(posedge clk or posedge rst) begin
  if(rst) q <= 1'b0; else
      q <= d;
end
endmodule

module d_ff1(rst, clk, q, d);
input rst, clk, d;
output q;
reg q;
always @(posedge clk or posedge rst) begin
  if(rst) q <= 1'b1; else
      q <= d;
end
endmodule

