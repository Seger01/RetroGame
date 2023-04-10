// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Mon Apr 10 10:02:03 2023
// Host        : Big-Chinese-Export-Toaster running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/GitHub/RetroGame/FPGA/Graphics/RetroGameGraphics/RetroGameGraphics.gen/sources_1/ip/whiteNoiseSample/whiteNoiseSample_sim_netlist.v
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
mVDeqIE923ImSN4tto4PYw==
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
