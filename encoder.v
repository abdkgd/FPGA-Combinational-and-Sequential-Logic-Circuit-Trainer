module encoder83(o,i);
    output [2:0]o;
    input [7:0]i;
    wire x,y,k,l,m;
    or u1(x,i[5],i[4]);
    or u2(y,i[7],i[6]);
    or u3(o[2],x,y);
    or u4(k,i[3],i[2]);
    or u5(o[1],y,k);
    or u6(l,i[7],i[5]);
    or u7(m,i[3],i[1]);
    or u8(o[0],l,m);
endmodule