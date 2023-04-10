// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Mon Apr 10 14:27:22 2023
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
OZNUTWLAL33w1iub2KCnmiBVzMsG4Ys=
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
