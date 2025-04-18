module ring_counter (
    input clk,        // Clock input
    input reset,      // Reset input
    output reg [3:0] count // 4-bit count output
);

    always @(posedge clk or posedge reset) begin
        if (reset)
            count <= 4'b1000;  // Reset the count to 1000
        else
            count <= {count[2:0], count[3]}; // Rotate the bits
    end
endmodule

