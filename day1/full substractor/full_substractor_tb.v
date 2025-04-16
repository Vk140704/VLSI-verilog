module full_substractor_tb;

reg A, B, Bin;
wire Diff, Bout;

full_substractor uut (
    .A(A),
    .B(B),
    .Bin(Bin),
    .Diff(Diff),
    .Bout(Bout)
);

initial begin
    $display("A B Bin | Diff Bout");
    $display("-------------------");

    A = 0; B = 0; Bin = 0; #10;
    $display("%b %b  %b  |   %b    %b", A, B, Bin, Diff, Bout);

    A = 0; B = 0; Bin = 1; #10;
    $display("%b %b  %b  |   %b    %b", A, B, Bin, Diff, Bout);

    A = 0; B = 1; Bin = 0; #10;
    $display("%b %b  %b  |   %b    %b", A, B, Bin, Diff, Bout);

    A = 0; B = 1; Bin = 1; #10;
    $display("%b %b  %b  |   %b    %b", A, B, Bin, Diff, Bout);

    A = 1; B = 0; Bin = 0; #10;
    $display("%b %b  %b  |   %b    %b", A, B, Bin, Diff, Bout);

    A = 1; B = 0; Bin = 1; #10;
    $display("%b %b  %b  |   %b    %b", A, B, Bin, Diff, Bout);

    A = 1; B = 1; Bin = 0; #10;
    $display("%b %b  %b  |   %b    %b", A, B, Bin, Diff, Bout);

    A = 1; B = 1; Bin = 1; #10;
    $display("%b %b  %b  |   %b    %b", A, B, Bin, Diff, Bout);

    $finish;
end

endmodule

