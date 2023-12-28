module bar_ground_tb;

    // Inputs
    reg [9:0] mario_x;
    reg [9:0] mario_y;

    // Outputs
    wire ground;

    // Instantiate the bar_ground module
    bar_ground uut(
        .mario_x(mario_x),
        .mario_y(mario_y),
        .ground(ground)
    );

    // Clock generation
    initial begin
        // No clock is needed for this example
    end

    // Stimulus
    initial begin
        // Loop to test different values of mario_x and mario_y
        for (mario_y = 0; mario_y <= 479; mario_y = mario_y + 1) begin
            for (mario_x = 0; mario_x <= 639; mario_x = mario_x + 1) begin
                #1; // Add a delay to observe the outputs
                $display("mario_x = %d, mario_y = %d, ground = %b", mario_x, mario_y, ground);
            end
        end

        // End the simulation
        #10 $finish;
    end

endmodule
