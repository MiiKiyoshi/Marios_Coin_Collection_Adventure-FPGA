module coin_display_tb;
    wire        on         ;
    reg         reach_coin ;
    reg         clk        ; 
    reg         rst        ; 

coin_display coin_display_inst(
    .rgb        (          ),
    .on         (on        ),
    .reach_coin (reach_coin),
    .xg         (          ), 
    .yg         (          ),
    .clk        (clk       ), 
    .rst        (rst       )
);

always
    #5 clk = ~clk;

integer i, j;
initial begin
    clk = 1; rst = 1; reach_coin = 0;
#5
    rst = 0;

    for(i=0;i<100;i=i+1) begin
        j = $random % 2;
        if(j) begin
            #90
                reach_coin = 1;
            #10
                reach_coin = 0;
        end else begin
            #100;
        end
    end

#100
    $finish;
    
end

endmodule
