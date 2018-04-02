# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "CONV_ICHNLS_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "CONV_ICOLS_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "CONV_IROWS_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "CONV_WCOLS_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "CONV_WFLTRS_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "CONV_WROWS_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "INPUT_ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "INPUT_CHNLS_COUNT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "INPUT_COLS_COUNT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "INPUT_DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "INPUT_ROWS_COUNT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "OUTPUT_ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "OUTPUT_CHNLS_COUNT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "OUTPUT_COLS_COUNT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "OUTPUT_DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "OUTPUT_ROWS_COUNT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "WEIGHT_ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "WEIGHT_CHNLS_COUNT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "WEIGHT_COLS_COUNT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "WEIGHT_DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "WEIGHT_FLTRS_COUNT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "WEIGHT_ROWS_COUNT" -parent ${Page_0}


}

proc update_PARAM_VALUE.CONV_ICHNLS_WIDTH { PARAM_VALUE.CONV_ICHNLS_WIDTH } {
	# Procedure called to update CONV_ICHNLS_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CONV_ICHNLS_WIDTH { PARAM_VALUE.CONV_ICHNLS_WIDTH } {
	# Procedure called to validate CONV_ICHNLS_WIDTH
	return true
}

proc update_PARAM_VALUE.CONV_ICOLS_WIDTH { PARAM_VALUE.CONV_ICOLS_WIDTH } {
	# Procedure called to update CONV_ICOLS_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CONV_ICOLS_WIDTH { PARAM_VALUE.CONV_ICOLS_WIDTH } {
	# Procedure called to validate CONV_ICOLS_WIDTH
	return true
}

proc update_PARAM_VALUE.CONV_IROWS_WIDTH { PARAM_VALUE.CONV_IROWS_WIDTH } {
	# Procedure called to update CONV_IROWS_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CONV_IROWS_WIDTH { PARAM_VALUE.CONV_IROWS_WIDTH } {
	# Procedure called to validate CONV_IROWS_WIDTH
	return true
}

proc update_PARAM_VALUE.CONV_WCOLS_WIDTH { PARAM_VALUE.CONV_WCOLS_WIDTH } {
	# Procedure called to update CONV_WCOLS_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CONV_WCOLS_WIDTH { PARAM_VALUE.CONV_WCOLS_WIDTH } {
	# Procedure called to validate CONV_WCOLS_WIDTH
	return true
}

proc update_PARAM_VALUE.CONV_WFLTRS_WIDTH { PARAM_VALUE.CONV_WFLTRS_WIDTH } {
	# Procedure called to update CONV_WFLTRS_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CONV_WFLTRS_WIDTH { PARAM_VALUE.CONV_WFLTRS_WIDTH } {
	# Procedure called to validate CONV_WFLTRS_WIDTH
	return true
}

proc update_PARAM_VALUE.CONV_WROWS_WIDTH { PARAM_VALUE.CONV_WROWS_WIDTH } {
	# Procedure called to update CONV_WROWS_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CONV_WROWS_WIDTH { PARAM_VALUE.CONV_WROWS_WIDTH } {
	# Procedure called to validate CONV_WROWS_WIDTH
	return true
}

proc update_PARAM_VALUE.INPUT_ADDR_WIDTH { PARAM_VALUE.INPUT_ADDR_WIDTH } {
	# Procedure called to update INPUT_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.INPUT_ADDR_WIDTH { PARAM_VALUE.INPUT_ADDR_WIDTH } {
	# Procedure called to validate INPUT_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.INPUT_CHNLS_COUNT { PARAM_VALUE.INPUT_CHNLS_COUNT } {
	# Procedure called to update INPUT_CHNLS_COUNT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.INPUT_CHNLS_COUNT { PARAM_VALUE.INPUT_CHNLS_COUNT } {
	# Procedure called to validate INPUT_CHNLS_COUNT
	return true
}

proc update_PARAM_VALUE.INPUT_COLS_COUNT { PARAM_VALUE.INPUT_COLS_COUNT } {
	# Procedure called to update INPUT_COLS_COUNT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.INPUT_COLS_COUNT { PARAM_VALUE.INPUT_COLS_COUNT } {
	# Procedure called to validate INPUT_COLS_COUNT
	return true
}

proc update_PARAM_VALUE.INPUT_DATA_WIDTH { PARAM_VALUE.INPUT_DATA_WIDTH } {
	# Procedure called to update INPUT_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.INPUT_DATA_WIDTH { PARAM_VALUE.INPUT_DATA_WIDTH } {
	# Procedure called to validate INPUT_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.INPUT_ROWS_COUNT { PARAM_VALUE.INPUT_ROWS_COUNT } {
	# Procedure called to update INPUT_ROWS_COUNT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.INPUT_ROWS_COUNT { PARAM_VALUE.INPUT_ROWS_COUNT } {
	# Procedure called to validate INPUT_ROWS_COUNT
	return true
}

proc update_PARAM_VALUE.OUTPUT_ADDR_WIDTH { PARAM_VALUE.OUTPUT_ADDR_WIDTH } {
	# Procedure called to update OUTPUT_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.OUTPUT_ADDR_WIDTH { PARAM_VALUE.OUTPUT_ADDR_WIDTH } {
	# Procedure called to validate OUTPUT_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.OUTPUT_CHNLS_COUNT { PARAM_VALUE.OUTPUT_CHNLS_COUNT } {
	# Procedure called to update OUTPUT_CHNLS_COUNT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.OUTPUT_CHNLS_COUNT { PARAM_VALUE.OUTPUT_CHNLS_COUNT } {
	# Procedure called to validate OUTPUT_CHNLS_COUNT
	return true
}

proc update_PARAM_VALUE.OUTPUT_COLS_COUNT { PARAM_VALUE.OUTPUT_COLS_COUNT } {
	# Procedure called to update OUTPUT_COLS_COUNT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.OUTPUT_COLS_COUNT { PARAM_VALUE.OUTPUT_COLS_COUNT } {
	# Procedure called to validate OUTPUT_COLS_COUNT
	return true
}

proc update_PARAM_VALUE.OUTPUT_DATA_WIDTH { PARAM_VALUE.OUTPUT_DATA_WIDTH } {
	# Procedure called to update OUTPUT_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.OUTPUT_DATA_WIDTH { PARAM_VALUE.OUTPUT_DATA_WIDTH } {
	# Procedure called to validate OUTPUT_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.OUTPUT_ROWS_COUNT { PARAM_VALUE.OUTPUT_ROWS_COUNT } {
	# Procedure called to update OUTPUT_ROWS_COUNT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.OUTPUT_ROWS_COUNT { PARAM_VALUE.OUTPUT_ROWS_COUNT } {
	# Procedure called to validate OUTPUT_ROWS_COUNT
	return true
}

proc update_PARAM_VALUE.WEIGHT_ADDR_WIDTH { PARAM_VALUE.WEIGHT_ADDR_WIDTH } {
	# Procedure called to update WEIGHT_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.WEIGHT_ADDR_WIDTH { PARAM_VALUE.WEIGHT_ADDR_WIDTH } {
	# Procedure called to validate WEIGHT_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.WEIGHT_CHNLS_COUNT { PARAM_VALUE.WEIGHT_CHNLS_COUNT } {
	# Procedure called to update WEIGHT_CHNLS_COUNT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.WEIGHT_CHNLS_COUNT { PARAM_VALUE.WEIGHT_CHNLS_COUNT } {
	# Procedure called to validate WEIGHT_CHNLS_COUNT
	return true
}

proc update_PARAM_VALUE.WEIGHT_COLS_COUNT { PARAM_VALUE.WEIGHT_COLS_COUNT } {
	# Procedure called to update WEIGHT_COLS_COUNT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.WEIGHT_COLS_COUNT { PARAM_VALUE.WEIGHT_COLS_COUNT } {
	# Procedure called to validate WEIGHT_COLS_COUNT
	return true
}

proc update_PARAM_VALUE.WEIGHT_DATA_WIDTH { PARAM_VALUE.WEIGHT_DATA_WIDTH } {
	# Procedure called to update WEIGHT_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.WEIGHT_DATA_WIDTH { PARAM_VALUE.WEIGHT_DATA_WIDTH } {
	# Procedure called to validate WEIGHT_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.WEIGHT_FLTRS_COUNT { PARAM_VALUE.WEIGHT_FLTRS_COUNT } {
	# Procedure called to update WEIGHT_FLTRS_COUNT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.WEIGHT_FLTRS_COUNT { PARAM_VALUE.WEIGHT_FLTRS_COUNT } {
	# Procedure called to validate WEIGHT_FLTRS_COUNT
	return true
}

proc update_PARAM_VALUE.WEIGHT_ROWS_COUNT { PARAM_VALUE.WEIGHT_ROWS_COUNT } {
	# Procedure called to update WEIGHT_ROWS_COUNT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.WEIGHT_ROWS_COUNT { PARAM_VALUE.WEIGHT_ROWS_COUNT } {
	# Procedure called to validate WEIGHT_ROWS_COUNT
	return true
}


proc update_MODELPARAM_VALUE.INPUT_ADDR_WIDTH { MODELPARAM_VALUE.INPUT_ADDR_WIDTH PARAM_VALUE.INPUT_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.INPUT_ADDR_WIDTH}] ${MODELPARAM_VALUE.INPUT_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.INPUT_DATA_WIDTH { MODELPARAM_VALUE.INPUT_DATA_WIDTH PARAM_VALUE.INPUT_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.INPUT_DATA_WIDTH}] ${MODELPARAM_VALUE.INPUT_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.INPUT_ROWS_COUNT { MODELPARAM_VALUE.INPUT_ROWS_COUNT PARAM_VALUE.INPUT_ROWS_COUNT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.INPUT_ROWS_COUNT}] ${MODELPARAM_VALUE.INPUT_ROWS_COUNT}
}

proc update_MODELPARAM_VALUE.INPUT_COLS_COUNT { MODELPARAM_VALUE.INPUT_COLS_COUNT PARAM_VALUE.INPUT_COLS_COUNT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.INPUT_COLS_COUNT}] ${MODELPARAM_VALUE.INPUT_COLS_COUNT}
}

proc update_MODELPARAM_VALUE.INPUT_CHNLS_COUNT { MODELPARAM_VALUE.INPUT_CHNLS_COUNT PARAM_VALUE.INPUT_CHNLS_COUNT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.INPUT_CHNLS_COUNT}] ${MODELPARAM_VALUE.INPUT_CHNLS_COUNT}
}

proc update_MODELPARAM_VALUE.WEIGHT_ADDR_WIDTH { MODELPARAM_VALUE.WEIGHT_ADDR_WIDTH PARAM_VALUE.WEIGHT_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.WEIGHT_ADDR_WIDTH}] ${MODELPARAM_VALUE.WEIGHT_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.WEIGHT_DATA_WIDTH { MODELPARAM_VALUE.WEIGHT_DATA_WIDTH PARAM_VALUE.WEIGHT_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.WEIGHT_DATA_WIDTH}] ${MODELPARAM_VALUE.WEIGHT_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.WEIGHT_ROWS_COUNT { MODELPARAM_VALUE.WEIGHT_ROWS_COUNT PARAM_VALUE.WEIGHT_ROWS_COUNT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.WEIGHT_ROWS_COUNT}] ${MODELPARAM_VALUE.WEIGHT_ROWS_COUNT}
}

proc update_MODELPARAM_VALUE.WEIGHT_COLS_COUNT { MODELPARAM_VALUE.WEIGHT_COLS_COUNT PARAM_VALUE.WEIGHT_COLS_COUNT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.WEIGHT_COLS_COUNT}] ${MODELPARAM_VALUE.WEIGHT_COLS_COUNT}
}

proc update_MODELPARAM_VALUE.WEIGHT_CHNLS_COUNT { MODELPARAM_VALUE.WEIGHT_CHNLS_COUNT PARAM_VALUE.WEIGHT_CHNLS_COUNT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.WEIGHT_CHNLS_COUNT}] ${MODELPARAM_VALUE.WEIGHT_CHNLS_COUNT}
}

proc update_MODELPARAM_VALUE.WEIGHT_FLTRS_COUNT { MODELPARAM_VALUE.WEIGHT_FLTRS_COUNT PARAM_VALUE.WEIGHT_FLTRS_COUNT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.WEIGHT_FLTRS_COUNT}] ${MODELPARAM_VALUE.WEIGHT_FLTRS_COUNT}
}

proc update_MODELPARAM_VALUE.OUTPUT_ADDR_WIDTH { MODELPARAM_VALUE.OUTPUT_ADDR_WIDTH PARAM_VALUE.OUTPUT_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.OUTPUT_ADDR_WIDTH}] ${MODELPARAM_VALUE.OUTPUT_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.OUTPUT_DATA_WIDTH { MODELPARAM_VALUE.OUTPUT_DATA_WIDTH PARAM_VALUE.OUTPUT_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.OUTPUT_DATA_WIDTH}] ${MODELPARAM_VALUE.OUTPUT_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.OUTPUT_ROWS_COUNT { MODELPARAM_VALUE.OUTPUT_ROWS_COUNT PARAM_VALUE.OUTPUT_ROWS_COUNT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.OUTPUT_ROWS_COUNT}] ${MODELPARAM_VALUE.OUTPUT_ROWS_COUNT}
}

proc update_MODELPARAM_VALUE.OUTPUT_COLS_COUNT { MODELPARAM_VALUE.OUTPUT_COLS_COUNT PARAM_VALUE.OUTPUT_COLS_COUNT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.OUTPUT_COLS_COUNT}] ${MODELPARAM_VALUE.OUTPUT_COLS_COUNT}
}

proc update_MODELPARAM_VALUE.OUTPUT_CHNLS_COUNT { MODELPARAM_VALUE.OUTPUT_CHNLS_COUNT PARAM_VALUE.OUTPUT_CHNLS_COUNT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.OUTPUT_CHNLS_COUNT}] ${MODELPARAM_VALUE.OUTPUT_CHNLS_COUNT}
}

proc update_MODELPARAM_VALUE.CONV_IROWS_WIDTH { MODELPARAM_VALUE.CONV_IROWS_WIDTH PARAM_VALUE.CONV_IROWS_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CONV_IROWS_WIDTH}] ${MODELPARAM_VALUE.CONV_IROWS_WIDTH}
}

proc update_MODELPARAM_VALUE.CONV_ICOLS_WIDTH { MODELPARAM_VALUE.CONV_ICOLS_WIDTH PARAM_VALUE.CONV_ICOLS_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CONV_ICOLS_WIDTH}] ${MODELPARAM_VALUE.CONV_ICOLS_WIDTH}
}

proc update_MODELPARAM_VALUE.CONV_ICHNLS_WIDTH { MODELPARAM_VALUE.CONV_ICHNLS_WIDTH PARAM_VALUE.CONV_ICHNLS_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CONV_ICHNLS_WIDTH}] ${MODELPARAM_VALUE.CONV_ICHNLS_WIDTH}
}

proc update_MODELPARAM_VALUE.CONV_WROWS_WIDTH { MODELPARAM_VALUE.CONV_WROWS_WIDTH PARAM_VALUE.CONV_WROWS_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CONV_WROWS_WIDTH}] ${MODELPARAM_VALUE.CONV_WROWS_WIDTH}
}

proc update_MODELPARAM_VALUE.CONV_WCOLS_WIDTH { MODELPARAM_VALUE.CONV_WCOLS_WIDTH PARAM_VALUE.CONV_WCOLS_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CONV_WCOLS_WIDTH}] ${MODELPARAM_VALUE.CONV_WCOLS_WIDTH}
}

proc update_MODELPARAM_VALUE.CONV_WFLTRS_WIDTH { MODELPARAM_VALUE.CONV_WFLTRS_WIDTH PARAM_VALUE.CONV_WFLTRS_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CONV_WFLTRS_WIDTH}] ${MODELPARAM_VALUE.CONV_WFLTRS_WIDTH}
}

