// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Thu Apr  6 11:39:50 2023
// Host        : Big-Chinese-Export-Toaster running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top triangleWaveRom1 -prefix
//               triangleWaveRom1_ triangleWaveRom_sim_netlist.v
// Design      : triangleWaveRom
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "triangleWaveRom,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module triangleWaveRom1
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
  triangleWaveRom1_blk_mem_gen_v8_4_5 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19792)
`pragma protect data_block
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
RVh5zc8AsGo2JnLz5Q==
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
