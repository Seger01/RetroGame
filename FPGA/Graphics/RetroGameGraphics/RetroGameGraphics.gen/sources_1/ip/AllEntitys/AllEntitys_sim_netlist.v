// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Mon Mar 13 11:25:26 2023
// Host        : LAPTOP-L296DK7B running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/coole/Documents/GIT/RetroGame/FPGA/Graphics/RetroGameGraphics/RetroGameGraphics.gen/sources_1/ip/AllEntitys/AllEntitys_sim_netlist.v
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
sNXgGzEJexVQ
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
