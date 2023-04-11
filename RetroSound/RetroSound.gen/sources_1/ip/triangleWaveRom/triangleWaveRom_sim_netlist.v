// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Wed Apr  5 11:27:41 2023
// Host        : 63807-villa1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/RetroProject/RetroGame/RetroSound/RetroSound.gen/sources_1/ip/triangleWaveRom/triangleWaveRom_sim_netlist.v
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
