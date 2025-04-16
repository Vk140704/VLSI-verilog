module not_gate_tb;
    reg a;
    wire y;

    not_gate uut (.a(a), .y(y));

    initial begin
        $monitor("a = %b, y = %b", a, y);

        // Test cases
        a = 0; #10;
        a = 1; #10;

        $finish;
    end
endmodule


