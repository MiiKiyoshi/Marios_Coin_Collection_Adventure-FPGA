module mario_brothers(
    output [11:0] rgb        ,
    input  [9:0]  x          ,
    input  [9:0]  y          ,
    input         frame_tick ,
    input  [3:0]  btn        ,
    input  [3:0]  btn_pulse  ,
    input  [2:0]  sw         ,
    input         clk        ,
    input         rst        
);

wire [11:0] mario_rgb;
wire mario_on;
wire [9:0] mario_left;
wire [9:0] mario_top;
mario_display mario_display_inst(
        .rgb        (mario_rgb        ),
        .on         (mario_on         ),
        .mario_left (mario_left       ),
        .mario_top  (mario_top        ),
        .clk        (clk              ),
        .rst        (rst||not_play_rst),
        .btn        (btn[3:1]         ),
        .frame_tick (frame_tick       ),
        .xg         (x                ),
        .yg         (y                )
);                  

wire [11:0] goomba_rgb;
wire goomba_on;
wire mario_hit;
goombas_display goombas_display(
        .rgb         (goomba_rgb       ),
        .on          (goomba_on        ),
        .mario_hit   (mario_hit        ),
        .clk         (clk              ),
        .rst         (rst||not_play_rst),
        .frame_tick  (frame_tick       ),
        .xg          (x                ),
        .yg          (y                ),
        .mario_left  (mario_left       ),
        .mario_top   (mario_top        )
);

wire [11:0] coin_rgb;
wire coin_on;
wire reach_coin;
coin_display coin_display_inst(
        .rgb        (coin_rgb         ),
        .on         (coin_on          ),
        .reach_coin (reach_coin       ),
        .clk        (clk              ),
        .rst        (rst||not_play_rst),
        .mario_x    (mario_left       ),
        .mario_y    (mario_top        ),
        .xg         (x                ),
        .yg         (y                )
);

wire [11:0] background_rgb;
wire background_on;
background_display background_display_inst(
        .rgb (background_rgb),
        .on  (background_on ),
        .clk (clk           ),
        .rst (rst           ),
        .xg  (x             ),
        .yg  (y             )
);

wire [11:0] intro_rgb;
wire intro_on;
intro_display intro_display_inst(
        .rgb (intro_rgb     ),
        .on  (intro_on      ), 
        .clk (clk           ),
        .rst (rst           ),
        .xg  (x             ),
        .yg  (y             )
);

wire [11:0] game_over_rgb;
wire game_over_on;
game_over_display game_over_display_inst(
        .rgb (game_over_rgb),
        .on  (game_over_on ), 
        .clk (clk          ),
        .rst (rst          ),
        .xg  (x            ),
        .yg  (y            )
);

wire [11:0] ending_rgb;
wire ending_on;
ending_display ending_display_inst(
        .rgb (ending_rgb   ),
        .on  (ending_on    ), 
        .clk (clk          ),
        .rst (rst          ),
        .xg  (x            ),
        .yg  (y            )
);

wire [11:0] text_rgb;
wire text_on;
text_display text_display_inst(
        .rgb        (text_rgb         ),
        .on         (text_on          ),
        .game_over  (game_over        ),
        .ending     (ending           ),
        .clk        (clk              ),
        .rst        (rst||not_play_rst),
        .x          (x                ),
        .y          (y                ),
        .game_st    (game_st          ),
        .mario_hit  (mario_hit&&!sw[0]), // sw[0] -> God Mode
        .reach_coin (reach_coin       )
);

parameter INTRO_ST = 0, PLAY_ST = 1, GAMEOVER_ST = 2, ENDING_ST = 3;

reg [1:0] game_st, n_game_st;
wire start_btn = btn_pulse[0];
always @(posedge clk or posedge rst) begin
    if(rst) begin
        game_st <= INTRO_ST;
    end else begin
        game_st <= n_game_st;
    end
end

wire game_over, ending;
always @(*) begin
    case(game_st)
        INTRO_ST: n_game_st = (start_btn)? PLAY_ST : INTRO_ST;
        PLAY_ST: n_game_st = (game_over)? GAMEOVER_ST : (ending)? ENDING_ST : PLAY_ST;
        GAMEOVER_ST: n_game_st = (start_btn)? INTRO_ST : GAMEOVER_ST;
        ENDING_ST: n_game_st = (start_btn)? INTRO_ST : ENDING_ST;
        default: n_game_st = INTRO_ST;
    endcase
end

wire intro_real_on;
wire game_over_real_on;

assign not_play_rst = game_st != PLAY_ST;
assign intro_real_on = (game_st == INTRO_ST)? intro_on : 0;
assign game_over_real_on = (game_st == GAMEOVER_ST)? game_over_on : 0;
assign ending_real_on =  (game_st == ENDING_ST)? ending_on : 0;

assign rgb = (intro_real_on)? intro_rgb :
             (game_over_real_on)? game_over_rgb :
             (ending_real_on)? ending_rgb :
             (text_on)? text_rgb :
             (mario_on)? mario_rgb :
             (coin_on)? coin_rgb :
             (background_on)? background_rgb :
             (goomba_on)? goomba_rgb :
             12'h000;

endmodule

// assign background_rgb = 12'h000;
// assign background_on = 0;
// assign intro_rgb = 12'h000;
// assign intro_on = 0;
// assign game_over_rgb = 12'h000;
// assign game_over_on = 0;
// assign ending_rgb = 12'h000;
// assign ending_on = 0;
