
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2$
create_project: 2default:default2
00:00:112default:default2
00:00:112default:default2
458.0622default:default2
197.4572default:defaultZ17-268h px� 
�
Command: %s
1870*	planAhead2�
�read_checkpoint -auto_incremental -incremental E:/works/hdl/mario_brothers-FPGA/project-zybo/project.srcs/utils_1/imports/synth_1/top.dcp2default:defaultZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2n
ZE:/works/hdl/mario_brothers-FPGA/project-zybo/project.srcs/utils_1/imports/synth_1/top.dcp2default:defaultZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
p
Command: %s
53*	vivadotcl2?
+synth_design -top top -part xc7z010clg400-12default:defaultZ4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
�
IP '%s' is locked:
%s
1260*coregen2
	clk_wiz_02default:default2�
�* This IP has board specific outputs. Current project board 'digilentinc.com:zybo:part0:2.0' and the board 'unset' used to customize the IP 'clk_wiz_0' do not match.2default:defaultZ19-2162h px�
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7z0102default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7z0102default:defaultZ17-349h px� 
V
Loading part %s157*device2#
xc7z010clg400-12default:defaultZ21-403h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
�
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
22default:defaultZ8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
_
#Helper process launched with PID %s4824*oasys2
81602default:defaultZ8-7075h px� 
�
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2*
gravity_trig_always_on2default:default2
wire2default:default2M
7E:/works/hdl/mario_brothers-FPGA/mario/goomba_display.v2default:default2
1922default:default8@Z8-11241h px� 
�
Pparameter '%s' becomes localparam in '%s' with formal parameter declaration list7326*oasys2
	RIGHT_END2default:default2"
goomba_display2default:default2M
7E:/works/hdl/mario_brothers-FPGA/mario/goomba_display.v2default:default2
212default:default8@Z8-11065h px� 
�
Pparameter '%s' becomes localparam in '%s' with formal parameter declaration list7326*oasys2

BOTTOM_END2default:default2"
goomba_display2default:default2M
7E:/works/hdl/mario_brothers-FPGA/mario/goomba_display.v2default:default2
212default:default8@Z8-11065h px� 
�
Pparameter '%s' becomes localparam in '%s' with formal parameter declaration list7326*oasys2
WIDTH2default:default2"
goomba_display2default:default2M
7E:/works/hdl/mario_brothers-FPGA/mario/goomba_display.v2default:default2
222default:default8@Z8-11065h px� 
�
Pparameter '%s' becomes localparam in '%s' with formal parameter declaration list7326*oasys2
HEIGHT2default:default2"
goomba_display2default:default2M
7E:/works/hdl/mario_brothers-FPGA/mario/goomba_display.v2default:default2
222default:default8@Z8-11065h px� 
�
Pparameter '%s' becomes localparam in '%s' with formal parameter declaration list7326*oasys2 
MOVE_TO_LEFT2default:default2"
goomba_display2default:default2M
7E:/works/hdl/mario_brothers-FPGA/mario/goomba_display.v2default:default2
472default:default8@Z8-11065h px� 
�
Pparameter '%s' becomes localparam in '%s' with formal parameter declaration list7326*oasys2!
MOVE_TO_RIGHT2default:default2"
goomba_display2default:default2M
7E:/works/hdl/mario_brothers-FPGA/mario/goomba_display.v2default:default2
472default:default8@Z8-11065h px� 
�
.identifier '%s' is used before its declaration4750*oasys2
n_left2default:default2M
7E:/works/hdl/mario_brothers-FPGA/mario/goomba_display.v2default:default2
682default:default8@Z8-6901h px� 
�
.identifier '%s' is used before its declaration4750*oasys2
c_left2default:default2M
7E:/works/hdl/mario_brothers-FPGA/mario/goomba_display.v2default:default2
682default:default8@Z8-6901h px� 
�
.identifier '%s' is used before its declaration4750*oasys2
n_left2default:default2M
7E:/works/hdl/mario_brothers-FPGA/mario/goomba_display.v2default:default2
702default:default8@Z8-6901h px� 
�
.identifier '%s' is used before its declaration4750*oasys2
c_left2default:default2M
7E:/works/hdl/mario_brothers-FPGA/mario/goomba_display.v2default:default2
702default:default8@Z8-6901h px� 
�
.identifier '%s' is used before its declaration4750*oasys2
n_left2default:default2M
7E:/works/hdl/mario_brothers-FPGA/mario/goomba_display.v2default:default2
722default:default8@Z8-6901h px� 
�
.identifier '%s' is used before its declaration4750*oasys2
c_left2default:default2M
7E:/works/hdl/mario_brothers-FPGA/mario/goomba_display.v2default:default2
722default:default8@Z8-6901h px� 
�
Pparameter '%s' becomes localparam in '%s' with formal parameter declaration list7326*oasys2 
GROUND_STATE2default:default2"
goomba_display2default:default2M
7E:/works/hdl/mario_brothers-FPGA/mario/goomba_display.v2default:default2
1012default:default8@Z8-11065h px� 
�
Pparameter '%s' becomes localparam in '%s' with formal parameter declaration list7326*oasys2!
GRAVITY_STATE2default:default2"
goomba_display2default:default2M
7E:/works/hdl/mario_brothers-FPGA/mario/goomba_display.v2default:default2
1012default:default8@Z8-11065h px� 
�
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2 
not_play_rst2default:default2
wire2default:default2D
.E:/works/hdl/mario_brothers-FPGA/mario/mario.v2default:default2
232default:default8@Z8-11241h px� 
�
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2
	game_over2default:default2
wire2default:default2D
.E:/works/hdl/mario_brothers-FPGA/mario/mario.v2default:default2
1102default:default8@Z8-11241h px� 
�
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2
ending2default:default2
wire2default:default2D
.E:/works/hdl/mario_brothers-FPGA/mario/mario.v2default:default2
1112default:default8@Z8-11241h px� 
�
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2
game_st2default:default2
wire2default:default2D
.E:/works/hdl/mario_brothers-FPGA/mario/mario.v2default:default2
1162default:default8@Z8-11241h px� 
�
.'%s' is already implicitly declared on line %s5153*oasys2
game_st2default:default2
1162default:default2D
.E:/works/hdl/mario_brothers-FPGA/mario/mario.v2default:default2
1232default:default8@Z8-8895h px� 
�
.'%s' is already implicitly declared on line %s5153*oasys2
	game_over2default:default2
1102default:default2D
.E:/works/hdl/mario_brothers-FPGA/mario/mario.v2default:default2
1332default:default8@Z8-8895h px� 
�
.'%s' is already implicitly declared on line %s5153*oasys2
ending2default:default2
1112default:default2D
.E:/works/hdl/mario_brothers-FPGA/mario/mario.v2default:default2
1332default:default8@Z8-8895h px� 
�
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2"
ending_real_on2default:default2
wire2default:default2D
.E:/works/hdl/mario_brothers-FPGA/mario/mario.v2default:default2
1502default:default8@Z8-11241h px� 
�
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2'
jump_trig_always_on2default:default2
wire2default:default2L
6E:/works/hdl/mario_brothers-FPGA/mario/mario_display.v2default:default2
1552default:default8@Z8-11241h px� 
�
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2*
gravity_trig_always_on2default:default2
wire2default:default2L
6E:/works/hdl/mario_brothers-FPGA/mario/mario_display.v2default:default2
2242default:default8@Z8-11241h px� 
�
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2
x_rom2default:default2
wire2default:default2L
6E:/works/hdl/mario_brothers-FPGA/mario/mario_display.v2default:default2
2872default:default8@Z8-11241h px� 
�
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2
y_rom2default:default2
wire2default:default2L
6E:/works/hdl/mario_brothers-FPGA/mario/mario_display.v2default:default2
2882default:default8@Z8-11241h px� 
�
.'%s' is already implicitly declared on line %s5153*oasys2
x_rom2default:default2
2872default:default2L
6E:/works/hdl/mario_brothers-FPGA/mario/mario_display.v2default:default2
3652default:default8@Z8-8895h px� 
�
.'%s' is already implicitly declared on line %s5153*oasys2
y_rom2default:default2
2882default:default2L
6E:/works/hdl/mario_brothers-FPGA/mario/mario_display.v2default:default2
3782default:default8@Z8-8895h px� 
�
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2
hit2default:default2
wire2default:default2K
5E:/works/hdl/mario_brothers-FPGA/mario/text_display.v2default:default2
242default:default8@Z8-11241h px� 
�
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2
ending_02default:default2
wire2default:default2K
5E:/works/hdl/mario_brothers-FPGA/mario/text_display.v2default:default2
962default:default8@Z8-11241h px� 
�
.'%s' is already implicitly declared on line %s5153*oasys2
ending_02default:default2
962default:default2K
5E:/works/hdl/mario_brothers-FPGA/mario/text_display.v2default:default2
992default:default8@Z8-8895h px� 
�
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2 
hdmi_tx_rscl2default:default2
wire2default:default2<
&E:/works/hdl/mario_brothers-FPGA/top.v2default:default2
632default:default8@Z8-11241h px� 
�
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2 
hdmi_tx_rsda2default:default2
wire2default:default2<
&E:/works/hdl/mario_brothers-FPGA/top.v2default:default2
642default:default8@Z8-11241h px� 
�
%s*synth2�
yStarting RTL Elaboration : Time (s): cpu = 00:00:09 ; elapsed = 00:00:11 . Memory (MB): peak = 1307.398 ; gain = 433.098
2default:defaulth px� 
�
synthesizing module '%s'%s4497*oasys2
top2default:default2
 2default:default2<
&E:/works/hdl/mario_brothers-FPGA/top.v2default:default2
12default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
	clk_wiz_02default:default2
 2default:default2�
yE:/works/hdl/mario_brothers-FPGA/project-zybo/project.runs/synth_1/.Xil/Vivado-20008-miikiyoshi/realtime/clk_wiz_0_stub.v2default:default2
62default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	clk_wiz_02default:default2
 2default:default2
02default:default2
12default:default2�
yE:/works/hdl/mario_brothers-FPGA/project-zybo/project.runs/synth_1/.Xil/Vivado-20008-miikiyoshi/realtime/clk_wiz_0_stub.v2default:default2
62default:default8@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
clk_out22default:default2
	clk_wiz_02default:default2
clk_inst2default:default2<
&E:/works/hdl/mario_brothers-FPGA/top.v2default:default2
272default:default8@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
clk_inst2default:default2
	clk_wiz_02default:default2
52default:default2
42default:default2<
&E:/works/hdl/mario_brothers-FPGA/top.v2default:default2
272default:default8@Z8-7023h px� 
�
synthesizing module '%s'%s4497*oasys2
debounce2default:default2
 2default:default2A
+E:/works/hdl/mario_brothers-FPGA/debounce.v2default:default2
12default:default8@Z8-6157h px� 
^
%s
*synth2F
2	Parameter BTN_WIDTH bound to: 4 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
debounce2default:default2
 2default:default2
02default:default2
12default:default2A
+E:/works/hdl/mario_brothers-FPGA/debounce.v2default:default2
12default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2,
debounce__parameterized02default:default2
 2default:default2A
+E:/works/hdl/mario_brothers-FPGA/debounce.v2default:default2
12default:default8@Z8-6157h px� 
^
%s
*synth2F
2	Parameter BTN_WIDTH bound to: 3 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2,
debounce__parameterized02default:default2
 2default:default2
02default:default2
12default:default2A
+E:/works/hdl/mario_brothers-FPGA/debounce.v2default:default2
12default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
dvi_top2default:default2
 2default:default2E
/E:/works/hdl/mario_brothers-FPGA/hdmi/dvi_top.v2default:default2
12default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2"
display_clocks2default:default2
 2default:default2L
6E:/works/hdl/mario_brothers-FPGA/hdmi/display_clocks.v2default:default2
72default:default8@Z8-6157h px� 
g
%s
*synth2O
;	Parameter MULT_MASTER bound to: 31.500000 - type: double 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter DIV_MASTER bound to: 5 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter DIV_5X bound to: 5.000000 - type: double 
2default:defaulth p
x
� 
\
%s
*synth2D
0	Parameter DIV_1X bound to: 25 - type: integer 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter IN_PERIOD bound to: 10.000000 - type: double 
2default:defaulth p
x
� 
�
synthesizing module '%s'%s4497*oasys2
MMCME2_BASE2default:default2
 2default:default2Q
;E:/tools/Xilinx/Vivado/2023.1/scripts/rt/data/unisim_comp.v2default:default2
804312default:default8@Z8-6157h px� 
e
%s
*synth2M
9	Parameter BANDWIDTH bound to: OPTIMIZED - type: string 
2default:defaulth p
x
� 
k
%s
*synth2S
?	Parameter CLKFBOUT_MULT_F bound to: 31.500000 - type: double 
2default:defaulth p
x
� 
i
%s
*synth2Q
=	Parameter CLKFBOUT_PHASE bound to: 0.000000 - type: double 
2default:defaulth p
x
� 
i
%s
*synth2Q
=	Parameter CLKIN1_PERIOD bound to: 10.000000 - type: double 
2default:defaulth p
x
� 
k
%s
*synth2S
?	Parameter CLKOUT0_DIVIDE_F bound to: 5.000000 - type: double 
2default:defaulth p
x
� 
m
%s
*synth2U
A	Parameter CLKOUT0_DUTY_CYCLE bound to: 0.500000 - type: double 
2default:defaulth p
x
� 
h
%s
*synth2P
<	Parameter CLKOUT0_PHASE bound to: 0.000000 - type: double 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter CLKOUT1_DIVIDE bound to: 25 - type: integer 
2default:defaulth p
x
� 
m
%s
*synth2U
A	Parameter CLKOUT1_DUTY_CYCLE bound to: 0.500000 - type: double 
2default:defaulth p
x
� 
h
%s
*synth2P
<	Parameter CLKOUT1_PHASE bound to: 0.000000 - type: double 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter CLKOUT2_DIVIDE bound to: 1 - type: integer 
2default:defaulth p
x
� 
m
%s
*synth2U
A	Parameter CLKOUT2_DUTY_CYCLE bound to: 0.500000 - type: double 
2default:defaulth p
x
� 
h
%s
*synth2P
<	Parameter CLKOUT2_PHASE bound to: 0.000000 - type: double 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter CLKOUT3_DIVIDE bound to: 1 - type: integer 
2default:defaulth p
x
� 
m
%s
*synth2U
A	Parameter CLKOUT3_DUTY_CYCLE bound to: 0.500000 - type: double 
2default:defaulth p
x
� 
h
%s
*synth2P
<	Parameter CLKOUT3_PHASE bound to: 0.000000 - type: double 
2default:defaulth p
x
� 
g
%s
*synth2O
;	Parameter CLKOUT4_CASCADE bound to: FALSE - type: string 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter CLKOUT4_DIVIDE bound to: 1 - type: integer 
2default:defaulth p
x
� 
m
%s
*synth2U
A	Parameter CLKOUT4_DUTY_CYCLE bound to: 0.500000 - type: double 
2default:defaulth p
x
� 
h
%s
*synth2P
<	Parameter CLKOUT4_PHASE bound to: 0.000000 - type: double 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter CLKOUT5_DIVIDE bound to: 1 - type: integer 
2default:defaulth p
x
� 
m
%s
*synth2U
A	Parameter CLKOUT5_DUTY_CYCLE bound to: 0.500000 - type: double 
2default:defaulth p
x
� 
h
%s
*synth2P
<	Parameter CLKOUT5_PHASE bound to: 0.000000 - type: double 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter CLKOUT6_DIVIDE bound to: 1 - type: integer 
2default:defaulth p
x
� 
m
%s
*synth2U
A	Parameter CLKOUT6_DUTY_CYCLE bound to: 0.500000 - type: double 
2default:defaulth p
x
� 
h
%s
*synth2P
<	Parameter CLKOUT6_PHASE bound to: 0.000000 - type: double 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter DIVCLK_DIVIDE bound to: 5 - type: integer 
2default:defaulth p
x
� 
f
%s
*synth2N
:	Parameter REF_JITTER1 bound to: 0.010000 - type: double 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter STARTUP_WAIT bound to: FALSE - type: string 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
MMCME2_BASE2default:default2
 2default:default2
02default:default2
12default:default2Q
;E:/tools/Xilinx/Vivado/2023.1/scripts/rt/data/unisim_comp.v2default:default2
804312default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
BUFG2default:default2
 2default:default2Q
;E:/tools/Xilinx/Vivado/2023.1/scripts/rt/data/unisim_comp.v2default:default2
15192default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
BUFG2default:default2
 2default:default2
02default:default2
12default:default2Q
;E:/tools/Xilinx/Vivado/2023.1/scripts/rt/data/unisim_comp.v2default:default2
15192default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
display_clocks2default:default2
 2default:default2
02default:default2
12default:default2L
6E:/works/hdl/mario_brothers-FPGA/hdmi/display_clocks.v2default:default2
72default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2#
display_timings2default:default2
 2default:default2M
7E:/works/hdl/mario_brothers-FPGA/hdmi/display_timings.v2default:default2
72default:default8@Z8-6157h px� 
\
%s
*synth2D
0	Parameter H_RES bound to: 640 - type: integer 
2default:defaulth p
x
� 
\
%s
*synth2D
0	Parameter V_RES bound to: 480 - type: integer 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	Parameter H_FP bound to: 16 - type: integer 
2default:defaulth p
x
� 
\
%s
*synth2D
0	Parameter H_SYNC bound to: 96 - type: integer 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	Parameter H_BP bound to: 48 - type: integer 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	Parameter V_FP bound to: 10 - type: integer 
2default:defaulth p
x
� 
[
%s
*synth2C
/	Parameter V_SYNC bound to: 2 - type: integer 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	Parameter V_BP bound to: 33 - type: integer 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	Parameter H_POL bound to: 0 - type: integer 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	Parameter V_POL bound to: 0 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2#
display_timings2default:default2
 2default:default2
02default:default2
12default:default2M
7E:/works/hdl/mario_brothers-FPGA/hdmi/display_timings.v2default:default2
72default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2!
dvi_generator2default:default2
 2default:default2K
5E:/works/hdl/mario_brothers-FPGA/hdmi/dvi_generator.v2default:default2
52default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2$
tmds_encoder_dvi2default:default2
 2default:default2N
8E:/works/hdl/mario_brothers-FPGA/hdmi/tmds_encoder_dvi.v2default:default2
52default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2$
tmds_encoder_dvi2default:default2
 2default:default2
02default:default2
12default:default2N
8E:/works/hdl/mario_brothers-FPGA/hdmi/tmds_encoder_dvi.v2default:default2
52default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
async_reset2default:default2
 2default:default2I
3E:/works/hdl/mario_brothers-FPGA/hdmi/async_reset.v2default:default2
52default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
async_reset2default:default2
 2default:default2
02default:default2
12default:default2I
3E:/works/hdl/mario_brothers-FPGA/hdmi/async_reset.v2default:default2
52default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2$
serializer_10to12default:default2
 2default:default2N
8E:/works/hdl/mario_brothers-FPGA/hdmi/serializer_10to1.v2default:default2
52default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
	OSERDESE22default:default2
 2default:default2Q
;E:/tools/Xilinx/Vivado/2023.1/scripts/rt/data/unisim_comp.v2default:default2
953722default:default8@Z8-6157h px� 
b
%s
*synth2J
6	Parameter DATA_RATE_OQ bound to: DDR - type: string 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter DATA_RATE_TQ bound to: SDR - type: string 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter DATA_WIDTH bound to: 10 - type: integer 
2default:defaulth p
x
� 
O
%s
*synth27
#	Parameter INIT_OQ bound to: 1'b1 
2default:defaulth p
x
� 
O
%s
*synth27
#	Parameter INIT_TQ bound to: 1'b1 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter SERDES_MODE bound to: MASTER - type: string 
2default:defaulth p
x
� 
P
%s
*synth28
$	Parameter SRVAL_OQ bound to: 1'b0 
2default:defaulth p
x
� 
P
%s
*synth28
$	Parameter SRVAL_TQ bound to: 1'b0 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter TBYTE_CTL bound to: FALSE - type: string 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter TBYTE_SRC bound to: FALSE - type: string 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter TRISTATE_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	OSERDESE22default:default2
 2default:default2
02default:default2
12default:default2Q
;E:/tools/Xilinx/Vivado/2023.1/scripts/rt/data/unisim_comp.v2default:default2
953722default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2-
OSERDESE2__parameterized02default:default2
 2default:default2Q
;E:/tools/Xilinx/Vivado/2023.1/scripts/rt/data/unisim_comp.v2default:default2
953722default:default8@Z8-6157h px� 
b
%s
*synth2J
6	Parameter DATA_RATE_OQ bound to: DDR - type: string 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter DATA_RATE_TQ bound to: SDR - type: string 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter DATA_WIDTH bound to: 10 - type: integer 
2default:defaulth p
x
� 
O
%s
*synth27
#	Parameter INIT_OQ bound to: 1'b1 
2default:defaulth p
x
� 
O
%s
*synth27
#	Parameter INIT_TQ bound to: 1'b1 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter SERDES_MODE bound to: SLAVE - type: string 
2default:defaulth p
x
� 
P
%s
*synth28
$	Parameter SRVAL_OQ bound to: 1'b0 
2default:defaulth p
x
� 
P
%s
*synth28
$	Parameter SRVAL_TQ bound to: 1'b0 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter TBYTE_CTL bound to: FALSE - type: string 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter TBYTE_SRC bound to: FALSE - type: string 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter TRISTATE_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2-
OSERDESE2__parameterized02default:default2
 2default:default2
02default:default2
12default:default2Q
;E:/tools/Xilinx/Vivado/2023.1/scripts/rt/data/unisim_comp.v2default:default2
953722default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2$
serializer_10to12default:default2
 2default:default2
02default:default2
12default:default2N
8E:/works/hdl/mario_brothers-FPGA/hdmi/serializer_10to1.v2default:default2
52default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
dvi_generator2default:default2
 2default:default2
02default:default2
12default:default2K
5E:/works/hdl/mario_brothers-FPGA/hdmi/dvi_generator.v2default:default2
52default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
OBUFDS2default:default2
 2default:default2Q
;E:/tools/Xilinx/Vivado/2023.1/scripts/rt/data/unisim_comp.v2default:default2
911352default:default8@Z8-6157h px� 
d
%s
*synth2L
8	Parameter IOSTANDARD bound to: TMDS_33 - type: string 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
OBUFDS2default:default2
 2default:default2
02default:default2
12default:default2Q
;E:/tools/Xilinx/Vivado/2023.1/scripts/rt/data/unisim_comp.v2default:default2
911352default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
dvi_top2default:default2
 2default:default2
02default:default2
12default:default2E
/E:/works/hdl/mario_brothers-FPGA/hdmi/dvi_top.v2default:default2
12default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2"
mario_brothers2default:default2
 2default:default2D
.E:/works/hdl/mario_brothers-FPGA/mario/mario.v2default:default2
12default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2!
mario_display2default:default2
 2default:default2L
6E:/works/hdl/mario_brothers-FPGA/mario/mario_display.v2default:default2
12default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2$
mario_bar_ground2default:default2
 2default:default2O
9E:/works/hdl/mario_brothers-FPGA/mario/mario_bar_ground.v2default:default2
12default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2$
mario_bar_ground2default:default2
 2default:default2
02default:default2
12default:default2O
9E:/works/hdl/mario_brothers-FPGA/mario/mario_bar_ground.v2default:default2
12default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2/
size_varible_gen_counter_en2default:default2
 2default:default2X
BE:/works/hdl/mario_brothers-FPGA/mario/size_varible_gen_count_en.v2default:default2
12default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2/
size_varible_gen_counter_en2default:default2
 2default:default2
02default:default2
12default:default2X
BE:/works/hdl/mario_brothers-FPGA/mario/size_varible_gen_count_en.v2default:default2
12default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2%
mario_rom_jumping2default:default2
 2default:default2P
:E:/works/hdl/mario_brothers-FPGA/mario/mario_rom_jumping.v2default:default2
12default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2%
mario_rom_jumping2default:default2
 2default:default2
02default:default2
12default:default2P
:E:/works/hdl/mario_brothers-FPGA/mario/mario_rom_jumping.v2default:default2
12default:default8@Z8-6155h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
62default:default2
x2default:default2
52default:default2%
mario_rom_jumping2default:default2L
6E:/works/hdl/mario_brothers-FPGA/mario/mario_display.v2default:default2
2872default:default8@Z8-689h px� 
�
synthesizing module '%s'%s4497*oasys2&
mario_rom_walking12default:default2
 2default:default2Q
;E:/works/hdl/mario_brothers-FPGA/mario/mario_rom_walking1.v2default:default2
12default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2&
mario_rom_walking12default:default2
 2default:default2
02default:default2
12default:default2Q
;E:/works/hdl/mario_brothers-FPGA/mario/mario_rom_walking1.v2default:default2
12default:default8@Z8-6155h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
62default:default2
x2default:default2
52default:default2&
mario_rom_walking12default:default2L
6E:/works/hdl/mario_brothers-FPGA/mario/mario_display.v2default:default2
2942default:default8@Z8-689h px� 
�
synthesizing module '%s'%s4497*oasys2&
mario_rom_walking22default:default2
 2default:default2Q
;E:/works/hdl/mario_brothers-FPGA/mario/mario_rom_walking2.v2default:default2
12default:default8@Z8-6157h px� 
�
default block is never used226*oasys2Q
;E:/works/hdl/mario_brothers-FPGA/mario/mario_rom_walking2.v2default:default2
202default:default8@Z8-226h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2&
mario_rom_walking22default:default2
 2default:default2
02default:default2
12default:default2Q
;E:/works/hdl/mario_brothers-FPGA/mario/mario_rom_walking2.v2default:default2
12default:default8@Z8-6155h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
62default:default2
x2default:default2
52default:default2&
mario_rom_walking22default:default2L
6E:/works/hdl/mario_brothers-FPGA/mario/mario_display.v2default:default2
3012default:default8@Z8-689h px� 
�
synthesizing module '%s'%s4497*oasys2&
mario_rom_standing2default:default2
 2default:default2Q
;E:/works/hdl/mario_brothers-FPGA/mario/mario_rom_standing.v2default:default2
12default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2&
mario_rom_standing2default:default2
 2default:default2
02default:default2
12default:default2Q
;E:/works/hdl/mario_brothers-FPGA/mario/mario_rom_standing.v2default:default2
12default:default8@Z8-6155h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
62default:default2
x2default:default2
52default:default2&
mario_rom_standing2default:default2L
6E:/works/hdl/mario_brothers-FPGA/mario/mario_display.v2default:default2
3082default:default8@Z8-689h px� 
�
synthesizing module '%s'%s4497*oasys2"
gen_counter_en2default:default2
 2default:default2M
7E:/works/hdl/mario_brothers-FPGA/mario/gen_counter_en.v2default:default2
12default:default8@Z8-6157h px� 
_
%s
*synth2G
3	Parameter SIZE bound to: 3000000 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
gen_counter_en2default:default2
 2default:default2
02default:default2
12default:default2M
7E:/works/hdl/mario_brothers-FPGA/mario/gen_counter_en.v2default:default2
12default:default8@Z8-6155h px� 
�
default block is never used226*oasys2L
6E:/works/hdl/mario_brothers-FPGA/mario/mario_display.v2default:default2
3572default:default8@Z8-226h px� 
�
default block is never used226*oasys2L
6E:/works/hdl/mario_brothers-FPGA/mario/mario_display.v2default:default2
3712default:default8@Z8-226h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
mario_display2default:default2
 2default:default2
02default:default2
12default:default2L
6E:/works/hdl/mario_brothers-FPGA/mario/mario_display.v2default:default2
12default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2#
goombas_display2default:default2
 2default:default2N
8E:/works/hdl/mario_brothers-FPGA/mario/goombas_display.v2default:default2
12default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys22
gen_counter_en__parameterized02default:default2
 2default:default2M
7E:/works/hdl/mario_brothers-FPGA/mario/gen_counter_en.v2default:default2
12default:default8@Z8-6157h px� 
`
%s
*synth2H
4	Parameter SIZE bound to: 50350000 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys22
gen_counter_en__parameterized02default:default2
 2default:default2
02default:default2
12default:default2M
7E:/works/hdl/mario_brothers-FPGA/mario/gen_counter_en.v2default:default2
12default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2"
goomba_display2default:default2
 2default:default2M
7E:/works/hdl/mario_brothers-FPGA/mario/goomba_display.v2default:default2
22default:default8@Z8-6157h px� 
i
%s
*synth2Q
=	Parameter GOOMBA_INITIAL_LEFT bound to: 25 - type: integer 
2default:defaulth p
x
� 
h
%s
*synth2P
<	Parameter GOOMBA_INITIAL_TOP bound to: 35 - type: integer 
2default:defaulth p
x
� 
h
%s
*synth2P
<	Parameter GOOMBA_INITIAL_MOVE bound to: 1 - type: integer 
2default:defaulth p
x
� 
�
synthesizing module '%s'%s4497*oasys2

goomba_rom2default:default2
 2default:default2I
3E:/works/hdl/mario_brothers-FPGA/mario/goomba_rom.v2default:default2
12default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

goomba_rom2default:default2
 2default:default2
02default:default2
12default:default2I
3E:/works/hdl/mario_brothers-FPGA/mario/goomba_rom.v2default:default2
12default:default8@Z8-6155h px� 
�
default block is never used226*oasys2M
7E:/works/hdl/mario_brothers-FPGA/mario/goomba_display.v2default:default2
592default:default8@Z8-226h px� 
�
synthesizing module '%s'%s4497*oasys2%
goomba_bar_ground2default:default2
 2default:default2P
:E:/works/hdl/mario_brothers-FPGA/mario/goomba_bar_ground.v2default:default2
12default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2%
goomba_bar_ground2default:default2
 2default:default2
02default:default2
12default:default2P
:E:/works/hdl/mario_brothers-FPGA/mario/goomba_bar_ground.v2default:default2
12default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
goomba_display2default:default2
 2default:default2
02default:default2
12default:default2M
7E:/works/hdl/mario_brothers-FPGA/mario/goomba_display.v2default:default2
22default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys22
goomba_display__parameterized02default:default2
 2default:default2M
7E:/works/hdl/mario_brothers-FPGA/mario/goomba_display.v2default:default2
22default:default8@Z8-6157h px� 
j
%s
*synth2R
>	Parameter GOOMBA_INITIAL_LEFT bound to: 589 - type: integer 
2default:defaulth p
x
� 
h
%s
*synth2P
<	Parameter GOOMBA_INITIAL_TOP bound to: 35 - type: integer 
2default:defaulth p
x
� 
h
%s
*synth2P
<	Parameter GOOMBA_INITIAL_MOVE bound to: 0 - type: integer 
2default:defaulth p
x
� 
�
default block is never used226*oasys2M
7E:/works/hdl/mario_brothers-FPGA/mario/goomba_display.v2default:default2
592default:default8@Z8-226h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys22
goomba_display__parameterized02default:default2
 2default:default2
02default:default2
12default:default2M
7E:/works/hdl/mario_brothers-FPGA/mario/goomba_display.v2default:default2
22default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2#
goombas_display2default:default2
 2default:default2
02default:default2
12default:default2N
8E:/works/hdl/mario_brothers-FPGA/mario/goombas_display.v2default:default2
12default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2 
coin_display2default:default2
 2default:default2K
5E:/works/hdl/mario_brothers-FPGA/mario/coin_display.v2default:default2
12default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
coin_rom2default:default2
 2default:default2G
1E:/works/hdl/mario_brothers-FPGA/mario/coin_rom.v2default:default2
12default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
coin_rom2default:default2
 2default:default2
02default:default2
12default:default2G
1E:/works/hdl/mario_brothers-FPGA/mario/coin_rom.v2default:default2
12default:default8@Z8-6155h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
102default:default2
x2default:default2
52default:default2
coin_rom2default:default2K
5E:/works/hdl/mario_brothers-FPGA/mario/coin_display.v2default:default2
562default:default8@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
92default:default2
y2default:default2
52default:default2
coin_rom2default:default2K
5E:/works/hdl/mario_brothers-FPGA/mario/coin_display.v2default:default2
572default:default8@Z8-689h px� 
�
synthesizing module '%s'%s4497*oasys2
random2default:default2
 2default:default2E
/E:/works/hdl/mario_brothers-FPGA/mario/random.v2default:default2
12default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
random2default:default2
 2default:default2
02default:default2
12default:default2E
/E:/works/hdl/mario_brothers-FPGA/mario/random.v2default:default2
12default:default8@Z8-6155h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
32default:default2
rand_num2default:default2
42default:default2
random2default:default2K
5E:/works/hdl/mario_brothers-FPGA/mario/coin_display.v2default:default2
712default:default8@Z8-689h px� 
�
default block is never used226*oasys2K
5E:/works/hdl/mario_brothers-FPGA/mario/coin_display.v2default:default2
942default:default8@Z8-226h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2 
coin_display2default:default2
 2default:default2
02default:default2
12default:default2K
5E:/works/hdl/mario_brothers-FPGA/mario/coin_display.v2default:default2
12default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2&
background_display2default:default2
 2default:default2Q
;E:/works/hdl/mario_brothers-FPGA/mario/background_display.v2default:default2
12default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2"
background_rom2default:default2
 2default:default2M
7E:/works/hdl/mario_brothers-FPGA/mario/background_rom.v2default:default2
12default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
background_rom2default:default2
 2default:default2
02default:default2
12default:default2M
7E:/works/hdl/mario_brothers-FPGA/mario/background_rom.v2default:default2
12default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2&
background_display2default:default2
 2default:default2
02default:default2
12default:default2Q
;E:/works/hdl/mario_brothers-FPGA/mario/background_display.v2default:default2
12default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2!
intro_display2default:default2
 2default:default2L
6E:/works/hdl/mario_brothers-FPGA/mario/intro_display.v2default:default2
22default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
	intro_rom2default:default2
 2default:default2H
2E:/works/hdl/mario_brothers-FPGA/mario/intro_rom.v2default:default2
12default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	intro_rom2default:default2
 2default:default2
02default:default2
12default:default2H
2E:/works/hdl/mario_brothers-FPGA/mario/intro_rom.v2default:default2
12default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
intro_display2default:default2
 2default:default2
02default:default2
12default:default2L
6E:/works/hdl/mario_brothers-FPGA/mario/intro_display.v2default:default2
22default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2%
game_over_display2default:default2
 2default:default2P
:E:/works/hdl/mario_brothers-FPGA/mario/game_over_display.v2default:default2
12default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2!
game_over_rom2default:default2
 2default:default2L
6E:/works/hdl/mario_brothers-FPGA/mario/game_over_rom.v2default:default2
12default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
game_over_rom2default:default2
 2default:default2
02default:default2
12default:default2L
6E:/works/hdl/mario_brothers-FPGA/mario/game_over_rom.v2default:default2
12default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2%
game_over_display2default:default2
 2default:default2
02default:default2
12default:default2P
:E:/works/hdl/mario_brothers-FPGA/mario/game_over_display.v2default:default2
12default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2"
ending_display2default:default2
 2default:default2M
7E:/works/hdl/mario_brothers-FPGA/mario/ending_display.v2default:default2
12default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2

ending_rom2default:default2
 2default:default2I
3E:/works/hdl/mario_brothers-FPGA/mario/ending_rom.v2default:default2
12default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

ending_rom2default:default2
 2default:default2
02default:default2
12default:default2I
3E:/works/hdl/mario_brothers-FPGA/mario/ending_rom.v2default:default2
12default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
ending_display2default:default2
 2default:default2
02default:default2
12default:default2M
7E:/works/hdl/mario_brothers-FPGA/mario/ending_display.v2default:default2
12default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2 
text_display2default:default2
 2default:default2K
5E:/works/hdl/mario_brothers-FPGA/mario/text_display.v2default:default2
12default:default8@Z8-6157h px� 
�
default block is never used226*oasys2K
5E:/works/hdl/mario_brothers-FPGA/mario/text_display.v2default:default2
352default:default8@Z8-226h px� 
�
default block is never used226*oasys2K
5E:/works/hdl/mario_brothers-FPGA/mario/text_display.v2default:default2
452default:default8@Z8-226h px� 
�
synthesizing module '%s'638*oasys2 
font_rom_vhd2default:default2I
3E:/works/hdl/mario_brothers-FPGA/mario/font_rom.vhd2default:default2
212default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2 
font_rom_vhd2default:default2
02default:default2
12default:default2I
3E:/works/hdl/mario_brothers-FPGA/mario/font_rom.vhd2default:default2
212default:default8@Z8-256h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2 
text_display2default:default2
 2default:default2
02default:default2
12default:default2K
5E:/works/hdl/mario_brothers-FPGA/mario/text_display.v2default:default2
12default:default8@Z8-6155h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
22default:default2
game_st2default:default2
12default:default2 
text_display2default:default2D
.E:/works/hdl/mario_brothers-FPGA/mario/mario.v2default:default2
1162default:default8@Z8-689h px� 
�
default block is never used226*oasys2D
.E:/works/hdl/mario_brothers-FPGA/mario/mario.v2default:default2
1352default:default8@Z8-226h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
mario_brothers2default:default2
 2default:default2
02default:default2
12default:default2D
.E:/works/hdl/mario_brothers-FPGA/mario/mario.v2default:default2
12default:default8@Z8-6155h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
162default:default2
x2default:default2
102default:default2"
mario_brothers2default:default2<
&E:/works/hdl/mario_brothers-FPGA/top.v2default:default2
792default:default8@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
162default:default2
y2default:default2
102default:default2"
mario_brothers2default:default2<
&E:/works/hdl/mario_brothers-FPGA/top.v2default:default2
802default:default8@Z8-689h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
top2default:default2
 2default:default2
02default:default2
12default:default2<
&E:/works/hdl/mario_brothers-FPGA/top.v2default:default2
12default:default8@Z8-6155h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
clk2default:default2 
font_rom_vhd2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
rst2default:default2"
ending_display2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
rst2default:default2%
game_over_display2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
rst2default:default2!
intro_display2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
rst2default:default2&
background_display2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
btn[0]2default:default2"
mario_brothers2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2 
btn_pulse[3]2default:default2"
mario_brothers2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2 
btn_pulse[2]2default:default2"
mario_brothers2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2 
btn_pulse[1]2default:default2"
mario_brothers2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[2]2default:default2"
mario_brothers2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[1]2default:default2"
mario_brothers2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
hdmi_tx_cec2default:default2
dvi_top2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2 
hdmi_tx_rsda2default:default2
dvi_top2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
hdmi_tx_hpd2default:default2
dvi_top2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
hdmi_tx_scl2default:default2
top2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
hdmi_tx_sda2default:default2
top2default:defaultZ8-7129h px� 
�
%s*synth2�
yFinished RTL Elaboration : Time (s): cpu = 00:00:19 ; elapsed = 00:00:22 . Memory (MB): peak = 1572.895 ; gain = 698.594
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:19 ; elapsed = 00:00:22 . Memory (MB): peak = 1572.895 ; gain = 698.594
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:19 ; elapsed = 00:00:22 . Memory (MB): peak = 1572.895 ; gain = 698.594
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0792default:default2
1572.8952default:default2
0.0002default:defaultZ17-268h px� 
e
-Analyzing %s Unisim elements for replacement
17*netlist2
52default:defaultZ29-17h px� 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
se:/works/hdl/mario_brothers-FPGA/project-zybo/project.gen/sources_1/ip/clk_wiz_0/clk_wiz_0/clk_wiz_0_in_context.xdc2default:default2
clk_inst	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
se:/works/hdl/mario_brothers-FPGA/project-zybo/project.gen/sources_1/ip/clk_wiz_0/clk_wiz_0/clk_wiz_0_in_context.xdc2default:default2
clk_inst	2default:default8Z20-847h px� 

Parsing XDC File [%s]
179*designutils2>
(E:/works/hdl/mario_brothers-FPGA/top.xdc2default:default8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2>
(E:/works/hdl/mario_brothers-FPGA/top.xdc2default:default8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2<
(E:/works/hdl/mario_brothers-FPGA/top.xdc2default:default2)
.Xil/top_propImpl.xdc2default:defaultZ1-236h px� 
�
Parsing XDC File [%s]
179*designutils2g
QE:/works/hdl/mario_brothers-FPGA/project-zybo/project.runs/synth_1/dont_touch.xdc2default:default8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2g
QE:/works/hdl/mario_brothers-FPGA/project-zybo/project.runs/synth_1/dont_touch.xdc2default:default8Z20-178h px� 
8
Deriving generated clocks
2*timingZ38-2h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0022default:default2
1668.4412default:default2
0.0002default:defaultZ17-268h px� 
�
!Unisim Transformation Summary:
%s111*project2h
T  A total of 1 instances were transformed.
  MMCME2_BASE => MMCME2_ADV: 1 instance 
2default:defaultZ1-111h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.0482default:default2
1668.4412default:default2
0.0002default:defaultZ17-268h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
Finished Constraint Validation : Time (s): cpu = 00:00:32 ; elapsed = 00:00:38 . Memory (MB): peak = 1668.441 ; gain = 794.141
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Loading part: xc7z010clg400-1
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:32 ; elapsed = 00:00:38 . Memory (MB): peak = 1668.441 ; gain = 794.141
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:32 ; elapsed = 00:00:38 . Memory (MB): peak = 1668.441 ; gain = 794.141
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2*
mario_y_move_state_reg2default:default2!
mario_display2default:defaultZ8-802h px� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2
coin_st_reg2default:default2 
coin_display2default:defaultZ8-802h px� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2%
mario_life_st_reg2default:default2 
text_display2default:defaultZ8-802h px� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2
game_st_reg2default:default2"
mario_brothers2default:defaultZ8-802h px� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2s
_               COIN_IDLE |                             0001 |                               00
2default:defaulth p
x
� 
�
%s
*synth2s
_          COIN_RAND_SAVE |                             0010 |                               01
2default:defaulth p
x
� 
�
%s
*synth2s
_       COIN_RAND_COMPARE |                             0100 |                               10
2default:defaulth p
x
� 
�
%s
*synth2s
_         COIN_POS_UPDATE |                             1000 |                               11
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
coin_st_reg2default:default2
one-hot2default:default2 
coin_display2default:defaultZ8-3354h px� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2s
_               LIFE_3_ST |                               00 |                               00
2default:defaulth p
x
� 
�
%s
*synth2s
_               LIFE_2_ST |                               01 |                               01
2default:defaulth p
x
� 
�
%s
*synth2s
_               LIFE_1_ST |                               10 |                               10
2default:defaulth p
x
� 
�
%s
*synth2s
_                 DEAD_ST |                               11 |                               11
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2%
mario_life_st_reg2default:default2

sequential2default:default2 
text_display2default:defaultZ8-3354h px� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2s
_                INTRO_ST |                               00 |                               00
2default:defaulth p
x
� 
�
%s
*synth2s
_                 PLAY_ST |                               01 |                               01
2default:defaulth p
x
� 
�
%s
*synth2s
_             GAMEOVER_ST |                               10 |                               10
2default:defaulth p
x
� 
�
%s
*synth2s
_               ENDING_ST |                               11 |                               11
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
game_st_reg2default:default2

sequential2default:default2"
mario_brothers2default:defaultZ8-3354h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:43 ; elapsed = 00:00:50 . Memory (MB): peak = 1668.441 ; gain = 794.141
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   32 Bit       Adders := 21    
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   16 Bit       Adders := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   10 Bit       Adders := 59    
2default:defaulth p
x
� 
X
%s
*synth2@
,	   3 Input   10 Bit       Adders := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   3 Input    9 Bit       Adders := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    7 Bit       Adders := 4     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   3 Input    6 Bit       Adders := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    6 Bit       Adders := 3     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   8 Input    5 Bit       Adders := 3     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    5 Bit       Adders := 4     
2default:defaulth p
x
� 
X
%s
*synth2@
,	  10 Input    5 Bit       Adders := 3     
2default:defaulth p
x
� 
X
%s
*synth2@
,	  12 Input    5 Bit       Adders := 3     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   4 Input    5 Bit       Adders := 6     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   3 Input    5 Bit       Adders := 13    
2default:defaulth p
x
� 
X
%s
*synth2@
,	   8 Input    4 Bit       Adders := 3     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    4 Bit       Adders := 4     
2default:defaulth p
x
� 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit         XORs := 44    
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               32 Bit    Registers := 10    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               20 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               17 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               16 Bit    Registers := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               10 Bit    Registers := 30    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                6 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                5 Bit    Registers := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                4 Bit    Registers := 6     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                3 Bit    Registers := 6     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                2 Bit    Registers := 8     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 13    
2default:defaulth p
x
� 
8
%s
*synth2 
+---ROMs : 
2default:defaulth p
x
� 
P
%s
*synth28
$	                    ROMs := 15    
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   32 Bit        Muxes := 10    
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   20 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   16 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   4 Input   12 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   12 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   5 Input   10 Bit        Muxes := 6     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   10 Bit        Muxes := 9     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   8 Input   10 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   8 Input    9 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    7 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    6 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    5 Bit        Muxes := 12    
2default:defaulth p
x
� 
X
%s
*synth2@
,	   4 Input    4 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    4 Bit        Muxes := 4     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   5 Input    4 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    3 Bit        Muxes := 9     
2default:defaulth p
x
� 
X
%s
*synth2@
,	  41 Input    3 Bit        Muxes := 2     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   4 Input    2 Bit        Muxes := 5     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    2 Bit        Muxes := 25    
2default:defaulth p
x
� 
X
%s
*synth2@
,	  41 Input    2 Bit        Muxes := 6     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    1 Bit        Muxes := 84    
2default:defaulth p
x
� 
X
%s
*synth2@
,	   5 Input    1 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   4 Input    1 Bit        Muxes := 9     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   3 Input    1 Bit        Muxes := 6     
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2j
VPart Resources:
DSPs: 80 (col length:40)
BRAMs: 120 (col length: RAMB18 40 RAMB36 20)
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
rst2default:default2"
ending_display2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
rst2default:default2%
game_over_display2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
rst2default:default2!
intro_display2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
rst2default:default2&
background_display2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
btn[0]2default:default2"
mario_brothers2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2 
btn_pulse[3]2default:default2"
mario_brothers2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2 
btn_pulse[2]2default:default2"
mario_brothers2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2 
btn_pulse[1]2default:default2"
mario_brothers2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[2]2default:default2"
mario_brothers2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[1]2default:default2"
mario_brothers2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
hdmi_tx_cec2default:default2
top2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
hdmi_tx_scl2default:default2
top2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
hdmi_tx_sda2default:default2
top2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
hdmi_tx_hpd2default:default2
top2default:defaultZ8-7129h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:01:27 ; elapsed = 00:01:41 . Memory (MB): peak = 1668.441 ; gain = 794.141
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
iResources of type %s have been overutilized. Used = %s, Available = %s. Will try to implement using %s. 
4253*oasys2
BRAM2default:default2
2512default:default2
1202default:default2
LUT-RAM2default:defaultZ8-5835h px� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
M
%s*synth25
!
ROM: Preliminary Mapping Report
2default:defaulth px� 
�
%s*synth2�
n+------------------+-------------------------------------------------------+---------------+----------------+
2default:defaulth px� 
�
%s*synth2�
o|Module Name       | RTL Object                                            | Depth x Width | Implemented As | 
2default:defaulth px� 
�
%s*synth2�
n+------------------+-------------------------------------------------------+---------------+----------------+
2default:defaulth px� 
�
%s*synth2�
o|background_rom    | color_data                                            | 131072x12     | Block RAM      | 
2default:defaulth px� 
�
%s*synth2�
o|font_rom_vhd      | ROM[0]                                                | 2048x8        | LUT            | 
2default:defaulth px� 
�
%s*synth2�
o|goombas_display   | goomba1_display/gravity_size                          | 64x2          | LUT            | 
2default:defaulth px� 
�
%s*synth2�
o|goombas_display   | goomba2_display/gravity_size                          | 64x2          | LUT            | 
2default:defaulth px� 
�
%s*synth2�
o|goombas_display   | goomba3_display/gravity_size                          | 64x2          | LUT            | 
2default:defaulth px� 
�
%s*synth2�
o|goombas_display   | goomba4_display/gravity_size                          | 64x2          | LUT            | 
2default:defaulth px� 
�
%s*synth2�
o|goombas_display   | goomba5_display/gravity_size                          | 64x2          | LUT            | 
2default:defaulth px� 
�
%s*synth2�
o|goombas_display   | goomba6_display/gravity_size                          | 64x2          | LUT            | 
2default:defaulth px� 
�
%s*synth2�
o|mario_display     | sel_rep                                               | 1024x12       | Block RAM      | 
2default:defaulth px� 
�
%s*synth2�
o|mario_display     | sel                                                   | 1024x12       | Block RAM      | 
2default:defaulth px� 
�
%s*synth2�
o|mario_display     | sel_rep                                               | 1024x12       | Block RAM      | 
2default:defaulth px� 
�
%s*synth2�
o|mario_display     | sel_rep                                               | 1024x12       | Block RAM      | 
2default:defaulth px� 
�
%s*synth2�
o|mario_display     | jump_size                                             | 64x3          | LUT            | 
2default:defaulth px� 
�
%s*synth2�
o|mario_display     | gravity_size                                          | 64x3          | LUT            | 
2default:defaulth px� 
�
%s*synth2�
o|goombas_display   | sel                                                   | 1024x12       | Block RAM      | 
2default:defaulth px� 
�
%s*synth2�
o|goombas_display   | sel                                                   | 1024x12       | Block RAM      | 
2default:defaulth px� 
�
%s*synth2�
o|goombas_display   | sel                                                   | 1024x12       | Block RAM      | 
2default:defaulth px� 
�
%s*synth2�
o|goombas_display   | sel                                                   | 1024x12       | Block RAM      | 
2default:defaulth px� 
�
%s*synth2�
o|goombas_display   | sel                                                   | 1024x12       | Block RAM      | 
2default:defaulth px� 
�
%s*synth2�
o|goombas_display   | sel                                                   | 1024x12       | Block RAM      | 
2default:defaulth px� 
�
%s*synth2�
o|goombas_display   | goomba1_display/gravity_size                          | 64x2          | LUT            | 
2default:defaulth px� 
�
%s*synth2�
o|goombas_display   | goomba2_display/gravity_size                          | 64x2          | LUT            | 
2default:defaulth px� 
�
%s*synth2�
o|goombas_display   | goomba3_display/gravity_size                          | 64x2          | LUT            | 
2default:defaulth px� 
�
%s*synth2�
o|goombas_display   | goomba4_display/gravity_size                          | 64x2          | LUT            | 
2default:defaulth px� 
�
%s*synth2�
o|goombas_display   | goomba5_display/gravity_size                          | 64x2          | LUT            | 
2default:defaulth px� 
�
%s*synth2�
o|goombas_display   | goomba6_display/gravity_size                          | 64x2          | LUT            | 
2default:defaulth px� 
�
%s*synth2�
o|coin_display      | sel                                                   | 1024x12       | Block RAM      | 
2default:defaulth px� 
�
%s*synth2�
o|intro_display     | sel                                                   | 65536x12      | Block RAM      | 
2default:defaulth px� 
�
%s*synth2�
o|game_over_display | sel                                                   | 65536x12      | Block RAM      | 
2default:defaulth px� 
�
%s*synth2�
o|ending_display    | sel                                                   | 65536x12      | Block RAM      | 
2default:defaulth px� 
�
%s*synth2�
o|text_display      | font_rom_inst/ROM[0]                                  | 2048x8        | LUT            | 
2default:defaulth px� 
�
%s*synth2�
o|goombas_display   | goomba1_display/goomba_rom_inst/color_data            | 1024x12       | LUT            | 
2default:defaulth px� 
�
%s*synth2�
o|goombas_display   | goomba2_display/goomba_rom_inst/color_data            | 1024x12       | LUT            | 
2default:defaulth px� 
�
%s*synth2�
o|goombas_display   | goomba3_display/goomba_rom_inst/color_data            | 1024x12       | LUT            | 
2default:defaulth px� 
�
%s*synth2�
o|goombas_display   | goomba4_display/goomba_rom_inst/color_data            | 1024x12       | LUT            | 
2default:defaulth px� 
�
%s*synth2�
o|goombas_display   | goomba5_display/goomba_rom_inst/color_data            | 1024x12       | LUT            | 
2default:defaulth px� 
�
%s*synth2�
o|goombas_display   | goomba6_display/goomba_rom_inst/color_data            | 1024x12       | LUT            | 
2default:defaulth px� 
�
%s*synth2�
o|mario_brothers    | mario_display_inst/mario_rom_walking2_inst/color_data | 1024x12       | LUT            | 
2default:defaulth px� 
�
%s*synth2�
o|mario_brothers    | mario_display_inst/mario_rom_walking1_inst/color_data | 1024x12       | LUT            | 
2default:defaulth px� 
�
%s*synth2�
o|mario_brothers    | mario_display_inst/mario_rom_standing_inst/color_data | 1024x12       | LUT            | 
2default:defaulth px� 
�
%s*synth2�
o|mario_brothers    | mario_display_inst/mario_rom_jumping_inst/color_data  | 1024x12       | LUT            | 
2default:defaulth px� 
�
%s*synth2�
o|mario_brothers    | coin_display_inst/coin_rom_inst_0/color_data          | 1024x12       | LUT            | 
2default:defaulth px� 
�
%s*synth2�
o|mario_brothers    | game_over_display_inst/game_over_rom_inst/color_data  | 65536x12      | LUT            | 
2default:defaulth px� 
�
%s*synth2�
o|mario_brothers    | ending_display_inst/ending_rom_inst/color_data        | 65536x12      | LUT            | 
2default:defaulth px� 
�
%s*synth2�
o+------------------+-------------------------------------------------------+---------------+----------------+

2default:defaulth px� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:23:23 ; elapsed = 00:24:23 . Memory (MB): peak = 2202.715 ; gain = 1328.414
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
~Finished Timing Optimization : Time (s): cpu = 00:23:41 ; elapsed = 00:24:42 . Memory (MB): peak = 2202.715 ; gain = 1328.414
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2
i_32082default:default2
Block2default:defaultZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2
i_32102default:default2
Block2default:defaultZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2
i_32122default:default2
Block2default:defaultZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2
i_32142default:default2
Block2default:defaultZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2
i_32162default:default2
Block2default:defaultZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2
i_32182default:default2
Block2default:defaultZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2
i_32202default:default2
Block2default:defaultZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2
i_32222default:default2
Block2default:defaultZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2
i_32242default:default2
Block2default:defaultZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2
i_32262default:default2
Block2default:defaultZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2
i_32282default:default2
Block2default:defaultZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2
i_32302default:default2
Block2default:defaultZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2
i_32322default:default2
Block2default:defaultZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2
i_32342default:default2
Block2default:defaultZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2
i_32362default:default2
Block2default:defaultZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2
i_32382default:default2
Block2default:defaultZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2
i_32402default:default2
Block2default:defaultZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2
i_32422default:default2
Block2default:defaultZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2
i_32442default:default2
Block2default:defaultZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2
i_32462default:default2
Block2default:defaultZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2
i_32482default:default2
Block2default:defaultZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2
i_32502default:default2
Block2default:defaultZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2
i_32522default:default2
Block2default:defaultZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2
i_32542default:default2
Block2default:defaultZ8-7052h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
}Finished Technology Mapping : Time (s): cpu = 00:23:56 ; elapsed = 00:24:58 . Memory (MB): peak = 2240.727 ; gain = 1366.426
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
wFinished IO Insertion : Time (s): cpu = 00:24:07 ; elapsed = 00:25:09 . Memory (MB): peak = 2254.379 ; gain = 1380.078
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:24:07 ; elapsed = 00:25:09 . Memory (MB): peak = 2254.379 ; gain = 1380.078
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:24:10 ; elapsed = 00:25:12 . Memory (MB): peak = 2254.379 ; gain = 1380.078
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:24:10 ; elapsed = 00:25:12 . Memory (MB): peak = 2254.379 ; gain = 1380.078
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:24:12 ; elapsed = 00:25:14 . Memory (MB): peak = 2254.379 ; gain = 1380.078
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:24:12 ; elapsed = 00:25:15 . Memory (MB): peak = 2254.379 ; gain = 1380.078
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
� 
O
%s
*synth27
#+------+--------------+----------+
2default:defaulth p
x
� 
O
%s
*synth27
#|      |BlackBox name |Instances |
2default:defaulth p
x
� 
O
%s
*synth27
#+------+--------------+----------+
2default:defaulth p
x
� 
O
%s
*synth27
#|1     |clk_wiz_0     |         1|
2default:defaulth p
x
� 
O
%s
*synth27
#+------+--------------+----------+
2default:defaulth p
x
� 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px� 
I
%s*synth21
+------+------------+------+
2default:defaulth px� 
I
%s*synth21
|      |Cell        |Count |
2default:defaulth px� 
I
%s*synth21
+------+------------+------+
2default:defaulth px� 
I
%s*synth21
|1     |clk_wiz     |     1|
2default:defaulth px� 
I
%s*synth21
|2     |BUFG        |     2|
2default:defaulth px� 
I
%s*synth21
|3     |CARRY4      |   410|
2default:defaulth px� 
I
%s*synth21
|4     |LUT1        |   340|
2default:defaulth px� 
I
%s*synth21
|5     |LUT2        |  1073|
2default:defaulth px� 
I
%s*synth21
|6     |LUT3        |   730|
2default:defaulth px� 
I
%s*synth21
|7     |LUT4        |  1236|
2default:defaulth px� 
I
%s*synth21
|8     |LUT5        |  2077|
2default:defaulth px� 
I
%s*synth21
|9     |LUT6        |  8373|
2default:defaulth px� 
I
%s*synth21
|10    |MMCME2_BASE |     1|
2default:defaulth px� 
I
%s*synth21
|11    |MUXF7       |  1943|
2default:defaulth px� 
I
%s*synth21
|12    |MUXF8       |   306|
2default:defaulth px� 
I
%s*synth21
|13    |OSERDESE2   |     8|
2default:defaulth px� 
I
%s*synth21
|15    |RAMB36E1    |    48|
2default:defaulth px� 
I
%s*synth21
|53    |FDCE        |   746|
2default:defaulth px� 
I
%s*synth21
|54    |FDPE        |    84|
2default:defaulth px� 
I
%s*synth21
|55    |FDRE        |   418|
2default:defaulth px� 
I
%s*synth21
|56    |FDSE        |   101|
2default:defaulth px� 
I
%s*synth21
|57    |IBUF        |     8|
2default:defaulth px� 
I
%s*synth21
|58    |OBUF        |     4|
2default:defaulth px� 
I
%s*synth21
|59    |OBUFDS      |     4|
2default:defaulth px� 
I
%s*synth21
+------+------------+------+
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:24:12 ; elapsed = 00:25:15 . Memory (MB): peak = 2254.379 ; gain = 1380.078
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
s
%s
*synth2[
GSynthesis finished with 0 errors, 0 critical warnings and 16 warnings.
2default:defaulth p
x
� 
�
%s
*synth2�
�Synthesis Optimization Runtime : Time (s): cpu = 00:23:49 ; elapsed = 00:25:09 . Memory (MB): peak = 2254.379 ; gain = 1284.531
2default:defaulth p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:24:12 ; elapsed = 00:25:15 . Memory (MB): peak = 2254.379 ; gain = 1380.078
2default:defaulth p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.3052default:default2
2254.3792default:default2
0.0002default:defaultZ17-268h px� 
h
-Analyzing %s Unisim elements for replacement
17*netlist2
27122default:defaultZ29-17h px� 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0072default:default2
2270.6452default:default2
0.0002default:defaultZ17-268h px� 
�
!Unisim Transformation Summary:
%s111*project2h
T  A total of 1 instances were transformed.
  MMCME2_BASE => MMCME2_ADV: 1 instance 
2default:defaultZ1-111h px� 
h
%Synth Design complete | Checksum: %s
562*	vivadotcl2
a016520b2default:defaultZ4-1430h px� 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1672default:default2
642default:default2
02default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:24:272default:default2
00:25:422default:default2
2270.6452default:default2
1775.8832default:defaultZ17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2^
JE:/works/hdl/mario_brothers-FPGA/project-zybo/project.runs/synth_1/top.dcp2default:defaultZ17-1381h px� 
�
%s4*runtcl2p
\Executing : report_utilization -file top_utilization_synth.rpt -pb top_utilization_synth.pb
2default:defaulth px� 
�
Exiting %s at %s...
206*common2
Vivado2default:default2,
Sun Dec 24 20:13:24 20232default:defaultZ17-206h px� 


End Record