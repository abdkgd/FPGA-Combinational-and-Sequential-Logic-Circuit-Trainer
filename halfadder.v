module ha(s,co,a,b);
    output s,co;
    input a,b;
    xor u1(s,a,b);
    and u2 (co,a,b);
endmodule