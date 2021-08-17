onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_Addierwerk/Addierwerk_Test/NumberA
add wave -noupdate /tb_Addierwerk/Addierwerk_Test/NumberB
add wave -noupdate /tb_Addierwerk/Addierwerk_Test/NumberC



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
