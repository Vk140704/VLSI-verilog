module jk_ff_tb;
    reg clk, j, k;
    wire q;

    jk_ff uut (.clk(clk), .j(j), .k(k), .q(q));

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        j = 0; k = 0;
        #10 j = 1; k = 0;
        #10 j = 0; k = 1;
        #10 j = 1; k = 1;
        #20 $finish;
    end
endmodule

