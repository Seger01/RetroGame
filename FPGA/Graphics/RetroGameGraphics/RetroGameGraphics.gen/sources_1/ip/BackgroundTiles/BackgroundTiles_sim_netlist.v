// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Mon Mar 13 14:31:37 2023
// Host        : Big-Chinese-Export-Toaster running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/GitHub/RetroGame/FPGA/Graphics/RetroGameGraphics/RetroGameGraphics.gen/sources_1/ip/BackgroundTiles/BackgroundTiles_sim_netlist.v
// Design      : BackgroundTiles
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "BackgroundTiles,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module BackgroundTiles
   (clka,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [13:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [3:0]douta;

  wire [13:0]addra;
  wire clka;
  wire [3:0]douta;
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
  wire [13:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [13:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "14" *) 
  (* C_ADDRB_WIDTH = "14" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "3" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.31663 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
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
  (* C_INIT_FILE = "BackgroundTiles.mem" *) 
  (* C_INIT_FILE_NAME = "BackgroundTiles.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "8448" *) 
  (* C_READ_DEPTH_B = "8448" *) 
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
  (* C_WRITE_DEPTH_A = "8448" *) 
  (* C_WRITE_DEPTH_B = "8448" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "4" *) 
  (* C_WRITE_WIDTH_B = "4" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  BackgroundTiles_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[3:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[13:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[13:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 41088)
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
