set file_list { net0 net1 net2 }
source ~/.tooluse
# start_gui
#vivado -mode tcl -source ../tcl/t.tcl
#exit
#vivado -mode tcl -source ../tcl/run_syn.tcl 
foreach x $file_list {
    puts " now is processing $x  synthesis..."

    set prj_name [format %s%s $x _prj]
    set hdl_file_location [format %s%s verilog_ $x]
    puts "project name is $prj_name "
    puts "HDL file location is $hdl_file_location"
    #file location
    
    set file_root_folder [format %s "../"]

    create_project $prj_name -force [format %s%s%s $file_root_folder /vivado/ $prj_name] -part xczu7ev-ffvc1156-2-e

    set_property board_part xilinx.com:zcu104:part0:1.1 [current_project]
    #hdl file location

    #update_compile_order -fileset sources_1

    add_files -fileset sources_1 -norecurse -scan_for_includes [format %s%s%s $file_root_folder / $hdl_file_location]
    remove_files  [format %s%s%s%s $file_root_folder "/" $hdl_file_location "/tb.v"]
    update_compile_order -fileset sources_1
    

    update_compile_order -fileset sources_1
    update_compile_order -fileset sim_1

    set_property top top_cnn [current_fileset]
    update_compile_order -fileset sources_1
    launch_sim    
    launch_runs synth_1 -jobs 20
    wait_on_run synth_1
    puts "wating for synthesis......"
    open_run synth_1 -name synth_1
    set report_name [format %s%s $prj_name "_report.txt"]

    report_utilization -hierarchical -hierarchical_depth 5 \
    -file [format %s%s%s $file_root_folder "/report/" $report_name ] 
    puts "$prj_name finished..."
}

puts "finishing the synthesis process"
exit
