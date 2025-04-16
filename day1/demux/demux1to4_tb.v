module demux1to4_tb;
    reg in;
    reg [1:0] sel;
    wire [3:0] out;

    demux1to4 uut (.in(in), .sel(sel), .out(out));

    initial begin
        $display("in sel | out");
        in = 1;
        sel = 2'b00; #10; $display("%b  %b  | %b", in, sel, out);
        sel = 2'b01; #10; $display("%b  %b  | %b", in, sel, out);
        sel = 2'b10; #10; $display("%b  %b  | %b", in, sel, out);
        sel = 2'b11; #10; $display("%b  %b  | %b", in, sel, out);
    end
endmodule

