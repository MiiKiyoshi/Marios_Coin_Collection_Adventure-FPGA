module mario_display(
        output reg [11:0] rgb    ,   
        output        on         ,
        output [9:0]  mario_left ,
        output [9:0]  mario_top  ,
        input         clk        ,
        input         rst        ,
        input  [2:0]  btn        ,
        input         frame_tick ,
        input  [9:0]  xg         ,
        input  [9:0]  yg         
);
    
    wire up_btn, left_btn, right_btn;
    assign {up_btn, left_btn, right_btn} = btn;

    // Define image width, height
    parameter RIGHT_END = 639, BOTTOM_END = 479; 
    parameter WIDTH = 27, HEIGHT = 31;

    // Varible left, top fixed right, bottom
    wire [9:0] left, right;
    wire [9:0] top, bottom;
    assign right = left + WIDTH;
    assign bottom = top + HEIGHT;
    
    // On condition
	assign on = (left <= xg && xg <= right) && (top <= yg && yg <= bottom) && (rgb != 12'h3b9); 

    /*-----------------------------location logic---------------------------------*/
    reg [9:0] c_left, n_left;
    reg [9:0] c_top, n_top;

    always @(posedge clk or posedge rst) begin
        if(rst) begin
            c_left <= 300;
            c_top <= 300;
        end else begin
            c_left <= n_left;
            c_top <= n_top;
        end
    end

    always @(*) begin
        if(frame_tick && left_btn && (left != 0)) begin
            n_left = c_left - 4;
        end else if(frame_tick && right_btn && (right <= RIGHT_END)) begin
            n_left = c_left + 4;
        end else begin
            n_left = c_left;
        end
    end

    assign left = c_left;
    assign top = c_top;

    /*---------------------------------jump logic---------------------------------*/

    wire ground;
    mario_bar_ground mario_bar_ground_inst(
        .ground  (ground) ,
        .mario_x (left  ) ,
        .mario_y (top   ) 
    );

    parameter GROUND_STATE = 0, JUMP_STATE = 1, GRAVITY_STATE = 2;
    reg [1:0] mario_y_move_state, n_mario_y_move_state;

    always @(posedge clk or posedge rst) begin
        if(rst) begin
            mario_y_move_state <= 0;
        end else begin
            mario_y_move_state <= n_mario_y_move_state;
        end
    end

    reg [31:0] jump_size_index;

    always @(*) begin
        case(mario_y_move_state)
            GROUND_STATE: n_mario_y_move_state = !ground? GRAVITY_STATE : ((up_btn && frame_tick)? JUMP_STATE : GROUND_STATE);
            JUMP_STATE: n_mario_y_move_state = (jump_size_index == 40)? GRAVITY_STATE : JUMP_STATE;
            GRAVITY_STATE: n_mario_y_move_state = (ground)? GROUND_STATE : GRAVITY_STATE;
            default: n_mario_y_move_state = GROUND_STATE;
        endcase
    end

    always @(posedge clk or posedge rst) begin
        if(rst) begin
            jump_size_index <= 1;
        end else if(mario_y_move_state == JUMP_STATE) begin
            if(jump_size_index != 40 && frame_tick) begin
                jump_size_index <= jump_size_index + 1;
            end
        end else begin
            jump_size_index <= 1;
        end
    end

    reg [31:0] jump_size;

    always @(*) begin
        case(jump_size_index)
            1 : jump_size = 1 ;
            2 : jump_size = 1 ;
            3 : jump_size = 1 ;
            4 : jump_size = 1 ;
            5 : jump_size = 1 ;
            6 : jump_size = 1 ;
            7 : jump_size = 1 ;
            8 : jump_size = 1 ;
            9 : jump_size = 1 ;
            10: jump_size = 1 ;
            11: jump_size = 1 ;
            12: jump_size = 1 ;
            13: jump_size = 1 ;
            14: jump_size = 1 ;
            15: jump_size = 1 ;
            16: jump_size = 1 ;
            17: jump_size = 1 ;
            18: jump_size = 1 ;
            19: jump_size = 1 ;
            20: jump_size = 1 ;
            21: jump_size = 2 ;
            22: jump_size = 2 ;
            23: jump_size = 2 ;
            24: jump_size = 2 ;
            25: jump_size = 2 ;
            26: jump_size = 3 ;
            27: jump_size = 3 ;
            28: jump_size = 3 ;
            29: jump_size = 3 ;
            30: jump_size = 3 ;
            31: jump_size = 3 ;
            32: jump_size = 3 ;
            33: jump_size = 4 ;
            34: jump_size = 4 ;
            35: jump_size = 4 ;
            36: jump_size = 4 ;
            37: jump_size = 4 ;
            38: jump_size = 4 ;
            39: jump_size = 4 ;
            40: jump_size = 4 ;
            default: jump_size = 1;
        endcase
    end

    wire jump_rst;
    wire gravity_rst;

    size_varible_gen_counter_en size_varible_gen_counter_en_inst_0(
        .clk         (clk                ),
        .rst         (rst || jump_rst    ),
        .size        (jump_size * 100000 ),
        .counter_en  (jump_trig_always_on)
    );

    reg [31:0] gravity_size_index;

    always @(posedge clk or posedge rst) begin
        if(rst) begin
            gravity_size_index <= 40;
        end else if(mario_y_move_state == GRAVITY_STATE) begin
            if(gravity_size_index != 1 && frame_tick) begin
                gravity_size_index <= gravity_size_index - 1;
            end
        end else begin
            gravity_size_index <= 40;
        end
    end

    reg [31:0] gravity_size;

    always @(*) begin
        case(gravity_size_index)
            1 : gravity_size = 1 ;
            2 : gravity_size = 1 ;
            3 : gravity_size = 1 ;
            4 : gravity_size = 1 ;
            5 : gravity_size = 1 ;
            6 : gravity_size = 1 ;
            7 : gravity_size = 1 ;
            8 : gravity_size = 1 ;
            9 : gravity_size = 1 ;
            10: gravity_size = 1 ;
            11: gravity_size = 1 ;
            12: gravity_size = 1 ;
            13: gravity_size = 1 ;
            14: gravity_size = 1 ;
            15: gravity_size = 1 ;
            16: gravity_size = 1 ;
            17: gravity_size = 1 ;
            18: gravity_size = 1 ;
            19: gravity_size = 1 ;
            20: gravity_size = 1 ;
            21: gravity_size = 2 ;
            22: gravity_size = 2 ;
            23: gravity_size = 2 ;
            24: gravity_size = 2 ;
            25: gravity_size = 2 ;
            26: gravity_size = 3 ;
            27: gravity_size = 3 ;
            28: gravity_size = 3 ;
            29: gravity_size = 3 ;
            30: gravity_size = 3 ;
            31: gravity_size = 3 ;
            32: gravity_size = 3 ;
            33: gravity_size = 4 ;
            34: gravity_size = 4 ;
            35: gravity_size = 4 ;
            36: gravity_size = 4 ;
            37: gravity_size = 4 ;
            38: gravity_size = 4 ;
            39: gravity_size = 4 ;
            40: gravity_size = 4 ;
            default: gravity_size = 1;
        endcase
    end

    size_varible_gen_counter_en size_varible_gen_counter_en_inst_1(
        .clk         (clk                   ),
        .rst         (rst || gravity_rst    ),
        .size        (gravity_size * 100000 ),
        .counter_en  (gravity_trig_always_on)
    );

    wire jump_trig;
    wire gravity_trig;

    assign jump_trig = (mario_y_move_state == JUMP_STATE)? jump_trig_always_on : 0;
    assign gravity_trig = (mario_y_move_state == GRAVITY_STATE)? gravity_trig_always_on : 0;
    assign jump_rst = (mario_y_move_state != JUMP_STATE);
    assign gravity_rst = (mario_y_move_state != GRAVITY_STATE);

    always @(*) begin
        case(mario_y_move_state)
            GROUND_STATE: n_top = c_top;
            JUMP_STATE: n_top = (jump_trig)? c_top - 1 : c_top;
            GRAVITY_STATE: n_top = (gravity_trig)? c_top + 1 : c_top;
            default: n_top = c_top;
        endcase
    end

    assign mario_left = left;
    assign mario_top = top;

    /*----------------------------mario dynamic image logic---------------------------------*/

    parameter MARIO_STANDING_ST = 0, MARIO_WALKING_ST = 1, MARIO_JUMPING_ST = 3;
    reg [1:0] mario_image_st, n_mario_image_st;
    always @(posedge clk or posedge rst) begin
        if(rst) begin
            mario_image_st = MARIO_STANDING_ST;
        end else begin
            mario_image_st = n_mario_image_st;
        end
    end

    always @(*) begin
        case(mario_image_st)
            MARIO_STANDING_ST: begin
                n_mario_image_st = (mario_y_move_state == JUMP_STATE || mario_y_move_state == GRAVITY_STATE)? MARIO_JUMPING_ST : 
                                   (left_btn || right_btn)? MARIO_WALKING_ST :
                                   MARIO_STANDING_ST;
            end

            MARIO_WALKING_ST: begin
                n_mario_image_st = (mario_y_move_state == JUMP_STATE || mario_y_move_state == GRAVITY_STATE)? MARIO_JUMPING_ST :
                                   (!(left_btn || right_btn))? MARIO_STANDING_ST :
                                   MARIO_WALKING_ST;
            end

            MARIO_JUMPING_ST: begin
                n_mario_image_st = (mario_y_move_state == GROUND_STATE)? MARIO_WALKING_ST : MARIO_JUMPING_ST;
                                
            end

            default: n_mario_image_st = MARIO_STANDING_ST;
        endcase
    end

    wire [11:0] rgb_jumping, rgb_walking, rgb_standing;
    wire [11:0] rgb_walking1, rgb_walking2;

    mario_rom_jumping mario_rom_jumping_inst(
            .clk        (clk  ),
            .x          (x_rom),
            .y          (y_rom),
            .color_data (rgb_jumping)
    );

    mario_rom_walking1 mario_rom_walking1_inst(
            .clk        (clk  ),
            .x          (x_rom),
            .y          (y_rom),
            .color_data (rgb_walking1)
    );

    mario_rom_walking2 mario_rom_walking2_inst(
            .clk        (clk  ),
            .x          (x_rom),
            .y          (y_rom),
            .color_data (rgb_walking2)
    );

    mario_rom_standing mario_rom_standing_inst(
            .clk        (clk  ),
            .x          (x_rom),
            .y          (y_rom),
            .color_data (rgb_standing)
    );

    always @(*) begin
        case(mario_image_st)
            MARIO_STANDING_ST: rgb = rgb_standing;
            MARIO_WALKING_ST: rgb = rgb_walking;
            MARIO_JUMPING_ST: rgb = rgb_jumping;
            default: rgb = rgb_standing;
        endcase
    end

    wire walking_trig;
    gen_counter_en 
    #(
        .SIZE(3000000) // 0.3 sec
    ) 
    gen_clock_en_inst_0
    (
        .clk        (clk         ) ,
        .rst        (rst         ) ,
        .counter_en (walking_trig)
    ); 

    reg walking_1_or_2;
    always @(posedge clk or posedge rst) begin
        if(rst) begin
            walking_1_or_2 <= 0;
        end else if((walking_trig && left_btn) || (walking_trig && right_btn)) begin
            walking_1_or_2 <= ~walking_1_or_2;
        end
    end

    assign rgb_walking = (walking_1_or_2)? rgb_walking1 : rgb_walking2;

    reg mario_image_direction_st, n_mario_image_direction_st;
    parameter MARIO_LEFT_ST = 0, MARIO_RIGHT_ST = 1;

    always @(posedge clk or posedge rst) begin
        if(rst) begin
            mario_image_direction_st = MARIO_LEFT_ST;
        end else begin
            mario_image_direction_st = n_mario_image_direction_st;
        end
    end

    always @(*) begin
        case(mario_image_direction_st)
            MARIO_LEFT_ST: n_mario_image_direction_st = (right_btn)? MARIO_RIGHT_ST : MARIO_LEFT_ST;
            MARIO_RIGHT_ST: n_mario_image_direction_st = (left_btn)? MARIO_LEFT_ST : MARIO_RIGHT_ST;
            default: n_mario_image_direction_st = MARIO_LEFT_ST;
        endcase
    end

    // Outputs color data for the corresponding pixel
    reg [5:0] x_rom;
    wire [5:0] x_rom_left, x_rom_right;
    assign x_rom_left = WIDTH - (xg - left);
    assign x_rom_right = xg - left;

    always @(*) begin
        case(n_mario_image_direction_st)
            MARIO_LEFT_ST: x_rom = x_rom_left;
            MARIO_RIGHT_ST: x_rom = x_rom_right;
            default: x_rom = x_rom_left;
        endcase
    end

    wire [4:0] y_rom;
    assign y_rom = yg - top;

endmodule
