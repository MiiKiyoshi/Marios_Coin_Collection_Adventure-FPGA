module bar_ground(
    output      ground ,
    input [9:0] mario_x,
    input [9:0] mario_y
);

    // Define image width, height
    parameter RIGHT_END = 639, BOTTOM_END = 479; 
    parameter WIDTH = 29, HEIGHT = 39;

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

    assign left = mario_x;
    assign top = mario_y;
    assign right = left + WIDTH;
    assign bottom = top + HEIGHT;

    wire real_ground;
    wire bar_top_left, bar_top_right;
    wire bar_mid_left, bar_mid_mid, bar_mid_right;
    wire bar_bottom_left, bar_bottom_right;

    assign real_ground = (bottom >= BOTTOM_END);
    
    assign bar_top_left = (right >= BAR_TOP_LEFT_left) && (BAR_TOP_LEFT_right >= left) && (BAR_TOP_LEFT_high == bottom);
    assign bar_top_right = (right >= BAR_TOP_RIGHT_left) && (BAR_TOP_RIGHT_right >= left) && (BAR_TOP_RIGHT_high == bottom);

    assign bar_mid_left = (right >= BAR_MID_LEFT_left) && (BAR_MID_LEFT_right >= left) && (BAR_MID_LEFT_high == bottom);
    assign bar_mid_mid = (right >= BAR_MID_MID_left) && (BAR_MID_MID_right >= left) && (BAR_MID_MID_high == bottom);
    assign bar_mid_right = (right >= BAR_MID_RIGHT_left) && (BAR_MID_RIGHT_right >= left) && (BAR_MID_RIGHT_high == bottom);

    assign bar_bottom_left = (right >= BAR_BOTTOM_LEFT_left) && (BAR_BOTTOM_LEFT_right >= left) && (BAR_BOTTOM_LEFT_high == bottom);
    assign bar_bottom_right = (right >= BAR_BOTTOM_RIGHT_left) && (BAR_BOTTOM_RIGHT_right >= left) && (BAR_BOTTOM_RIGHT_high == bottom);

    assign ground = real_ground || bar_top_left || bar_top_right 
                 || bar_mid_left || bar_mid_mid || bar_mid_right
                 || bar_bottom_left || bar_bottom_right;

endmodule
