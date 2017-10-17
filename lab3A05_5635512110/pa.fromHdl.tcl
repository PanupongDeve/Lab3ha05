
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name lab3A05_5635512110 -dir "D:/lab3A05_5635512110/planAhead_run_1" -part xc3s200tq144-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "adder.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {adder.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top adder $srcset
add_files [list {adder.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s200tq144-4
