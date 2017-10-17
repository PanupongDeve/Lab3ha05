
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name check3 -dir "D:/LAB3SA05/check3/planAhead_run_1" -part xc3s200tq144-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "bito7sec.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {bito7sec.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top bito7sec $srcset
add_files [list {bito7sec.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s200tq144-4
