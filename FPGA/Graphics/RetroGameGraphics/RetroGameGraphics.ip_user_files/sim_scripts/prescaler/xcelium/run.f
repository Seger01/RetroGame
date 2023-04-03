-makelib xcelium_lib/xpm -sv \
  "D:/VIVADO/Vivado/2022.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "D:/VIVADO/Vivado/2022.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../ProgHw_VGA_Display.gen/sources_1/ip/prescaler/prescaler_clk_wiz.v" \
  "../../../../ProgHw_VGA_Display.gen/sources_1/ip/prescaler/prescaler.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

