module sr_latch_tb;
    reg s, r;
    wire q;

    sr_latch uut (.s(s), .r(r), .q(q));

    initial begin
        // Test cases
        s = 0; r = 0; #10; // No change
        s = 1; r = 0; #10; // Set
        s = 0; r = 1; #10; // Reset
        s = 1; r = 1; #10; // Invalid state
        $finish;
    end
endmodule

