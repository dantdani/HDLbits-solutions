module top_module (
    input [7:0] a, b, c, d,
    output [7:0] min);//
    wire [7:0] e,f,g;

    // assign intermediate_result1 = compare? true: false;
    assign e = (a < b) ? a : b;
    assign f = (c < d) ? c : d;
    assign min = (f < e) ? f : e;


endmodule