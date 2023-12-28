module goombas_display_tb;

    // Inputs
    reg [9:0] mario_left;
    reg [9:0] mario_top;

    // Outputs
    wire mario_hit;

    goombas_display goombas_display_inst(
            .mario_hit  (mario_hit )  ,
            .mario_left (mario_left)  ,
            .mario_top  (mario_top )
    );

    // Stimulus
    initial begin
        // Loop to test different values of mario_left and mario_top
        for (mario_top = 0; mario_top <= 479; mario_top = mario_top + 1) begin
            for (mario_left = 0; mario_left <= 639; mario_left = mario_left + 1) begin
                #1; // Add a delay to observe the outputs
                $display("mario_left = %d, mario_top = %d, mario_hit = %b", mario_left, mario_top, mario_hit);
            end
        end

        // End the simulation
        #10 $finish;
    end

endmodule
