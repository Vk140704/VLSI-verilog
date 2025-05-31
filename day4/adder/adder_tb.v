module adder_tb;
reg a,b;
wire c,s;
adder uut (.a(a),.b(b),.c(c),.s(s));

initial begin
        $dumpfile("adder_tb.vcd");
        $dumpvars();
        $monitor($time,"a=%b,b=%b,c=%b,s=%b",a,b,c,s);
        #10 a=0;b=0;
        #10 a=0;b=1;
        #10 a=1;b=0;
        #10 a=1;b=1;
        $finish;
end
endmodule
