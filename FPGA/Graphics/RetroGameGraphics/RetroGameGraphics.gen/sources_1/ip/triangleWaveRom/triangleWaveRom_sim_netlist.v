// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Thu Apr  6 11:39:51 2023
// Host        : Big-Chinese-Export-Toaster running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/GitHub/RetroGame/FPGA/Graphics/RetroGameGraphics/RetroGameGraphics.gen/sources_1/ip/triangleWaveRom/triangleWaveRom_sim_netlist.v
// Design      : triangleWaveRom
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "triangleWaveRom,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module triangleWaveRom
   (clka,
    ena,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [5:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [7:0]douta;

  wire [5:0]addra;
  wire clka;
  wire [7:0]douta;
  wire ena;
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
  wire [5:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [5:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "6" *) 
  (* C_ADDRB_WIDTH = "6" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.3768 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
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
  (* C_INIT_FILE = "triangleWaveRom.mem" *) 
  (* C_INIT_FILE_NAME = "triangleWaveRom.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "64" *) 
  (* C_READ_DEPTH_B = "64" *) 
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
  (* C_WRITE_DEPTH_A = "64" *) 
  (* C_WRITE_DEPTH_B = "64" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  triangleWaveRom_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[7:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[5:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[5:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20064)
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
