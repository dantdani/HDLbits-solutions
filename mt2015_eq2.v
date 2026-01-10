module top_module ( input [1:0] A, input [1:0] B, output z ); 
    //simple comparator
    wire [1:0] sum;
    assign sum = A - B;
    assign z = ~(| sum); //bit wise or is 0 when all are zero implying equality! 
​
endmodule 
