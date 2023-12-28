module goombas_display(
        output        mario_hit   ,
        input  [9:0]  mario_left  ,
        input  [9:0]  mario_top
);

wire [9:0] goomba1_left, goomba2_left, goomba3_left, goomba4_left, goomba5_left, goomba6_left;
wire [9:0] goomba1_top, goomba2_top, goomba3_top, goomba4_top, goomba5_top, goomba6_top;
wire [9:0] goomba1_right, goomba2_right, goomba3_right, goomba4_right, goomba5_right, goomba6_right;
wire [9:0] goomba1_bottom, goomba2_bottom, goomba3_bottom, goomba4_bottom, goomba5_bottom, goomba6_bottom;

parameter WIDTH = 26, HEIGHT = 27;
parameter WIDTH_M =23, HEIGHT_M = 31; //Mario size
parameter REAL_GROUND = 440;
parameter RIGHT_END = 639;

assign goomba1_left = 200;
assign goomba1_top  = 200;

assign goomba2_left = 250;
assign goomba2_top  = 250;

assign goomba3_left = 300;
assign goomba3_top  = 300;
                         
assign goomba4_left = 350;
assign goomba4_top  = 350;
                         
assign goomba5_left = 400;
assign goomba5_top  = 400;
                         
assign goomba6_left = 450;
assign goomba6_top  = 450;

assign goomba1_right = goomba1_left + WIDTH;
assign goomba1_bottom = goomba1_top + HEIGHT;

assign goomba2_right = goomba2_left + WIDTH;
assign goomba2_bottom = goomba2_top + HEIGHT;

assign goomba3_right = goomba3_left + WIDTH;
assign goomba3_bottom = goomba3_top + HEIGHT;

assign goomba4_right = goomba4_left + WIDTH;
assign goomba4_bottom = goomba4_top + HEIGHT;

assign goomba5_right = goomba5_left + WIDTH;
assign goomba5_bottom = goomba5_top + HEIGHT;

assign goomba6_right = goomba6_left + WIDTH;
assign goomba6_bottom = goomba6_top + HEIGHT;

wire [9:0] mario_right, mario_bottom;
assign mario_right = mario_left + WIDTH_M;
assign mario_bottom = mario_top + HEIGHT_M;

// goomba_hit logic
assign mario_hit = ((goomba1_right >= mario_left && goomba1_left <= mario_right && goomba1_bottom >= mario_top && goomba1_top <= mario_bottom)||
                      (goomba2_right >= mario_left && goomba2_left <= mario_right && goomba2_bottom >= mario_top && goomba2_top <= mario_bottom)||
                      (goomba3_right >= mario_left && goomba3_left <= mario_right && goomba3_bottom >= mario_top && goomba3_top <= mario_bottom)||
                      (goomba4_right >= mario_left && goomba4_left <= mario_right && goomba4_bottom >= mario_top && goomba4_top <= mario_bottom)||
                      (goomba5_right >= mario_left && goomba5_left <= mario_right && goomba5_bottom >= mario_top && goomba5_top <= mario_bottom)||
                      (goomba6_right >= mario_left && goomba6_left <= mario_right && goomba6_bottom >= mario_top && goomba6_top <= mario_bottom)) ? 1 : 0;

endmodule
