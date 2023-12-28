echo "xvlog: Compiling Verilog HDL files"
xvlog bar_ground.v bar_ground_tb.v | Out-File debug.log
echo ""
echo "xelab: Linking compiled files"
xelab bar_ground_tb -s bar_ground_tb -debug wave | Out-File debug.log -Append
echo ""
echo "xsim: Running the simulation"
xsim bar_ground_tb -wdb simulate_xsim_bar_ground_tb.wdb -gui | Out-File debug.log -Append
(Get-Content debug.log) -replace “ECHO가 설정되어 있지 않습니다.”, “” | Set-Content debug.log
Get-Content debug.log