set_db init_lib_search_path /home/installs/FOUNDRY/digital/90nm/dig/lib  
set_db hdl_search_path /home/cadence/Desktop/sram/dual_port_ram
set_db library slow.lib
read_hdl Ram_dualport.v
elaborate
read_sdc /home/cadence/Desktop/sram/dual_port_ram/constraints.sdc
set_db syn_generic_effort medium
syn_generic
set_db syn_map_effort medium
syn_map
set_db syn_opt_effort medium
syn_opt
write_hdl > Ram_dualport_netlist.v
write_sdc > Ram_dualport_block.sdc
report_area > Ram_dualport_area.rep
report_gates > Ram_dualport_gate.rep
report_power > Ram_dualport_power.rep
report_timing > Ram_dualport_timing.rep
gui_show
