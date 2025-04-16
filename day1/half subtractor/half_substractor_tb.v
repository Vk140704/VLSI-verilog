module half_subtractor_tb;

reg A, B;
wire Diff, Borrow;

half_subtractor uut (
    .A(A),
    .B(B),
    .Diff(Diff),
    .Borrow(Borrow)
);

initial begin
    $display("A B | Diff Borrow");
    $display("-----------------");

    A = 0; B = 0; #10;
    $display("%b %b |   %b     %b", A, B, Diff, Borrow);

    A = 0; B = 1; #10;
    $display("%b %b |   %b     %b", A, B, Diff, Borrow);

    A = 1; B = 0; #10;
    $display("%b %b |   %b     %b", A, B, Diff, Borrow);

    A = 1; B = 1; #10;
    $display("%b %b |   %b     %b", A, B, Diff, Borrow);

    $finish;
end

endmodule

