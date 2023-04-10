// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Mon Apr 10 10:25:40 2023
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
  (* C_READ_DEPTH_A = "19" *) 
  (* C_READ_DEPTH_B = "19" *) 
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
  (* C_WRITE_DEPTH_A = "19" *) 
  (* C_WRITE_DEPTH_B = "19" *) 
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
RN82/fAg5QogclA3RV0/tV8Hr4ZLLCQDsz0pSnvcpeeZAToYI+zF7DekOx1TITYDDIYBr7EZi5Eq
vStwnEcPn3N1h70X7DPuUy2xb5Kx0jdYrQlagBTjYNsyp41iIv+MXqkclhjuzvjchZKes6yTGfRC
lIWlywwqowTS56acsU5vJ0e3UQ7feDehoH+BMabh3ypeX/artUInb0PoDF3lwQ8EjCxW1l3WyryH
+2g2hGgER21zps0St7BuRMnV/onwRTozhe4NtKPDpN+OPzTVtAQ08yOXoTkHcFv13FwvyCH3wY82
ql1Lxjz2R6EyEfcUY3rYlK/zv+oZB7D5SW9WzjfjvYnuqdpZ467hQF7lsyHx/mu2/54GNHgqI8mb
QHHQLIDGYWfvhyIV3apKYFCqOKwlXheNex1RwvYcmzxJB+ro42/0Ok6uSWKk1fNChKbTWwxgirfT
T0gvQeFmBHqo5Tr0j8GTaztkzkLuI6Go43fqIfVuhmGucb3MqkjjC8rQFuBVOenwsq4+6HJ6KbEu
y7vijX2cV5KVm6a74tuAENHOAGtet1Sv6pK1+yjQ2sDLYM3GHkfH6vsUzcccWSG37vojXdUBfAw0
wt7nMFXBVvTIVDcEIQH799wkGB+5t4tmzU7V02i6HUDxTyJIvlproz5ktEAKoLnMmzyqfco1jAIj
GbPx4h8qe9d0BTEAVzIAsbvwigSzzLa9EAUUbCuxsja1EKawOaZRraj052HUsU1XJ4utEuKmzefa
VY7wC+smaBy3Ytixo7eUdCP8DUjib8x6fHJD4hae+/YU6T3tGOZN8AiGAZXsj+seFHakC7gyqQ4C
kajqhXdfVHU4czHsPT0YMte3vvO+ybe0iIMgLn9lpLA6YHuyspRZPTSqSv+zgbmO0Q7lEDTMPuG3
5nDdhxkVlAyc/asGXwebnofrNbjybJkD6zScloyTAmWCgHI+xbL9gRCWrFnJLTtkfDa8wNiOGdZW
8C9DpdlUAK0637l6+0gQHQg9gcB0dup2cjlEMWoaP5FsxczFJuqXdKhAMzdQQQBnjOQOO7IVNerY
nD7Z6rAg7j7akTQkc84Zn99ikxVePva3OUyYXNvXd9yEEpPSHCCwjRr6p/2eoXDNlz+wJq90lOvD
3DPq8jznJUKv6fTL0MJneNYuQNGpxE9bECeUDrQtvOYVP0sStoUSd553xo/9IMbEmUP7yiWDzaqW
g1HtX/NDNmmVu3UlzZ5qsW8f4nQs0jNKBK6xTmPpzg9c24OSULlI/TWSjWss21au5/xxmY1qWnlp
dQjWgXTTuKaGl5yId/IBPx5h5elEo7JPJP+OQHflUFeLxLBKxjP6cNRmvZrULs0gDVJg1DPW0o/C
O/f7416njdxdYGKNo3KiJ63R1XbAU2Ln7c4yeWqKYj+WkqQ/qOp+cJv1AqdxFpIJz3DMosOIGBj0
sAyuGfIVYBSl0ESJQuRGO4hnw3PCD0C0O2aUW2Vbe9wCxYrlOjfaIN3iRwbR2mvbNj5nQaHWEUCi
ntCJsmjHbHLirylTvd5T2a9MkMbhSLb51rEpfb8MCPq0TklMjMB2/Q2rS+sEzQThET6RQ1Y/lF4z
/fbBS4wDmVBnx/zZ6vBlgLw4+HN1chvoKclF43D0XykQ2vwf4vQdmPJD3nUKZfyAe6xYVPAqsqM2
35WUxqVHphs5gzjxA3JEm+/m0pZEuTR9+SWB+RtxcOe2riVg5vwSXNG/lxWMOfanqYPjwaotu5SW
iZBrXVCkaFcEXCklY57KHH0D1jWR0UuCxNcuJ3H4DwYt82YGjuUgf4UBfDMTFIvCojq13+XFm9jv
hjb7e9yGalGaFTj81nCZzGMf1aNiZKP5CQkKkwIKh3yAYyGFRiFqyPyRL8a32Z9gss575smC1RAB
PHXyCl3GI9fUv7FnWvTn7LL/2SQSJ5WSP4vBGU8GcWPwDHI1ZYXaeKW4a6oCOJBBxEhnkPc89l7j
JVh90Vlp/nJ890qyeO/rWrem9BdfN7igTk4xg3YYCe6CvAElfT89Mm5cd5AVLzNdwJXXEH/ak4wB
tdh9tVHWdDIm7uJ5wVu6daqU7Xl7DVsnDr9q+xPVYMGHmrC70pLkbMOSTjyXfYQLVs1PljZ4Ddbf
YzMONhHWJoEatPUtCuORgmIasDuLKVY2TNZUMUthcWtRzZ+ZK5Gw1uE3m8Sqkm4JSJ38e88gvkpy
TorApBqUolSUKbockkDKX14kmnHn6mjhCxQtgf+crcBPnzouvvmwLUT2RdAxEJ5C+n9Of7iMY4CW
6doMWHMmzVUl7eNKFHafp6QSlh4Oh2hb+x1b1H0LsTMWGRrV0b7sRClNvx4MNGRj6Qr7R4Eu5lKf
Aak8QrIIusWSgP5LKHY4qJgltHCMpfHehnUEuPaQvOGWsLagBP2KQtujqa0iToU0Za1pKoWPkKUo
MX+n7Z0rdnOEDNOAS52geoT90iHM6GU9XjdKfhV+SdX78D8gO9ZWRjvSEiAYBYbNtIsRPyjWsk48
qJaK1XzB+7l6IvTEpwoz0Hkk3wku/mkRt6f7yA+ErtVAd1pgyepsNO0/C9WO5b3o8IZOBj/SBflf
1GX1tCKLGVO6Dp47v1Y2288bUUtHte7miG/+VClv1LkQknJ1dKX3KjAz+aRM2pqi4Ec9KMUzYjJM
MspDn6CHxaKpqe9qfOXO5r5iqhvvjS42NcJ1rIXP0uFsrzY3U9WW1P7O1llXUxyM1Kgx/bqTVxZ4
NVIUFNQrPg3Q0Gwbpj80LFNKwRoEgDzpLiWpPXEbz0YLIQyY3UH0O6cuqKFoRtSHcCv/428Sb1Ge
ME5EJG74U3J6+/4XZNirkLiE/uOdb4h5ykzU/L/852KaP+M54J5yTlIU2jQb4QKF/9TLw+zWmvr4
zx5oEda1I8T4GmUrEvPp9HuFIyKBJH+YKr6wLkPQiX89URD4EbuQYj9O/uEmXyHgnDdQZinbW4tR
/b5rr9tu6WmwcOaZnzoBQWxZfMe3daxE3lT/cFwR0lWQtEAeRvAJcPv4sCp3HAUv2Nd1DZWVhdMK
b8TJGCV39MfpJaFdGcYjML/Gafj3/2fWvfPUKDdi6rT5ihNF0eOKpAA6w4mkq3ZTD8CbFsa1P1Xj
rhEDhUANC2M1DuYio5MZ6IR1nmeFvLETynbXRg059l0VTBSlQ8N5K1Abmtc/rvPN8dtkut8OA/h8
/EA8MEUsDzr7J2J0iOnzBgLRcpT7SaL04Mdr4bJ6YXocaKS0xvC2c9gankBgZnhEV2IXT9fCf9UW
kINUnXNwaxX9ml7sqhLrxB+b3zkbeVMYMnUlXm3imGXc2yr4aaEOVAnQXiOmhFaypFXSk8bpf08m
llXh3ylmXcwC5psTjCWGO2hI7Ktci/l5J3oWf5UfzXedoKMY53vhVjjHkR/Dm5O9Y6mqwFjFpEIP
z1qpTZ6oKO+flywXuqjYP4iQCzreUsb9pvt4tmc1XvOKX+4dyjGLVHI2CjozfkfkFvM6W2s5O3Dw
YPYeNLARVlpSIbz2mb0YIzWc+wOCHFH8n8wnwK2MquFe7it/4vAcf7zlFYT6CwSwy4JbnFI4tJdZ
MWeLVF4rgFlAQOgywzwUHqL9UKj/q4qqQJRL6UAbfX+LyYGEdLk7BqJo1vNEzHbM9ciTZaWH/k+S
lE5zi7RAseajyWyumJ+V5Yjm36hyudzDRftp/7WPqhouedtiZ4gT/iOf9rqXycLH7YZ/bQFVeuUB
yujjb604Qlfmt3X4ZkpJi4D+w4x4z6CuPyou255s1HB98Wy3B7kUAj4SMoVCe30RnZV7NC3YIVp7
+tRz9Dt9PNMVVc3lxfWf/iyoe67EznirHNX5W7m1DJ1VPEDMbAqrRcsrgEWSJHiEYfL08C3u45tk
3mlNKYXVplIsVbPTxbx/DdHQHthc2Y3G1NuxthmWx4pqz37+BduVwcHfYedI80uQc2qNBBbLgRFp
r4rkbL1/5LEj4xUZGoxeOWD3s9trHJANj8pAghayEbPsTyOBDD/MoEesAliJnDKByIuFKSHDje2+
UHnQo/roeJ9YV4jQnZLNUAXUNgdEMb+Qxdl6AluGnhUR267bJzs9q5BEIsskJrmt4T7flg0l1LO+
b1PgVFZB3o5k3yiVWlk+dodYDZNT0DjK5Es5Csl1f+UjOgxNpoAzQR0F7f8TZvWt2qwK/ZWHb+i6
ywltBWrJsuBW07+gfpKVGViSG5sgNBfdi11dAoYdb2CSxoi0U9mC0VI2xFUz53GDaUdV9VfyCX4w
uk2zqvcoLTWdZlY7ucxRQ2q9B7KKsSY/KENz7MxO3kp0WPX1UgWDWJZsEYejDOSpsB059e8iV26F
tVEgycIp0VnRonCYz0fgga+Xi0DvxAW8u10auEBqh/lVeWLLD5hQxleG+Z4tnofRQm0jzkWawzsr
hkMelh1HpLpcRraQDOdElzY6ca9fbkuat2rCDrsyU8/+MpSpgXfTCk3uOHpcnc5GxHA9IX+yTSot
vUJJ+k8+6pGN0kNeyrHx9ocLfkNhEJSU7qh5M+X91LLHe20/8thjq+bbOX5AnkN8znWpovg8I4/P
1UVypmWruEq7Ibyja3OuVrb6po1HQ/L0k1eFgdbe10GSGhE+fF9NifJy20PeoYAXoSou3O6aSlPO
NZu6zfSWAarGVHtE+ws5ildjz20U1foi1ajt+iTr1Do5yKimxG/gVzBRJBFEZen+zVqOgc7S9MXz
ERnZ4LQHTbkp6dA1fbVg1EPx605O8iINiSXW4EQz7+oEGqiwiE4ePw0jUyrp1VX34cAXCmzUNbJL
hFkuH5trqKgyHSEIHNxSdELJTQ+144VwnWg2sQY55ryXaDFU98uQngqQesTDAsSi1rx6LyXHU0z1
uyNEBaMYXYK4jKXG+jcmm+dus668xmkOBJYDrQujoxdz/i7OBwOxYBJsBL1M42NVT2kCB+EvrOnj
WQm0PYco6jKGjzoNeEDTH2Jy2EY6q/tGIOKpzOYikPN0Rn9kyqYfYD30H61XOVBoncVjS47dMthk
RquhJQ4wjgz196U6hFtJFeeW0ljip+L0uznTvCAWG4GR4BR6QSsSTwQCzOEPUHx3LWIwpUZDyoLj
EUe9dpSR4GRbpq0/mY2IJu55fRqYMa9T0gx06s+q56AABZPYJ07zNxa+Ch50NcwWwBtzZ0XmedtR
zT5TX1Iv5dFAshRIJ5j+ISxC7XnGIvBs7gtaw7x7sCA5+q56bdqX2FSI+YVCvtyeOKWakWxem9xr
aK/sO7g8a2UNh3z7UbMqYOHz3NGECpvK6p9Iz38Hd6ksKXAt4QtlPY2R84AxttSn/g9IobO68Ou8
P0sZyzXdgvykXOnHo3LVTcfjr+HaivSG+7XMKZF3MIpXkb+xLj5e6uvauEXxi1SAidnd+IyVsohI
uVlMOO+jffsNkjKeoSvv9T8MPGdEHoLVLKq5kyCxMtLcEYkwpMm25CfwFudRLoF643hWZN3wzvrY
pa24FZI0j3qPZBCvPyKPRiuN34C74JhK08JjG7AMVaaFoT31IK29DLmFDg//nk0xatb82o95PJUg
TbaBjRn5Se4D6xZdLeLyM/0v+s6g4FI0NHwA+iqrmyT9cwTGnOS3UCGOOLw4KBK2uskqnXwIJf+i
lBUBzvq+gV+djORieJzIvOW2lz+4nQXwSe1ajTWbwFRaGhyp/QMRk5Jo3pBTXNsPEGYUDKCMJdQb
X+yUsk5Ae6eT0WIosryw56miYk8G6GEI3f0qCYu8JoAdGA2G+L6TcLqesrlp6uRENQNkfUrqEhRR
qy/aorxcQcZZST7bLcQDMkYcGUYxSq3yZbqmL4nOki37Tf9geJY2KXRv23GMfhxqyDFaRbekHAIp
ZsVKQH/IUMcETg9Q02U8twYbYFC0tyrhPeWTFTlaRNJQcqpaAHnq3C6foAFS7aUj37Af5hd/oh8r
fJiTBgZz0XvjIoaS7vwSScmWV8UBN9qn0mRkTVrVgK+yQmw+P4pe7ycGqmXAUZf/dZmfK/PHJvfg
guV/iyLGv+ssIoNXSySuU56swxDM2d9SKT/7O9aX3DP9UyaHcrPF0MUPk1ylvaYnSiTIetyGs5OB
BTGgftkOkYsb+JbQGhmuqsuHqQYO0dtMS2NNaD8pGmlLjAD+isWYIAUKaguKdb9JoPlTQebk1EBj
xcRhAdukQsdKxB0jHWsxVghyyu1RUrlLaaNrw2x+/bXkZEeORs1L19gB9H07WEb8fNKXmi1TJIUI
+sELcgucXjc2Jas5nmg1K7IAlKkbzaglEcuWWUM0tOywfR7ziAqAHZqBZ2sANJAHQLGoNKsvj5Qu
YnEFy/zaJs6wmmPHIytzHm+w44fUIMplqDh8SYqCGVb9ocbpCu8SgHjbFZpdMrdaRXozBZpwHlvp
9aouf8LuQiW2AwjLLZxJWj/fiw3uFMaJYgZYdkcbo7zNxk1mERYkwUuli5pV2eUjld4rQnHhnn8/
LDJlnDtCkNqN+ZGXS5j0guU0fcmRvBoSrkyzBGhW3YxAyXT1gbRTBr8htjkZYNbkCwrJsLL0Hqjt
1yHJqkqmkHuw+0AKXEFsx6iYuvbvlwCHOpJyufeV/AACwKqEU1SYcktbkUDSuRZxdGCQ9Xspo8it
cNLFhpNtZ5N9LPhmphztVAJmVRdegwhdCLu5jQzFctZ/OAfKj4ILAjsTgAImpN2tudYN9ngUGPQ5
s9nWNQ8Pwvct8VwOW624QUaiLtzjQhpi/vAQJqxyPFEwxsY5eTKH1cOKzru9bU+zJQnxkG54nsWP
TjqLo9Vy8vZKbebfjd6jMRQROEl5L9p6YjogikQH/uigH3Pb4AjVRGa9yLC+1c8cCqzAxSmnteZG
7MIjRQbeMS+BwiwAxZX9faMYkbiliDdw65kA7jvucVFsaXc/TekHte5cYy1YWFfYhki2DQW396RM
X2A7b8zjpy+EJYp8sy+Z2uiRA/vxbRdO3HUHNRzTKAqAU4GgvUxEPLQu3mKI0PTadlI92rmfaPhE
r1a0KJJ/8syZCgB2oh8h08lGXLZy4dQJ+2Vp9bfLoXR9FxPI2AC12OzaVrIn1FnsBzOpExT2Fh6o
7d1gcu3YbJUjI4G+TJHhW7zOmXLwhCcNqiXiXKn1WC0Mn/VI+ko6NlKjyRKPJfz2Fy+mhAnhOsVm
Jrz6qQzipVQiR4gfMUqFq3VNRERQ2in6A4EM+E5U33vHbQ5cxEJ+xS4wPquKlj4h8cPJ9byhTSjs
DSEV4XU2qYzHJ/G70w+4LuRn+64vvzBmMxUV4gG4J2BfG5wjbSaaMKqSECv3D9fRC+lUdWkRY2EQ
iKCvjsBXWtruLHzTcdXBOIvFcr432uLmz8rYjA6XLcpLSkkdFnaHJQ43gYv7mh+2llJgzHtmP0jr
OxPSyN2YuhzSVYtW4ghVgQSTIBtIr6zHmYVyOpJDXUIqvd8pE8XU4OWdvzp/tx1LvAS5NAStvnUy
li33tYSuD2o9ppW2cy/YXUMaSexVXmiMl5dzhnldIf95LiQz1DK9yULjMbQQAcG4/mPIZWAxRlfI
I4ue7uRnGyCVm46KsIfzOw5IX2K08evorFEhRBxSb/YdDs6W3RnrFvHOeGpik8bh/3ZBWLBw79s8
AKZsX64/1bE/ygHiy4jLuZyD+kncD31q5k+ZBQAQymiKT6qxqEwDzwXzlYFJQdZi2W1uCmcmuBCd
5+vmcO3Nnzu3o7FKVZ70uoIBaOSeY2+YzF/vdz5kflDlV2vEUjEgoMGKB2kLfMjNNhZp+VzCqLO7
kAHtH+cDOcaQq44McoyHUfjZqPmngYuRieziQIApyzg20cSQNaQzchfpzV2svso8qx3dSN2VwKqY
UJ84tByIU+TBaNMT0/eZ2d9Mw4cF3Fy0BfBhEG5wA2jsEnpd3XAT04h9DR3c6CkRYFyo2eLdKLX2
i/CJFkErs4S3KnO4uhzISxLl3VkezH4ENzVLLwoAaU9B21XPC2epcExHbitAwrG1ZIE5lvfpgHdq
Cq9EfRVYfqrs7LbFAyygFS5xQRC5ectDIv11IXAY8hSJmiSY3zA/t61nTzRpUD84UjFX9+d+njWK
QNGGw54oIIwXCt3sIOC3KNGxkOePZA9d4RWeL87PwhH2b3KLBuaSW4/o7ld152imYaDj/JTs9ZVe
4QYm5qqzVDJl67Zr6E2Tr16TIUduWyupotTvXTkNEGTp1cGgjPAj7krEO8/fqa3Wkv8uWNJYhx8f
HI4ooupJBLB01IT1BO3s0Ch1DfS9Al5J6FEHOe+62PAaNGh04lKH2sad/C/bWC9gr+cYeAEiXEE9
FZGSfzrGhes/PKBmrkQQDyF7X+IWj2OaqO8J1NbFgyjBpU/CZziFBWuRnkoQEdRCO/KOFcKE4jSJ
7dHnkOSu5SzBsYv/enjGh/jbMLKm2iyPNOhtj1VjjZlLv58YInFZN7vcfQeJUmThpsi6ReFGpmof
ljICR07A5nwlRlf+6lRa4gQn3rvO3rEK/H4rJDlBXUpiMJE+MRn2lQ+YdB591vEoGorKFAiupnqL
Y8IKa80lGJYMDg+C2zna3dvgbMy6rq3SsXwB612pCpQ1hCY/V8lUUZb80qiV94vHEXTK2wF5nCot
Y5NwNgRdVWLLIiztx2EUHITF1LOv5kEHeKxpCH7U1clnniGs8+ixf/4xXEdO0HzFL4o1oVx1CCDi
JfvkO93GIGseWi7aSRAp+OnU9rAQZmuWMyo+WGFUZneHHRO3bDSM76lGYZ8GiyG2odeRLiRcBSSt
e9UvFnxx9Bfl4bQvtR+xbacJNXoh6Y04GS1nPh0R1/wKRE++ARx4c+S2KVk0gPr4+PY8uOdLPBuA
yVIkxRgD+wDyOnotUspRYzb6uB4kt/A9BanWjn/Ur8NAnWcMfbeF/3UGpKRHK3xsSeznLcsCSiCh
TdnLNLMm9mYIMf83fThbF6NHU9Dq7yJ+EGFayvA2HGnIFcUeHpUZyJIHqz7MJyUMqG7opTmVCrTf
FQ2VdPP8dthR3hmd/lIRAtnQmPfYkI6MYGo6/0J5guScxrj5bxaf3JUbIdSpsBdeZBoZlPGkXZni
2WDX1tL3z/HNIW/9qjByu7LO2C7caI+G8hUV3Uue7rrHhRALVY+Fe6y5vMyHbsAOncRTjGkcneYy
NoSC0Ace7wOrqmg7X5+HQ/LnRGoEd1pNnI2LghZU1Lg63dFiPR1+3UENda4o+zAjMsh2CUcRl/1t
VaKRT6NrU7H0f3UFCWrk88uJjwIgG075OEQXhD/CN7neQgQA1yHwFyi30NthRI3dQVsX+FWpJ97q
amOalxn3+SOU/9rjU0fOQA7SFLo1LYfzmtoVhsMLonGktGQXAoCEVi1TbnAQfnjGaNzqC0QOxMJ4
8hAsNd47htAyHrZVP1ltpborxBXsLERCu9M13J/zY6H9DDbdETGdB9aI/PnIekI3Lfb7AZF4KpXs
tcPnli5TXtEPt2W6uKGdE+n+ny0F+qyMiUoGJnoQCSJTNGw0BES+mJHFNXsXdufoIKBYXvjGVJYD
hV5AOQ2L+4qBSkFot2BTIgB5PBq2YuC6MRINNnb4/0cJVl/e5WfCpMhazj6ZCCDgwq9a10FV5ZxV
6tOxv0LHRK7NgsZniOz0Sn2wCxjTUVYX6lPLo1pk4IiqKM+2MNVsJLd04zjBMHDpSnDsD2sCZa/V
3y3o7db+KabLRME3x7pcSNZP6miIA+AfZVnY1uw235M8XrFPRjZ6oS8Pt+wEyqoi5rlkmAzQ9ctO
tuklTSUH0ONanNiN5KHhC2iT/BceIwMTIcdiq2YcdjrHQu2n4MNt5AXD2JczWkSulG2EbbK6Wr60
TGszVP7WRuKvCckCwnuWFwK5oA7BrMEIEPC4o899pIo3eK5Guy3gWugqPDy6RdhRQMh1RrFp0RJG
y9RSQ4wmVdBFwknoDWiGRVc93QDQiExb/tsaiwt/ma9r5DJ9mOJHvrt5q/4Mh+GZg5MEMHiGa/aT
V0vPrEfFz2dIcNFjyJEll/3WCBnmkM0wBuuythGKLbBQrQgZwGih0BD196zMEecIDAQ/varcOhad
/FgVKX5cORU/9OWE0en9BShoLsALZVAqli7KOEuEE+CD7fc+FquJvR17vhwPFY1DG2kk4N9jCtS2
KNxe6U782QZUG9UhXCr53ztNW472FF4DE8zfzyHpttFYwqLtmSt1iaNXcc5KGZXiu2+vgjf80i/N
WycokOo9YnydJKvbi5BL/cJFmxcrKxdjUtbZqYxMZlKnYDuci1U3j1jqQvBsguZXgbR8dqTaXwo2
XHONN2nB3G8a+BbF/P8ij2YRIWkHtyM/Kjd2mdqH75pujSuNCBKRbmB3f35jcWVfxlk9d6H5W4pT
12P7mSQrWLvC1IvQ8e6z1OMdHj+ictAY6kZSTpWf4oCWRxIjhmwpHBW33JnsH9NXlEOzrHla/Hw9
z104X4PpDzFQNIUjhcrnHXyvqlPDBCYqQ39Iw17FJS753ElnIBRXgaQl8SP/uybDS1ikCH1LASdU
x3xuXNj2IIqoOUnUIJT8IyFNauL5YMZOFrYD/IPVbxWOaIPmug7RacqPRL5eslc83ZZhSfzujifI
vl6e/I/hjjElXKmO9/L3zdrj5LMqOAw12DFTD3Goxv1oD4gYM63eaQRPODzdGhsrtJ9iW8mlRP1A
S9yT9GpPIZie1H0TwOADOW3+r4fPWJGrBPVeVbAXzhjF4cf6buqyxyxuhcPj/UYpQct7VatcxrDJ
wELn/dp60g6IAc52kZFLHUHZTAWTlbhmaftPj/zsp429c8hr8Rv55mQpv35JvsqknoMMpzaRVMIj
cZCHjtNU9ClTDIrLfHtAFcL01u1mxtwPnWmFdNQmE2zlqd7TGghylbNPOHF0j867caAJfI5ew+oe
Eg30z8BTHibtDmk3l9WLqgzxeNX5eI2ELRceuJJkvrd7UNlsLdRBPFROGxo9t/DvOnzusZUqS9F9
6mKmah58VC/EZEee4NtZD09aB0+J89ZGcBDTlaHFD055LGOrdNFaLnRb7k2KaBSZW+rqFnYqNPR5
GgSVdYDWgHqIAdPMSJiMo6EjDmXzR8DNk/K7/yfIKVRLN8hcgXEyECh9lFHAinUJsVxCKR8KYS19
2WSHlZFZDqJi3hQcA4Fy5tGQN0toKnBuxPXRL7ODWSXSeWF02auS2W4rKTFxKdvfxsAZNQZv45k5
ZQoHvbz4ogF8B3oWaxU5yXu70y5Z223wR4OKuqa4SEuz8FLCAWQN53WiVoo6theJh9CboVhMantc
9oQb44EzYBI36K7TwtBUaYG6i3QDtUmuq1HyayWrppjSp+z3/UpKBYfcvI9EC5Z++zFPfvqd4nF/
8rHO9GMGRumeTpgSHGQ4+HSBI/5PlIZdQWixXU1zvFIYrV5M8bL3dDAoQUt2OZX3ghrKEAKg+2IE
8ymo8ADwIwMy3UGTV5tAL2oqnlFjpvYcD9dxjh07dzSj4U6s6fGnx5tsLoMYUn9nyswVYspdlB4G
thDX4uHjqtEvwRtosBtzu0fiwg5kNLfIlNDZtWJ5E4EkhZ1AOWXVUWbNWfJk3Sl98g/uilm6kcdM
p6TPA4yLz9gXZo3yZgxdVr4Pvjvo5+RTnG1RyQK3MgEQ7IU34SRA2XmeHh5UeOJ+7RK1bBy+M+zI
hMIntXoXFb8ET/RlNuRScHi3DUyd2Wm2SEYb3WiVZFasSy2w+fcKfwoWUsXbbb9VMyz1wlrboFRc
tjQaMOJjmkWJMpqGHpHdTqRW2t6qoLlszYAznv80AiXMysvUJS/9Tc6pBtT3hVED/lvbQRCaP2sf
zK5wt6oohIUUqv3qU32z0VNobLEKauEYKjTOaiI4QFQhsnUWFR4tFG1Gj+QGp9XeF2Gcy/F0wx6x
cy7d8aZ1vplzMtJNlLMqXW6ycLHWDJW8lNrxVxiLBcHk39KG2o5G79gOYy6vxoLAZoB+FWnd46Kv
VP3MUwd3NxAfL/y0LGkdI7cEnnOgespuzgsY7j0Y6M3MZ/yvPBKryST8GTG1viCd9sCm77hPQHXx
9yUMt2uDY2p0D682olUHns4KVYlMiaSg04FM6jXnjMcKHsEYe8jhK2H87m1YTvtqWinx4GPLiNjg
zqR5RvGN8WM54fwX3BefH/mB/VRvdffoq0tjsdVWFSooBUPDfvaw6VgSBVz12DKv14N/w+lRckR9
K/dBIT9Sv24y9Aeu+/V+l2th7g+BT/qA2Cbu3sZyQ9xkwjspcY5Pp5kdWYyBPZynCi6yWmMt3Oqb
It3oVg83NNnJbb4nHYjxIxMmsAjZ1jzem6PaiYqwlsg4GiNaxvsqhqyKJhIhO27sC6jfiU3tvWDS
scQbGzMRp8jBSiNQ5BJRRpIWP8qzE/PUmJDKs0UiXTnXfV69ggv6eKcYbHaQTlX9TxvT7RKfFGvX
h1ooY9gzPZvxyyMZXClcPuEZA8G207y9o0ygjTt0qktzGoq7nQPaU6I09QHUaLE+b90Gma1oSt3s
DGSnIQhfTg7vjBEaaIAWSM7DlTgY4P+Wzl3pYWkfxerJwd/1aYRsR9YoTtxDsN6sUnPAOf1AsK39
BM/vcowYckbUVA1pzK+CibozOgOz9h05aVmsRimjyfaM8RZ5gpXVdZ1sG9jhOqNUbw3inBe5ikic
3s11PGXFWx3NKfeC1ng5t2MMpmQoIFxfRt5b4NSBMLVorOgip5GSqbWt2KU7cAVBf0CyCzeCJcgZ
5O3mZ0S0Rq/t1d1CFokOm+OsOugkTTgog8q/XPmMeZGJFH2ocSJ853GJ6D0Odv3sjVfv3O8JNHH/
INKfNe0CnbwfQb52Htb2yJ+AuTGQQHm3uk7HdCGWSjGwSblgHMagym5AadGv7ad/y3KVWhwdbFn+
kgkbOMRZZ1K865sBLeB3xNfXX8y/XaZNiaQJL6zKb064M+29obOkFtkiPIKrN9qdAYbKg/mngk6H
+iBx+V7BxNSMHOqFkNNWC0c6gXnxRn2TUv02WGTNpg+XuonyWIgKW4BUSaf3cBnS0cyaLmLFf4HT
WIYVhktPuP17OXI1oB//1mQcBectjIDNs4Aewk28Jyf2PPMETgCztj4gf3VY7rPvutVsYlJDBATt
/qXiSliC3WznQdulFueSP3B+X4/sjxgFWzxQqeEaW2UvJeIhIAXIREBL+BAVSi9axhCVq4OR/YUX
F4DJaw7IsMPRnhpvEqCJuiA2mfnqxo0XuUA6wSLgqLEvaS8G5pFpOgZOUQSbdX+2qS3FdmxwTFt6
6991gObgvkVLTkWSUeycriaib4Y/GXzRvtbE+pT3sritFu1nJJH0p78ISiERmRwvAvsp34lZ8XlR
apa8p7paqkh8W02la8KAd7olyJhRi1sFVv7g2BKhZsNg+V8tEGozH63GZ5SAkvf2F8Yt733UJuNi
+RS36by9YaYgyAtw/KgiuRtqN+jXkiCA/LL+VJSLT51C4bxFTB5EGc4f1tvlcFxiJjf+CQnDDB4G
CiK4tfsgvqwDzXhhpltnuI9xKGonZvoR70hGIc52/IXr7wEDzcnYw1st5bRDoeJsESN5g102swGu
gvYAHNA8jEKTHjTRglVz7e2+0CxQbl9f49oen4VO16hlMpXbNLprD8eqzVl4QZkpUaJymgI+S1IS
MFHyko8kToRColakhtmLlgQQReESKlGJMDr40ZJ6n8IN35CehUFK17JutzfLqZPBAl820qTzvs4z
78MPZ7KZ36ceqH7K5XdQYkilkaDUPoCH5Yg9fCWnyGYzDyDuA2rsSuslm0i6Vn9NrJtPH5a/LcVF
56szGv2SU3i2/6xCwbpDMWhpxQemE6y8z509rFmKtD+1lnXQeEB1oHeQYp6jks12mvIf8Tpwp1gj
HcqaffGhFkGG8zlpNn7m9dveN4yRRlCYGyGjScI0hS3hGZxDQ7fpW4/508WiKBBShCHnNWwfwKRD
7QEV+IavoG/icFYV6A54nrRdcJaAGw0whjzocRJkr0kNzcWndIWkLCIpmDwS5uh0WWyyZakilcER
vcZ9NgNk1ItsgKnUKkA+FAEBz2XkVQuy8JLBrAaxbnwvF4Idk9uiYTKyZlYf239dvXp7T39SBM7z
WiMFh1PX/k5yqAj63WxHl1wgHW3roWLrNPs7LlqWYT52lywcvaQYMs7RiQv+IOwtm1CwmRIls9sT
YuXiN22YzAkT1ioTBkFPvS8YmV1HiwWDRdKXydtgfsW1FyFASsHbPcZKv1WdfhVqaSgGk9+Pcjnz
9jW3d7noqz/LSYMa4AUqCnLvn37yidy8BLtKm1TFL1j0zLWwX5R7Pb39qKKjbdUeMUg6+A3gMLXG
0670sc5HOeJTf3496YfSktJ1+YFmcZDBEA2+HcUDmdPhv6xWToqtVx5DOkPTKX1w6zA6wTvJXSFR
2heXDJPekKm/P8CM/G3Nf8zf11uXOhUdPol3+ZMGdnxnkyh+6S4+qZJ0q3U1lujHtZPt9YePQt0A
2fn/zAex5V35LqNGtxWXyREfoLirMmdFHPAdcVDAvy5lvyQx8sULP53QPour7aHGtow/FlkENZX+
i1ALsqXbcd4t1UZAa0CG74YiewuksJ3+C5x3hoy5BLVrvQMQqoqOnnjdfB1xj051TCE5IShBO+/a
DaRKI5V7/336CPww/zLzxgMCnjixZXs03ElRGNy2IVdKMr8dp6ZcUkRwiOlWhoJSWJQv5txXOhs5
WPishOuvs53IVCeE5uFrqjyD4+3VgmMk1pz2EBAWvvphxjPsHJyehLsLMPn4xW8uM7w8XUwz83Bf
OOGQ+BukrTUS7achZUU9n9vRhI9M7GyTTLK2zD9JFHV5yG8IFIvFk2OqCP+TxC25JtjE4uAVxyPC
sHWGZN5xBef/Hi2SXRjl1H/QWu2avmKq4M4uwcV/Nq3hVM4Hhxrqm847Mra4hMz4SwaxYfENWE0l
9kQK9A0LjUSKXFOxB3VqQHyDgbGEmWD4afUoSO0pJ6GdZzMsEwVpB6leJnnIbP1UX1e0gjGPyklu
qcNSAa+sHosYPMqRU8LqHIhOII4UHqGNgskUECgl2Sa2ApGE5F5c16+cb0ZaJFy74deaRzlDqInk
jjFJYKECq14BhxioTKVPPqy3pFIz/tVcgxjAjWen4shx3gPoe0gmlrUyrJWCAMm/XHNdz6/ePX+d
uSoWmA6TA3/P3bXlnxXo4HBorZ62RVHpNeFGsD5Tc++wrMNKq1P8rR435fXzMcIME0aGcQ3SuoNo
cm2mUaG3JMna9izwFmJw+FcQDeJ/GtrLcv+EthbfRLdpRsIAGfaEcV8/4v/BdF2wFl/qaB4xI1ss
bFBBQpaz2ZhhLpwU2OHl8ZuFbBsOsoGMmUojnjvV+5cGiQ4fhf2EG+538xcHRUsm0rYwg/q9iZR1
MzxiPXJaG9TfqXvc0SLD0IEl8hQwakBj1Qfy3Rm/b56o1exAsJpgHpWd7df1ffHo7zU7HH/xhmd0
Pk88dPVmc5K9FDQBOybhuZwAAFZpifFtJXoFas1PpPCKUxmDE+kpMXdZcSU0MEMPwFiX1nqxHcIH
FY6CkgT3SmAPzulxnt+IrqQnKCiTEDOzJ9YOxVf4aYOhvWjhzfE52vsfW/45q+xWNMFqN0MLHC7L
3eA4xa6p8vwLucqV6uQH0n+vfUhtMOjYOWoSCq2ATEJBizj13oj020LqZ910XefvhiRhqTWBIf6p
M71uBDedfBHwFY0nYqLvuXSFvKybLvWe1R7PYKyeR3h8G8/hee2yStG80bHgXmRb5nQGnmQFg22W
0cdVL97HqLTv9I+Y7xyYzCU0dYhAdDJv8pZnIGOP0VbClqGhKRx/k+o5UoNAEIUuBsPtVJ3TcGTE
xkSh9myCIMgMwZ1Wo4W4BZMsrO9YP5CysCm3D9Qr4z54zu88Hx2xlArTqsyzXCe5OIH+NMwAxMcH
ZT8Srj+CHQR3flGY6dmLeseaDWktJla5b8OIMUFVjmTgQyXP0obS/I+X92ROEeZfrwRCWWRLhxN/
icTP4LVVPDJW6U6VGPZDzH3X6LmfmKD1/MeAv/IiH8yGLtNe79HOi9ztlRUXVPaQxDIXyFFdyRAc
YfRrgEqx75JDV/Yl3todX7Vr86PYxshYVX1kf627Fss2+XF2coVAV6Xs8FIIbuxVe8Urjs7IapQg
s0PuUsiQWg3k2x/AR2NysKfg1eyL3DTb7gDigYZK+PNJmHuezu8PAC+bMSABGUgzKHOTxhYB5I7x
kMf1EF1orqesSOozzpw1c5AdreZGBL2DeBBiuUAycqY7nwZk/S/E3D66Em5bQspSBLPfpLnpN3ku
13fWDtRqRrc8w+0fSj8V0v2GnsRsuoHSn5JRcplZbUr92mTAxxOgloIX45BwagI8jtXPhu1DqtMM
IqxKk6csk2w7AWeRnwR3ESzhHsXNLnRDlchqXfWv5wIumYdS1AJMQ6IMFVtXyNxgWU2wfTYnrgxL
KmgntM/7WMjTq3Hk9vcVTqhilZ9jkpEasIgJlez6Nf0k8d0Xuc/+Ra4jyYQqcJX5XEhIC/iFfTOq
kyALcmCFotenv5Tc8FVRUkU9l0/i5vtgVvAbVbMmd93cOH24wopk7cgbzbH96Sv5KPgnNoPvHZIC
bf3gNYiNhUf10S7fBNhiBI38gOUuzU4q8Vnxcz7amEAQGNK1nlHM4cCmYpUxSBosjRdpk4r7GP2s
ctaPUYq8DQnXkVhLYNdA/re0TFf5q6NAHFyv6kPpdJ0iWpOqh9kj1SVjF6CjfXxteCDLVCbD8i/w
S+DOem7I8Fqc9aEvZvpniC8V3JupQNoc/WHyz09ZbR8PnuPEL5+wvcm6H2KGlOcH8FO+DV5eRa8Q
ea04exL4vxZtNF9IDTbHVPsyEe9QXDjj2rtbNVW5b/+St0Ro8fn/ajWOxN1IyD3TS6h9K4jtjcn9
4tMDrJ57AhGRDjHCfbrNM5uBsP+R1W1ZTmZW1JLv0LehP03w6ZXtitm0BpG+Jt4lj8mYjqPiXKLT
7rBX5cx171x8Z3q063i2lkruzhxAU0aPso2VOZ62naELvf997LbTaKVtcDVD8gvp4HXc54W9FY1F
bACUpnZEHwT4/eP3Q1WL9SNORnQx/n/hvYjRUe7N0+aAg3ChOt8Ac4b/RxlYPN4l/xIlEb6WcR2F
F+N0AQryRimicJK7Aoo46FAPA3jvpBHE3QBhYCa1GD0+fs1fKJ/952P9ld5FLgoS1zhveO3qzr97
fasSrOF1t+2eY4gImf73ejAngNKxNtxgrJgxgnD8aInvGnpFvtHfH7CjKwjpSFp8M0KuGiwXBvMS
NR3LI8yop/wVNKw9pvZO6fOB9H+ziGW4wXhf/PPRCi/pE8hGi8SgKDvNDsx0Wyc5BGzERQA+VeTJ
SF8bV6ZSF/ka4pTYsKyGFaIicNMbVM9bIPYjotP4cnae3FdrN+6DABh8aTwaBJEX3kWmp8wV765c
xNTBCXW8mJWJbNMpv/wED0c5gJeIq+eDVKuIBeC4sFCy06ehYIVPTFYdNv5e7nDLaoeem//NDMHY
3NpIHw0YvGvg4PYd217/2PDy6wdDJQhnsXXZQNYKyZOuORFwDhK3a9Pcd2o1kPPG7ZKftTPa/9Hz
7qGgacoNdWiTB3/8i974ND3ytv+GoUIsXH4sQdJTDtJrteMToxcws1J9qakg2zd8dH+/RV7DxQ3f
R1uqQsBVZ8eA71TAvNp7jp9urF/g47hnSzuhv22YTkR3UQfFnVFzx8z4GAS9hqqJc6RZUr0WkMIk
Wg2WulBtOni8foaGiaH8d+9NGWGfldXw5Q3PPWMx1/o2miCeeSjr63zGxvDSz0g7Ctx/gbYwKIHK
dRvGwqQm96GSe76N+wENB2vawoWX0hZog7Gn7ReaIMoG+M1kdAYAgaCILgB7QI18Q0vtTBgCoE2I
1nUf02PkqtW4twbJdThsEaYqXNhBD5G0M6tnXrF7c68QR/LwMARFHElEbZU3y4qnlItQ7Jfw7yVa
crCCjNkZ5d4emZ9COCho80h6a6V0R+oE8xWiqIu/tfwubbwnfpUz8KTGHJhGxORoZUxu7Og+DNh2
tM55UNeHvgVGP5Bkc0X9/Ag+IKjKqcikqpskXqRxV86qLlXERvXmHiu4wjLrkbQVnFZyWXPcBeTO
oI+5WSzOiKQkb3EEeD/Fc+Om1ZLHou7gyO7Qt+X9oTy1TOmO60HRWgq8d4tTD2Chk1eXf25Znerw
qhsKAvbTCEL+CWkBtGKoK/KA07Lo+oH5VFKsLdDPzWdmLmZY7EEHRHPoWXWjcVNrIh8FZPrdf/rx
HRO2XXVpT4t4kYlH1Jy8P4mHuAaWsWUP7Mn81G1uyFD8kxIbU6rMH7QOtO2WKBJ8MbcqWYQP9b/4
BYZPAATQv6Q0Bzs9iBSsPY2UFcHBrwdqCqEF14YzVvBwkXjJpTrlAXa7ak/99bLV2+l4q68ivRMQ
p0r44XrXCs1e6XrbCu2EEnGLi6dxBVMJCG//nBLm2QF0b8xVlp1hYnHhNI30Pf1J6zpt5NvOs4VV
bXEHbz2w6dzs5Y5h2HIaVafal2nF5eYTvzyF9VrQNwBvHpqkQPQIDhAMKTnbDzakx5lsPXFxGpD5
4z36fQClT+y4T16mIbfyhAlfE3XDJtE3sBJEnHVaeFb9H3vWw79NkLESG+U5looMfDKUY3bNCt14
DmiVzpSib0gVJsRd3mOTP761teAuJuBAnRluba1//ADmXmOEHlbJKg7JZJITaH7yEPgWAp5QrRIM
hSnDl/7pXJjiJy0jXd765WRZSYAvZe85FQcAsiCuOdWgnutKi7raiEvc7sKcZmxMvxjOyz63dy6T
/2GoUx2TXmelykzcgS4oKOxlhExi+O+uiYgO4yEEgi1jhZ0DeRCEUhSOolrpj2zYe7Eufo9Kj4OM
MN82lz4IiedxghXgYxUWr8J37pS9CnN8SdkGGRPkpHWvFEp77UhdobTjvJMSZ/Quvyqw/wjcJ29p
UhGBSD0XqV4y4jjYu9dat8Mx6zabdu36iaci5vk+WlkSzuCFu6CpAmpyyEpIlkQKsN+gGRTofXWn
bgx3H96aL5ZyBWEW/0by2e7sFO0hFpvyWpETz8vF7bI5bHe88lg9fhIOqUolUzQa9giYz064BctZ
eP2E0nyBCkFP8ocqkStIKdqt5r2SiiiZy6jBpOt8s/aMrnBt7xCtsswdNwwILB8B0utWKl38rCaw
VEW/pfeDREoV3FOXoAYg26W6wFXb/q+SDU5HMtsEoEW2uWjRHWyhUT1fXTVnOLx+1dUkZvLBbP9G
KIraZTHCQ0xNKMcqO/hYpTO8ypg2YIzDoC8HqV+NpekU/OR/00zh82GfjEBYo9/tHSk2atMZ4Bh9
K+RWp/nnJswYR96KUiAue0ED51P5rGYjXBY0FN8Cuf0kuwdZ14Hfa3HiipW2XEk+HxeUyss8JOo0
XpgZ7pYSX2xFrjrcV/aMQqZ8rnivmYF/5cAPE8Vy9V4xs5x/386yFqXTe3ibiYupHQyEnSyAhXoX
RETRTDQeI0bHP5A6bM8/hP8FT6xu61rVETFflCZo3WPJp5nc1tP+KqZ0INu0xkxCEx5cma5iKJG4
4dRgiFGp2ay3UX60r6i49Fg4L53n/J/ehGHcGEFQh1Tsu7n0X/twFiT0+i6x0Jus74JbpGRyQbsk
KRqMFhKwS7U64evNXiN1XKLjzHIv3x1WXPSEbcEQbfPCQYgw2F7a491MTsXrCP1aCdLK6rFBWoEi
DBNXcrcVf9jalbZjWQOEoRNmMQacS1VKOOwCxiSEayR6quRG/chKqRgehwnw1r/kO6GcPoU5Sobh
TluxPVfw4h1vZq6l7aJjr6+Pe86MMFIR4xdpj59trIQJvbRsQy1VeqXhyo1GMudoyHyTDE7+VWmt
P3wOZN5tMRs4jYab1ZLmtnoIFhZSZJQEDRV5LpHcyfJWXzk2Eyx0DPHITPC1oO2mtXPtMmwqW51B
XNic28SwPTwHNKz++J9EOd2kIRk5aRNc6bpPrQM7ThJut5qh2NFAAQp7WM9CSVGtTCxOj5RDlwZD
zwCoMoPvbRPrjIA/xgQMCZxJyep9dWe3FfzHKKYs6qcbFC7vgzu5Npl2RxNerzVHsM+vugsJ3OAY
93ZdeOdPrIQpUsv/IY+3IW/5N0csgREBnM+b8SWyVHyfl+1WJGtfcJ+v8yYkKKb4WSHxXr+EAHl3
rJOFwBgGC0FrljtIsKXeZAgMJfUIForheiFKZoRAW0cgwXX2ahJj/Bj4nG3a+/w1amLmCGTZcBfn
v4GBWd7SZp0ZNsWZISdR93v5ObQ7h7MIXDFRQ034RmLI2cQFq3C7VtCTQSGT0jmXQfGpUitWXcxS
Ynpv4Ehp/54AYNtVvVNV6Sdm/dVFhiskY02eFN0PNoMOcS10fbMAVSQc4BsJOg+BJ027TU8Gwdg7
6Nc5fY4jxggVtyOVP6iJz2nA7sgNv6EextOLimvkOwLifBcR5vc8XV5djSTOa6Au4NBhaftA6QuT
GPh10kJlQzWDGxrnFHFW3UC8QXMtPHGEbpxouROTJ7Bc3dHpXT0oKos2lzK7ut6N4R/f0kZsBiiE
dZhzHRlMuF3MRdtQcYfS3Q5ZJ/cC0rfS9cai1QrJrq6Wzc6zpFDLyfrmJKr6QAyaV6kCYBG8q84h
PzD08JK7ExzkE2iUjAipCWNemRECSMdCFAKXqvYkBWf73o7kIZLz0TZ8fK+WrlJ0rwTuojUd/lyc
C7iIzqYtu7blZNh6T7ryVRwbTFM0TTWvcrkkW1H5btrM7dyIi6oFvfikW9OBxLuVRJ6mfbzSodE8
X6fpVcy/+aP8DH5tGLp9KoqdZazVfMjGnHRAZAbYzyAHWyvqWK7qtih/hiUg8KSKd1LSY+HYmyZS
YyQ3RD/DadUh1LL2fMExZVZcnUQRVy+zmUDF77X8p1O2ei6iE5PPqSkWNXqPOsWGdw2z0vkjWqbK
DA3nknGDlvsO1FgHikHUiIRHJPydQ0h0gvlYElYkIvtzBenyuZDxzZVPdM1ICrHqHQ2DeU1idFwa
KFLpbH7eUELlEoi1xAWmdUhcXkdVWWp5hxeEej335E33+WbxVpSUxrK/XfbJ3ZnM2ONiOV4rfDXd
qdHK/o9RDUEmAHDGGWkMqbURK3L37YEDKilldoeo80+DKCfD+OJ3zru69Cyf+i4wtmQ3dCn5O3jP
oQyPeuoVBMkazSTPxxFlc45l06Yc3VCbO5jOAXtadnoQVLOEZD6NA8TC/7b0Q2isKwTYOAn1UcSH
y+gz6WragXvSkXus6EaZTHlSAUbvNkVKtt29CZBwdWAy6RQJTPLYW9FLAZ3b+iVp4ngOdehyiGoh
SywarzTmp7UbHNVR/m+q9pAVrEYjrdhWWWkLPbfk8emcwX/+w/op+j6s7mbdzCjfgKu+hlqex2Oq
cENb4GyyWr44iAi/7A9NHRdrLAJV8DPbfxLUpwxP+Q7uAhMPg1xabHTXinWoDC9kqZ406S7osgKS
PkcBlg73CxwS4oa+bE3Pw0AJ8ggs9Ujyyp8WE6eaV3cuERvsyYSph2QcaCfDgaMur5Jp7s/XAj43
TvAY3w4NLxwE/uveHmsA4+WX4MUsteGSNvILUn2jq22vnM+stRav7qdi4vfgvk75/T4aJ5unrgHO
RRJ7/LUbYLla2UYeqeZBCbf5zUiBiK8iTee88/OgTceTOmwcLbrX11BuKKZ83YH3eZ5tRJ4AoQZX
wjxjkwu9aJGlx5JLmc6pDo7dt6lRc/XGaaTnVSBXBGzSN7m7Vop0Vjt8whCqVNbIF1mzEW619Lfy
wxoTo7Ql4EJRlqdbGj5VmwfUmbMZ+2bquDhaTnFxEcyyucbBzdPSakFE2le8/n1BFtQspylJ8YBB
uM3w029mc0v2/h13MQ5qavCc3YWBTm1OFgowM1muUjHFtCENjlj9W02Po71SE3WpCieM+OpaMrC3
rBpdQp+IGa7+NO1veuC6yY3hDJvz6aYWCPS1yd+f6g+SrISkCWlIY2AzyFopNtMMVwgNz2uWfKqF
+al8AJQ6rWQwLN5NJ6EHqBtuSq8CZ7MR8FR5aC/yAxdHFR0YLXPoDWzx7RAYk3oYwu8EpUhk+v5r
zNYHYV7If9Ommb6duR9K4cxJ43RKYLcDbo9SPlNPO43m2oczjtsuoLfKASMEET+FLHMsF3kX7kwL
tiPTBHuO+1idVHe84o8wVXPEY6LiAGmxCBmG3uXR8dn/lo59YD2g2yXjTylrcl5WcVOjWwc84WM5
WkJYhTzZkk1R6rvT3wosP0gQLQt8fqq7cU12SryIsQkAQVpKn74l6S1vj82WGtjK57DUpPCh/j0U
leWCFqQG6j6x4/MFgOts5DgHsV9piY05/Gj0LFEz/u0sKa/lwOgc/6uInIBmiIxXFdYaa5ypPlEc
0OHZQG3U3/x6mZ2/mqJNOI1Affdcj24FZdsOyd5Gbo58y165k78seEi7tKvcxSxYBtYqlaFHd2x0
o3wMuftEd/scaHRwmCn/UKUqylT33reFsAklMU+cp13TePd3ZssPUL/egVX9rY43K5gYNTJXQYfz
1B7cNry+vS9fgqGKqoIjxNSsWv6dRAiWN0Y4V9amU3OhpuZ5ThEY46BDZY49hfKPOLbx00mSs0q5
RT9f1GWYZ8TOclA3XoH5dleNna4GOAS5vdDhutJPhnSNr8Ko236sbWvnfcyH9d4OjBpBgCUv+jKV
6qWseWEnUkEQrD0InAgXh539f8qmBTeP5sTLb23CRlf2F5dtPxcJso8mxcdY5c33V8jl0X7LNtSH
XDXkVjna+kmGD16v4RcSKCoduD2gxm9OEgt5yRK547Dpb4IQepPNwnRVHKNx+cIOx93FnQCyR5Tg
qEEemv4kVASOSPGwRvG0ncVBZSHY2yGZzbClZmuhGDnMHZTItKdUbzi5AnN8Iuda/sBt67QYqLpj
IlRDBAFCKqhhdgqXc91SZgNLHd9aV5KNbtrQKRGXvFf/7D65AN4qA5MWL9eVOG1dvGsHMDkdLmlU
/sTPAg/QbIfl9LT+MRYj7d0BxG1zx/e40khXtq+9HYvgNZGS137Y8bOeRD/up9UfwVb1W234/NIj
LuU7qZMGuXYUeEqeNYxreVdPukHAwZ8/bql1F5swuvxpDSTGbTBRgsCsYy67vg740257MQizDxtY
89vUMbX5GGEpJTIrXzLQCkdYTjj34l7XZdNTuDtAn0YRJDQmtpJm5cEg5hGdXSksYYAUXfihNVxW
PLZ/Au1H+HDzGF5O9tMgHoCGuiRMn6m+5v0sJYaWcrjX0LwlNqw3BuslMMas17Lx1fXbkW/6ML8E
D7nY+pezdsAuup7BiomAt8UNgA925X5TQ9GMpEsRI+YZuXsHTQtLrfQhnaINmfsmFihr1L/MuHj2
Fgen0CghSsXW2cMzDJA5nq/5gMzxEU+lsYvm5Ryha6uRWek0na1ufg1soqdPgfM/KbgmWV6eKKbz
JTK8D0Kdtbj6mjYF7+XNMuZKj4tGufaO1OYwTb+YvKEJeicVMLsAnjkF/Og+1w6cLe1RjRr0OEC1
wyCwxhPDvfJU6l8MgUMnJMoKPS8XaSsbsugiRVaNHySjY2ZlYIB6AFD5jn+lgbYOzdjVEwcGgEGI
pnNsmv7ZzYpUivuLkQFYPKGcgVz6jAOgd5iOiR0ttBBKimNFL/1VpZgqNMnjzL0zfz67N4WKaglW
Wp8/lxwCUZVv+tdBx4aSaxhJg16fJeYRq+F4FT6mgqngJR0TcePukYsOraEJj00KyuT974xyFLYZ
mW/ZGJtT4UaP/bb7hQacLGmmNoyBLgIZHn00Xja3Z91dknZiLnp0GcpbX01xG/lUw+h203B0pJhC
XJbuavCPhZU3f+6kn2fZhVvJu0bRxUE9aAYv3Zylr3jBMFPLBU2KD7ttyQUb9QLARBhkgKGO/0I5
Wk7rQnWeZgri9UVblzqFa1TL2Krbu7DiUy/jvu8hYoZkDOrPTvYhf9BExh3y3dL7l89wemG3eO0I
M3E3355jvYY+LTCR+JHjygCl3gZKYj9OvH1gSnmyE2/UA0EXSse4sfldAjcjpm9qIJfWoZkWwVlf
/sapIheLfTICJHmkwzsmRGuvYON3AhD7aW/pHOPkmahDvbGvRZCOTMP/hZyFoFQpOVeMYGB5OQE0
brik8x+TNrofKV4kw7zsmpojTvaRielsH4YtvHUHqw1BrFA7FYrTIjEjuUBd7FTpT0wZ6wIwJTHJ
PEUdatHioBqhF27CmS+/9lOnuv2ELdcgWlIdJ9JWMJ3WYYYDxHbXIuILWXojTHKWgB9j+2VNSG61
SaGk7fT7bfe1MWnZrUsgwA3jsJT8PSXhZmmdImcAa1O1HXSa/3Mk47ruMMujzkuTvNP1A3WpCmNQ
k9+jIWgBJMQ4YqOHs3rTQgQFpM7c5d7ncE9M1c1gYSff4SszfqvuncJ4NpbGvCoXsKHhGRd/Grmx
/tx2ryj0IGkLgDegPw6N1txHVgJIefo0drIDr/3PQxUNyVHW1AKuwFh7JxYamvM0pY0lFcPW6m54
z6L01tipHZWcEYg8c6OCtkOwyeqaH0muP47vVNMbm8vXIr1UzLM5utbcjhhQN89097sgt3dXub7W
FPmzasCyL6Vx/z04TqdHYdf14CR4XOPXaxv+/nPoSD4uJ/sFlv7M1q7oO7M88T3nkLDzyjTWWYnk
xA6arhuuz93pxLrQz9SM1lI30SHYOvSJ8ElufssZf/tbHSEUzJcMhbABhWPU9obikKo33Mg8UQNQ
0AKok74jbwkF/95wpKlhgEJDID+GTUj2ZYNPTFThyQxyYgNIMbRDnHCwuGDkrr9jQ1wBcS4bahOP
2uhAL5+VAdVR6R85oBHRmasNaDStDAGdDIycOpU9P9g1oxPV2j8xTF87TR0giR3vwORF300jbzgm
xgLmyzwSK2noJohtzzlTSnlmuG9a/yJefSwfFdc5smXQViyWtJiiMnehO9HHL+2ROhzcT7wHBELr
QRtiJpKF/azQKWwbhlHCoZ/aPpDhcLkWGgZyi82pBdAphPLSzmDo5w4CZmO4NMEFN6GOFYXFD03R
ZajBOXvz4h4zmyeybPCea5u2YmLMS7wMaIA1kaRpqvdiPT7x1NGRWExgu1o/Z/k2zZ4H8mf/E6ot
CZhABHbyR8zdFHdj5DXxMfzskL+sxyr8AtId1jTK9QM3mjo8k8fpJrHqZipnLhpUK739Q0GQ7wgv
wAVzxPqakFlIDDAnFDAIYbqqcZw70ZdE6N7LkIRHDXkBeNR7BnCS2A0ZG+yv8axnBSB4IjPf+d1h
i5qmwMH0mEODEuQxGOozJhoJxzXU2OLM5GA52x+k9wbNTT1b7VLoFnTJNkEWz8UijLo0H37X0xnv
QQyfsvbKEVxGDCkd1SF4a5AUIMYMAUUXFNh8B8e+EY4TItqxCfNtKSD4FLrmUjHMUeuIaWnMOokW
DWbKp58J2JZmx2fDiR5jkNzNCp4D+gAG1SpyniH70lzrKwWG0K6vy+TYr08Q0KhvNnlqjD30XEN7
r0TM25mVZILQxZDq1P8TxbHZN1U/PH9434Y9xH1BIBPorpKHqDkckN7l6qlFgoNbaSbWY8hFiQS3
cxmS8eJixxvSSC8S9Ek8oE76wnfdkg6oQKWfiHAERuj4gT+XgsMzc76E/M2I5Kze8dq32Jd82kaN
IRA9A4HyFXNT2CQ14eoCuxp//8dOy9PkpA55FxnSLAsKHxEIY/Lew8mgghI+91CDSP/VYfeF3nKX
C/GXrMlItiN2BRBJZuBRyC9Uq+szEmS32S31o3AeRPpcxbq/ZHSg8z/ZbnN6aCpHtdXr4aaoCkh8
6O8i8zGgSpCW+grghrUA31i9HXgR2UtxuBipq5V2gryGEgBn/MzbwQoApaVpUCxiIZ1f8/HBCO5a
H6UakxB4ZKKXMiYdyNbfTrI5pEs/cA9qJPEjexq2MxYWk5Cg1CktwQsvjnK7Cs0qsiOC4Dh/mfKk
FFTeVgfpUSswc6fTfaGrlEWFRFrBD0c97LWkIAJbANJ6fGQmha692o9vcfOgcBE6MmXXSG1EV6O2
GyqVlknLxZTOf444XPcLBG+T6GF1lWRN7h3NYqVNfyCqpgU5d9UFocLMVQnTabc7JxokCBtPruFA
+76ZK3+4Ej5MEIX0iNMGRfJWN3nUXgYdXfiPHRPNvU+ETn2tQhSbH6j7hpS/i38lw92/bGpln8px
0FzaJSSAa3q5K/k+xXfB9m7Cek2Swn7Fka2nky6J2ErJWJRXNMhVhl7lYlt5r97VPDgIt9plOLkd
GIK0kxnQlNOBYdVVoUP0Oc8fMZRsReYqexuVdsL2lf8AMlGj9U/Q68fKapMrPPhD+1qX7xFvFU0C
JBMEYhnrQMurkvLQkjQ03iVDppz4ZueOEMhdglZ8UcjZIczMZsYF7q0UdslHSIWH8RSTlVrZuNxA
GbFwDtjAxgr7/6CRhAz+pLdsA3nvHLy8nUSj2TU08zNPkjfICvfc15MCkk4oUwCPAaCKWVPFtQRC
6uHVc6FBGKIJGVUM0gtg6HtZzQsV18zaWQ99si+C1cH5SXgIryEATZtnGsDIM0uAYrXlIGFg2VPR
V5gOXKrcoHP59+S4e5Ft8/IIGr8mOu6n4Wh2m62E8/P+BkKJBqgTfewDaEDjj+GxkotHtTz5aaKF
s9kW+pox0VO671+tO9egPfgHN/SrVlMS1cmAp+azonMXQ6xDrqR0soAmy1CinKNkd6JlwEHVtK1C
eXkrq2rQfCDVUpKvF85VZe151f08/Q5CjC3OuIjcvPLrRD/8WdFPRKEXO4vMDBZVm4jJBjJmvqxp
Vd8cNt0PuVmqGwJgbJcexYUErIGxO8VmzMzDPu1ir2o=
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
