module top_module( 
    input x3,
    input x2,
    input x1,  // three inputs
    output f   // one output
);
    wire a1, a2, a3, a4;
    and first(a1, ~x1, x2, ~x3);
    and sec(a2, x1, x2, ~x3);
    and third(a3, x1, ~x2, x3);
    and last(a4, x1, x2, x3);
    or out(f, a1, a2, a3,a4);
​
endmodule
