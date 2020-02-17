module full_subtractor ( a ,b ,c ,diff ,borrow );

output diff ;
output borrow ;

input a ;
input b ;
input c ;

assign diff = a ^ b ^ c;
assign borrow = ((~a) & b) | (b & c) | (c & (~a));

endmodule