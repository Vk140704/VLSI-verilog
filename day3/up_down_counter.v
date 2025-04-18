module up_down_counter (
    input clk,          // Clock input
    input reset,        // Reset input
    input up_down,      // Control signal for counting up (1) or down (0)
    output reg [3:0] count // 4-bit count output
);

    always @(posedge clk or posedge reset) begin
        if (reset)
            count <= 4'b0000;  // Reset the count to 0
        else if (up_down)
            count <= count + 1; // Increment the count
        else
            count <= count - 1; // Decrement the count
    end
endmodule

