onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib fp_mult_add_16bit_opt

do {wave.do}

view wave
view structure
view signals

do {fp_mult_add_16bit.udo}

run -all

quit -force
