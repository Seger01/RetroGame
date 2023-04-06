// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Wed Apr  5 10:42:12 2023
// Host        : LAPTOP-L296DK7B running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/coole/Documents/GIT/RetroGame/FPGA/Graphics/RetroGameGraphics/RetroGameGraphics.gen/sources_1/ip/Boss_ROM_1/Boss_ROM_sim_netlist.v
// Design      : Boss_ROM
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Boss_ROM,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module Boss_ROM
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
  (* C_INIT_FILE = "Boss_ROM.mem" *) 
  (* C_INIT_FILE_NAME = "Boss_ROM.mif" *) 
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
  Boss_ROM_blk_mem_gen_v8_4_5 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 25472)
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
