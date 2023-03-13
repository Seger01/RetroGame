// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Mon Mar 13 10:43:43 2023
// Host        : Big-Chinese-Export-Toaster running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/GitHub/RetroGame/FPGA/Graphics/RetroGameGraphics/RetroGameGraphics.gen/sources_1/ip/Player_ROM/Player_ROM_sim_netlist.v
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [2:0]douta;

  wire [11:0]addra;
  wire clka;
  wire [2:0]douta;
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
  wire [2:0]NLW_U0_doutb_UNCONNECTED;
  wire [11:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [11:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [2:0]NLW_U0_s_axi_rdata_UNCONNECTED;
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     1.1416 mW" *) 
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
  (* C_READ_DEPTH_A = "2304" *) 
  (* C_READ_DEPTH_B = "2304" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "3" *) 
  (* C_READ_WIDTH_B = "3" *) 
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
  (* C_WRITE_DEPTH_A = "2304" *) 
  (* C_WRITE_DEPTH_B = "2304" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "3" *) 
  (* C_WRITE_WIDTH_B = "3" *) 
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
        .dina({1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[2:0]),
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
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[2:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0}),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 17424)
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
