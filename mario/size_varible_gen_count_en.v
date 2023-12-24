module size_varible_gen_counter_en(
    input  clk,
    input  rst,
    input [31:0] size,
    output counter_en
);

    reg [31:0] o; 
    always @(posedge clk or posedge rst) 
        if (rst) o <= 0;
        else
            if (o >= size-1) o <= 0;
            else o <= o + 1;

    assign counter_en = (o == size-1)? 1'b1 : 1'b0; 

endmodule
