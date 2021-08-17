# This is a comment #

vlib work
#create library work#

vmap work work
#assign work to library work#

vcom -work work ../../VHDL_rtl/FullAdder.vhd
#compile FullAdder.vhd into library work#

vcom -work work ../../VHDL_beh/tb_Fulladder/TB_FullAdder.vhd
#compile TB_FullAdder.vhd into library work#

vsim work.tb_Fulladder
#Load TB from Library work into simulator#

view wave
#Show Wave window#

do wave.do
#Run Graphic command file#

run 100ns
#Run simulation for 100ns#
