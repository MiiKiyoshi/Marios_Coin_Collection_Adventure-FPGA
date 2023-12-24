module top(
    // HDMI
    inout  wire       hdmi_tx_cec   , // CE control bidirectional
    input  wire       hdmi_tx_hpd   , // hot-plug detect
    inout  wire       hdmi_tx_scl   , // DDC bidirectional
    inout  wire       hdmi_tx_sda   , // DDC bidirectional
    output wire       hdmi_tx_clk_n , // HDMI clock differential negative
    output wire       hdmi_tx_clk_p , // HDMI clock differential positive
    output wire [2:0] hdmi_tx_n     , // Three HDMI channels differential negative
    output wire [2:0] hdmi_tx_p     , // Three HDMI channels differential positive

    // Etc
    output wire [3:0] led_out       ,
    input  wire [3:0] sw_in         ,
    input  wire [3:0] btn_in        ,

    // Clk
    input  wire       clk_125mhz    
);

// Reset button (hard rst)
wire rst_btn;
assign rst_btn = sw_in[3];

// Clocking wizard
wire clk_100mhz, locked;
clk_wiz_0 clk_inst(
    .clk_out1 (clk_100mhz),
    .reset    (rst_btn   ),
    .locked   (locked    ),
    .clk_in1  (clk_125mhz)
); 

// Soft rst
wire rst;
assign rst = rst_btn | (~locked); 

// Debounce
wire pix_clk;  // pixel clock
wire [3:0] btn, btn_pulse;
wire [2:0] sw, sw_pulse;
debounce #(.BTN_WIDTH(4)) debounce_btn0_inst_0 (pix_clk, rst, btn_in, btn, btn_pulse);
debounce #(.BTN_WIDTH(3)) debounce_btn0_inst_1 (pix_clk, rst, sw_in[2:0], sw, sw_pulse);

// Switch debugging
assign led_out = {sw_in[3], sw}; 

// HDMI
wire        [23:0] rgb        ;  // color input
wire signed [15:0] sx         ;  // horizontal screen position (signed)
wire signed [15:0] sy         ;  // vertical screen position (signed)
wire               frame_tick ;  // frame start
dvi_top dvi(
     .clk           (clk_100mhz   ), // input                ,clock input (100 MHz)
     .rst           (rst          ), // input                ,reset input
     .rgb           (rgb          ), // input         [23:0] ,color input
     .sx            (sx           ), // output signed [15:0] ,horizontal screen position (signed)
     .sy            (sy           ), // output signed [15:0] ,vertical screen position (signed)
     .frame         (frame_tick   ), // output               ,frame start
     .pix_clk       (pix_clk      ), // output               ,pixel clock   
     .hdmi_tx_cec   (hdmi_tx_cec  ), // inout                ,CE control bidirectional
     .hdmi_tx_hpd   (hdmi_tx_hpd  ), // input                ,hot-plug detect
     .hdmi_tx_rscl  (hdmi_tx_rscl ), // inout                ,DDC bidirectional
     .hdmi_tx_rsda  (hdmi_tx_rsda ), // inout                ,DDC bidirectional
     .hdmi_tx_clk_n (hdmi_tx_clk_n), // output               ,HDMI clock differential negative
     .hdmi_tx_clk_p (hdmi_tx_clk_p), // output               ,HDMI clock differential positive
     .hdmi_tx_n     (hdmi_tx_n    ), // output        [2:0]  ,Three HDMI channels differential negative
     .hdmi_tx_p     (hdmi_tx_p    )  // output        [2:0]  ,Three HDMI channels differential positive
);

// One color for 8bit -> one color for 4bit
wire [11:0] rgb_12bit;
assign rgb = {rgb_12bit[11:8], 4'b0,
              rgb_12bit[7:4] , 4'b0,
              rgb_12bit[3:0] , 4'b0};

mario_brothers mario(
    .rgb        (rgb_12bit ),  // output [11:0] 
    .x          (sx        ),  // input  [9:0]  
    .y          (sy        ),  // input  [9:0]  
    .frame_tick (frame_tick),  // input         
    .btn        (btn       ),  // input  [3:0]  
    .btn_pulse  (btn_pulse ),  // input  [3:0]  
    .sw         (sw        ),  // input  [2:0]  
    .clk        (pix_clk   ),  // input         
    .rst        (rst       )   // input         
);

endmodule
