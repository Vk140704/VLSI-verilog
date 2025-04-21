`default_nettype none
module top_module(
    input a,
    input b,
    input c,
    input d,
    output out,
    output out_n   ); 
    wire in1 =a&b;
    wire in2 =c&d;
    assign out = in1|in2;
    assign out_n = ~out;

endmodule

//effficient one we not used to declare value for variable because it cant reassign value for it it make trouble if not declare we assign multiple task for that variable.
//module top_module (
	input a,
	input b,
	input c,
	input d,
	output out,
	output out_n );
	
	wire w1, w2;		// Declare two wires (named w1 and w2)
	assign w1 = a&b;	// First AND gate
	assign w2 = c&d;	// Second AND gate
	assign out = w1|w2;	// OR gate: Feeds both 'out' and the NOT gate

	assign out_n = ~out;	// NOT gate
	
endmodule
 
