# This is a comment #

vlib MyWorkLib
#create physical library MyWorkLib#

vmap work MyWorkLib
#assign logical library work to physical library MyWorkLiblib#

vcom -work MyWorkLib ../../VHDL_rtl/HA_rtl.vhd
#compile HA_rtl.vhd into physical library MyWorkLib#

vcom -work MyWorkLib ../../VHDL_rtl/FA_rtl.vhd
#compile FA_rtl.vhd into physical library MyWorkLib#

vcom -work MyWorkLib ../../VHDL_rtl/AWS_rtl.vhd
#compile AWS_rtl.vhd into physical library MyWorkLib#

vcom -work MyWorkLib ../../VHDL_rtl/BCD_rtl.vhd
#compile BCD_rtl.vhd into physical library MyWorkLib#

vcom -work MyWorkLib ../../VHDL_beh/TB_BCD/TB_BCD.vhd
#compile TB_BCD.vhd into physical library MyWorkLib#

vsim work.TB_BCD
#Load TB from logical Library work into simulator#

view wave
#Show Wave window#

do wave.do
#Run Graphic command file#

run 100ns
#Run simulation for 100ns#
