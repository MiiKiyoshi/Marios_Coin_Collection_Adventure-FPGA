module jump;

    reg clk;
    reg rst;
    wire frame_tick;
    reg up_btn;

    always #5
        clk = ~clk;

    gen_counter_en 
    #(
        .SIZE(60)
    ) 
    gen_clock_en_inst_0
    (
        .clk        (clk       ) ,
        .rst        (rst       ) ,
        .counter_en (frame_tick)
    ); 

    parameter BOTTOM_END = 479; 
    parameter HEIGHT = 39;

    reg [9:0] c_top, n_top;

    always @(posedge clk or posedge rst) begin
        if(rst) begin
            c_top <= 300;
        end else begin
            c_top <= n_top;
        end
    end

    wire [9:0] top, bottom;
    assign top = c_top;
    assign bottom = top + HEIGHT;

    wire ground;
    assign ground = (bottom >= BOTTOM_END);

    parameter GROUND_STATE = 0, JUMP_STATE = 1, GRAVITY_STATE = 2;
    reg [1:0] mario_y_move_state, n_mario_y_move_state;

    always @(posedge clk or posedge rst) begin
        if(rst) begin
            mario_y_move_state <= 0;
        end else begin
            mario_y_move_state <= n_mario_y_move_state;
        end
    end

    reg [3:0] jump_size_index;

    always @(*) begin
        case(mario_y_move_state)
            GROUND_STATE: n_mario_y_move_state = (up_btn && frame_tick)? JUMP_STATE : GROUND_STATE;
            JUMP_STATE: n_mario_y_move_state = (jump_size_index == 1)? GRAVITY_STATE : JUMP_STATE;
            GRAVITY_STATE: n_mario_y_move_state = (ground)? GROUND_STATE : GRAVITY_STATE;
            default: n_mario_y_move_state = GROUND_STATE;
        endcase
    end

    always @(posedge clk or posedge rst) begin
        if(rst) begin
            jump_size_index <= 6;
        end else if(mario_y_move_state == JUMP_STATE) begin
            if(jump_size_index != 1 && frame_tick) begin
                jump_size_index <= jump_size_index - 1;
            end
        end else begin
            jump_size_index <= 6;
        end
    end

    reg [31:0] jump_size;

    always @(*) begin
        case(jump_size_index)
            6: jump_size = 10;
            5: jump_size = 12;
            4: jump_size = 15;
            3: jump_size = 20;
            2: jump_size = 30;
            1: jump_size = 60;
            default: jump_size = 0;
        endcase
    end

    size_varible_gen_counter_en size_varible_gen_counter_en_inst_0(
        .clk         (clk                ),
        .rst         (rst                ),
        .size        (jump_size          ),
        .counter_en  (jump_trig_always_on)
    );

    reg [3:0] gravity_size_index;

    always @(posedge clk or posedge rst) begin
        if(rst) begin
            gravity_size_index <= 4;
        end else if(mario_y_move_state == GRAVITY_STATE) begin
            if(gravity_size_index != 1 && frame_tick) begin
                gravity_size_index <= gravity_size_index - 1;
            end
        end else begin
            gravity_size_index <= 6;
        end
    end

    reg [31:0] gravity_size;

    always @(*) begin
        case(gravity_size_index)
            1: gravity_size = 10;
            2: gravity_size = 12;
            3: gravity_size = 15;
            4: gravity_size = 20;
            5: gravity_size = 30;
            6: gravity_size = 60;
            default: gravity_size = 0;
        endcase
    end

    size_varible_gen_counter_en size_varible_gen_counter_en_inst_1(
        .clk         (clk                   ),
        .rst         (rst                   ),
        .size        (gravity_size          ),
        .counter_en  (gravity_trig_always_on)
    );

    wire jump_trig;
    wire gravity_trig;

    assign jump_trig = (mario_y_move_state == JUMP_STATE)? jump_trig_always_on : 0;
    assign gravity_trig = (mario_y_move_state == GRAVITY_STATE)? gravity_trig_always_on : 0;

    // n_top
    always @(*) begin
        case(mario_y_move_state)
            GROUND_STATE: n_top = c_top;
            JUMP_STATE: n_top = (jump_trig)? c_top - 1 : c_top;
            GRAVITY_STATE: n_top = (gravity_trig)? c_top + 1 : c_top;
            default: n_top = c_top;
        endcase
    end

    initial begin
        clk = 1;
        rst = 1;
        up_btn = 0;
    #10 rst = 0;

    #1000 up_btn = 0;
    #1000 up_btn = 1;
    #1000 up_btn = 0;
    
    #100000;
    
    #1000 up_btn = 0;
    #1000 up_btn = 1;
    #1000 up_btn = 0;
    
    #10000;
    
    #1000 up_btn = 0;
    #1000 up_btn = 1;
    #10000 up_btn = 0;
    
    #10000;
    
    #1000 up_btn = 0;
    #1000 up_btn = 1;
    #1000 up_btn = 0;
    
    #10000;
    
    #1000 up_btn = 0;
    #1000 up_btn = 1;
    #1000 up_btn = 0;
    
    #10000;
    
    #1000 up_btn = 0;
    #1000 up_btn = 1;
    #1000 up_btn = 0;
    
    #10000;

    $finish;

    end

endmodule
