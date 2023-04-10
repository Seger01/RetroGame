// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Sun Apr  9 23:14:59 2023
// Host        : 63807-villa1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/RetroProject/RetroGame/RetroSound/RetroSound.gen/sources_1/ip/BGMwestern/BGMwestern_sim_netlist.v
// Design      : BGMwestern
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "BGMwestern,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module BGMwestern
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
  (* C_INIT_FILE = "BGMwestern.mem" *) 
  (* C_INIT_FILE_NAME = "BGMwestern.mif" *) 
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
  BGMwestern_blk_mem_gen_v8_4_5 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20032)
`pragma protect data_block
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
BPmSqoMWXpTKjaFxGEhKXCLsJUvXsaka5g==
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
