module comparator4bit_tb;

    reg [3:0] A, B;
    wire A_eq_B, A_gt_B, A_lt_B;


    comparator4bit uut (
        .A(A),
        .B(B),
        .A_eq_B(A_eq_B),
        .A_gt_B(A_gt_B),
        .A_lt_B(A_lt_B)
    );

    initial begin
        $display(" A   B  | A_eq_B A_gt_B A_lt_B");
        $display("-------------------------------");

        A = 4'b0000; B = 4'b0000; #10 $display("%b %b |    %b      %b      %b", A, B, A_eq_B, A_gt_B, A_lt_B);
        A = 4'b0010; B = 4'b0001; #10 $display("%b %b |    %b      %b      %b", A, B, A_eq_B, A_gt_B, A_lt_B);
        A = 4'b0101; B = 4'b0110; #10 $display("%b %b |    %b      %b      %b", A, B, A_eq_B, A_gt_B, A_lt_B);
        A = 4'b1111; B = 4'b1111; #10 $display("%b %b |    %b      %b      %b", A, B, A_eq_B, A_gt_B, A_lt_B);
        A = 4'b1000; B = 4'b0111; #10 $display("%b %b |    %b      %b      %b", A, B, A_eq_B, A_gt_B, A_lt_B);
        A = 4'b0001; B = 4'b1000; #10 $display("%b %b |    %b      %b      %b", A, B, A_eq_B, A_gt_B, A_lt_B);

        $finish;
    end

endmodule

