module top_module (
    input clk,
    input [7:0] in,
    output [7:0] anyedge
);
    reg [7:0] q;
    always @(posedge clk) begin
        for (int i = 0; i < 8; i = i +1) begin
            q[i] <= in[i];
            // any change means new state
            anyedge[i] <= in[i] ^ q[i];
        end
    end

endmodule
