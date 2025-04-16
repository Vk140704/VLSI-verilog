module mux4to1_tb;
    reg [1:0] sel;
    reg [3:0] in;
    wire out;

    mux4to1 uut (.sel(sel), .in(in), .out(out));

    initial begin
        $display("sel in   | out");
        in = 4'b1010;
        sel = 2'b00; #10; $display("%b  %b |  %b", sel, in, out);
        sel = 2'b01; #10; $display("%b  %b |  %b", sel, in, out);
        sel = 2'b10; #10; $display("%b  %b |  %b", sel, in, out);
        sel = 2'b11; #10; $display("%b  %b |  %b", sel, in, out);
    end
endmodule

