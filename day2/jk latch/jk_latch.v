module jk_latch (
    input j,      // J input
    input k,      // K input
    input enable, // Enable input
    output reg q  // Output
);
    always @(j or k or enable) begin
        if (enable) begin
            case ({j, k})
                2'b00: q = q;      // No change
                2'b01: q = 0;      // Reset
                2'b10: q = 1;      // Set
                2'b11: q = ~q;     // Toggle
            endcase
        end
    end
endmodule

