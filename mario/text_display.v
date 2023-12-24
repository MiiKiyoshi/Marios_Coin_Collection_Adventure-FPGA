module text_display(
        output [11:0] rgb         ,
        output        on          ,
        output        game_over   ,
        output        ending      ,
        input         clk         ,
        input         rst         ,
        input  [9:0]  x           ,
        input  [9:0]  y           ,
        input         game_st     ,
        input         mario_hit   ,
        input         reach_coin
);

/*---------------------------------------------------------*/
// hit
/*---------------------------------------------------------*/

reg life_on1_0, life_on2_0, life_on3_0;
reg [1:0] mario_life_st, n_mario_life_st;
parameter LIFE_3_ST = 0, LIFE_2_ST = 1, LIFE_1_ST = 2, DEAD_ST = 3;
parameter PLAY_ST = 1;

assign hit = mario_hit;

always @(posedge clk or posedge rst) begin
    if(rst) begin
        mario_life_st <= LIFE_3_ST;
    end else begin
        mario_life_st <= n_mario_life_st;
    end
end

always @(*) begin
    case(mario_life_st)
        LIFE_3_ST: n_mario_life_st = (hit) ? LIFE_2_ST : LIFE_3_ST;
        LIFE_2_ST: n_mario_life_st = (hit) ? LIFE_1_ST : LIFE_2_ST;
        LIFE_1_ST: n_mario_life_st = (hit) ? DEAD_ST : LIFE_1_ST;
        DEAD_ST: n_mario_life_st = (game_st == PLAY_ST) ? LIFE_3_ST : DEAD_ST;
        default: n_mario_life_st = LIFE_3_ST;
    endcase
end

always @(*) begin
    case(mario_life_st)
        LIFE_3_ST: begin  
            life_on1_0 <=1; life_on2_0 <=1; life_on3_0 <=1;
        end

        LIFE_2_ST: begin  
            life_on1_0 <=1; life_on2_0 <=1; life_on3_0 <=0;
        end

        LIFE_1_ST: begin  
            life_on1_0 <=1; life_on2_0 <=0; life_on3_0 <=0;
        end   
            
        DEAD_ST: begin
            life_on1_0 <=0; life_on2_0 <=0; life_on3_0 <=0;
        end

        default: begin  
            life_on1_0 <=1; life_on2_0 <=1; life_on3_0 <=1;
        end
    endcase
end

wire game_over_0;
assign game_over_0 = (mario_life_st == DEAD_ST);

reg game_over_stable_d;

always @(posedge clk or posedge rst)begin
    if (rst) game_over_stable_d <= 1'b0;
    else game_over_stable_d <= game_over_0; 
end 

assign game_over = game_over_0 & (~game_over_stable_d); 


reg [3:0] dig0, dig1;

always @ (posedge clk or posedge rst) begin
    if(rst) begin
        dig1 <= 0;
        dig0 <= 0;
    end else if (reach_coin) begin 
        if(dig0==9) begin 
            dig0 <= 0;
            if (dig1==9) dig1 <= 0;
            else dig1 <= dig1+1; 
        end else dig0 <= dig0+1;
    end
end

assign ending_0 = (dig1 == 9) && (dig0 == 9);

reg ending_stable_d;
wire ending_0;

always @(posedge clk or posedge rst)begin
    if (rst) ending_stable_d <= 1'b0;
    else ending_stable_d <= ending_0; 
end 

assign ending = ending_0 & (~ending_stable_d); 

/*---------------------------------------------------------*/
// text on screen 
/*---------------------------------------------------------*/

// score region
wire [6:0] char_addr;
reg [6:0] char_addr_s, char_addr_l;
wire [2:0] bit_addr;
reg [2:0] bit_addr_s, bit_addr_l;
wire [3:0] row_addr, row_addr_s, row_addr_l; 

wire score_on, life_on1, life_on2, life_on3;

wire font_bit;
wire [7:0] font_word;
wire [10:0] rom_addr;

font_rom_vhd font_rom_inst (clk, rom_addr, font_word);

assign rom_addr = {char_addr, row_addr};
assign font_bit = font_word[~bit_addr]; 

assign char_addr = (score_on)? char_addr_s : (life_on1)? char_addr_l :(life_on2)? char_addr_l:(life_on3) ?char_addr_l :0;
assign row_addr = (score_on)? row_addr_s : (life_on1)? row_addr_l :  (life_on2)? row_addr_l: (life_on3)? row_addr_l : 0; 
assign bit_addr = (score_on)? bit_addr_s : (life_on1)? bit_addr_l : (life_on2)? bit_addr_l:(life_on3)?bit_addr_l : 0; 
/*---------------------------------------------------------*/

// score (size Xì¶? x2) 
wire [9:0] score_x_l, score_y_t;
assign score_x_l = 0; 
assign score_y_t = 5; 
assign score_on = (y>=score_y_t && y<score_y_t+16 && x>=score_x_l && x<score_x_l+16*8)? 1 : 0; 
assign row_addr_s = y-score_y_t;
always @ (*) begin
    if (x>=score_x_l+16*0 && x<score_x_l+16*1) begin bit_addr_s = (x-score_x_l-16*0)>>1; char_addr_s = 7'b1001101; end // M x77    
    else if (x>=score_x_l+16*1 && x<score_x_l+16*2) begin bit_addr_s = (x-score_x_l-16*1)>>1; char_addr_s = 7'b1000001; end // A x65
     else if (x>=score_x_l+16*2 && x<score_x_l+16*3) begin bit_addr_s = (x-score_x_l-16*2)>>1; char_addr_s = 7'b1010010; end // R x82
      else if (x>=score_x_l+16*3 && x<score_x_l+16*4) begin bit_addr_s = (x-score_x_l-16*3)>>1; char_addr_s = 7'b1001001; end // I x73
       else if (x>=score_x_l+16*4 && x<score_x_l+16*5) begin bit_addr_s = (x-score_x_l-16*4)>>1; char_addr_s = 7'b1001111; end // O x79
       else if (x>=score_x_l+16*5 && x<score_x_l+16*6) begin bit_addr_s = (x-score_x_l-16*5)>>1; char_addr_s = 7'b0111010; end // : x3a
    else if (x>=score_x_l+16*6 && x<score_x_l+16*7) begin bit_addr_s = (x-score_x_l-16*6)>>1; char_addr_s = {3'b011, dig1}; end // digit 10, ASCII ì½”ë“œ?—?„œ ?ˆ«?ž?˜ address?Š” 011ë¡? ?‹œ?ž‘ 
    else if (x>=score_x_l+16*7 && x<score_x_l+16*8) begin bit_addr_s = (x-score_x_l-16*7)>>1; char_addr_s = {3'b011, dig0}; end // digit 1
    else begin bit_addr_s = 0; char_addr_s = 0; end                         
end

wire [9:0] life_x_l, life_y_t; 
assign life_x_l = 200; 
assign life_y_t = 4; 
assign life_on1 = (y>=life_y_t && y<life_y_t+16 && x>=life_x_l && x<life_x_l+16*1 && life_on1_0)? 1 : 0;
assign life_on2 = (y>=life_y_t && y<life_y_t+16 && x>=life_x_l && x<life_x_l+16*2 && life_on2_0)? 1 : 0;
assign life_on3 = (y>=life_y_t && y<life_y_t+16 && x>=life_x_l && x<life_x_l+16*3 && life_on3_0)? 1 : 0;
assign row_addr_l = (y-life_y_t);

always @(*) begin
    if (x>=life_x_l+16*0 && x<life_x_l+16*1) begin bit_addr_l = (x-life_x_l-16*0)>>1; char_addr_l = 7'b0000011; end // ?•˜?Š¸  x03 
    else if (x>=life_x_l+16*1 && x<life_x_l+16*2) begin bit_addr_l = (x-life_x_l-16*1)>>1; char_addr_l = 7'b0000011; end // ?•˜?Š¸  x03 
    else if (x>=life_x_l+16*2 && x<life_x_l+16*3) begin bit_addr_l = (x-life_x_l-16*2)>>1; char_addr_l = 7'b0000011; end // ?•˜?Š¸  x03 
    else begin bit_addr_l = 0; char_addr_l = 0; end   
end 

assign on = (font_bit && score_on) || (font_bit && life_on1) || (font_bit && life_on2) || (font_bit && life_on3);
assign rgb = 12'hf00;

endmodule
