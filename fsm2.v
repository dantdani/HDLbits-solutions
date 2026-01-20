module top_module (
    input clk,
    input reset,
    input [31:0] in,
    output [31:0] out
);
    reg [31:0] q;
    always @(posedge clk) begin
         q <= in;  
        if(reset) 
            out <= 0;
        else begin
             for (int i = 0; i < 32; i = i +1) begin
                 //q[i] <= in[i];  
                 out[i] = (~in[i] & q[i]) | out[i];
             end
        end
    end
    

endmodule

