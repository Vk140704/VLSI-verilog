module up_down_counter_tb;
    reg clk, reset, up_down;
    wire [3:0] count;

    up_down_counter uut (.clk(clk), .reset(reset), .up_down(up_down), .count(count));

    initial begin
        clk = 0; reset = 0; up_down = 1;
        #5 reset = 1;  // Reset the counter
        #5 reset = 0;  // Start counting up
        #20 up_down = 0; // Switch to counting down
        #20 $finish;    // End simulation after 50 time units
    end

    always #5 clk = ~clk;  // Generate clock signal
endmodule

