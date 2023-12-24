module game_over_display(
        output [11:0] rgb        ,
        output        on         ,
        input         clk        ,
        input         rst        ,
        input  [9:0]  xg         ,
        input  [9:0]  yg         
);

    // Define image width, height
    parameter WIDTH = 472, HEIGHT = 319;

    // Varible left, top fixed right, bottom
    wire [9:0] left, right;
    wire [9:0] top, bottom;
    assign right = left + WIDTH;
    assign bottom = top + HEIGHT;
    
    // On condition
	assign on = (left <= xg && xg <= right) && (top <= yg && yg <= bottom) && (rgb != 12'h3b9); 

    // Outputs color data for the corresponding pixel
    wire [7:0] x_rom;
    wire [7:0] y_rom;
    assign x_rom = (xg - left) >> 1;
    assign y_rom = (yg - top) >> 1;
    game_over_rom game_over_rom_inst(
            .clk        (clk  ),
            .x          (x_rom),
            .y          (y_rom),
            .color_data (rgb  )
    );

    /*-----------------------------location logic---------------------------------*/
    assign left = 84;
    assign top = 80;

endmodule
