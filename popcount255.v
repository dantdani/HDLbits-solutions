module top_module( 
    input [254:0] in,
    output [7:0] out );
    
    always @(*) begin
        out = 8'b0;
        for (int i =0; i < 255; i = i +1) begin
            out = in[i] + out; //out = (in[i] == 1'b1) ? out + 1'b1 : out; also works but more hardware(comparators)
            // are created making the circuit expensive.
        end
    end      
​
endmodule
