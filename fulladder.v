module fa(s,co,a,b,ci);
    output s,co;
    input a,b,ci;
    xor u1(s,a,b,ci);
    and u2(n1,a,b);
    and u3(n2,b,ci);
    and u4(n3,a,ci);
    or u5(co,n1,n2,n3);
endmodule