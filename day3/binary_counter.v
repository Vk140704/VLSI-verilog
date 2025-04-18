module binary_counter (
    input clk,        // Clock input
    input reset,      // Reset input
    output reg [3:0] count // 4-bit count output
);

    always @(posedge clk or posedge reset) begin
        if (reset)
            count <= 4'b0000;  // Reset the count to 0
        else
            count <= count + 1; // Increment the count
    end
endmodule

