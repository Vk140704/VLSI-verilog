module subtract_tb;
reg a,b;
wire D,B,na;
subtract uut (.a(a),.b(b),.D(D),.B(B));

initial begin
        $dumpfile("subtract_tb.vcd");
        $dumpvars();
        $monitor($time,"a=%b,b=%b,~a=%b,D=%b,B=%b",a,b,na,D,B);
        #10 a=0; b=0;
        #10 a=0; b=1;
        #10 a=1; b=0;
        #10 a=1; b=1;
        $finish;
end
endmodule
