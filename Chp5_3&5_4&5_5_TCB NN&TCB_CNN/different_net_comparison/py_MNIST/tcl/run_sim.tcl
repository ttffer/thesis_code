set file_list { net2 }
source ~/.tooluse

foreach x $file_list {
    puts " now is processing $x  synthesis..."

    set prj_name [format %s%s $x _prj]
    set hdl_file_location [format %s%s verilog_ $x]
    puts "project name is $prj_name "
    puts "HDL file location is $hdl_file_location"
    #file location
    set file_root_folder [format %s "/home/kuanyu/Desktop/TCB_test/Different_net/tcb_axi_stream_succeed/py"]

    create_project $prj_name -force [format %s%s%s $file_root_folder /vivado/ $prj_name] -part xczu7ev-ffvc1156-2-e

    set_property board_part xilinx.com:zcu104:part0:1.1 [current_project]
    #hdl file location

    #update_compile_order -fileset sources_1

    add_files -fileset sources_1 -norecurse -scan_for_includes [format %s%s%s $file_root_folder / $hdl_file_location]
    # remove_files  [format %s%s%s $file_root_folder $hdl_file_location "/tb.v"]
    update_compile_order -fileset sources_1
    

    update_compile_order -fileset sources_1
    update_compile_order -fileset sim_1

    set_property top top_cnn [current_fileset]
    update_compile_order -fileset sources_1
    launch_sim

}

puts "finishing the synthesis process"
exit
# start_gui
#vivado -mode tcl -source ../tcl/t.tcl
#exit
#vivado -mode tcl -source ../tcl/run.tcl 