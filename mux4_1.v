module mux4_1(I0,I1,I2,I3,s2,s1,y);
	input I0,I1,I2,I3,s2,s1;
	output y;
	assign y = ((~s2)&(~s1)&I0)| ((~s2)&(s1)&I1)|(s2&(~s1)&I2)|(s2&s1&I3);
endmodule