module top_module (
    input clk,
    input in, 
    output out);
    

    wire xr, fake;
    dfff wow(.clk1(clk),
             .dl(xr),
             .qd(fake));
    xor bang(xr, fake, in); 
    assign out = ~fake;
    

endmodule

   // we build this structurally
	// step 1: Build the D-Latch
    	//begin with the SR latch component
module mylatch(input d, e1,
                  output q, qbar);
        wire and1, and2, dbar;
        
        not ehgkj(dbar, d);
    and hdhd(and1, e1, dbar); //gives the R wire
    and hfhgf(and2, e1, d);//gives the S wire
        nor hfgfv(q, and1, qbar);
        nor sf(qbar, and2, q);
    endmodule
    
    // concatenate Two latches to form the Master slave D-FF
    module dfff(input dl, clk1,
               output qd);
        wire a, notclk;
        not iwoef(notclk, clk1);
        mylatch master(.e1(notclk),
                      .d(dl),
                      .q(a),
                      .qbar());
        mylatch slave(.e1(clk1),
                     .d(a),
                     .q(qd),
                     .qbar());
    endmodule
    // have wire driven by the XOR gate
    // note this could have been done simply as follows:
    always @(posedge clk) begin
        out <= (in ^ out);
    end