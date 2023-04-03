onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib Background_ROM_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {Background_ROM.udo}

run -all

quit -force
