# This is a comment #

vlib MyWorkLib
#create physical library MyWorkLib#

vmap work MyWorkLib
#assign logical library work to physical library MyWorkLiblib#

vcom -work MyWorkLib ../../VHDL_rtl/HA_rtl.vhd
#compile HA_rtl.vhd into physical library MyWorkLib#

vcom -work MyWorkLib ../../VHDL_rtl/FA_rtl.vhd
#compile FA_rtl.vhd into physical library MyWorkLib#

vcom -work MyWorkLib ../../VHDL_rtl/AW_rtl.vhd
#compile AW_rtl.vhd into physical library MyWorkLib#

vcom -work MyWorkLib ../../VHDL_beh/tb_AW/TB_AW.vhd
#compile TB_AW.vhd into physical library MyWorkLib#

vsim work.TB_AW
#Load TB from logical Library work into simulator#

view wave
#Show Wave window#

do wave.do
#Run Graphic command file#

run 100ns
#Run simulation for 100ns#
