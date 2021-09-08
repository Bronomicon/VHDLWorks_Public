# This is a comment #

vlib MyWorkLib
#create library MyWorkLib#

vmap work MyWorkLib
#assign work to library MyWorkLiblib#

vcom -work work ../../VHDL_beh/TB_SUBS/TB_SUBS.vhd
#compile TB_SUBS.vhd into library work#

vsim MyWorkLib.TB_SUBS
#Load TB from Library work into simulator#

view wave
#Show Wave window#

do wave.do
#Run Graphic command file#

run 100ns
#Run simulation for 40ns#
