module demux1_4(s2,s1,I,y0,y1,y2,y3);
	input s2,s1,I;
	output y0,y1,y2,y3;
	assign y0=(~s2)&(~s1)& I;
	assign y1=(~s2)& s1& I;
	assign y2=s2&(~s1)& I;
	assign y3=s2& s1 & I;
endmodule