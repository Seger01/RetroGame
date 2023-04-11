// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Thu Apr  6 11:39:50 2023
// Host        : Big-Chinese-Export-Toaster running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top triangleWaveRom -prefix
//               triangleWaveRom_ triangleWaveRom_sim_netlist.v
// Design      : triangleWaveRom
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "triangleWaveRom,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module triangleWaveRom
   (clka,
    ena,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [5:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [7:0]douta;

  wire [5:0]addra;
  wire clka;
  wire [7:0]douta;
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
  wire [7:0]NLW_U0_doutb_UNCONNECTED;
  wire [5:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [5:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "6" *) 
  (* C_ADDRB_WIDTH = "6" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.3768 mW" *) 
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
  (* C_INIT_FILE = "triangleWaveRom.mem" *) 
  (* C_INIT_FILE_NAME = "triangleWaveRom.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "64" *) 
  (* C_READ_DEPTH_B = "64" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "8" *) 
  (* C_READ_WIDTH_B = "8" *) 
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
  (* C_WRITE_DEPTH_A = "64" *) 
  (* C_WRITE_DEPTH_B = "64" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  triangleWaveRom_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[7:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[5:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[5:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[7:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19776)
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
