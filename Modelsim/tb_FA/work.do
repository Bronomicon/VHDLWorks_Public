# This is a comment #

vlib MyWorkLib
#create physical library MyWorkLib#

vmap work MyWorkLib
#assign logical library work to physical library MyWorkLiblib#

vcom -work MyWorkLib ../../VHDL_rtl/FA_rtl.vhd
#compile FA_rtl.vhd into library MyWorkLib#

vcom -work MyWorkLib ../../VHDL_beh/TB_FA/TB_FA.vhd
#compile TB_FA.vhd into library MyWorkLib#

vsim work.TB_FA
#Load TB from Library work into simulator#

view wave
#Show Wave window#

do wave.do
#Run Graphic command file#

run 100ns
#Run simulation for 100ns#
