module decade_counter_tb;
    reg clk, reset;
    wire [3:0] count;

    decade_counter uut (.clk(clk), .reset(reset), .count(count));

    initial begin
        clk = 0; reset = 0;
        #5 reset = 1; // Reset the counter
        #5 reset = 0; // Start counting
        #100 $finish;  // End simulation after 100 time units
    end

    always #5 clk = ~clk;  // Generate clock signal
endmodule

