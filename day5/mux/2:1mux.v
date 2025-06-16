module mux(input s0,i0,i1,output y);
assign y = s0? i0:i1;
endmodule
