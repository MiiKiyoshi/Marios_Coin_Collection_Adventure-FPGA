// right: 5'd29, bottom: 6'd39
module goomba_display
#(
    parameter GOOMBA_INITIAL_LEFT = 25,
    parameter GOOMBA_INITIAL_TOP = 35,
    parameter GOOMBA_INITIAL_MOVE = 0
)
(
        output [11:0] rgb        ,
        output        on         ,
        output [9:0]  goomba_left,
        output [9:0]  goomba_top ,
        input         clk        ,
        input         rst        ,
        input         frame_tick ,
        input  [9:0]  xg         ,
        input  [9:0]  yg         
);

// Define image width, height
parameter RIGHT_END = 639, BOTTOM_END = 479; 
parameter WIDTH = 26, HEIGHT = 27;

// Varible left, top fixed right, bottom
wire [9:0] left, right;
wire [9:0] top, bottom;
assign right = left + WIDTH;
assign bottom = top + HEIGHT;

// On condition
assign on = (left <= xg && xg <= right) && (top <= yg && yg <= bottom) && (rgb != 12'h3b9); 

// Outputs color data for the corresponding pixel
wire [4:0] x_rom;
wire [4:0] y_rom;
assign x_rom = xg - left;
assign y_rom = yg - top;
goomba_rom goomba_rom_inst(
        .clk        (clk  ),
        .x          (x_rom),
        .y          (y_rom),
        .color_data (rgb  )
);

/*-----------------------------left right logic---------------------------------*/

parameter MOVE_TO_LEFT = 0, MOVE_TO_RIGHT = 1;
reg goomba_x_move_st, n_goomba_x_move_st;

always @(posedge clk or posedge rst) begin
    if(rst) begin
        goomba_x_move_st <= GOOMBA_INITIAL_MOVE;
    end else begin
        goomba_x_move_st <= n_goomba_x_move_st;
    end
end

always @(*) begin
    case(goomba_x_move_st)
        MOVE_TO_LEFT: n_goomba_x_move_st = (left == 0)? MOVE_TO_RIGHT : MOVE_TO_LEFT;
        MOVE_TO_RIGHT: n_goomba_x_move_st = (right >= RIGHT_END)? MOVE_TO_LEFT : MOVE_TO_RIGHT;
        default: n_goomba_x_move_st = MOVE_TO_LEFT;
    endcase
end

always @(*) begin
    if(frame_tick && (goomba_x_move_st == MOVE_TO_LEFT)) begin
        n_left = c_left - 1;
    end else if(frame_tick && (goomba_x_move_st == MOVE_TO_RIGHT)) begin
        n_left = c_left + 1;
    end else begin
        n_left = c_left;
    end
end

reg [9:0] c_left, n_left;
reg [9:0] c_top, n_top;

always @(posedge clk or posedge rst) begin
    if(rst) begin
        c_left <= GOOMBA_INITIAL_LEFT;
        c_top <= GOOMBA_INITIAL_TOP;
    end else begin
        c_left <= n_left;
        c_top <= n_top;
    end
end

assign left = c_left;
assign top = c_top;

/*------------------------------gravity logic---------------------------------*/

wire ground;
goomba_bar_ground goomba_bar_ground_inst(
    .ground   (ground) ,
    .goomba_x (left  ) ,
    .goomba_y (top   ) 
);

parameter GROUND_STATE = 0, GRAVITY_STATE = 1;
reg [1:0] goomba_y_move_state, n_goomba_y_move_state;

always @(posedge clk or posedge rst) begin
    if(rst) begin
        goomba_y_move_state <= GRAVITY_STATE;
    end else begin
        goomba_y_move_state <= n_goomba_y_move_state;
    end
end

always @(*) begin
    case(goomba_y_move_state)
        GROUND_STATE: n_goomba_y_move_state = (!ground)? GRAVITY_STATE : GROUND_STATE;
        GRAVITY_STATE: n_goomba_y_move_state = (ground)? GROUND_STATE : GRAVITY_STATE;
        default: n_goomba_y_move_state = GROUND_STATE;
    endcase
end

reg [31:0] gravity_size_index;

always @(posedge clk or posedge rst) begin
    if(rst) begin
        gravity_size_index <= 40;
    end else if(goomba_y_move_state == GRAVITY_STATE) begin
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
        26: gravity_size = 2 ;
        27: gravity_size = 2 ;
        28: gravity_size = 2 ;
        29: gravity_size = 2 ;
        30: gravity_size = 2 ;
        31: gravity_size = 3 ;
        32: gravity_size = 3 ;
        33: gravity_size = 3 ;
        34: gravity_size = 3 ;
        35: gravity_size = 3 ;
        36: gravity_size = 3 ;
        37: gravity_size = 3 ;
        38: gravity_size = 3 ;
        39: gravity_size = 3 ;
        40: gravity_size = 3 ;
        default: gravity_size = 1;
    endcase
end

wire gravity_trig;
assign gravity_trig = (goomba_y_move_state == GRAVITY_STATE)? gravity_trig_always_on : 0;

wire gravity_rst;
assign gravity_rst = (goomba_y_move_state != GRAVITY_STATE);

size_varible_gen_counter_en size_varible_gen_counter_en_inst_0(
    .clk         (clk                   ),
    .rst         (rst || gravity_rst    ),
    .size        (gravity_size * 70000 ),
    .counter_en  (gravity_trig_always_on)
);

always @(*) begin
    case(goomba_y_move_state)
        GROUND_STATE: n_top = c_top;
        GRAVITY_STATE: n_top = (gravity_trig)? c_top + 1 : c_top;
        default: n_top = c_top;
    endcase
end

assign goomba_left = left;
assign goomba_top = top;

endmodule
