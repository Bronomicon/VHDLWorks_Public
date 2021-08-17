# This is a comment #

vlib work
#create library work#

vmap work work
#assign work to library work#

vcom -work work ../../VHDL_rtl/HalfAdder.vhd
#compile ha.vhd into library work#

vcom -work work ../../VHDL_beh/tb_Halfadder/TB_HalfAdder.vhd
#compile tb_ha.vhd into library work#

vsim work.tb_Halfadder
#Load TB from Library work into simulator#

view wave
#Show Wave window#

do wave.do
#Run Graphic command file#

run 100ns
#Run simulation for 100ns#
