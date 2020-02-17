module bcd(a,b,c);
	input [3:0]a;
	wire [3:0]a;
	output [6:0]b;
	reg [6:0]b;
	output [6:0]c;
	reg [6:0]c;
	always @(a)
	begin
		if(a==0)begin
			b = 7'b1111110;   
			c = 7'b0000000;         
		end
		else if(a==1)begin
			b = 7'b0110000;
			c = 7'b0000001;
		end
		else if(a==2)begin
			b = 7'b1101101;
			c = 7'b0000010;
		end
		else if(a==3)begin
			b = 7'b1111001;
			c = 7'b0000011;
		end
		else if(a==4)begin
			b = 7'b0110011;
			c = 7'b0000100;
		end
		else if(a==5)begin
			b = 7'b1011011;
			c = 7'b0000101;
		end
		else if(a==6)begin
			b = 7'b1011111;
			c = 7'b0000110;
		end
		else if(a==7)begin
			b = 7'b1110000;
			c = 7'b0000111;
		end
		else if(a==8)begin
			b = 7'b1111111;
			c = 7'b0001000;
		end
		else if(a==9)begin
			b = 7'b1111011;
			c = 7'b0001001;
		end
		else begin
			b = 7'bxxxxxxx;
			c = 7'bxxxxxxx;
		end
	end
endmodule