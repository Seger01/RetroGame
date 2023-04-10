onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+BGMwestern1 -L xpm -L blk_mem_gen_v8_4_5 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.BGMwestern1 xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure

do {BGMwestern1.udo}

run -all

endsim

quit -force
