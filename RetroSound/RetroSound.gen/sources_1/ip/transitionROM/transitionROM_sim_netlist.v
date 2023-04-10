// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Mon Apr 10 15:37:14 2023
// Host        : Big-Chinese-Export-Toaster running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/GitHub/RetroGame/RetroSound/RetroSound.gen/sources_1/ip/transitionROM/transitionROM_sim_netlist.v
// Design      : transitionROM
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "transitionROM,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module transitionROM
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
  (* C_INIT_FILE = "transitionROM.mem" *) 
  (* C_INIT_FILE_NAME = "transitionROM.mif" *) 
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
  transitionROM_blk_mem_gen_v8_4_5 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20144)
`pragma protect data_block
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
NDX6Y4YeL58J1LUrgjRP0TFwypJ/Imc=
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
