module t_latch (
    input t,      // Toggle input
    input enable, // Enable input
    output reg q  // Output
);
    always @(t or enable) begin
        if (enable) begin
            if (t) q = ~q;  // Toggle if T = 1
        end
    end
endmodule

