
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name check3 -dir "D:/LAB3SA05/check3/planAhead_run_1" -part xc3s200tq144-4
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "D:/LAB3SA05/check3/bito7.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {D:/LAB3SA05/check3} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "bito7sec.ucf" [current_fileset -constrset]
add_files [list {bito7sec.ucf}] -fileset [get_property constrset [current_run]]
open_netlist_design
