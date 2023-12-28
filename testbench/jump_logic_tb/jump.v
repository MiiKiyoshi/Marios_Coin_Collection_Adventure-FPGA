module jump;

    reg clk;
    reg rst;
    wire frame_tick;
    reg up_btn;

    always #5
        clk = ~clk;

    gen_counter_en 
    #(
        .SIZE(10)
    ) 
    gen_clock_en_inst_0
    (
        .clk        (clk       ) ,
        .rst        (rst       ) ,
        .counter_en (frame_tick)
    ); 

    reg [6:0] btn_hold_count; 
    reg [6:0] btn_hold_time;
    reg release_btn; 

    always @(posedge clk or posedge rst) begin
        if(rst) begin
            btn_hold_count <= 0;
            btn_hold_time <= 0;
            release_btn <= 0;
        end else if(frame_tick) begin 
            if(up_btn) begin
                if(btn_hold_count != 7'd120) begin
                    btn_hold_count <= btn_hold_count + 1; 
                end
            end else if(btn_hold_count != 0) begin
                btn_hold_time <= btn_hold_count;
                release_btn <= 1;
                btn_hold_count <= 0;
            end
        end else begin
            release_btn <= 0;
        end
    end
    
    // 버튼을 누르고 있던 시간동안 1되는 신호
    // counter
    
    reg jump;
    reg [6:0] jump_count;

    always @(posedge clk or posedge rst) begin
        if(rst) begin
            jump <= 0;
            jump_count <= 0;
        end else begin
            if(release_btn) begin
                jump_count <= btn_hold_time;
            end else if(frame_tick) begin
                if(jump_count != 0) begin
                    jump <= 1;
                    jump_count <= jump_count - 1;
                end else begin
                    jump <= 0;
                end
            end
        end
    end
    
    initial begin
        clk = 1;
        rst = 1;
        up_btn = 0;
    #10 rst = 0;

    #1000 up_btn = 1;
    #1500 up_btn = 0;

    #1000 up_btn = 1;
    #1400 up_btn = 0;

    #1000 up_btn = 1;
    #1300 up_btn = 0;

    #1000 up_btn = 1;
    #1200 up_btn = 0;

    #1000 up_btn = 1;
    #1100 up_btn = 0;

    #1000 up_btn = 1;
    #1000 up_btn = 0;
    
    #1000 up_btn = 1;
    #900 up_btn = 0; 

    #1000 up_btn = 1;
    #800 up_btn = 0; 

    #1000 up_btn = 1;
    #700 up_btn = 0; 

    #1000 up_btn = 1;
    #300 up_btn = 0; 

    #1000 $finish;

    end

endmodule
