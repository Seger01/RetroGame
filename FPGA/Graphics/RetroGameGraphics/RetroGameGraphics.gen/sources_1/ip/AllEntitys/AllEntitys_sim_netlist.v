// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Mon Mar  6 15:12:28 2023
// Host        : LAPTOP-L296DK7B running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/coole/Documents/GIT/ProjectGame/FPGA/Graphics/RetroGameGraphics/RetroGameGraphics.gen/sources_1/ip/AllEntitys/AllEntitys_sim_netlist.v
// Design      : AllEntitys
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "AllEntitys,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module AllEntitys
   (clka,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [11:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [7:0]douta;

  wire [11:0]addra;
  wire clka;
  wire [7:0]douta;
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
  wire [11:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [11:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "12" *) 
  (* C_ADDRB_WIDTH = "12" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.326399 mW" *) 
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
  (* C_INIT_FILE = "AllEntitys.mem" *) 
  (* C_INIT_FILE_NAME = "AllEntitys.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "3584" *) 
  (* C_READ_DEPTH_B = "3584" *) 
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
  (* C_WRITE_DEPTH_A = "3584" *) 
  (* C_WRITE_DEPTH_B = "3584" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  AllEntitys_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[7:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[11:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[11:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 25488)
`pragma protect data_block
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
cWxui4przRZB
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
