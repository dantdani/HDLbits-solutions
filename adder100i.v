module top_module( 
    input [99:0] a, b,
    input cin,
    output [99:0] cout,
    output [99:0] sum );
   
   
        wire [100:0] couts;
        assign couts[0] = cin;
        genvar i;
        generate 
            for (i = 0; i < 100; i = i +1) begin: adders
                add yes(.a(a[i]),
                        .b(b[i]),
                        .cin(couts[i]),
                        .sum(sum[i]),
                        .cout(couts[i + 1]));
            end
        endgenerate
    assign cout = couts[100:1]; // chop off cin
                      
​
endmodule
                        
module add(input a,b,cin,
           output sum, cout);
    assign sum = a ^ b ^ cin;
    assign cout = (a&b) | (b&cin) | (a&cin);
endmodule
