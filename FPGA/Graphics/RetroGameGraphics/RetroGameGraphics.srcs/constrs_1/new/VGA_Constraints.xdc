#System                                                       
set_property IOSTANDARD LVCMOS33 [get_ports reset]     
set_property IOSTANDARD LVCMOS33 [get_ports clk_100MHz]
#VGA
set_property IOSTANDARD LVCMOS33 [get_ports hsync]
set_property IOSTANDARD LVCMOS33 [get_ports vsync]
set_property IOSTANDARD LVCMOS33 [get_ports RGBout]
#System
set_property PACKAGE_PIN J2 [get_ports reset]
set_property PACKAGE_PIN W5 [get_ports clk_100MHz]
#VGA
set_property PACKAGE_PIN P19 [get_ports hsync]
set_property PACKAGE_PIN R19 [get_ports vsync]
set_property PACKAGE_PIN G19 [get_ports RGBout[8]]
set_property PACKAGE_PIN H19 [get_ports RGBout[9]]
set_property PACKAGE_PIN J19 [get_ports RGBout[10]]
set_property PACKAGE_PIN N19 [get_ports RGBout[11]]
set_property PACKAGE_PIN J17 [get_ports RGBout[4]]
set_property PACKAGE_PIN H17 [get_ports RGBout[5]]
set_property PACKAGE_PIN G17 [get_ports RGBout[6]]
set_property PACKAGE_PIN D17 [get_ports RGBout[7]]
set_property PACKAGE_PIN N18 [get_ports RGBout[0]]
set_property PACKAGE_PIN L18 [get_ports RGBout[1]]
set_property PACKAGE_PIN K18 [get_ports RGBout[2]]
set_property PACKAGE_PIN J18 [get_ports RGBout[3]]

#debug
set_property IOSTANDARD LVCMOS33 [get_ports debugIn]
set_property IOSTANDARD LVCMOS33 [get_ports debugOut]
#debug in
set_property PACKAGE_PIN V17 [get_ports debugIn[0]]
set_property PACKAGE_PIN V16 [get_ports debugIn[1]]
set_property PACKAGE_PIN W16 [get_ports debugIn[2]]
set_property PACKAGE_PIN W17 [get_ports debugIn[3]]
set_property PACKAGE_PIN W15 [get_ports debugIn[4]]
set_property PACKAGE_PIN v15 [get_ports debugIn[5]]
set_property PACKAGE_PIN W14 [get_ports debugIn[6]]
set_property PACKAGE_PIN W13 [get_ports debugIn[7]]
set_property PACKAGE_PIN V2 [get_ports debugIn[8]]
set_property PACKAGE_PIN T3 [get_ports debugIn[9]]
set_property PACKAGE_PIN T2 [get_ports debugIn[10]]
set_property PACKAGE_PIN R3 [get_ports debugIn[11]]
set_property PACKAGE_PIN W2 [get_ports debugIn[12]]
set_property PACKAGE_PIN U1 [get_ports debugIn[13]]
set_property PACKAGE_PIN T1 [get_ports debugIn[14]]
set_property PACKAGE_PIN R2 [get_ports debugIn[15]]
#debug out
set_property PACKAGE_PIN U16 [get_ports debugOut[0]]
set_property PACKAGE_PIN E19 [get_ports debugOut[1]]
set_property PACKAGE_PIN U19 [get_ports debugOut[2]]
set_property PACKAGE_PIN V19 [get_ports debugOut[3]]
set_property PACKAGE_PIN W18 [get_ports debugOut[4]]
set_property PACKAGE_PIN U15 [get_ports debugOut[5]]
set_property PACKAGE_PIN U14 [get_ports debugOut[6]]
set_property PACKAGE_PIN V14 [get_ports debugOut[7]]
set_property PACKAGE_PIN V13 [get_ports debugOut[8]]
set_property PACKAGE_PIN V3  [get_ports debugOut[9]]
set_property PACKAGE_PIN W3  [get_ports debugOut[10]]
set_property PACKAGE_PIN U3  [get_ports debugOut[11]]
set_property PACKAGE_PIN P3  [get_ports debugOut[12]]
set_property PACKAGE_PIN N3  [get_ports debugOut[13]]
set_property PACKAGE_PIN P1  [get_ports debugOut[14]]
set_property PACKAGE_PIN L1  [get_ports debugOut[15]]
### serial communiaction ###
set_property PACKAGE_PIN J1 [get_ports serialClkIn]
set_property PACKAGE_PIN L2 [get_ports serialDataIn]
set_property IOSTANDARD LVCMOS33 [get_ports serialClkIn]
set_property IOSTANDARD LVCMOS33 [get_ports serialDataIn]
