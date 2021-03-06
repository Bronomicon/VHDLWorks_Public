onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /TB_SUBS/ia
add wave -noupdate /TB_SUBS/ib
add wave -noupdate /TB_SUBS/idiff
add wave -noupdate /TB_SUBS/idifo
add wave -noupdate /TB_SUBS/isum
add wave -noupdate /TB_SUBS/ra
add wave -noupdate /TB_SUBS/rb
add wave -noupdate /TB_SUBS/rdiff
add wave -noupdate /TB_SUBS/rdifo
add wave -noupdate /TB_SUBS/rsum




TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 244
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {100000 ps}
