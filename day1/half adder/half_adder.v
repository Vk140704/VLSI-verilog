module half_adder(
input A,
input B,
output sum,
output carry);
assign sum=A^B; //xor for sum
assign carry=A&B; //and for carry
endmodule

