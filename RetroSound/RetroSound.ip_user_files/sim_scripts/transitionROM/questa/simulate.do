onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib transitionROM_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {transitionROM.udo}

run -all

quit -force
