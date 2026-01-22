module top_module (
    input clk,
    input reset,
    input enable,
    output [3:0] Q,
    output c_enable,
    output c_load,
    output [3:0] c_d
); //define the wires/logic that drive our given counter
    
    //Step 1: c_d is always high because we want to add one always 
    assign c_d = 4'b1;
    
    // step 2: the enable logic which is high whenver we have enable pressed.
    assign c_enable = enable;
    
    // Step 3: determine the c_load logic 
    assign c_load = reset | ((Q==12) && enable);
    
    // Finally wire it up with the counter
    count4 the_counter(.clk(clk), 
                        .enable(c_enable),
                        .load(c_load),
                        .d(c_d), 
                        .Q(Q));
	


endmodule
