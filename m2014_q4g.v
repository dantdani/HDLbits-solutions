module top_module (
    input in1,
    input in2,
    input in3,
    output out);
    
    wire notxor;
    xor first(notxor, in1, in2);
    xor second(out, ~notxor, in3);
​
endmodule
