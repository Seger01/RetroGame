// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Tue Apr  4 09:32:35 2023
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
rk9ZjiRIcDSlEl8A4iQ4GVmXKXNfEvBe6g==
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
