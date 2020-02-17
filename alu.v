module ALU(a, b, operation, Result); 
      input [1:0]a;
	   input [1:0]b; 
      input [1:0] operation; 
      output reg [1:0] Result; 


      always@(a or b or operation) 
          begin 
               case (operation) 
                  2'b00:  Result = a & b;   // AND 
                  2'b01:  Result = a  |   b;   // OR 
                  2'b10:  Result = a +  b;    // addition 
                  2'b11:  Result = a - b;    // subtraction 
               endcase 
           end

endmodule