echo "xvlog: Compiling Verilog HDL files"
xvlog goombas_display_tb.v goombas_display.v | Out-File debug.log
echo ""
echo "xelab: Linking compiled files"
xelab goombas_display_tb -s goombas_display_tb -debug wave | Out-File debug.log -Append
echo ""
echo "xsim: Running the simulation"
xsim goombas_display_tb -wdb simulate_xsim_goombas_display_tb.wdb -gui | Out-File debug.log -Append
(Get-Content debug.log) -replace “ECHO가 설정되어 있지 않습니다.”, “” | Set-Content debug.log
Get-Content debug.log