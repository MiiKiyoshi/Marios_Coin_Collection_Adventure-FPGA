module gen_counter_en (
    input  clk,
    input  rst,
    output counter_en
);

    parameter SIZE = 6000000;

    reg [31:0] o; 
    always @(posedge clk or posedge rst) 
        if (rst) o <= 0;
        else
            if (o == SIZE-1) o <= 0;
            else o <= o + 1;
    assign counter_en = (o == SIZE-1)? 1'b1 : 1'b0; 

endmodule
