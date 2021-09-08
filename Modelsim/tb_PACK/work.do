# This is a comment #

vlib MyWorkLib
#create library MyWorkLib#

vmap work MyWorkLib
#assign work to library MyWorkLiblib#

vcom -work work ../../VHDL_beh/Tb_PACK/Tb_PACK.vhd
#compile TB_PACK.vhd into library work#

vsim MyWorkLib.TB_MyWorkLib
#Load TB from Library work into simulator#

view wave
#Show Wave window#

do wave.do
#Run Graphic command file#

run 150ns
#Run simulation for 100ns#
