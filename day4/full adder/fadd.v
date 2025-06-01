module fadder(input a,b,cin, output S, C );
assign S=a^b^cin;
assign C=a&b&cin;
endmodule
