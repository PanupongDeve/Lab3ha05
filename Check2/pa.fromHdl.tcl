
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name Check2 -dir "D:/LAB3SA05/Check2/planAhead_run_1" -part xc3s200tq144-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "decode.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {decode.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top decode $srcset
add_files [list {decode.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s200tq144-4
