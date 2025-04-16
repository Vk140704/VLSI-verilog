module demux1to4 (
    input in,
    input [1:0] sel,
    output reg [3:0] out
);
    always @(*) begin
        out = 4'b0000;
        out[sel] = in;
    end
endmodule

