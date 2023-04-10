// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Mon Apr 10 11:48:00 2023
// Host        : 63807-villa1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/RetroProject/RetroGame/RetroSound/RetroSound.gen/sources_1/ip/transitionROM/transitionROM_sim_netlist.v
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
2aXRSLOtCHNCEpUPHBVF0MI6kGotFcc=
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
