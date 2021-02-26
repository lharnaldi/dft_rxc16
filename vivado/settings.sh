export LC_NUMERIC="en_US.UTF-8"

################################################################################
# setup Xilinx Vivado FPGA tools
################################################################################

. /tools/Xilinx/Vivado/2018.3/settings64.sh

################################################################################
# setup cross compiler toolchain
################################################################################

export CROSS_COMPILE=arm-linux-gnueabihf-

################################################################################
# setup download cache directory, to avoid downloads
################################################################################

#export DL=dl

################################################################################
# common make procedure, should not be run by this script
################################################################################

#GIT_COMMIT_SHORT=`git rev-parse --short HEAD`
#make REVISION=$GIT_COMMIT_SHORT