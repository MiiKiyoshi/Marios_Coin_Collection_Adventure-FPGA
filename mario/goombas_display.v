module goombas_display(
        output [11:0] rgb         ,
        output        on          ,
        output        mario_hit   ,
        input         clk         ,
        input         rst         ,
        input         frame_tick  ,
        input  [9:0]  xg          ,
        input  [9:0]  yg          ,
        input  [9:0]  mario_left  ,
        input  [9:0]  mario_top
);

wire [11:0] goomba1_rgb, goomba2_rgb, goomba3_rgb, goomba4_rgb, goomba5_rgb, goomba6_rgb;
wire goomba1_on, goomba2_on, goomba3_on, goomba4_on, goomba5_on, goomba6_on;
wire [9:0] goomba1_left, goomba2_left, goomba3_left, goomba4_left, goomba5_left, goomba6_left;
wire [9:0] goomba1_top, goomba2_top, goomba3_top, goomba4_top, goomba5_top, goomba6_top;
wire [9:0] goomba1_right, goomba2_right, goomba3_right, goomba4_right, goomba5_right, goomba6_right;
wire [9:0] goomba1_bottom, goomba2_bottom, goomba3_bottom, goomba4_bottom, goomba5_bottom, goomba6_bottom;
wire goomba1_respawn, goomba2_respawn, goomba3_respawn, goomba4_respawn, goomba5_respawn, goomba6_respawn;

parameter WIDTH = 26, HEIGHT = 27;
parameter WIDTH_M =27, HEIGHT_M = 31; //Mario size
parameter REAL_GROUND = 440;
parameter RIGHT_END = 639;

wire spawn_trig;

parameter CLK_SPEED = 25175*10**3;
gen_counter_en 
#(
    .SIZE(CLK_SPEED *2)
) 
gen_clock_en_inst_0
(
    .clk        (clk       ) ,
    .rst        (rst       ) ,
    .counter_en (spawn_trig)
); 

reg [5:0] goomba_rst; 

always @(posedge clk or posedge rst) begin
    if(rst) begin
        goomba_rst <= 0;
    end else if(spawn_trig && goomba_rst != 6'b111111) begin
        goomba_rst[5:0] <= {goomba_rst[4:0], 1'b1};
    end
end

goomba_display #(
    .GOOMBA_INITIAL_LEFT (25),
    .GOOMBA_INITIAL_TOP  (35),
    .GOOMBA_INITIAL_MOVE (1 )
)
goomba1_display(     
        .rgb        (goomba1_rgb          ), 
        .on         (goomba1_on           ), 
        .goomba_left(goomba1_left         ), 
        .goomba_top (goomba1_top          ), 
        .clk        (clk                  ), 
        .rst        (rst||!goomba_rst[0]||goomba1_respawn), 
        .frame_tick (frame_tick           ), 
        .xg         (xg                   ), 
        .yg         (yg                   )
);

goomba_display #(
    .GOOMBA_INITIAL_LEFT (25),
    .GOOMBA_INITIAL_TOP  (35),
    .GOOMBA_INITIAL_MOVE (1 )
)
goomba2_display(     
        .rgb        (goomba2_rgb          ), 
        .on         (goomba2_on           ), 
        .goomba_left(goomba2_left         ), 
        .goomba_top (goomba2_top          ), 
        .clk        (clk                  ), 
        .rst        (rst||!goomba_rst[2]||goomba2_respawn), 
        .frame_tick (frame_tick           ), 
        .xg         (xg                   ), 
        .yg         (yg                   )
);

goomba_display #(
    .GOOMBA_INITIAL_LEFT (25),
    .GOOMBA_INITIAL_TOP  (35),
    .GOOMBA_INITIAL_MOVE (1 )
)
goomba3_display(     
        .rgb        (goomba3_rgb          ), 
        .on         (goomba3_on           ), 
        .goomba_left(goomba3_left         ), 
        .goomba_top (goomba3_top          ), 
        .clk        (clk                  ), 
        .rst        (rst||!goomba_rst[4]||goomba3_respawn), 
        .frame_tick (frame_tick           ), 
        .xg         (xg                   ), 
        .yg         (yg                   )
);

goomba_display #(
    .GOOMBA_INITIAL_LEFT (615 - WIDTH),
    .GOOMBA_INITIAL_TOP  (35),
    .GOOMBA_INITIAL_MOVE (0 )
)
goomba4_display(     
        .rgb        (goomba4_rgb          ), 
        .on         (goomba4_on           ), 
        .goomba_left(goomba4_left         ), 
        .goomba_top (goomba4_top          ), 
        .clk        (clk                  ), 
        .rst        (rst||!goomba_rst[1]||goomba4_respawn), 
        .frame_tick (frame_tick           ), 
        .xg         (xg                   ), 
        .yg         (yg                   )
);

goomba_display #(
    .GOOMBA_INITIAL_LEFT (615 - WIDTH),
    .GOOMBA_INITIAL_TOP  (35),
    .GOOMBA_INITIAL_MOVE (0 )
)
goomba5_display(     
        .rgb        (goomba5_rgb          ), 
        .on         (goomba5_on           ), 
        .goomba_left(goomba5_left         ), 
        .goomba_top (goomba5_top          ), 
        .clk        (clk                  ), 
        .rst        (rst||!goomba_rst[3]||goomba5_respawn), 
        .frame_tick (frame_tick           ), 
        .xg         (xg                   ), 
        .yg         (yg                   )
);

goomba_display #(
    .GOOMBA_INITIAL_LEFT (615 - WIDTH),
    .GOOMBA_INITIAL_TOP  (35),
    .GOOMBA_INITIAL_MOVE (0 )
)
goomba6_display(              
        .rgb        (goomba6_rgb          ), 
        .on         (goomba6_on           ), 
        .goomba_left(goomba6_left         ), 
        .goomba_top (goomba6_top          ), 
        .clk        (clk                  ), 
        .rst        (rst||!goomba_rst[5]||goomba6_respawn), 
        .frame_tick (frame_tick           ), 
        .xg         (xg                   ), 
        .yg         (yg                   )
);

assign on = goomba1_on || goomba2_on || goomba3_on || goomba4_on || goomba5_on || goomba6_on;

assign rgb = (goomba1_on)? goomba1_rgb :
             (goomba2_on)? goomba2_rgb :
             (goomba3_on)? goomba3_rgb :
             (goomba4_on)? goomba4_rgb :
             (goomba5_on)? goomba5_rgb :
             (goomba6_on)? goomba6_rgb : 12'h3b9;

assign goomba1_right = goomba1_left + WIDTH;
assign goomba1_bottom = goomba1_top + HEIGHT;
assign goomba1_respawn = ((goomba1_left == 0) && (goomba1_bottom == REAL_GROUND)) || ((goomba1_right == RIGHT_END) && (goomba1_bottom == REAL_GROUND));

assign goomba2_right = goomba2_left + WIDTH;
assign goomba2_bottom = goomba2_top + HEIGHT;
assign goomba2_respawn = ((goomba2_left == 0) && (goomba2_bottom == REAL_GROUND)) || ((goomba2_right == RIGHT_END) && (goomba2_bottom == REAL_GROUND));

assign goomba3_right = goomba3_left + WIDTH;
assign goomba3_bottom = goomba3_top + HEIGHT;
assign goomba3_respawn = ((goomba3_left == 0) && (goomba3_bottom == REAL_GROUND)) || ((goomba3_right == RIGHT_END) && (goomba3_bottom == REAL_GROUND));

assign goomba4_right = goomba4_left + WIDTH;
assign goomba4_bottom = goomba4_top + HEIGHT;
assign goomba4_respawn = ((goomba4_left == 0) && (goomba4_bottom == REAL_GROUND)) || ((goomba4_right == RIGHT_END) && (goomba4_bottom == REAL_GROUND));

assign goomba5_right = goomba5_left + WIDTH;
assign goomba5_bottom = goomba5_top + HEIGHT;
assign goomba5_respawn = ((goomba5_left == 0) && (goomba5_bottom == REAL_GROUND)) || ((goomba5_right == RIGHT_END) && (goomba5_bottom == REAL_GROUND));

assign goomba6_right = goomba6_left + WIDTH;
assign goomba6_bottom = goomba6_top + HEIGHT;
assign goomba6_respawn = ((goomba6_left == 0) && (goomba6_bottom == REAL_GROUND)) || ((goomba6_right == RIGHT_END) && (goomba6_bottom == REAL_GROUND));

wire [9:0] mario_right, mario_bottom;
assign mario_right = mario_left + WIDTH_M;
assign mario_bottom = mario_top + HEIGHT_M;

reg stable_d;
wire mario_hit_0;

always @(posedge clk or posedge rst)begin
     if (rst) stable_d <= 1'b0;
     else stable_d <= mario_hit_0; 
end 

assign mario_hit= mario_hit_0 & (~stable_d); 

// goomba_hit logic
assign mario_hit_0 = ((goomba1_right >= mario_left && goomba1_left <= mario_right && goomba1_bottom >= mario_top && goomba1_top <= mario_bottom)||
                      (goomba2_right >= mario_left && goomba2_left <= mario_right && goomba2_bottom >= mario_top && goomba2_top <= mario_bottom)||
                      (goomba3_right >= mario_left && goomba3_left <= mario_right && goomba3_bottom >= mario_top && goomba3_top <= mario_bottom)||
                      (goomba4_right >= mario_left && goomba4_left <= mario_right && goomba4_bottom >= mario_top && goomba4_top <= mario_bottom)||
                      (goomba5_right >= mario_left && goomba5_left <= mario_right && goomba5_bottom >= mario_top && goomba5_top <= mario_bottom)||
                      (goomba6_right >= mario_left && goomba6_left <= mario_right && goomba6_bottom >= mario_top && goomba6_top <= mario_bottom)) ? 1 : 0;

endmodule
