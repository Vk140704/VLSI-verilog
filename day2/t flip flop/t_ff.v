module t_ff (
    input clk,
    input t,
    output reg q
);
    always @(posedge clk)
        if (t) q <= ~q;
endmodule

