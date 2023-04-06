// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Wed Apr  5 10:42:12 2023
// Host        : LAPTOP-L296DK7B running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/coole/Documents/GIT/RetroGame/FPGA/Graphics/RetroGameGraphics/RetroGameGraphics.gen/sources_1/ip/HUD_ROM_1/HUD_ROM_sim_netlist.v
// Design      : HUD_ROM
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "HUD_ROM,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module HUD_ROM
   (clka,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [11:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [7:0]douta;

  wire [11:0]addra;
  wire clka;
  wire [7:0]douta;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [7:0]NLW_U0_doutb_UNCONNECTED;
  wire [11:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [11:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "12" *) 
  (* C_ADDRB_WIDTH = "12" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.326399 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "HUD_ROM.mem" *) 
  (* C_INIT_FILE_NAME = "HUD_ROM.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "2304" *) 
  (* C_READ_DEPTH_B = "2304" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "8" *) 
  (* C_READ_WIDTH_B = "8" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "2304" *) 
  (* C_WRITE_DEPTH_B = "2304" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  HUD_ROM_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[7:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[11:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[11:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[7:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
RgPKnWr9n0dGgttm3akiFhAlfB96usOQYxnEmPhGyTGg1AbizYAjGPWLXBWl50n/d0IA71ci4aJB
wt6mtfyNADm3ZReK7D3mKu037BOgxryoEwwf1kiC6q/PllxsdAgEMfQrfHJ3E2AzSpdYjoxVYito
y0JW6CUDcWvWa4WV0EA=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
M0l6KpOGH3jL8eRt3NCD7e2USYnkg5H9GAnE1PKmnjiouFN3Y8kjWA2PZDAQLm9UW+TsC1HeVlzO
WjNCHkjR/6ubCsIcWfpPZWdIuAenlsyq8Y9l6b8vMj8JSbDEOiFF/GHSbKsn22MJdDJKEhHFK6GV
s8gR2vywRFwG69gIRE4qGhVB+WIg8GJrDpDMYH6lCjMkTrjXuKDUcNlJN3NPLuhJ7tsditwf1pr5
moJRmGpJnip/rGm0g4o4A6ev4CtePjoao8C1wFtzHkERX9oenhh7cGjDMejU5IrLv8NxFnLj1FpB
9MuF1beTU20NI5oAn6zLiLiOtXjf0ghU3AN4DA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
hAsrUfp6Qgjm8yBjNYTEtQmVQmMxzL8TE/3oiQSxSI3+yEkXAbQCXkT9mo+LCdv+fGECOB0istHd
eLtbsiYbxjxNxYkXiUrRE5O+aSxynIray+uF9DJigTEUZu8JJXUbzxK4DDUu1Lm9tpGps4+Prz1m
0gkj13RT/Y/418s2VTw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BP/54Wm/GJmb1jy0bxWJJX4aiKyiWPVh4X3VL30BQrmX4PlEsNKzBJH3Qu8IIYERfnFP0ifAgboa
vypMQ5Ed0BrMePGkWIgT6I8hxJCMFpHdkSK7m1giSKyZzFfTOrVqoNFXE+qdzLfY1J5hBWCvouYo
jllavK4N3gF9FLScH2AUWYVMcVth2QPaTAU2NLnAUNH8kgtBjBfc8/KbPPTznD1QNVqvFstzcbTA
hGQ1ETVPvINQ0KqxxAG5PRhtQD4+pC+hr/Tvk+RSvGyBOfy9zE86OXkJiYs9dSFhNiMFmCPL9DBO
se4OxNNC0/7aBtb1mkSEA9YFDYEb9jS7Jasy2A==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
SnzT9DVH3xlEN8nrr2YrlvTO5qj7L22d7WaBcuKyTaiHoIwwFHrC4HQbfs0TAwkdWcOgmJoATPSF
F6qm0KiddbrlERF3MfKUldeGBJtqLdX+zGw7+3JD7S+HB9dIMOFOHy+IiCZp1/Pz8epKpi238cel
rcVoJQKz406wmXDvOo8KsT+XhRLs9BVCrBErPGGXKYDk6NXAp0duOgQE9DbslzMU83M/kUC7uERV
tQW02240peKQFp2elEZC7Tetvgp0TaFTtJiKN45REi8GQUCKGa85JjNIk1qb/+k95TIIP1xrHirc
6iX7qbwnPetv8TVu2NjkZ0WDEK5RXdOXcxBwHA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
erkR82V0jX8ytva+9MzEs0c75Z7j7TsgxWRLNAUfbbU28i+U9YzuZlSfYU75M0f9jx1gvxtBrfKv
cNHVdkR+i5zfHDZsDwfMEEBhs8wzDCKqe+eex6BBEvlIOesCPXrr2RozQgaQ1PBh/os2Arfu+873
BjsVxFJkbhpzIqlddOo/XZV9Yi+eih7A7pXXEBR6IL7Poo4Ka49MiVQU0xJrDTm+ddOuMPDRRD7g
dsxS/uzdcBcO2myV6g/7YH/C2Ce9s6+UywJN/0JeXSqwA7bsBqqnfFicVAT0lckLopMLiuzK7dsN
EwhFeqoetciFrDIj9+o0xDMWBZhgNP1u68vURA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
R+BI65BKLT0I9hEtsxGnDyM5XY9gzULeTPOSDXvd3KWOzZJAx6C0xlbyZcFZhAEG/QIK2yd0wAi6
IUWxyF/sx3HsqKjhVi5KxnpuXDBOZVoj811O7JukedFVmDW7OHGtBkuiJ5X5irw7mfsEKRQmF/1i
V6lj9HYHZEjxtDeZjACsLY4y1QxWalSKT4HIMOHznBLL8dLbGMlS+ZmFuFn0gcwZavVl7gTkTtkf
W0gn01A9ru7NKsf+iLX0kj4dgItPu9N2g02M1vWQ9UUQEVvfV7lUc7GY1suibrD8aEkhH9S7lZ7n
bFsT4qxyvzg8ML6v4g4v7N6VuyhEtgFgNd725Q==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
jNUVKiwH68vHsU54idgvKwaVJcoxTUuxfgrQpbpmM/IpesWA3wHsGzYClwAxkKzw3KRnFyQqTWcZ
yj1EQ2CMBxlJ0kyNbZW8OK8pXzeigToZ0U6Aq3Gy+j7wBbhe83wE1Ygn82sK8dHTEulvaRLn/c5r
ispy1s7jMKIvYNzoUuZrgyBQyfaYmdqUia8XlQjFd+VwzhTXKwzvmaqHWyaHjfBKeCooO7+oUxMG
OJg83W54EVe9ronFQ8Wr9EOL8ia7qelCAgyQe/bC0HHCoMAm8apI7sX23iMR/wMiPP5V2bQzycy+
rBX/+SWkqSeIE1FLm+muFPvrE7iLwJaW8d1fzdFFjAZ5aIXArbWNfwbK8S0TczXc9lEzmpb69rwA
UJIrs4alo81qGQ32UFhjuMQjX75O9Od1HWHDj5PFaT/Ja5Ly+bK8Cc3gfO6dCE81m7d+B2JBZ/Hl
tBA19QuOAYwT2EIPOdpaVtCULb33cWODWu3qQFhZMmDzKTb3kwpcr0LL

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MnzcA2swaxH1LRacKDou0ZmiiMRETbWIdHgeBgyQz7ILronsXLoB/C20WuFNGEVSiL2/51EZ6MXZ
vMHI8fFcMQCJcuTBDBibUMKv6bXI9s8fTbtrBZppbF/R1icG5JYhqmX4aRnv4W/dxJRjI2L35nLN
Y48E9OfgfkD1sr+IRwx8WEKFmUhuk8dLe0VOK7ywe3XEcneYvrz+HhPj16bGmNfMwNnDgZ3gKKZD
hRnys+jzvAX3HyISrErWXhMKrhWMxXeTNFJCqNQ0LWAVHQYwyKnF5xVpyXSuGNSIrva+QXqOrZBG
3VNLirNVtMRiKLfwZeMaqvswkqBDAa53utlAAA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
d0xXkKtsKM8GvXhDZr16p1+oE3uBtD04BJ76eGGIEj/CFECfHVy9qsJ43oSKjas0+AJr4GFFnVb6
X7gJV6MmX/OboC9ier5joUCGz0mxVzkRZK9a+LPEDcg0K6+cLE36kr+FfxW9Uk2816EHBCMCf5mK
A4eAhSmAb5Nq74F/q0quiG416npbny7faiQ+xmPDfYYiM3UuMKaD4iE8ODlz1w5xThPllWESf3LZ
NTkw6fozyTqZ47vvE21O3dgIGAY1v+C6BwlCK24VwPJa1xs9csY+qTk31j5jjAc1ExlB6QF7t9UH
lk70qdNPWxT87OH7kFT8UvPO1D6BTC3/WkDZfA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LYhdzKTvo93uJrAaiP5OfCDuOnu2BSvPnxlv6I7h2n1+xHtj34LNNKzWEgOg9dUV9cYDaHYUjjEt
DKdWcz6mZ61d5qyxAhpv67fc90v7JVgtOAcT94/Yb+AuLxXFcGA6Gic7uoJtUgz6JmTnb22Dxdjc
KuIewDj4IOTfP8XGXKTaF+cNp0CFrQgTAcVSQFyLFxr0I/9h3S+GZLecA7ntEeHEOfCJzPvy0ddi
7MCdQWECLb+fXC0IAn8V95TumcpINiRAX1BHi9IGJ4QoMrb3jOCrPkFhDMTJj2aiImUWdi/l/0QE
d7wcXlgIEYVeoKYUOJ4mqy+zZPUbLNeOPADUDQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 25456)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
