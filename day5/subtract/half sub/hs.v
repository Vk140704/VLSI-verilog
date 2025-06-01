module subtract(input a,b,output D,B);
assign D = a^b;
assign B =(~a)&b;
endmodule
