module down_counter (
    input clk,        // Clock input
    input reset,      // Reset input
    output reg [3:0] count // 4-bit count output
);

    always @(posedge clk or posedge reset) begin
        if (reset)
            count <= 4'b1111; // Reset to 15
        else
            count <= count - 1; // Decrement the count
    end
endmodule

