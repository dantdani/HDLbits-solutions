module top_module(
    input clk,
    input in,
    input reset,
    output out); //

    typedef enum{
		A,
        B,
        C,
        D
    } state_t;
    state_t state;
    always_ff@(posedge clk)begin
        if(reset)begin
            state <= A;
        end else begin
            case(state)
                A:
                    state <= in? B:A;
                B:
                    state <= in? B:C;
                C:
                    state <= in? D:A;
                D:
                    state <= in? B:C;
            endcase
        end
    end
    assign out = (state == D);
                    

endmodule

