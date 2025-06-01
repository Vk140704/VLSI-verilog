module fsubtract(input a,b,bin, output D,B);
assign D=a^b^bin;
assign B=(~a)&b&bin;
endmodule
