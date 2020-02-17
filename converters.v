module b2g(b,g); 
	input [3:0] b; 
	output [3:0] g; 
	xor (g[0],b[0],b[1]), 
	(g[1],b[1],b[2]), 
	(g[2],b[2],b[3]); 
	assign g[3]=b[3]; 
endmodule 