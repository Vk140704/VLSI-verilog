module half_subtractor (
    input A,
    input B,
    output Diff,
    output Borrow
);
    assign Diff = A ^ B;       // Difference
    assign Borrow = ~A & B;    // Borrow
endmodule

