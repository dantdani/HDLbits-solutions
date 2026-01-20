module top_module (
    input clk,
    input [7:0] in,
    output [7:0] pedge
);
    reg [7:0] q;
    always @(posedge clk) begin
        //make qbar
        //q <= in;
        for (int i = 0; i < 8; i = i +1) begin
            q[i] <= in[i];
            pedge[i] <= in[i] & ~q[i];
        end
    end
    //assign pedge = in & q;
        
        
            

endmodule
