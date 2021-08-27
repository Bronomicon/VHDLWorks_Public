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
#compile AW_rtl.vhd into physical library MyWorkLib#

vcom -work MyWorkLib ../../VHDL_beh/TB_AWS/TB_AWS.vhd
#compile TB_AWS.vhd into physical library MyWorkLib#

vsim work.TB_AWS
#Load TB from logical Library work into simulator#

view wave
#Show Wave window#

do wave.do
#Run Graphic command file#

run 40ns
#Run simulation for 40ns#
