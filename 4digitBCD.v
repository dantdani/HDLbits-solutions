module top_module (
    input clk,
    input reset,   // Synchronous active-high reset
    output [3:1] ena,
    output [15:0] q);
    
    wire a, b, c, d;
    assign a = 1'b1;
    assign b = (q[0] & q[3]);
    assign c = b & q[7] & q[4];
    assign d = c & b & q[11]&q[8];
    assign ena[3:1] = {d,c,b};
    counter first(.x(q[3:0]),
                  .en(a),
                  .cl(clk),
                  .r(reset),
                  .out(q[3:0]));
    counter sec(.x(q[7:4]),
                .en(b),
                .cl(clk),
                .r(reset),
                .out(q[7:4]));
    counter thir(.x(q[11:8]),
                 .en(c),
                 .cl(clk),
                 .r(reset),
                 .out(q[11:8]));
    counter last(.x(q[15:12]),
                 .en(d),
                 .cl(clk),
                 .r(reset),
                 .out(q[15:12]));
                   
                  
    

endmodule

// build a 4 didgit modulo 10 counter

module counter(input [3:0] x,
               input en,
               input cl,
               input r,
               output [3:0] out);
    always @(posedge cl) begin
        if(r)
            out <= 0;
        else if (en) begin
            if (out[3] & out[0])
                out <= 0;
            else
                out <= out + 1;
        end
    end
endmodule
            
