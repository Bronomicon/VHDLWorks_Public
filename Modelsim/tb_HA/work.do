# This is a comment #

vlib MyWorkLib
#create library MyWorkLib#

vmap work MyWorkLib
#assign work to library MyWorkLiblib#

vcom -work MyWorkLib ../../VHDL_rtl/HA_rtl.vhd
#compile HA.vhd into library work#

vcom -work MyWorkLib ../../VHDL_beh/TB_HA/TB_HA.vhd
#compile TB_AWS.vhd into library work#

vsim MyWorkLib.TB_HA
#Load TB from Library work into simulator#

view wave
#Show Wave window#

do wave.do
#Run Graphic command file#

run 40ns
#Run simulation for 100ns#
