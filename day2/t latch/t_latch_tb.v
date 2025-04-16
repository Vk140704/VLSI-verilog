module t_latch_tb;
    reg t, enable;
    wire q;

    t_latch uut (.t(t), .enable(enable), .q(q));

    initial begin
        // Test cases
        enable = 0; t = 0; #10;  // No change
        enable = 1; t = 1; #10;  // Toggle
        enable = 0; t = 0; #10;  // No change
        enable = 1; t = 0; #10;  // No toggle
        enable = 1; t = 1; #10;  // Toggle again
        $finish;
    end
endmodule

