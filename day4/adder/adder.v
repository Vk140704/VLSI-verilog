module adder(a,b,s,c);
input a;
input b;
output s;
output c;
xor(s,a,b);
and(c,a,b);
endmodule
