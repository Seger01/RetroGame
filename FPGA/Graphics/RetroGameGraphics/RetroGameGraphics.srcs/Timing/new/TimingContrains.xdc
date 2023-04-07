## external clock
#create_clock -period 10.000 -name sys_clk_100MHz -waveform {0.000 5.000} [get_ports CLK]

## clock jitter
#set_clock_uncertainty 0.150 [get_clocks sys_clk_100MHz]