echo "xvlog: Compiling Verilog HDL files"
xvlog coin_display_tb.v coin_display.v random.v | Out-File debug.log
echo ""
echo "xelab: Linking compiled files"
xelab coin_display_tb -s coin_display_tb -debug wave | Out-File debug.log -Append
echo ""
echo "xsim: Running the simulation"
xsim coin_display_tb -wdb simulate_xsim_coin_display_tb.wdb -gui | Out-File debug.log -Append
(Get-Content debug.log) -replace “ECHO가 설정되어 있지 않습니다.”, “” | Set-Content debug.log
Get-Content debug.log