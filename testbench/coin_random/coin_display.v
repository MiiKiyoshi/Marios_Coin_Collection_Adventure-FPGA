module coin_display(
        output [11:0] rgb        ,
        output        on         ,
        input         reach_coin ,
        input  [9:0]  xg         , 
        input  [9:0]  yg         ,
        input         clk        , 
        input         rst        
);

    // Define image width, height
    parameter WIDTH = 21, HEIGHT = 31;
    parameter WIDTH_M = 27, HEIGHT_M = 31;

    // Varible left, top fixed right, bottom
    reg [9:0] left; 
    reg [9:0] top;
    wire [9:0] right;
    wire [9:0] bottom;
    assign right = left + WIDTH;
    assign bottom = top + HEIGHT;
    
    // On condition
	assign on = (left <= xg && xg <= right) && (top <= yg && yg <= bottom) && (rgb != 12'h3b9);
	
	// Outputs color data for the corresponding pixel
    wire [9:0] x_rom;
    wire [8:0] y_rom;

    assign x_rom = xg - left;
    assign y_rom = yg - top;
    assign rgb = 12'h000;
    
	   /*-----------------------------location logic---------------------------------*/
      
wire [19:0] seed;
wire [2:0] rand_num;
assign seed = 20'h20818;
random random_inst(
    .clk     (clk     ),
    .rst     (rst     ),
    .seed    (seed    ),
    .rand_num(rand_num)
);

parameter COIN_IDLE         = 0,
          COIN_RAND_SAVE    = 1,
          COIN_RAND_COMPARE = 2,
          COIN_POS_UPDATE   = 3;

reg [1:0] coin_st, n_coin_st;

always @(posedge clk or posedge rst) begin
    if(rst) begin
        coin_st <= COIN_IDLE;
    end else begin
        coin_st <= n_coin_st;
    end
end

reg [2:0] rand_ff;
reg [2:0] rand_past;
wire random_not_match;

always @(*) begin
    case(coin_st)
        COIN_IDLE         : n_coin_st = (reach_coin)? COIN_RAND_SAVE : COIN_IDLE;
        COIN_RAND_SAVE    : n_coin_st = COIN_RAND_COMPARE;
        COIN_RAND_COMPARE : n_coin_st = (random_not_match)? COIN_POS_UPDATE : COIN_RAND_SAVE;
        COIN_POS_UPDATE   : n_coin_st = COIN_IDLE;
        default: n_coin_st = COIN_IDLE;
    endcase
end

always @(posedge clk or posedge rst) begin
    if(rst) begin
        rand_ff <= 0;
    end else if(coin_st == COIN_RAND_SAVE) begin
        rand_ff <= rand_num;
    end
end

always @(posedge clk or posedge rst) begin
    if(rst) begin
        rand_past <= 0;
    end else if(coin_st == COIN_POS_UPDATE) begin
        rand_past <= rand_ff;
    end
end

assign random_not_match = (rand_ff != rand_past);

always @(posedge clk or posedge rst) begin
    if (rst) begin
        left <= 109;
        top <= 409;
    end
    else if (coin_st == COIN_POS_UPDATE) begin
        case (rand_ff)
            0 : begin
                left <= 109;
                top <= 409;
            end
            1 : begin
                left <= 440;
                top <= 409;
            end
            2 : begin
                left <= 109;
                top <= 312;
            end
            3 : begin
                left <= 440;
                top <= 312;
            end
            4 : begin
                left <= 0;
                top <= 226;
            end
            5 : begin
                left <= 580;
                top <= 226;
            end
            6 : begin
                left <= 109;
                top <= 107;
            end
            default : begin
                left <= 440;
                top <= 107;
            end
        endcase
    end
end

endmodule
