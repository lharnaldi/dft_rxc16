# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  set AXIS_TDATA_WIDTH [ipgui::add_param $IPINST -name "AXIS_TDATA_WIDTH" -parent ${Page_0}]
  set_property tooltip {Width of the M_AXIS data bus.} ${AXIS_TDATA_WIDTH}
  set PKT_CNTR_BITS [ipgui::add_param $IPINST -name "PKT_CNTR_BITS" -parent ${Page_0}]
  set_property tooltip {Number of bits of the packet counter.} ${PKT_CNTR_BITS}


}

proc update_PARAM_VALUE.AXIS_TDATA_WIDTH { PARAM_VALUE.AXIS_TDATA_WIDTH } {
	# Procedure called to update AXIS_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AXIS_TDATA_WIDTH { PARAM_VALUE.AXIS_TDATA_WIDTH } {
	# Procedure called to validate AXIS_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.PKT_CNTR_BITS { PARAM_VALUE.PKT_CNTR_BITS } {
	# Procedure called to update PKT_CNTR_BITS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.PKT_CNTR_BITS { PARAM_VALUE.PKT_CNTR_BITS } {
	# Procedure called to validate PKT_CNTR_BITS
	return true
}


proc update_MODELPARAM_VALUE.AXIS_TDATA_WIDTH { MODELPARAM_VALUE.AXIS_TDATA_WIDTH PARAM_VALUE.AXIS_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AXIS_TDATA_WIDTH}] ${MODELPARAM_VALUE.AXIS_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.PKT_CNTR_BITS { MODELPARAM_VALUE.PKT_CNTR_BITS PARAM_VALUE.PKT_CNTR_BITS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.PKT_CNTR_BITS}] ${MODELPARAM_VALUE.PKT_CNTR_BITS}
}

