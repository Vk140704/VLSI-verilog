module xnor_gate (
    input a,   // Input A
    input b,   // Input B
    output y   // Output Y
);
    assign y = ~(a ^ b);  // XNOR operation
endmodule


