module jk_latch_tb;
    reg j, k, enable;
    wire q;

    jk_latch uut (.j(j), .k(k), .enable(enable), .q(q));

    initial begin
        // Test cases
        enable = 0; j = 0; k = 0; #10;   // No change
        enable = 1; j = 1; k = 0; #10;   // Set
        enable = 0; j = 0; k = 0; #10;   // No change
        enable = 1; j = 0; k = 1; #10;   // Reset
        enable = 1; j = 1; k = 1; #10;   // Toggle
        $finish;
    end
endmodule

