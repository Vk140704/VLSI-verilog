
module d_latch (
    input d,      // Data input
    input enable, // Enable input
    output reg q  // Output
);
    always @(d or enable) begin
        if (enable) q = d;  // Pass data to output when enabled
    end
endmodule

