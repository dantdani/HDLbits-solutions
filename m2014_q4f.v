module top_module (
    input in1,
    input in2,
    output out);
    and my_and(out, ~in2, in1);
​
endmodule
