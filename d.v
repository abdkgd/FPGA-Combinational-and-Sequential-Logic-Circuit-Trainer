module d(D,clk,q,q1);
input D; // Data input 
input clk; // clock input 
output reg q; // output Q 
output reg q1; // output Q 
always @(posedge clk) 
	begin
	q <= D; 
	q1 <= ~D;
	end 
endmodule 