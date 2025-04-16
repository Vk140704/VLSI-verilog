module sr_latch (
    input s,    // Set input
    input r,    // Reset input
    output reg q  // Output
);
    always @(s or r) begin
        if (s && !r) q = 1;   // Set condition
        else if (!s && r) q = 0;   // Reset condition
        else q = q;   // No change
    end
endmodule

