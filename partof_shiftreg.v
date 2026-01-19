module top_module (
    input clk,
    input w, R, E, L,
    output Q
);	
    // declare signal holding wires outside the always block
    wire a, b;
    always @(posedge clk) begin        
        a = (E) ? w: Q; // first stage multiplexer
        b = (L) ? R: a;// second stage multiplexer
        Q <= b; // the DFF
    end
endmodule
