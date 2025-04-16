module d_ff_tb;
    reg clk, d;
    wire q;

    d_ff uut (.clk(clk), .d(d), .q(q));

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        d = 0;
        #10 d = 1;
        #10 d = 0;
        #10 d = 1;
        #20 $finish;
    end
endmodule

