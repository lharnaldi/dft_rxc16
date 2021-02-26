# Rx 16-channel channelizer
  
Firmware for the RedPitaya board for the 16-channel DFT channelizer.

In order to start working here, you must issue the next commands:
(it is supposed the Vivado installation path is -> /tools/Xilinx/Vivado/2018.3)

cd path/to/dft_rxc16/vivado

. settings.sh

vivado -nolog -nojournal -mode tcl -source proj.tcl

This will re-create the Vivado project, so you can see the different blocks and
the interaction between them.

That's all. The IP core compilation should have started and if all is fine (;)),
you should end up with a top.bit file to load to the board.



