module dlatch2(   input d,                    
                  input rstn,        
                  output reg q,
						output reg qn);     
 
   always @ (rstn or d)
      if (!rstn) begin
         q <= 0; end
      else begin
          q <= d; qn <= ~d; end
endmodule