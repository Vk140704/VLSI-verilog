module nand_gate (
    input a,   // Input A
    input b,   // Input B
    output y   // Output Y
);
    assign y = ~(a & b);  // NAND operation
endmodule

