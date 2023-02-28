vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/xil_defaultlib

vmap xpm modelsim_lib/msim/xpm
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xpm  -incr -mfcu -sv "+incdir+../../../ipstatic" \
"D:/VIVADO/Vivado/2022.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm  -93 \
"D:/VIVADO/Vivado/2022.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../ipstatic" \
"../../../../ProgHw_VGA_Display.gen/sources_1/ip/prescaler/prescaler_clk_wiz.v" \
"../../../../ProgHw_VGA_Display.gen/sources_1/ip/prescaler/prescaler.v" \

vlog -work xil_defaultlib \
"glbl.v"

