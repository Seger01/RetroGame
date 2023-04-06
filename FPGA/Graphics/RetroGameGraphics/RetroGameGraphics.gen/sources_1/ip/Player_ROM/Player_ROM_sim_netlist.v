// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Wed Apr  5 10:42:12 2023
// Host        : LAPTOP-L296DK7B running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/coole/Documents/GIT/RetroGame/FPGA/Graphics/RetroGameGraphics/RetroGameGraphics.gen/sources_1/ip/Player_ROM/Player_ROM_sim_netlist.v
// Design      : Player_ROM
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Player_ROM,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module Player_ROM
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
  (* C_INIT_FILE = "Player_ROM.mem" *) 
  (* C_INIT_FILE_NAME = "Player_ROM.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "3072" *) 
  (* C_READ_DEPTH_B = "3072" *) 
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
  (* C_WRITE_DEPTH_A = "3072" *) 
  (* C_WRITE_DEPTH_B = "3072" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  Player_ROM_blk_mem_gen_v8_4_5 U0
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
In/Z0wx8hgo6
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
