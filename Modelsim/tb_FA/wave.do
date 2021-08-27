onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /TB_FA/FA_Test/a
add wave -noupdate /TB_FA/FA_Test/b
add wave -noupdate /TB_FA/FA_Test/c_in
add wave -noupdate /TB_FA/FA_Test/s
add wave -noupdate /TB_FA/FA_Test/c_out
add wave -noupdate /TB_FA/FA_Test/d
add wave -noupdate /TB_FA/FA_Test/e
add wave -noupdate /TB_FA/FA_Test/f
add wave -noupdate /TB_FA/FA_Test/g
add wave -noupdate /TB_FA/FA_Test/h
add wave -noupdate /TB_FA/FA_Test/i
add wave -noupdate /TB_FA/FA_Test/j
add wave -noupdate /TB_FA/FA_Test/k
add wave -noupdate /TB_FA/FA_Test/l
add wave -noupdate /TB_FA/FA_Test/m
add wave -noupdate /TB_FA/FA_Test/n
add wave -noupdate /TB_FA/FA_Test/o
add wave -noupdate /TB_FA/FA_Test/p
add wave -noupdate /TB_FA/FA_Test/q



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
WaveRestoreZoom {0 ps} {40000 ps}
