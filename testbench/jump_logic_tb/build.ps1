echo "xvlog: Compiling Verilog HDL files"
xvlog gen_counter_en.v jump.v | Out-File debug.log
echo ""
echo "xelab: Linking compiled files"
xelab jump -s jump -debug wave | Out-File debug.log -Append
echo ""
echo "xsim: Running the simulation"
xsim jump -wdb simulate_xsim_jump.wdb -gui | Out-File debug.log -Append
(Get-Content debug.log) -replace “ECHO가 설정되어 있지 않습니다.”, “” | Set-Content debug.log
Get-Content debug.log