# ####################################################################

#  Created by Genus(TM) Synthesis Solution 20.11-s111_1 on Fri Jul 19 15:39:19 IST 2024

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1000fF
set_units -time 1000ps

# Set the current design
current_design Ram_dualport

create_clock -name "clk" -period 2.0 -waveform {0.0 1.0} [get_ports clk]
set_clock_transition 0.1 [get_clocks clk]
set_load -pin_load 0.15 [get_ports {q1[7]}]
set_load -pin_load 0.15 [get_ports {q1[6]}]
set_load -pin_load 0.15 [get_ports {q1[5]}]
set_load -pin_load 0.15 [get_ports {q1[4]}]
set_load -pin_load 0.15 [get_ports {q1[3]}]
set_load -pin_load 0.15 [get_ports {q1[2]}]
set_load -pin_load 0.15 [get_ports {q1[1]}]
set_load -pin_load 0.15 [get_ports {q1[0]}]
set_load -pin_load 0.15 [get_ports {q2[7]}]
set_load -pin_load 0.15 [get_ports {q2[6]}]
set_load -pin_load 0.15 [get_ports {q2[5]}]
set_load -pin_load 0.15 [get_ports {q2[4]}]
set_load -pin_load 0.15 [get_ports {q2[3]}]
set_load -pin_load 0.15 [get_ports {q2[2]}]
set_load -pin_load 0.15 [get_ports {q2[1]}]
set_load -pin_load 0.15 [get_ports {q2[0]}]
set_clock_gating_check -setup 0.0 
set_max_fanout 20.000 [current_design]
set_input_transition 0.12 [get_ports {data1[7]}]
set_input_transition 0.12 [get_ports {data1[6]}]
set_input_transition 0.12 [get_ports {data1[5]}]
set_input_transition 0.12 [get_ports {data1[4]}]
set_input_transition 0.12 [get_ports {data1[3]}]
set_input_transition 0.12 [get_ports {data1[2]}]
set_input_transition 0.12 [get_ports {data1[1]}]
set_input_transition 0.12 [get_ports {data1[0]}]
set_input_transition 0.12 [get_ports {data2[7]}]
set_input_transition 0.12 [get_ports {data2[6]}]
set_input_transition 0.12 [get_ports {data2[5]}]
set_input_transition 0.12 [get_ports {data2[4]}]
set_input_transition 0.12 [get_ports {data2[3]}]
set_input_transition 0.12 [get_ports {data2[2]}]
set_input_transition 0.12 [get_ports {data2[1]}]
set_input_transition 0.12 [get_ports {data2[0]}]
set_input_transition 0.12 [get_ports {adr1[5]}]
set_input_transition 0.12 [get_ports {adr1[4]}]
set_input_transition 0.12 [get_ports {adr1[3]}]
set_input_transition 0.12 [get_ports {adr1[2]}]
set_input_transition 0.12 [get_ports {adr1[1]}]
set_input_transition 0.12 [get_ports {adr1[0]}]
set_input_transition 0.12 [get_ports {adr2[5]}]
set_input_transition 0.12 [get_ports {adr2[4]}]
set_input_transition 0.12 [get_ports {adr2[3]}]
set_input_transition 0.12 [get_ports {adr2[2]}]
set_input_transition 0.12 [get_ports {adr2[1]}]
set_input_transition 0.12 [get_ports {adr2[0]}]
set_input_transition 0.12 [get_ports we1]
set_input_transition 0.12 [get_ports we2]
set_input_transition 0.12 [get_ports clk]
set_wire_load_mode "enclosed"
set_clock_uncertainty -setup 0.01 [get_ports clk]
set_clock_uncertainty -hold 0.01 [get_ports clk]
