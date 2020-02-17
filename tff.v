module t2(q,q1,t,c);
output q,q1;
input t,c;
reg q,q1;

initial 
   begin 
	q=1'b0;
   end
	
 always @ (posedge c)
	begin
			   if (t==1'b0) begin 
					q=q;
					q1=~q;
				end
			   else begin 
					q=~q; 
					q1=q; 
				end
	
	 end
endmodule