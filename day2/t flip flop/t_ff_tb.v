module t_ff_tb;
    reg clk, t;
    wire q;

    t_ff uut (.clk(clk), .t(t), .q(q));

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        t = 0;
        #10 t = 1;
        #10 t = 0;
        #10 t = 1;
        #20 $finish;
    end
endmodule
