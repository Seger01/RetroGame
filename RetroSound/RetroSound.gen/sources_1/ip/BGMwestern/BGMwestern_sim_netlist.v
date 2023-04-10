// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Mon Apr 10 15:00:34 2023
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
