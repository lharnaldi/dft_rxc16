# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  set AXIS_TDATA_WIDTH_I [ipgui::add_param $IPINST -name "AXIS_TDATA_WIDTH_I" -parent ${Page_0}]
  set_property tooltip {Width of the input data bus.} ${AXIS_TDATA_WIDTH_I}
  set AXIS_TDATA_WIDTH_O [ipgui::add_param $IPINST -name "AXIS_TDATA_WIDTH_O" -parent ${Page_0}]
  set_property tooltip {Width of the output data bus.} ${AXIS_TDATA_WIDTH_O}
  set NCH [ipgui::add_param $IPINST -name "NCH" -parent ${Page_0}]
  set_property tooltip {Number of channels.} ${NCH}


}

proc update_PARAM_VALUE.AXIS_TDATA_WIDTH_I { PARAM_VALUE.AXIS_TDATA_WIDTH_I } {
	# Procedure called to update AXIS_TDATA_WIDTH_I when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AXIS_TDATA_WIDTH_I { PARAM_VALUE.AXIS_TDATA_WIDTH_I } {
	# Procedure called to validate AXIS_TDATA_WIDTH_I
	return true
}

proc update_PARAM_VALUE.AXIS_TDATA_WIDTH_O { PARAM_VALUE.AXIS_TDATA_WIDTH_O } {
	# Procedure called to update AXIS_TDATA_WIDTH_O when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AXIS_TDATA_WIDTH_O { PARAM_VALUE.AXIS_TDATA_WIDTH_O } {
	# Procedure called to validate AXIS_TDATA_WIDTH_O
	return true
}

proc update_PARAM_VALUE.NCH { PARAM_VALUE.NCH } {
	# Procedure called to update NCH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NCH { PARAM_VALUE.NCH } {
	# Procedure called to validate NCH
	return true
}


proc update_MODELPARAM_VALUE.NCH { MODELPARAM_VALUE.NCH PARAM_VALUE.NCH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NCH}] ${MODELPARAM_VALUE.NCH}
}

proc update_MODELPARAM_VALUE.AXIS_TDATA_WIDTH_I { MODELPARAM_VALUE.AXIS_TDATA_WIDTH_I PARAM_VALUE.AXIS_TDATA_WIDTH_I } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AXIS_TDATA_WIDTH_I}] ${MODELPARAM_VALUE.AXIS_TDATA_WIDTH_I}
}

proc update_MODELPARAM_VALUE.AXIS_TDATA_WIDTH_O { MODELPARAM_VALUE.AXIS_TDATA_WIDTH_O PARAM_VALUE.AXIS_TDATA_WIDTH_O } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AXIS_TDATA_WIDTH_O}] ${MODELPARAM_VALUE.AXIS_TDATA_WIDTH_O}
}

