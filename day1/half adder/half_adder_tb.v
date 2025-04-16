module half_adder_tb;
reg A,B;
wire sum, carry;
half_adder uut (.A(A),.B(B),.sum(sum),.carry(carry)
);

initial begin
	$display("A B|sum carry");
	$display("-------------");
	
	A=0; B=0; #10;
	$display("%b %b|%b %b", A, B, sum,carry);

	A=0; B=1; #10;
        $display("%b %b|%b %b", A, B, sum,carry);

	A=1; B=0; #10;
        $display("%b %b|%b %b", A, B, sum,carry);
      	
	A=1; B=1; #10;
        $display("%b %b|%b %b", A, B, sum,carry);

	$finish;
end
	endmodule
