# Rx 16-channel channelizer
  
Firmware for the RedPitaya board for the 16-channel DFT channelizer.

In order to start working here, you must issue the next commands:
(it is supposed the Vivado installation path is -> /tools/Xilinx/Vivado/2018.3)

cd path/to/dft_rxc16

. settings.sh

vivado -nolog -nojournal -mode tcl -source proj.tcl

That's all. The IP core compilation should have started and if all is fine (;)),
you should end up with a top.bit file to load to the board.



