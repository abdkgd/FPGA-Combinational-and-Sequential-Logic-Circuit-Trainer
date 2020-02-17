module decoder24(c,a,b,e);
    output [3:0]c;
    input a,b,e;
    wire x,y;
    wire [3:0]c1;
    not u1(x,a);
    not u2(y,b);
    and u3(c1[0],x,y);
    and u4(c1[1],x,b);
    and u5(c1[2],a,y);
    and u6(c1[3],a,b);
    and u7(c[0],c1[0],e);
    and u8(c[1],c1[1],e);
    and u9(c[2],c1[2],e);
    and u10(c[3],c1[3],e);
endmodule