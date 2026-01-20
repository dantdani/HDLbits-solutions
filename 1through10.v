module top_module (
    input clk,
    input reset,
    output [3:0] q);
   
    always @(posedge clk) begin
        //q = 4'b1;
        if(reset | (q[3] & q[1]) | ~(|q))
            q <= 4'b1;
        else 
            q <= q + 4'b1;
    end
            

endmodule
