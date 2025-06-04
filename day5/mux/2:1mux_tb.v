module muxtb;
reg s0,i0,i1;
wire y;
mux uut(s0,i0,i1,y);
initial begin
$dumpfile("mux.vcd");
$dumpvars;
$monitor($time,"s0=%b,i0=%b,i1=%b,y=%b",s0,i0,i1,y);
#10 s0=1;i0=0 ;i1=1;
#10 s0=0;i0=1 ;i1=0;
end
endmodule
