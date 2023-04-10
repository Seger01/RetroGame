// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Mon Apr 10 15:37:14 2023
// Host        : Big-Chinese-Export-Toaster running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/GitHub/RetroGame/RetroSound/RetroSound.gen/sources_1/ip/BGMwestern/BGMwestern_sim_netlist.v
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [4:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [3:0]douta;

  wire [4:0]addra;
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
  wire [4:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [4:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "5" *) 
  (* C_ADDRB_WIDTH = "5" *) 
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
  (* C_READ_DEPTH_A = "17" *) 
  (* C_READ_DEPTH_B = "17" *) 
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
  (* C_WRITE_DEPTH_A = "17" *) 
  (* C_WRITE_DEPTH_B = "17" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "4" *) 
  (* C_WRITE_WIDTH_B = "4" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  BGMwestern_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0}),
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
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[4:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[4:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20096)
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
