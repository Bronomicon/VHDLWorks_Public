# This is a comment #

vlib Mylib
#create library work#

vmap work Mylib
#assign work to library Mylib#

vcom -work work ../../VHDL_rtl/HA.vhd
#compile HA.vhd into library work#

vcom -work work ../../VHDL_rtl/FA.vhd
#compile FA.vhd into library work#

vcom -work work ../../VHDL_rtl/AWS.vhd
#compile AWS.vhd into library work#

vcom -work work ../../VHDL_beh/TB_AWS/TB_AWS.vhd
#compile TB_AWS.vhd into library work#

vsim work.TB_AWS
#Load TB from Library work into simulator#

view wave
#Show Wave window#

do wave.do
#Run Graphic command file#

run 40ns
#Run simulation for 100ns#
