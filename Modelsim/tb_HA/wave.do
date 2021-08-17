onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_halfadder/HA_Test/a
add wave -noupdate /tb_halfadder/HA_Test/b
add wave -noupdate /tb_halfadder/HA_Test/s
add wave -noupdate /tb_halfadder/HA_Test/c_out
add wave -noupdate /tb_halfadder/HA_Test/c
add wave -noupdate /tb_halfadder/HA_Test/d
add wave -noupdate /tb_halfadder/HA_Test/e
add wave -noupdate /tb_halfadder/HA_Test/f
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
WaveRestoreZoom {21312 ps} {342642 ps}
