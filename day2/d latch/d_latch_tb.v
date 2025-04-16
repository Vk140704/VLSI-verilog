module d_latch_tb;
    reg d, enable;
    wire q;

    d_latch uut (.d(d), .enable(enable), .q(q));

    initial begin
        // Test cases
        enable = 0; d = 0; #10;   // No change
        enable = 1; d = 1; #10;   // Data passed to output
        enable = 0; d = 0; #10;   // No change
        enable = 1; d = 0; #10;   // Data passed to output
        $finish;
    end
endmodule

