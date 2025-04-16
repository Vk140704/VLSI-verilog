module full_substractor (
    input A,
    input B,
    input Bin,
    output Diff,
    output Bout
);
    assign Diff = A ^ B ^ Bin;
    assign Bout = (~A & B) | (~A & Bin) | (B & Bin);
endmodule

