// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Mon Apr  3 10:25:00 2023
// Host        : 63807-villa1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top westernBGM -prefix
//               westernBGM_ westerBGM_sim_netlist.v
// Design      : westerBGM
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "westerBGM,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module westernBGM
   (clka,
    ena,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [3:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [3:0]douta;

  wire [3:0]addra;
  wire clka;
  wire [3:0]douta;
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
  wire [3:0]NLW_U0_doutb_UNCONNECTED;
  wire [3:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "4" *) 
  (* C_ADDRB_WIDTH = "4" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.210399 mW" *) 
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
  (* C_INIT_FILE = "westerBGM.mem" *) 
  (* C_INIT_FILE_NAME = "westerBGM.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "10" *) 
  (* C_READ_DEPTH_B = "10" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "4" *) 
  (* C_READ_WIDTH_B = "4" *) 
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
  (* C_WRITE_DEPTH_A = "10" *) 
  (* C_WRITE_DEPTH_B = "10" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "4" *) 
  (* C_WRITE_WIDTH_B = "4" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  westernBGM_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[3:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[3:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[3:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[3:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0}),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19744)
`pragma protect data_block
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
r86o/ix0bNnkme+GRTfTQ7S07Pimww==
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
