// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Mon Apr 10 14:04:45 2023
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
