set_param project.enableReportConfiguration 0
load_feature core
current_fileset
xsim {bar_ground_tb} -wdb {simulate_xsim_bar_ground_tb.wdb} -autoloadwcfg
