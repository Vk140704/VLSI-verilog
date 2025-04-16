module sr_ff_tb;
    reg clk, s, r;
    wire q;

    sr_ff uut (.clk(clk), .s(s), .r(r), .q(q));

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        s = 0; r = 0;
        #10 s = 1; r = 0;
        #10 s = 0; r = 1;
        #10 s = 1; r = 1;
        #20 $finish;
    end
endmodule

