// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Tue Apr  4 12:06:47 2023
// Host        : 63807-villa1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/RetroProject/RetroGame/RetroSound/RetroSound.gen/sources_1/ip/whiteNoiseSample/whiteNoiseSample_sim_netlist.v
// Design      : whiteNoiseSample
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "whiteNoiseSample,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module whiteNoiseSample
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
  (* C_INIT_FILE = "whiteNoiseSample.mem" *) 
  (* C_INIT_FILE_NAME = "whiteNoiseSample.mif" *) 
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
  whiteNoiseSample_blk_mem_gen_v8_4_5 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20080)
`pragma protect data_block
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
XbTdiI1xcCVDVIVPwYYtmQ==
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
