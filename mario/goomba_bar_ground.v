module goomba_bar_ground(
    output      ground ,
    input [9:0] goomba_x,
    input [9:0] goomba_y
);

// Define image width, height
parameter WIDTH = 26, HEIGHT = 27;

parameter REAL_GROUND = 440;

parameter PIPE_TOP_LEFT_left = 10, PIPE_TOP_LEFT_right = 80, PIPE_TOP_LEFT_high = 62;
parameter PIPE_TOP_RIGHT_left = 560, PIPE_TOP_RIGHT_right = 630, PIPE_TOP_RIGHT_high = 62;

parameter BAR_TOP_LEFT_left = 0, BAR_TOP_LEFT_right = 279, BAR_TOP_LEFT_high = 138;
parameter BAR_TOP_RIGHT_left = 360, BAR_TOP_RIGHT_right = 639, BAR_TOP_RIGHT_high = 138;

parameter BAR_MID_LEFT_left = 0, BAR_MID_LEFT_right = 79, BAR_MID_LEFT_high = 257;
parameter BAR_MID_MID_left = 140, BAR_MID_MID_right = 500, BAR_MID_MID_high = 240;
parameter BAR_MID_RIGHT_left = 560, BAR_MID_RIGHT_right = 639, BAR_MID_RIGHT_high = 257;

parameter BAR_BOTTOM_LEFT_left = 0, BAR_BOTTOM_LEFT_right = 218, BAR_BOTTOM_LEFT_high = 343;
parameter BAR_BOTTOM_RIGHT_left = 421, BAR_BOTTOM_RIGHT_right = 639, BAR_BOTTOM_RIGHT_high = 343;

// Varible left, top fixed right, bottom
wire [9:0] left, right;
wire [9:0] top, bottom;

assign left = goomba_x;
assign top = goomba_y;
assign right = left + WIDTH;
assign bottom = top + HEIGHT;

wire real_ground;
wire pipe_top_left, pipe_top_right;
wire bar_top_left, bar_top_right;
wire bar_mid_left, bar_mid_mid, bar_mid_right;
wire bar_bottom_left, bar_bottom_right;

assign real_ground = (bottom == REAL_GROUND);

assign pipe_top_left = (right >= PIPE_TOP_LEFT_left) && (PIPE_TOP_LEFT_right >= left) && (PIPE_TOP_LEFT_high == bottom);
assign pipe_top_right = (right >= PIPE_TOP_RIGHT_left) && (PIPE_TOP_RIGHT_right >= left) && (PIPE_TOP_RIGHT_high == bottom);

assign bar_top_left = (right >= BAR_TOP_LEFT_left) && (BAR_TOP_LEFT_right >= left) && (BAR_TOP_LEFT_high == bottom);
assign bar_top_right = (right >= BAR_TOP_RIGHT_left) && (BAR_TOP_RIGHT_right >= left) && (BAR_TOP_RIGHT_high == bottom);

assign bar_mid_left = (right >= BAR_MID_LEFT_left) && (BAR_MID_LEFT_right >= left) && (BAR_MID_LEFT_high == bottom);
assign bar_mid_mid = (right >= BAR_MID_MID_left) && (BAR_MID_MID_right >= left) && (BAR_MID_MID_high == bottom);
assign bar_mid_right = (right >= BAR_MID_RIGHT_left) && (BAR_MID_RIGHT_right >= left) && (BAR_MID_RIGHT_high == bottom);

assign bar_bottom_left = (right >= BAR_BOTTOM_LEFT_left) && (BAR_BOTTOM_LEFT_right >= left) && (BAR_BOTTOM_LEFT_high == bottom);
assign bar_bottom_right = (right >= BAR_BOTTOM_RIGHT_left) && (BAR_BOTTOM_RIGHT_right >= left) && (BAR_BOTTOM_RIGHT_high == bottom);

assign ground = real_ground 
             || pipe_top_left || pipe_top_right
             || bar_top_left || bar_top_right 
             || bar_mid_left || bar_mid_mid || bar_mid_right
             || bar_bottom_left || bar_bottom_right;

endmodule
