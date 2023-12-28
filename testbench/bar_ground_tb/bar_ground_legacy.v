module bar_ground(
    output      ground ,
    input [9:0] mario_x,
    input [9:0] mario_y
);

// ?™”ë©? ?¬ê¸? ?„¤? •
parameter MAX_X = 640; 
parameter MAX_Y = 480;

//BOTTOM ?˜ ì¢Œí‘œ ?„¤? •
parameter BOTTOM_X_L = 0; 
parameter BOTTOM_X_R = 639;   //Y_SIZE = 480-446
parameter BOTTOM_Y_T = 446;
parameter BOTTOM_Y_B = 479;
 
// TOP_WALL 2ê°œì˜ ì¢Œí‘œ?„¤? •
parameter TOP_WALL0_X_L = 0;
parameter TOP_WALL0_X_R = 279;  // Y_SIZE = 154-138

parameter TOP_WALL1_X_L = 360;
parameter TOP_WALL1_X_R = 480;

parameter TOP_WALL_Y_T = 138;

// MIDDLE_WALL 3ê°œì˜ ì¢Œí‘œ?„¤? •
parameter MIDDLE_WALL0_X_L = 140;
parameter MIDDLE_WALL0_X_R = 500; // Y_SIZE = 256-240
parameter MIDDLE_WALL0_Y_T = 240;


parameter MIDDLE_WALL1_X_L = 0;
parameter MIDDLE_WALL1_X_R = 79; // Y_SIZE = 273-257 

parameter MIDDLE_WALL2_X_L = 560;
parameter MIDDLE_WALL2_X_R = 640;

parameter MIDDLE_WALL_Y_T  = 257;

// BOTTOM_WALL 2ê°œì˜ ì¢Œí‘œ?„¤? •
parameter BOTTOM_WALL0_X_L = 0;
parameter BOTTOM_WALL0_X_R = 218; //Y_SIZE = 359-343

parameter BOTTOM_WALL1_X_L = 421;
parameter BOTTOM_WALL1_X_R = 640;

parameter BOTTOM_WALL_Y_T  = 343;

parameter MARIO_WIDTH = 29, MARIO_HEIGHT = 39;

wire ground_T, ground_B, ground_BB, ground_M1, ground_M0;

// wall bottom
wire [9:0] w_bottom_y_t,w_bottom_y_b,w_bottom0_x_l,w_bottom0_x_r,w_bottom1_x_l,w_bottom1_x_r;
assign w_bottom_y_t  = BOTTOM_WALL_Y_T;
assign w_bottom_y_b  = BOTTOM_WALL_Y_T + 16-1;
assign w_bottom0_x_l = BOTTOM_WALL0_X_L;
assign w_bottom0_x_r = BOTTOM_WALL0_X_R -1;
assign w_bottom1_x_l = BOTTOM_WALL1_X_L;
assign w_bottom1_x_r = BOTTOM_WALL1_X_R -1;

// wall middle
wire [9:0] w_middle0_y_t,w_middle0_y_b,w_middle0_x_l,w_middle0_x_r,
     w_middle_y_t,w_middle_y_b,w_middle1_x_l,w_middle1_x_r,w_middle2_x_l,w_middle2_x_r;
assign w_middle0_y_t = MIDDLE_WALL0_Y_T;
assign w_middle0_y_b = MIDDLE_WALL0_Y_T +16-1;
assign w_middle0_x_l = MIDDLE_WALL0_X_L;
assign w_middle0_x_r = MIDDLE_WALL0_X_R;

assign w_middle_y_t  = MIDDLE_WALL_Y_T;
assign w_middle_y_b  = MIDDLE_WALL_Y_T +16-1;
assign w_middle1_x_l = MIDDLE_WALL1_X_L;
assign w_middle1_x_r = MIDDLE_WALL1_X_R;
assign w_middle2_x_l = MIDDLE_WALL2_X_L;
assign w_middle2_x_r = MIDDLE_WALL2_X_R;

// wall top
wire [9:0] w_top_y_t,w_top_y_b,w_top0_x_l,w_top0_x_r,w_top1_x_l,w_top1_x_r;
assign w_top_y_t  = TOP_WALL_Y_T;
assign w_top_y_b  = TOP_WALL_Y_T+ 16-1;
assign w_top0_x_l = TOP_WALL0_X_L;
assign w_top0_x_r = TOP_WALL0_X_R -1;
assign w_top1_x_l = TOP_WALL1_X_L;
assign w_top1_x_r = TOP_WALL1_X_R -1;

wire [9:0] mario_x_l, mario_x_r, mario_y_t, mario_y_b;

//ë§ˆë¦¬?˜¤
assign mario_x_l = mario_x; //ë§ˆë¦¬?˜¤ left
assign mario_x_r = mario_x + MARIO_WIDTH - 1; //ë§ˆë¦¬?˜¤ right
assign mario_y_t = mario_y; //ë§ˆë¦¬?˜¤ top
assign mario_y_b = mario_y + MARIO_HEIGHT - 1; //ë§ˆë¦¬?˜¤ bottom


assign ground_BB = (mario_y_b == BOTTOM_Y_T)? 1:0;
assign ground_B  = ((mario_y_b >= w_bottom_y_t) && (mario_x_l <= w_bottom0_x_r) || (mario_x_r >= w_bottom1_x_l))? 1:0;
assign ground_M0 = ((mario_y_b >= w_middle0_y_t) && (mario_x_l <= w_middle0_x_r) || (mario_x_r >= w_middle0_x_l))? 1:0;
assign ground_M1 = ((mario_y_b >= w_middle_y_t) && (mario_x_l <= w_middle1_x_r) || (mario_x_r >= w_middle2_x_l))? 1:0;
assign ground_T  = ((mario_y_b >= w_top_y_t) && (mario_x_l <= w_top0_x_r) || (mario_x_r >= w_top1_x_l))? 1:0;


assign ground = ground_T || ground_B || ground_BB || ground_M1 || ground_M0;

endmodule
