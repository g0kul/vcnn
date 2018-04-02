
################################################################
# This is a generated script based on design: vcnnbd
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2017.2
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source vcnnbd_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7z020clg400-1
}


# CHANGE DESIGN NAME HERE
set design_name vcnnbd

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set DDR [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:ddrx_rtl:1.0 DDR ]
  set FIXED_IO [ create_bd_intf_port -mode Master -vlnv xilinx.com:display_processing_system7:fixedio_rtl:1.0 FIXED_IO ]

  # Create ports

  # Create instance: axi_lite_slave_0, and set properties
  set axi_lite_slave_0 [ create_bd_cell -type ip -vlnv dots.com:dots:axi_lite_slave:1.1 axi_lite_slave_0 ]

  # Create instance: axi_lite_slave_1, and set properties
  set axi_lite_slave_1 [ create_bd_cell -type ip -vlnv dots.com:dots:axi_lite_slave:1.1 axi_lite_slave_1 ]

  # Create instance: axi_smc, and set properties
  set axi_smc [ create_bd_cell -type ip -vlnv xilinx.com:ip:smartconnect:1.0 axi_smc ]
  set_property -dict [ list \
CONFIG.NUM_MI {4} \
CONFIG.NUM_SI {1} \
 ] $axi_smc

  # Create instance: conv1l_top_0, and set properties
  set conv1l_top_0 [ create_bd_cell -type ip -vlnv user.org:user:conv1l_top:1.0 conv1l_top_0 ]
  set_property -dict [ list \
CONFIG.INPUT_ADDR_WIDTH {12} \
CONFIG.OUTPUT_ADDR_WIDTH {14} \
CONFIG.OUTPUT_CHNLS_COUNT {16} \
CONFIG.OUTPUT_ROWS_COUNT {32} \
CONFIG.WEIGHT_ADDR_WIDTH {9} \
CONFIG.WEIGHT_FLTRS_COUNT {16} \
 ] $conv1l_top_0

  # Create instance: conv1l_top_1, and set properties
  set conv1l_top_1 [ create_bd_cell -type ip -vlnv user.org:user:conv1l_top:1.0 conv1l_top_1 ]
  set_property -dict [ list \
CONFIG.CONV_ICHNLS_WIDTH {5} \
CONFIG.CONV_WFLTRS_WIDTH {6} \
CONFIG.INPUT_ADDR_WIDTH {14} \
CONFIG.INPUT_CHNLS_COUNT {16} \
CONFIG.OUTPUT_ADDR_WIDTH {15} \
CONFIG.OUTPUT_CHNLS_COUNT {32} \
CONFIG.OUTPUT_ROWS_COUNT {32} \
CONFIG.WEIGHT_ADDR_WIDTH {13} \
CONFIG.WEIGHT_FLTRS_COUNT {32} \
 ] $conv1l_top_1

  # Create instance: input_bram, and set properties
  set input_bram [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl:4.0 input_bram ]
  set_property -dict [ list \
CONFIG.SINGLE_PORT_BRAM {1} \
 ] $input_bram

  # Create instance: input_bram_mem, and set properties
  set input_bram_mem [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.3 input_bram_mem ]
  set_property -dict [ list \
CONFIG.Assume_Synchronous_Clk {true} \
CONFIG.Byte_Size {8} \
CONFIG.Coe_File {input_bram.coe} \
CONFIG.Enable_32bit_Address {false} \
CONFIG.Enable_A {Always_Enabled} \
CONFIG.Enable_B {Always_Enabled} \
CONFIG.Fill_Remaining_Memory_Locations {true} \
CONFIG.Load_Init_File {true} \
CONFIG.Memory_Type {True_Dual_Port_RAM} \
CONFIG.Port_B_Clock {100} \
CONFIG.Port_B_Enable_Rate {100} \
CONFIG.Port_B_Write_Rate {50} \
CONFIG.Read_Width_A {32} \
CONFIG.Read_Width_B {16} \
CONFIG.Register_PortA_Output_of_Memory_Primitives {false} \
CONFIG.Register_PortB_Output_of_Memory_Core {false} \
CONFIG.Register_PortB_Output_of_Memory_Primitives {true} \
CONFIG.Remaining_Memory_Locations {BAD5BADA} \
CONFIG.Use_Byte_Write_Enable {true} \
CONFIG.Use_RSTA_Pin {false} \
CONFIG.Use_RSTB_Pin {false} \
CONFIG.Write_Depth_A {1536} \
CONFIG.Write_Width_A {32} \
CONFIG.Write_Width_B {16} \
CONFIG.use_bram_block {Stand_Alone} \
 ] $input_bram_mem

  # Create instance: intermediate_bram_mem, and set properties
  set intermediate_bram_mem [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.3 intermediate_bram_mem ]
  set_property -dict [ list \
CONFIG.Assume_Synchronous_Clk {true} \
CONFIG.Byte_Size {8} \
CONFIG.Enable_32bit_Address {false} \
CONFIG.Enable_A {Always_Enabled} \
CONFIG.Enable_B {Always_Enabled} \
CONFIG.Fill_Remaining_Memory_Locations {true} \
CONFIG.Memory_Type {True_Dual_Port_RAM} \
CONFIG.Port_B_Clock {100} \
CONFIG.Port_B_Enable_Rate {100} \
CONFIG.Port_B_Write_Rate {50} \
CONFIG.Read_Width_A {16} \
CONFIG.Read_Width_B {16} \
CONFIG.Register_PortA_Output_of_Memory_Primitives {true} \
CONFIG.Register_PortB_Output_of_Memory_Primitives {true} \
CONFIG.Remaining_Memory_Locations {FA52} \
CONFIG.Use_Byte_Write_Enable {true} \
CONFIG.Use_RSTA_Pin {true} \
CONFIG.Use_RSTB_Pin {false} \
CONFIG.Write_Depth_A {16384} \
CONFIG.Write_Width_A {16} \
CONFIG.Write_Width_B {16} \
CONFIG.use_bram_block {Stand_Alone} \
 ] $intermediate_bram_mem

  # Create instance: output_bram, and set properties
  set output_bram [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl:4.0 output_bram ]
  set_property -dict [ list \
CONFIG.SINGLE_PORT_BRAM {1} \
 ] $output_bram

  # Create instance: output_bram_mem1, and set properties
  set output_bram_mem1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.3 output_bram_mem1 ]
  set_property -dict [ list \
CONFIG.Assume_Synchronous_Clk {true} \
CONFIG.Byte_Size {8} \
CONFIG.Enable_32bit_Address {false} \
CONFIG.Enable_A {Always_Enabled} \
CONFIG.Enable_B {Use_ENB_Pin} \
CONFIG.Fill_Remaining_Memory_Locations {true} \
CONFIG.Memory_Type {True_Dual_Port_RAM} \
CONFIG.Port_B_Clock {100} \
CONFIG.Port_B_Enable_Rate {100} \
CONFIG.Port_B_Write_Rate {50} \
CONFIG.Read_Width_A {16} \
CONFIG.Read_Width_B {16} \
CONFIG.Register_PortA_Output_of_Memory_Primitives {true} \
CONFIG.Register_PortB_Output_of_Memory_Primitives {false} \
CONFIG.Remaining_Memory_Locations {0000} \
CONFIG.Use_Byte_Write_Enable {true} \
CONFIG.Use_RSTA_Pin {false} \
CONFIG.Use_RSTB_Pin {false} \
CONFIG.Write_Depth_A {32768} \
CONFIG.Write_Width_A {16} \
CONFIG.Write_Width_B {16} \
CONFIG.use_bram_block {Stand_Alone} \
 ] $output_bram_mem1

  # Create instance: processing_system7_0, and set properties
  set processing_system7_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:processing_system7:5.5 processing_system7_0 ]
  set_property -dict [ list \
CONFIG.PCW_FPGA0_PERIPHERAL_FREQMHZ {100} \
 ] $processing_system7_0

  # Create instance: rst_ps7_0_100M, and set properties
  set rst_ps7_0_100M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_ps7_0_100M ]

  # Create instance: weight2_bram_mem, and set properties
  set weight2_bram_mem [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.3 weight2_bram_mem ]
  set_property -dict [ list \
CONFIG.Assume_Synchronous_Clk {false} \
CONFIG.Byte_Size {9} \
CONFIG.Coe_File {../conv2_weights.coe} \
CONFIG.Enable_32bit_Address {false} \
CONFIG.Enable_A {Always_Enabled} \
CONFIG.Enable_B {Always_Enabled} \
CONFIG.Fill_Remaining_Memory_Locations {true} \
CONFIG.Load_Init_File {true} \
CONFIG.Memory_Type {Single_Port_ROM} \
CONFIG.Port_A_Write_Rate {0} \
CONFIG.Port_B_Clock {0} \
CONFIG.Port_B_Enable_Rate {0} \
CONFIG.Port_B_Write_Rate {0} \
CONFIG.Read_Width_A {16} \
CONFIG.Read_Width_B {16} \
CONFIG.Register_PortA_Output_of_Memory_Primitives {true} \
CONFIG.Register_PortB_Output_of_Memory_Primitives {false} \
CONFIG.Remaining_Memory_Locations {0} \
CONFIG.Use_Byte_Write_Enable {false} \
CONFIG.Use_RSTA_Pin {false} \
CONFIG.Use_RSTB_Pin {false} \
CONFIG.Write_Depth_A {5120} \
CONFIG.Write_Width_A {16} \
CONFIG.Write_Width_B {16} \
CONFIG.use_bram_block {Stand_Alone} \
 ] $weight2_bram_mem

  # Create instance: weight_bram_mem, and set properties
  set weight_bram_mem [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.3 weight_bram_mem ]
  set_property -dict [ list \
CONFIG.Assume_Synchronous_Clk {false} \
CONFIG.Byte_Size {9} \
CONFIG.Coe_File {weight_bram.coe} \
CONFIG.Enable_32bit_Address {false} \
CONFIG.Enable_A {Always_Enabled} \
CONFIG.Enable_B {Always_Enabled} \
CONFIG.Fill_Remaining_Memory_Locations {true} \
CONFIG.Load_Init_File {true} \
CONFIG.Memory_Type {Single_Port_ROM} \
CONFIG.Port_A_Write_Rate {0} \
CONFIG.Port_B_Clock {0} \
CONFIG.Port_B_Enable_Rate {0} \
CONFIG.Port_B_Write_Rate {0} \
CONFIG.Read_Width_A {16} \
CONFIG.Read_Width_B {16} \
CONFIG.Register_PortA_Output_of_Memory_Primitives {true} \
CONFIG.Register_PortB_Output_of_Memory_Primitives {false} \
CONFIG.Remaining_Memory_Locations {0} \
CONFIG.Use_Byte_Write_Enable {false} \
CONFIG.Use_RSTA_Pin {false} \
CONFIG.Use_RSTB_Pin {false} \
CONFIG.Write_Depth_A {512} \
CONFIG.Write_Width_A {16} \
CONFIG.Write_Width_B {16} \
CONFIG.use_bram_block {Stand_Alone} \
 ] $weight_bram_mem

  # Create interface connections
  connect_bd_intf_net -intf_net axi_bram_ctrl_0_BRAM_PORTA [get_bd_intf_pins input_bram/BRAM_PORTA] [get_bd_intf_pins input_bram_mem/BRAM_PORTA]
  connect_bd_intf_net -intf_net axi_smc_M00_AXI [get_bd_intf_pins axi_smc/M00_AXI] [get_bd_intf_pins input_bram/S_AXI]
  connect_bd_intf_net -intf_net axi_smc_M02_AXI [get_bd_intf_pins axi_smc/M02_AXI] [get_bd_intf_pins output_bram/S_AXI]
  connect_bd_intf_net -intf_net axi_smc_M03_AXI [get_bd_intf_pins axi_lite_slave_0/S_AXI] [get_bd_intf_pins axi_smc/M03_AXI]
  connect_bd_intf_net -intf_net axi_smc_M04_AXI [get_bd_intf_pins axi_lite_slave_1/S_AXI] [get_bd_intf_pins axi_smc/M01_AXI]
  connect_bd_intf_net -intf_net conv1l_top_0_input_bram_rd [get_bd_intf_pins conv1l_top_0/input_bram_rd] [get_bd_intf_pins input_bram_mem/BRAM_PORTB]
  connect_bd_intf_net -intf_net conv1l_top_0_output_bram_wr [get_bd_intf_pins conv1l_top_0/output_bram_wr] [get_bd_intf_pins intermediate_bram_mem/BRAM_PORTA]
  connect_bd_intf_net -intf_net conv1l_top_0_weight_bram_rd [get_bd_intf_pins conv1l_top_0/weight_bram_rd] [get_bd_intf_pins weight_bram_mem/BRAM_PORTA]
  connect_bd_intf_net -intf_net conv1l_top_1_input_bram_rd [get_bd_intf_pins conv1l_top_1/input_bram_rd] [get_bd_intf_pins intermediate_bram_mem/BRAM_PORTB]
  connect_bd_intf_net -intf_net conv1l_top_1_output_bram_wr [get_bd_intf_pins conv1l_top_1/output_bram_wr] [get_bd_intf_pins output_bram_mem1/BRAM_PORTA]
  connect_bd_intf_net -intf_net conv1l_top_1_weight_bram_rd [get_bd_intf_pins conv1l_top_1/weight_bram_rd] [get_bd_intf_pins weight2_bram_mem/BRAM_PORTA]
  connect_bd_intf_net -intf_net output_bram_BRAM_PORTA [get_bd_intf_pins output_bram/BRAM_PORTA] [get_bd_intf_pins output_bram_mem1/BRAM_PORTB]
  connect_bd_intf_net -intf_net processing_system7_0_DDR [get_bd_intf_ports DDR] [get_bd_intf_pins processing_system7_0/DDR]
  connect_bd_intf_net -intf_net processing_system7_0_FIXED_IO [get_bd_intf_ports FIXED_IO] [get_bd_intf_pins processing_system7_0/FIXED_IO]
  connect_bd_intf_net -intf_net processing_system7_0_M_AXI_GP0 [get_bd_intf_pins axi_smc/S00_AXI] [get_bd_intf_pins processing_system7_0/M_AXI_GP0]

  # Create port connections
  connect_bd_net -net axi_lite_slave_0_ap_start [get_bd_pins axi_lite_slave_0/ap_start] [get_bd_pins conv1l_top_0/ap_start]
  connect_bd_net -net axi_lite_slave_1_ap_start [get_bd_pins axi_lite_slave_1/ap_start] [get_bd_pins conv1l_top_1/ap_start]
  connect_bd_net -net conv1l_top_0_ap_done [get_bd_pins axi_lite_slave_0/ap_done] [get_bd_pins conv1l_top_0/ap_done]
  connect_bd_net -net conv1l_top_0_ap_ready [get_bd_pins axi_lite_slave_0/ap_ready] [get_bd_pins conv1l_top_0/ap_ready]
  connect_bd_net -net conv1l_top_1_ap_done [get_bd_pins axi_lite_slave_1/ap_done] [get_bd_pins conv1l_top_1/ap_done]
  connect_bd_net -net conv1l_top_1_ap_ready [get_bd_pins axi_lite_slave_1/ap_ready] [get_bd_pins conv1l_top_1/ap_ready]
  connect_bd_net -net processing_system7_0_FCLK_CLK0 [get_bd_pins axi_lite_slave_0/S_AXI_ACLK] [get_bd_pins axi_lite_slave_1/S_AXI_ACLK] [get_bd_pins axi_smc/aclk] [get_bd_pins conv1l_top_0/clk] [get_bd_pins conv1l_top_1/clk] [get_bd_pins input_bram/s_axi_aclk] [get_bd_pins output_bram/s_axi_aclk] [get_bd_pins processing_system7_0/FCLK_CLK0] [get_bd_pins processing_system7_0/M_AXI_GP0_ACLK] [get_bd_pins rst_ps7_0_100M/slowest_sync_clk]
  connect_bd_net -net processing_system7_0_FCLK_RESET0_N [get_bd_pins processing_system7_0/FCLK_RESET0_N] [get_bd_pins rst_ps7_0_100M/ext_reset_in]
  connect_bd_net -net rst_ps7_0_100M_peripheral_aresetn [get_bd_pins axi_lite_slave_0/S_AXI_ARESETN] [get_bd_pins axi_lite_slave_1/S_AXI_ARESETN] [get_bd_pins axi_smc/aresetn] [get_bd_pins conv1l_top_0/rstn] [get_bd_pins conv1l_top_1/rstn] [get_bd_pins input_bram/s_axi_aresetn] [get_bd_pins output_bram/s_axi_aresetn] [get_bd_pins rst_ps7_0_100M/peripheral_aresetn]

  # Create address segments
  create_bd_addr_seg -range 0x00001000 -offset 0x40000000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs input_bram/S_AXI/Mem0] SEG_axi_bram_ctrl_0_Mem0
  create_bd_addr_seg -range 0x00001000 -offset 0x43C00000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_lite_slave_0/S_AXI/reg0] SEG_axi_lite_slave_0_reg0
  create_bd_addr_seg -range 0x00001000 -offset 0x43C10000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_lite_slave_1/S_AXI/reg0] SEG_axi_lite_slave_1_reg0
  create_bd_addr_seg -range 0x00008000 -offset 0x44000000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs output_bram/S_AXI/Mem0] SEG_output_bram_Mem0


  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


