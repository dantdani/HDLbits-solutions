module top_module (
    input clk,
    input reset,        // Synchronous active-high reset
    output [3:0] q);
    // we do this behaviourally
    always @(posedge clk)begin
        if(reset | (q[3] & q[0]))
            q <= 0;
        else
            q = q + 1'b1;
    end
            

endmodule
