module sipo(sout,sin,clk);
    output [3:0]sout;
    input sin,clk;
    dff2 u1(sout[0],sin,clk);
    dff2 u2(sout[1],sout[0],clk);
    dff2 u3(sout[2],sout[1],clk);
    dff2 u4(sout[3],sout[2],clk);
endmodule