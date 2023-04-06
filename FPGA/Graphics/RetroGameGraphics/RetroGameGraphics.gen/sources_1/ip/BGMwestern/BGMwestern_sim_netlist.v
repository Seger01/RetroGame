// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Thu Apr  6 11:41:14 2023
// Host        : Big-Chinese-Export-Toaster running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/GitHub/RetroGame/FPGA/Graphics/RetroGameGraphics/RetroGameGraphics.gen/sources_1/ip/BGMwestern/BGMwestern_sim_netlist.v
// Design      : BGMwestern
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "BGMwestern,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module BGMwestern
   (clka,
    ena,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [3:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [3:0]douta;

  wire [3:0]addra;
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
  wire [3:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "4" *) 
  (* C_ADDRB_WIDTH = "4" *) 
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
  (* C_INIT_FILE = "BGMwestern.mem" *) 
  (* C_INIT_FILE_NAME = "BGMwestern.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "10" *) 
  (* C_READ_DEPTH_B = "10" *) 
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
  (* C_WRITE_DEPTH_A = "10" *) 
  (* C_WRITE_DEPTH_B = "10" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "4" *) 
  (* C_WRITE_WIDTH_B = "4" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  BGMwestern_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0}),
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
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[3:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[3:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20032)
`pragma protect data_block
7oDP73stNFY3PyCtk8K9EfCRq4KnzHEeZLfv2jcvwDQSaDL9nauadAYfsnA6FZSY6mGwQJiEphp0
aMZB/xJnDMS+hlpciKfizLOcgH1UPu7Ur8e2cshaaUrVPYJquo/0VarDaF4OqBmMigy3P3j37DFg
dYQWlzrQFW7Tt3X4LHxiA9BUGKjDnkleKRzYBNH5zF8uAIqUh6upylWdq4LKlJiC2VwtwFYKGDM2
zhUEMT4SUREYcIWv3rUAHE+VWks1bqivCFVM8muBE1niYYqeoNHG/iv7ZQK+i0X9qwXLySKnutk5
Q1ygecf00bDvmzbRLMfeVYoV2DoU3hZNR6Ozn2Us+7oCIpwU4KUY8CYjQcfoF6tQJO61ATRk3sxL
usk9eweksVCFxolJMFKYYBIbbRFvQRryDr4makJ7HiVGc5Kgr5tMTiOeQPar3298U+52N8E09VmQ
kihRvxQy6t57UpFaPK9CLkkTq3RfVW3eFc7BQpBUzpfP+sTrzY5OXHg9Xtc+Gm+UlabFxTJ/bGIF
6qaLUvEtA9Zszkx8ry+MaZ7ifNjlD7FB6Pqc+I4ktY63ovX6FpqPZG3xTx3JGpaggHxOTxOhEM5j
uNxWVnAG59q3WOzbOnYbaXBrU2qtwB3Z4LiL+Ah1m2dal06FB4jKC4zbJlfzSyLpym6nMEXNhdCM
6cgj4TYZsWnCj1q17qLSq/bJ6XMzh0RB956sebDnjkvkTP3UWW7aD+JFV5/K/5XNKZAhd5dstRXr
3rfnV1MeBhBQ39FOr3VKsr7fwPCGe/65yY9wKyR0dSuLPKxWBWy33Ub4I6hXR0h45kB9P2ecXDCi
OYQTTQhMFaoCUk3HxiAO5qy2D4MJ0JNRm2EJhnBC6Fc3jd5O7ArpXEcGcSthKr1H2K/9JOABqPO9
QIwU4pPYSP1Hvhy04I7ob9njNre4g8cTUfaTvVQPqaOXicFGqEI3FJzYjyn+WDrVSOILfEHKjz1v
3CL+ihqlWPlVmOP/vaVNNopJyywSsviCt4g2FabWrMKPx+vVgemp4IOIUpiQP+ycBkzZOXiUdLQ9
YtXkH5XZ4nMZo2Kc2zSsSmVYfCz914KXdqSLVPopOrOvX3I6BIJqo3pSvILlmK3bPBy4+1QDhQVf
sIJgf8xz2AaYKyXl9HxbepmPUJ/g5MOFi2ND1IEPr9wZD1J75s4I6hMZhsu6mH4FOBZv8IKpHmRO
aOw9gVzvMShgJw5kQBMbvSouOFnMdavdsNFDGs0j19V1E08iEPEn5dbO+5UAkhMSrL99dG6X+1Wv
4AHQBQPqTlGmpyh7NuGWvqVEX5acITko8yzCU7opOunsnRzENpZd+8dbps0A1mGqH22gx+K5VrwL
shXylViQ8/CmT1gHi4niKWkU1vwMVsflUzVjah9q9/szDxaU0sh1bu9WkK8XJ/u/lff+lF0BB0kS
Y4efWWkDdLz+8KhYRRgwnHz2yNkTy9DlAK3OP588+LOyZQmR9IKxkLQIiqkOgJbAYjbvN2rP0ODv
AvIa3uRhZakf+FRvT89JN7QLMdEd8SnJB3FcNAA/y4wrsQs232ip5l3BVBMTgxYULa6hTeb8WP/r
tKF7QexcDjdZmT5RRL6v2o5oNt/wjYJl9rgPxDsFZ9AP2p1XNNsuHBdJHcI0YFZq+qbKwF6I1ZPv
S/6naqLrBzygrpiWpehx3C1dh2neXbRTm+cIfDBHVIMV/WMYhFB68G9wwf4cglVaO1pubtxkUVnX
FJ4QJG80cRTayr8Pkr05dZCC0sfFslL0ha28kqgPsyMk4PvBv15xRQfvauxZ2hn5OWWz82tywUku
M+DB3OwpX4YMbUkTPJHzBiRyk/ZOtox6WIGnrMET4yFoD5BtY8XqsXAo2d6cdOquhfSAU1/D+EAC
ILLsYmpXR5fERj2eWmU4iw4VsbWAhY5t/TwsVUsuhLx9KsqUCVhv+eUN4XpieruMdTuWTppDmXA7
uPCWbPr2SxiZeFNS6svOfBkmIbhmG6FMVVI0jMeoaCYdkv44brS1MfD8uufLiKU5Qx46D75tGZUp
mT9nn0GTjQwcoR4r2EMFOJvpjJ7abYc0lEtkSjGX0uKFoxPJIKnLXThCsBXpHHKg6fc7kNT1++nA
9FAi8V3+NlmSt3qxOOAevq/oZWBTiGyGW7FZZy+mIWeq20g+TFS+e/VrcUg0yFIRcVn0tPhfYV/0
wuymqvn9kIjRKXAHmFYaljNt98lZCGFAhlhuCVHBUeCP7rO0kJnykq5a6fn/D7NRGDI8e/OEF5yO
rhtXiwITss7LXb2ekIUGIYUyAOadku1Wf/A+FkfnT7dF5ghJNI/IMGlQUyvoqUqEGzVsvOQKivIH
1lGeUKMSzsjIWFDxUsWn4TDRxTsfvqyCHJ8Xhqj07a+jocnv8xjZtoO1sVP+YvMbpdIf1Nv0vOY1
o468PMX+O8LtB9c00SNroGmnLTOx3Bk53Dt1vjGPFFawgwMsAuTF8W3ecG45yJlc6PDrtpnY79a3
WWLAHfPwGM0N3aQynZxd3/ciVptsr3NTKoxCa0XFXr4uWmlZDnF6Th62kWXXhN321/mWA7daV/y5
pXstavXzvKWbl1gDpqTTPa1S297f85jZsPJyJhcS4Q40HvUA4sNdUXdgz3iliNnjq3YfPHXeyDad
r329JwiBwO5ZUEkn4jmvVxar43dWktZOVueZXt8j1N+szbX+iJEZYQg+YkNxE/0UiWsZ9Eguu+ZN
DeVOAjnK/H9JJ0qq679VbmvO9UU3iThxvKNvbPZ9KkyK5fw37idiSanPcGB3eZIqeKQii/mqCDX6
xCmvmaA+NUNtIt0Jxq6i17QBo1sd1QEdXQsN4CrwtmH7Deezz0WlX80MFTmY0JGqqu9mfn2Ebgbv
QKIkldsGCqOz5Y+XBN8vTFolH0FxkyKPajmiCVJMWZ43qsWG2ZMLceHjkzG69tjGMlR4/hAd5Th6
BYKjTSi28hZA9yGCYP1GK61PiDgwjHO/4y2w3pL/DkvhHztdqzeU9KunBNQeNitiDKKsl8p17OAk
lhSgEZGuv45DNFGuKJ4PFPoLj7Fl4wYok/B78NPPxVFsk2D8Yk6zFQnqBAskGEDjqF8FqorTEmPQ
nxcD9RWr/3hSnBEz6DhImLdy47IZJQ8RgDKQytVCa4Uz5pbujIiQqbiIFqHr7V2Vx3avfDpHWTjS
BzS6AnHiESy9Ek5dIvIroyCI8BTUbcip3pfSW1RVRsGj23uZYU44tsjispLZltLwJeUJTQHOk6gm
mFuczGRoUFrgbD1f+gYrUt32AkGh2fSepNMXpcWMMMTXcl0xUTpiNKQ9DS6t5XLRIuNDLMKn4DYD
TiPlkE6rfb3JpO2brGyTWtd9ye6x8MCdSQzJ3KsZPRh8rfmeIRSSz4dpYa3OCGT5r15x5iu8Vzpe
9kVIA7KVMwxeZGx6h70Rbebk00L334cgg48OHJcpHDlKtiDxEpxfkaTM+E5+LVN3MQPPwmjOAtW9
aa6SaDwHWXTU+jTFris2zaENTjw8n1WUVJYJP9G8C0xbg63L7Q39+Iunv6pg/qGK3Zb885LcRoPB
v5T3cKfAEguGtiG+M4mYC8rM9u3nUCs5LmkFS+P6jLUvoK8ebbVwGS0E5Hh4CduYrwLzJSC7vayA
ibd2uZQqEoNMZIQGmr2XpHbv1ee4uI1D60Mor9F2amAy9K8dYk9yjmXWDiiDOpV8amNRWz88z6Jv
VdM9Ym82STWBXdaecAzyh4Wwdv+1UlORVb9H0JYOZp5EN02C74jCk1M55YpSmJOasZ9LhqqbR1OD
9Efmr/nWlHTkOybzDeHZ3tw8+hgfXpg5iJ9uHNkO2aRCl4AfDuNomm9TAXFS1d9AvNYZYsxa8xkB
xrqr3BasefxKGNe8RGdheltVbg9iZOyXRcXeSrsKA22ApC8Ns2PenM67ACasUwS4tWhpbCx8q9Qx
4JDgOEyKp7oaYs2rU1q3BorDv+/RWmLDSNpTJhpPhx5G59RKlGCsrXnz9Tpi1aEGOcgtq5/Kc9zM
rLoTl1r3iX83e7R5XlhYpD96cKDT1qcONSLcUwMaSs0M2j9fl6YTV1cMAVfwGDflq3rSFeX+GKv9
HerqR36q23izDwn5N7pgnTy47s29pKp/Re+8ESy1x4luLwp/WaW4vuniQ6CHRCBkGeY/i2At6G/8
xC7Nf3X1kkg0LyB2fe83d56HsEOz/cLu/qbIbzWxlqXaBJZP0tD695nkdibA7vCAJp47kV3qv2qT
RBlrZ87kMaX9Fx4QTHNGdTuoRiadnRx8IQ7k0XtCCyavZctdwOdQt3sM8IhxTRmLIMPZ45vGQdOY
NTWx4shdqX+zgi+yhTdXrUOcOBjJtf/w56qyu+O+heOhre/xZSWsPBbXKfyNFuulJihAAKfso7dI
rktSESkPfeDos4QHjKGiKQ9Tuuqa9BnndhlfuUIR+QN7XtHelYpKaRhzpNsB2aNS7ZpukKpVQRTy
KBwEdcSi3ZRoJbz9aOH3XCdrH3X9rRAPiEr34KoBoiAruZzNGXIJ6VbUwwRNNo6i5r4LKde5E23i
uJpMxpcH2zopYeB8q1vG+RBd2Yc5uQ9I42T9IIHQtzd8oRsR6CAg61ztUq0ikDnV8AH+BY2qQTEQ
o7RJ2biTKHrrrB64rEvoIgw+EUSfVnA0rGOeyQK7sRe6yGfYCysWVwb2tTztsmPTfMC6zuiRDyXi
ZpCynWqzbmabzweBSSj5u+l+LfGnhKD7g3h+i3sYbfKk4WjjCr1djQ4LNAcbpOsmWlCWvEKNq2eC
Pddhn4bpTjZH0sL74hiEqgtOg88cmVuDRNRUGwDS4c5njyu7LFCLAec8RTZFP+eVUqEWLFFcl1z7
n0zjsJVKOXusjz9HUF9U1R9FmeFTZmNkMVNycUq5h1a3UgL6tlNam+TprOQE3coF6vXxj09Z7/aW
Bs+rVzoqriqLpG+K3AB5xfuxzywRNHRMqCenKmSRQsG7esdlPa3l8BAcPeLKqMIBAAy1On299QuG
0jZS7W+UmY+Ea5A9Mb+58L13UPzX7hGH/uoeu1z88dr1jMWlLjUBTwXWueLwCAHpCymvk2Ehf12m
ChrDVnZp6BjfKd+B6z6SM+FbZNVmJVmxs8pk1kwqDkpBGkaeeb2sov/aK4yoAByELguvKrZHYq3+
fQLyks3p5D6Y3SIavMuAa2v3JPPxpp4pZdTMYA9dV+GV9Hzh1gIVDuZkiR0UdvO+32ynu2dMJsaM
xMr5Xxl59zOsFD64gX7C1udZV1YgubOcGQMY9ziM1oVJspNJPQ9q2AM0irgJjdgzfKbx41ZNhqnC
rRZda2FNc9r5D2V/+v/3HwPCmZpG0eHV2McRqOwM25lcXJwG61qJq3GmvvT95+xLSeiJLi9D6zzT
C7QXvsspqJ5Am8NU1EA6vmTyjXgkvGq6Mtl0XgHSe62xh1YvU3Gqu5uhb1M81cDTaKMU+7zmcgUN
sgdT/BjCE6zN0jmmoAFQoM9grfjWwZ0UKiN797uqvEH7QGvnLlx5IQiIRkQwouxqp/uhYS2/lN6V
ynxYi+A09+erzu0dLgPN9awoHYGA5YsWaTBQbLw8+1KsqTl7ORVgM37ewOzjYrbZemGe3M0a5T9B
7yw490gb7FeI6u7oaNkwpodb0Ml+ttcNZ152YNNb+IqUUyNzUXreaBvVPohwEAJibaWRwXZZJHM6
9IZP8MHWzg4wd87A1c2xgpu9i5uerUCIfJgXiOBcV8zdE9rKRA/MEmg8OJJeprpHSN9U0h8eZocE
SpdhWubz4fictYoQlJR1s0v90tXE85+oonsC6BFHM3vcN2rd/wY+Q1GQqAAMFn9nRHFXA5lulaji
dMufrGJkYtxSwTU1rP8i54hGlUINLpVkDMFSV6kxOpC26okalFEM81rDeiCk7dBUDQ58udfVwLKN
6yi5pR5wDZ1idCbrQ7nPH+7AwpgdVY5gr5WV6VWT1ckLV0G2kvsQgZK2Q86asxzfTSkPkOOx4HP6
ZU4kFljRUds4GX+s3WfkistlRP8r2O1/tOal4pb38uDMThG/SyCBvbWAV4aLK6BmntHTtyXJVlgm
03nLR/2ouRBYhCMAkIR9Dgf56UUoTiuDH2rS32pXFF3DSbluogwVQ3hrDPe0q3Uyv4xNnG42OWx3
K5c1IRxGp4qHXdQXZ5mvZrEFUQhNEw97bgaf+jB29SLVCrSrN1d2rCiaHS60t4aVdMbNrOugzErI
zkAYuwxa+BThRjd3+Xx67DlnsfhfdijkaZOiRIObNKPO6RzDY/W5d56PUY/Rq73402D9zFyuGEMS
01WdN2dYEN9yniBK5Hs/ew0RXdvTW/aCc3a9UTLCu1/cHCRxv0vjdOJ89C0lgORO9CY+HNwXq6Nc
AWjGpBhm92Fe4yiCprAUa6m1OtNsexLJ0w5rMeK4iHPRIBejeJabSHGE7INjLHnV8ZdMFIwtAlHN
gXELOTBQ7T1bEATylgchQvxveQC5tIzwV2iAuyzcHXe1MbCFVzZAW/weYOeBc5k1mDuk9sJFdEq5
eu5qwcRNaKwP4GytZHSdadVNtq+3LZHMIc3bsMFS3wd3JT+H7TuVTAQd8ZxFaHE7s6QuksHqeZaU
8yL+3si9nbTxuh+OeJNJWnLj/g3fV7AiDOcnqA6dVk2tAfagWaTH+HsD5ajL2hNEjYLMfbSZTocH
B2jQzSy3q9QK3T1K58QC9pUBDgW1g8IR9zJl+cXCTfg22qOFZb6d0Sh3KT5//V7jybKi7D/mNn84
FPq+4chYTVoU0BZlmm24GlsHnyhh7jdA2zMpb6+5Jg1mHQosr5oyPt1oKJFEUYygYYDWCshk2XUv
3olRCyxnNiTSIfBnfVNodBJ5TH1O4jzTk3/h4UYZex5E9TxXGcXCB6ffNdU68BHKQM9kt41YszE+
fdvz+BeYJM0CCC5zFGM7i3x9wOkeSYi5CgVA3u8nzIiFmMTC9eM7rKqTnO/YCuXJf3y0i9Qhq4XK
g+zBmXXNyyqiI5rnyciJJ0i34wjXP1+kUnY1JPeyjngQkCkJXT/acokZJKVB4a7ZmlPo69leJCVt
DMJOZN6I2pIy1P/KG0evJyIvB4ZpsEvFzVdy3XtEdwnAFIOuM4DIsURnxu9GoZ0MZ0hQEFz7yQ4M
LYdhQvMF+ePMwNI4xTJuFfav9BfbrEwh4cjn0ibmYMVlWd4oQyGx4BOftTikba4y21OJy/BXfMEF
wk+hFK2ECdSk1XsgMZS5YJXf7VbOC/CA5KdT6yEjvxOnOCQMWWqNU0jzovUulUUS0iI0p2CFIqM+
l/9LJskxJqEbJ3moZhAIRma5hsD8GH8DDr/TV4OhgOtZMeJC07VcP0spStLWSMo1Lhdk5k+Ka2eR
9bguOVhqOo53QA+rd0bivpNcVgU1NyUIblh2hl3V3TX5oJPM4A3M+3DiWUc9hoYYrJw/LauWGRPc
c7K912JidTIZhFAi3PUiZZ5wsSCAgLxBzybDkRPN6BWOeRTYjnWNheNLVVqqw5YwIvA1PWVmMZ+h
CoxJPHQOoWhzo0ato03Xogu/kZV5eN34skj2U/QPT75MSBnVytp2SRpGz5/5Es9PuQYiVoT52FXK
bCmLlyyR6UIgCz8+bd93x7BI/uXVrAAjIFBAq0iVx2SPde88BvK89fgqD45M3XsEP/OcUv+g2ROx
8ay4SjIfIprQ9Nih7969Bro3dDK0BAtXAZHB6VjgTbFqVdlJfCfsqKntenUhmatwDFLJNdLPrUIm
yXhRLb+Mom9TYcW0KsN3xGo9GJ12SrpzDvHsAhb24bIyBTi4z/Frnn06cMz+ezx0o0+3zvH96zqQ
hZPOuPkFI/0FzVqhvKObqC/ax7JF2qfb9zUDqoZtqau3gAC8hfmKOno7u1nupycHoAFMcg8xP7B5
EKwFNHfObfXA2Ayhvxh2p8GnEg+zLtp6CUgxttodd+Qa6nw/pEi2oXqE/aqkFowCt9HhCPaQd16A
tlFXUgb0cl98vhp/NGN0UIkMjNZjzP9bYAo/ZxhMYlJSxtwMUOrhDfb3fqWX0eYN/5T1jyVsjwUR
RW21aW8i5ApOokJP0hP7jrQaFtPYd96BlWwVKnEcF8J/pXGYQWHwYuOOdJaibgHlkzL9j+vSG3x4
6F7u+LmMWkgSR2257zkuEmg2HJBYCctyyihVrRA9WrAdLIeRjf/TuMAZ6M3l0yNd/Ki7DjXix/wx
tzGDUhOVnw/Mr6GtAvJRUpaK4SCDk13JElguOTtbvnQShyMnzq33LSSy5udilmXhopZAuors2J1Y
hGhSjax1hprQjUW9uMZphdg5S96gMGETcuHf2AGAtR5jYpLYNR1ufTPvrCTSNc3Zc9AgQ8/KBmGR
26IAMj0RNxOgiKAgrVaBq+Nem2rwyef3KPUSrOhfZxaOaREOA/hzvp89eQL0c0XU2VM0NC9UtM41
mHEHjIAak3ETUuSYZAx9NrKhZ2NWl0HGzc5Xl0v3Fee4X6Bv3Nb6Dz7HmNewRW8Q/TlcQPmR357g
Yig8KdvZdceC6GOa1aZmKAYslXaBsOODLuKJuc9O1hc1fNHGZXEyZ2a8UfMSisxS+FfsvAJY+d44
3mp8vB9KGeHv9mgyDcOfGWDG4ahYSL+pk87GFNOf2CVEBn2Roeu1t3TSLbNCjh6r/lll+/cPNaV6
ZV3UXfOQVQqY4iba7rjkv4CtC3DGnj6jJNg3JeTKACXndjrviWkjl8vQJVWlfGelTuYZxE4HBBel
/cqZylcEEIq2mmWBq3nuYnGtQmvxudRQSEx1Cdbvngt7AF8MsVz4zTpUgYYsr0xiL63CmJxGl1tC
YylsC6vLVeaN5xMeJjWsO+6/79Z2T2/xx6YCCxutTeiKbMt++Qu+P3tiP7i2anLMFfB1lm8uxaHV
pkanqvEImC8eEwhflhH5GxClYA8yVPDkrzdbJg5Y116gkWxh8ecwFCAdVet4B+wou5PhbicxTQbC
vBLb5WWth6Wrx0EGZ/iyqtLkwTneJbXIFeraZ7dMh5LFfNGb1qvJuAg/+GyKHstWc2YjEHf3ulw2
n28o8EIJl6fkUvQTI10GqFM49APK8i2pXgoSmd+1/eGYVZcCPZg78xvxPedXzpcDTjv5eK7MSdnJ
QgtV+pVrDkQjKAEIlnThFZWbJZqmtjg3vMRExnW5Y+IjlWprame5H/WFokZ4cDSIb+h4Z8FH6GVF
bPayP6RgT5ToNLJlIvTuUpqfbMJqat6rk/+hxwkuhzWS03N6K1h7+kl9nKwvhos7rVM6/0guppGx
M2Hjzeb/7oB9mqx1sHp2Dg+mfv8tpur+IEyXM5arlZKdpuJF2Uxk9QwuqU8QDOar4M7fgCGUiMae
tr7UHELHJNrdccfi6TDEq+903QTZceEAqOQvOPqzE/xGe8s3W96mNvV82KGpft1udLNn76V9UHTo
xT8yh1mhegApYw4InLNo4Ho5cFxrPu3hGqh53zBPevFTUPgNbiRbcuYPuGt8wLilCyMLHjWRVx62
QDkp/NwVU2RJXXUsQOF1bN6HKK4T8RwjoMV7U7Bk3D0uKHjjAGPlJh97VJRvIj/RyK1+sq26KaX4
QjR477T63XcH76ucWAU6zJS1v5v2HD7mw1VpUUAQpvmeX2IlhJ1GBspwVDOkih+5QhuHFspZaAF1
esUW1WHvXH/fOY3hzjScjvz/S08wsOYWUZ57Bt0nnSGZwJ+L63UXX3Q08T5JA2pByfB9ojC1sAaz
UaywJ0zJrpyqiz5poPvyT8aSXMB56rR13yOTuQ9fXk7RlezpfgECQEvVYTwfI0ZocQe8RUA0KA2p
taQ9LY+8gyKWABd+iIQd72/fJDpx9kKWj5qyhTCCh52aPbhURcgph4eyOccFnhU9sWxq3MXfjxaZ
vSU1hhmQ2u6Zu99ekymnAHpaGXDLx6Ea+rc7hxetuMK9DbkFBX0HldiMW/oyKKYHXCq7smAwkW8m
ELbRS0eI1AQNLdsQmDh59TdsAnBEdbUVyfxFiSglFpuwG+w9Z5Xz9qwInO7JmXPjNe+9hTm87iKA
zb/qRzEyUEDPqip//X0RgF43xfnvxhZkLZ8VEexcnpRCxmi3iGr4Cj5Y3dyYFurgSIlOdi9tJ02W
34CcbKcbLF8l7BOYp3sSpysIOtPufmF06zm/CEV+2cOXY69JBOz7grvn61fx67GRI/lMfH+MV8D5
UbYYUN2s/hPtYeTtOhUWhbBuoIvogFJ6bxblgzwuB3wPdw75LSQaWqU+ZGvIsCmdGaqTXQko6OF3
chGvks/08pfFxlHBlECSazIlpjCaXbfeZd3fzzpZQFO9I5j2aRjHVA0klQGs5yp12MgCxrMtMkHe
pIbEmmMz6512VaaZI/2CwmJnU789NH3INv/ifEFaGLqaQCPVmOMeMoy5X6hC/AXKPm4mqk1NoB7Q
YQzQL2CeUQQFHx0OJDen5CJfp0F/He6K8O6A6wUTXVZW+wftjbWQkvJry/2Io2WBLQo1xqh911XA
a7suWg9uGwqxfj/Fs8NVNKkahZ2wXsflLD53wMt6cr+Of1jF8MXbYKUOtklIXY7Tpqc5kvlDM8bo
tAk8EC2at4TrtWczbtHWimYOOQEzxK5EqLCYon1BEogYMsfAN8BnfsckMN9q78rUwj3s8qRZFLjp
hWuQbvh73wBwm9idF1VkMO2cUwgiV7SbDy05hlbrFyLAUqixshgNpM0t0TcqS03lTiDnM4eoWo3j
5jjMwK6tiCl/i2sV7P9+MozmhCgB912Y/4SceqaGacbsN+kKYzDj52/hOdpHVIbNcZES9NvKC9zm
o7W4311YDHK1y3rwNfVdnoUkqJOl8tR+e+2XxVrgQF1mupkTh7wn6ajhNPn74FWpy0XmIWvzMaYf
jzSmKH6bep0TVy/0tM/ujbb9MhSCSZbDc6TtUQzlb6RT5I73wjiAojx3MG471tlFyiBwsT4F2773
f+uchjPueJg2PYauf5bbIp15SstdjUrLsWQhaRnwSIAD6bdfgGiyehqX3S08lCRNTRhRq4qI0aVL
rZBha38ibOmNiDIlxe6R8j7CBCAxw6vku+RGyC1T6u4z9xYpXM2Wq7p7hynpqx9dbSyGzpVbc/Xu
5DEkzUmTwBvm9BijCfGDUuaocgZ+6DmSggpYPnSjrpgLwYqrf/uCoujQ1RBq0WzXLHfWtTE4iAJZ
bGkFtfC0+mkB14n89yPYbpAP7ZuSl3dgcupzQmHMQ5bN5jNAK6QvkNjs/3n11+PVgW5jnL206DiC
/F3tJzzXHGFLB16YMxHEiQnm27axU68gmya/s8AgAtQSQV5tTZk25wtmlAxAwE3MWlVtyiwCr2gg
MQ1neTldExpTdsHBA2r9Nu6FbY/namWebBOL4GuwuihBwNtDrwnBkLpUq/3D8B/6TMOzXZTlJPHv
qm1EvfgIkB/OV3RGREVFZ1s8PGI7fQXxDVqCYAf2V7JpV4TS3sg28MGAE+jtSENg6EG79pOpA3mh
xVKgPfzzCJ6S/+Ct/fwJMP0/5GUh+XzQ+KpoZfY+VnhXsRrUnQ7qc5UlS7d/F9kYK2fEd1YQrHrP
YRUAyfiELSPVZ4DPMX1NuUpeB5TzBY/CYG98r6Df3mSx9NCU96pdLBiVHD45fpskHzjAR9fKx/bZ
MXQj39u829kbogSr96NqX0J/vqFZ5zaJYY58Zk5rxic5emrBqk1Hn/hl7eNsJIIYkBgx6qbfz7wZ
SD8xFDfnpNAKSG4poJ94pXiyQjR13nJX5sszBaxuhCL3EYFsBQWjGX0lGALoaCRlrJqKEKrUH8eP
LXghP91zBtTnT8q5uP7qNXeXbGQk3mZZ3oWnLfuLCQgqenGJWD3dJ35cSma+uoT+p0pSlXacBKbN
abete8rSEBXkLJSfR5VOHkJzPa97vdBQbaCDaTa3/qfCZp5yjKFTJavCX+XnU6sk8+MktuxT4skp
UPbOKxxWBkcFi5M/zC67mdyB06Zz6Va5bNZ7tskRQQFX1nJVGXzuOm/G4GLES3I22DTSVcqxqrzr
4cYgP+CVY1flJ5EEoO70rjl+9s9LqsprzHcIKofUxgKV4c3lL0iAkSmxPu+TH0bTWAVQ5KPTZIaQ
cKlJ1khNb2RGEhavlQj7V/fnioIF74KhlIkpqcirxnk7EaomD9diPvS24rCAUL+zvcKA0ec3dRAj
IoDfzJcI4nZppAL46eaPbg1pV9SWOj581QeDVXaPxNvTmbPv+zYJG6rsLAgZudwXzE+2W4w+PoKC
sGEh3ev0T6Z3tZFyi0G58NebXqEJ26kbza7psiD41a/NLpG6YUB+EYxZSylSookQe4M+zk5KlUNp
n/Ctf6uRv/tUjninzskVTF94g8uoJk/fmxYucdgx9IHJ3cUKuGbtQST4nK8fmEq4z0a5A/YHg/Uk
ikMc3q/j7MDnOhnQ1PNTNVQMH0Ffo8V/ZVDyHOCyNMTTGrs51cdgIsseLS3DOiq9EF/eOvLb3bJV
rKknJbuUOy/55hNsUIcnP2IIM0WEDqMQ8aItpaxEhsDOcZhEnT46cbZYo5QSHIs1B/fABgVKsBOe
PcBi3up3+mhDpcI4O+NqSkg9V3TK6h9l72dF+kLaKuryes/f+mDKEY+sZV28KcbvewY38Nm6crZa
+K4F1e8+F/Do8agTvVMhZ4UalV0Bect+PG5uiCSgiaDrCejdtTiyEHPV7wz71QiNeHhIRzG8S2T5
NkQFFchf2GDxC3tLYRgl4y7tDoYuu17qRbf4dTrX1PA9Rqyj3YIUbfSXi9RZ9PW91pVIQgTvIYxv
dpl3q3QTyrAbbJbRzTeqZsuWDmH+T4iw/H/ig7hyVqw/IAzYQ8I7bGQI/Ztzce2G4Qt+3PX8oPBP
bzrIpbiza1zBTVd+TeTBUUxh88vudhi8BveXxLfyHtOmJw91fKno3jfhpfLLfkqxzpcHe8gAnFP7
iE10fdw5s6BWwC2kZHYHV8Y3lDvSCo43Rq4mkfRZ1tSHst7573Eumxl3wplSq99ybYDayCP6qvvl
xsnDUDZHVH3SbzRJywcfoCvEALfb++eRTu+o4FlXbJ1gnchfoHC6t/yOzhMn6LAmY4PCS/AAkf+X
9OIkds7TWo+20AKNaimRZO4ZLjzvMslc/amx3QA09FFkA+jYFmRjf9Tg7+++MdGugk+7aKFSW6MZ
dxP58E76lyJdShg09ltyrumfC9TSCS0wOfR8cTrewh1OzayLwcUSMhfQ07sw2dvfUdeX449m3F2L
iUw3esch+FYrSPCSqeSST0XLCiTfkT+deX9jOGpajCLiOJypH1Ci3n2bda2XxftkjfYTwYPy63sa
ZnPSKFGwBINDusPptzwpAwHH6bVDF+IDHBxdzPrOtg5T5LOcb+eVIO0V7znALgWQQ6L9NxdiIowF
JIWKsgU+Lxf7UmMOZ0ehcBgloWJSNUZRHjp5A/NsPGlHJFL4FesJtje47q0T9sSsc1KdgRpw1cQU
KbPsW5qmYtKFsEUKKiTWxM7Qt2MEbKILkTQ37hZpx70X1iSFlAncPG7fOsuJ5GKiugrYDjBwxKBv
pnnlsCBNIAZLSnI3W3bswtmMbKdKV6kZ9CpRZRzNrMR+CNiLfFL0BSVlzSVJDEk5ZBSzXePviA95
2b4C4CuAdlwvUU8QgZ1HTCSM7QZ0HjHKlu3+iGpwIVT9Ez37UgjRVf4Rier5lQRUZmHL5jetit4v
hwq2gOIP3nQklG0AxPTN0Awt/nM1oZGTAdI87KRQXmsY2KR8qAzhM0BJT8x4q10QVabtUczY5ZAT
JYr1oVwnnCzAy6TkU6bVZdj5eKN7J6eb+aTvawLuhKLe6B4snfC5nz2sV4/DV2NdBobfwOHcnh3g
p0ffD+0mYCOos4pQJ/M9cNgZjGOR0nU3YWvGKmWNZQujpD1PgmwpIWh7kNpBNAatWbyfKrfRU8AG
TLECICzB1XyUxIKyEHQS0LybPSHw/VJ5DkJ8dsTjdChSwTgPV/5lwg5wSNvVhgtw02kLzkKQSAlp
g+UF2LvLAlvlbc0wcaOeHNVKXrykAnqPp0Pg1rE0gR0lOJHR1R/JZHXaM9kYPcR2Af9KOUfSuIT9
d66/A5DVFVRBLxr34sLW5i9oLx4seOF+DIU2qCvSlWOZcr6MuA/6NlK4xipKCmDg5ltteX1b5006
y7Gz8T5JICRCL4Cps9kKNGC0GIM8cUV8B/b40sdLOpHyJTN4DLZymNzrnwp8/qgf2tN6C/vBlLpz
17AKnowvvLTac6HK9mN76GxujyXzDAbr6Qusd2t6delxfrcbbQs8pedBtDVxBDvvfGiTlwinK2o2
ONedJ9ioWiIZ3DlWxeFq1Ksbdtux2m9nNyu1se8fhYGldSf+TCHpUcXYzWFIFLGt7/9XcxD/vFUA
9Je5KH9kHmpxExwUXEqlHELJ8vNXlSnblQcE0SMXk7ThtPdr+0w4vZAXOy4iqnn7FMBdHvhSpuVF
xJRsYZIMZMo4yvugf/5PmxWVaTjFvyY5UfI3CVC4kWNKP+Wo83IrSb9lQ3OY6suXBUjHRc7aElMC
669DhjKhLMUbdsKGkj0X1URa0KaxBWKutRHh3sDtha2zzcrx3Mw8x0PBrD4XMxG3tlPjm9+TBTpw
a8WVa4cDczzjToxq0ToUzoPxF+RY+UMxxkS1g/zZuPTk/cjUKelFXHr4PoDJpAbLFHJDp4YLzgzs
rQjpOrMyotZ+Caz3G0N+C1Qf2j80jhP6ipdmqFN8YoDNKuZNRqAXHQCNZTIg3nsPAbBGMU1/j4vO
zk/Vk0Yyy9jc+Vovj21lFG4bklcMKuryIiuikslBQNb3JN5GE/9ZXd2hAwg6uL74YbV8nWQ2Mko0
WZ5f50v5lteElRJugsKouVCRz7EsT0jeBqfQ8oh/sIvSXKf1ugrk28b1RKb40VaEeNRnyz4JDais
YOjW+Mr5WYH0jC/ABoPVyn3RNK6VPBGDNRWIoAUuRw2ynwE+ycEFjEI7TsDbRdkqBEI2e0SyktD3
xPJfl8PJ1qNjM97Jrm0T7s0Fx0Ztm8SpQOiXtJrca3LeODTj8jsBjJzf9+EGQlRqLHMvQQeTIGXZ
BpryGAu3JnZPbvO9vLcjTK/WhDbgrL5dCc5A+X/WDv84MRrLgj7/GNnIrOgZXHJVu+TqLEoLoFMY
InRTeeY4h8FdrA4mhBj7xWqWVkc/Y6atPyrK/36q6LUDSa+f9wyGKEq/AN6rrNwqpGBa37B0TWBX
Z74GRpbYz3JBvyWVhKIZFGJTy0mmZZOl5maTm3/NmsCdq0yBjwd768JfMaDZ+CRUI8J5O2xMTpP9
sLLOKRL3W0Pf8k6dmD6aDI3PLhdsG2B4N5SSEiWc5qlIhjNcH/39dFVtNIGxnhLN2b0oOelxBdYY
QWNlvE/S0In9oqLxCrNfmns4+N7OxRx/L+Y2TWCwShY+0bbPQiu9WuFIGqFFSVsqdE+p9xz+Shq7
QFdsydywa2RCXgxOwqwLryXopDW9BZDnzPREwfu9wBQLjAXCdBziUfdSUBaizme+EQ5DnN3xG6TE
cEcFQUu7Ec2q8pxGiKETKq/RR5e0ytYgASWtbsXeNlVAFDDfxEX+wLSvwTup4yUKn7y7cJWb0lzV
sexa3m6CCOgxlKk2pv1h9PesSCcd/DTlNblNfhb6TvbBJGcjQv0Bvk5GWfuUjZJsb4Vjy4Qqb1Dz
uqyDH1sl1X8bodmOiNPriSgV83sNWdfwclce0GG+nkhY6KwpxtRj0x6+dt8KLQhGTrozD4AekipX
tUvejmhmMCDzRfum/DBasz0ww9rupFQDR2Kjqbh97IFccT5uP9D0np+5CJ2PAM1/f4xE/bo8Kp70
++9oA+QisAMZ/PdTip/fpMsUjToW+8wHrot/b6UiakSOEqaXSjIJUFJQZwqBzE3lgnJKVYD3YXZM
c2lZ6Nr18uwR52mFGcAcmW0EZ9F7FtQ+QS3DI0Jmu4HiTkKN7m4Pw0a3d/rcBHdBo+F++RM434Do
zveJgRRzTJjGGAOykfwGGQn90+GiKa3azdEJBMVFme/8AeewOgDBdPfPCgkXR149eRqNYA0REWFV
8pBdVP2nECMWUwcpOWO0thsEbyN2LeXWphG+1IBLDjip6ylWa/+z4TZwhW/YK3+U1AZaSgiVmBM7
ubczVumgB3ZKFos4MViAGGLOyqlR7Cqpq5hKMbai9fggKb5lHbxnfEK4eFT5g3ZIc8njO8PObS/O
qf/dpczvgYvGy/ud7Nw+pMGHA6KcoUBlS+CtNQ2Dz0EqM8dA/PoOmeusZxhSitSbtEOKuWb4B3Q8
Tx3GLAAbTgHNy7sKLpHE+Lf/v/q3zhheSSi8OLH5EmKy946oPp/9S/RCapLRVWObasZ+rzjm42WW
BeqVYAP8zFUXRmFJ8TFuPdSxfSpPL+FI246WggyZnYvrteS3TxbgHJHmnaDcUQls+Ho9L6YeLv/o
hRPjp69NNa4dO2yJNL493d1M5/1uuk+uIcLjwRscMXVHkk3++uhLJTU/gudvEBFyaQ58hIvfAARB
BtXYE2FKPi+agW9Rb6jAR8aNUCc4jY4vTlW0CWmVFIQ8mjMYU83PsXavVwKcTB9+f9E6HSeZt0CV
XRIjeK49hTAV3NFU3sIUjRwHMZfJIjshGfqaXhXGufup2Lj7o+srWCPApyIwRdT1RTBSg/vWwSi3
1vDjor5gMK5KA3NJzYoJbxE8RH7owAJe89Q+lYYVtWhFrE9MmpZoAzzcSV5KVfZqGjEzKJDsSljr
nB4FDfQ6sPjIWv+pMq6s04CvWC7Ve3uyxGBFRUawOReNAIt/Rg/Y7HQ1AbYve1uMZaf9QBeD7eHf
8Sq6l9Dht+9Ac8zXTZArQBY9HDOMliROwQUL31J2IeHERhpCuB17TioD6leq9KZAQhwuzUMo31Eq
4dTRFj0ccJ81cYDZTja2mDDf2ZFO5hQBV5/dwzwj+SdfR8V7z5KqCw/6NHYbkz3Vc+Z4nGOKSJIU
UomkFOfaW79HiDboGqevDyqvIqj1o+UTB09Hd1qnQIqxMjtP8D0E5YRwC/i/M/2/Szp5kB69tuR+
QC26pF7Mfr1bGIAABll9x8KYYe6ACI0G6NndWYi3Pbagn+/TTJ9/u39QMekxvCrGCCH8XBBdDXtB
BJF8oy/9QUPlyjsOo3Qwg76LtmQ1NKuw44BWN8ZUJ6O+OgBptNCp0lnMgbJCCLPUlgoSqgtVJAMV
d7P2DI10PCpf4iOKgXHUPxHDY3WtyVluj8zuwTxRrw4pLliz8PqM7+sQ8kLxUESdRdUVY5xdoHu7
D0oxG+CTAGevsQiA7eKX/2WZATowgtw6VEaPeNS98FbNP3KlC+Aq7ebJEefnt5XBdfScLfBwEG0e
G+9m/zeOz4cs2OGXEd/PnRe66ZaLxlDWCRzLC9EGrX+ba/f1peLJciq6A4X78lhmTITBeOJ/chMh
e4Vtl6T7nspmWWUxsUo+k74TgUXipKRe16gaHVKX8A1e0cNsLi+Y3xBOaij2Op7b1p+zv3fQgJKc
xaMKSXwb9ZHt3EhUTalXkq52EEfCpvGx2zaNMJ2nUDuNqoY6cFO2is/qx3FsxhE5t6fi0Asu+xZe
zSo72K6Xhnelae48r86rDDHfrs90i06WFU8YYQhyyeSg/uK1FBwGXOeXVg8TLQmobtxvYEwydeSp
KsWnYzX7qjF26Jl/l81Xb/jYq7E+ck7OyvRrn6b5EkKsWowaRvh+a6ZXuf1w3fl6CeYpzR2q8rSS
j+oLMrF3DTuh5AvqPYNWCdTtGkh6oGPf5fI9x5fN0bosgtUgFVremWR1gRQE3kU63ybSZwyL3tBr
gPiMI4vUljHhlPzRunuBvD5x+D3mnYZrrVptsKl4mPpM2WK/HRoJ+8G+Q1j7DyGEM81AnojaegLg
rM0f0Al84gbP6RYzqL2JkaCepmQXpX30UtWoc8BJfVWm5jmv84GkwkGvojAMseEf3Uo6BTTkPjY4
GOaJGlYALBemgUM6q5enbegx4cqSbzo3C81YEBxEQ78a8GWWv8J5LTqbUSgxTtrm8VraeGGtzYwJ
vcuy+3NE0xgxhsrlD9Na2apyh5lM/d+lketubAi7lcoTB1B0elQOUsniZuBcXRYQUQRLJKP9zG8/
QC2FFD9gO+UmHjLmH5S/9BP7rvC5mvsb5Thla5uFLQ5s2Eoha3klT4wjGDAjscg9lo+c85GNa6Of
O53caKWuck+aTPF0nrDPS7MYuxJoPUaKj67UopJjehnOaxTW3VNuhVj+jpo0pj+M235SXyq9/xCh
MUv91S2KVuKRScEEFgTJaYOgsHEsiQIKZdw1McBtQ6i6Sk5NPWqigM+Gdu6Q/qUcTtifqwdohN24
+qZOkzaUARFXqQiRqazVIplVMLdEjaJZ8N9lLiwsyW6l2fICfilJ6eI+szia745Do3dII3RW1d7z
HZZ/nILFwNhillp8GE11ea4taCL3WCpWawSfM3emvo4DFygI6xWC8H/Rdlq1sErspc0IS/DFlllV
C9EckzP7bmg9hh9B8zgYWQP2WnuWZwV8WLI60gqDceLmKOu1aYLYqum/86vzzQ+lhvKRasYu8//F
6vtIh+YTS4om0peOcNxUvvX0hz8FY8R9x2IR/uLxPKIvkO3pSZYFy1bLjz1wryfIhz8sap5caSkG
4KLHiB5CVE1y+EYHYZb8TGl7nKs4iN59nsdJxgeGlGjWEo2d96PtVFHx2pYcI6EdoMxupbL42ght
ynfNuYj8YuUGp4BShwHJJHBw32VVdgWkY/NXZKrJpFElevk8zQKF+cUaESMv1G54XPqPLX5+ofHR
VcXETqLguC+FIsJhTsEM9EXfpkPbzVO8Mait9LTeuOytjxlDrRlDeFtWHc45krYdvcweljjHONHa
j+p8BBU+3/YFOfXwYe9UVQdGDvqfAu88zChV+eYfRxOTD76WFoYzPE7ukrk2VbSVKTruIC9tkEdH
5HBP+fPaVfE3m0eD2OzvALNXNjmE1A2r4k3Rofk/8hdi0blkS1sEndf2GoYZWg3EodsCxwEf/Z6b
kGakATaRLQw+4bCL5A72vivVOS13k1PxDsu3fz9ybsJe8ncnSCqts3VR7AeKmZxLpyLj9ragY0fT
Vz4GeY6cug1owFzAPnmGJtIScrSDF27hLbauiY2ni13eybKrETUDDqzLdj/v9E4RRqxe5XBNaz3V
Yuq+DAS7Ty8DiTal825GSyyC7lLodcQCWE2UGk1rr3BRa/ptUU9x7kFef9oQ2L+rugfZ1FE+d6ma
DzrOFyGgqMPiAkOS4EFuBq9Lzw9AaDjCMeiF6XZw37bXQcUSMUzWfnyjeIz9sA07+xkjFo/i0TL/
hFQKCzBvgo38RDwyTB3oXMDaxwahOo2QrcHS/VtdtLDH0T7GzVYFBElpMaRCGy4FLjznYctlNO3n
TnkNMKKdVzex3vHUzCttOo51ZCtsPgkLyKyPLfpva0HsOGWE1oCrDP9OyDJE7569e4W/rIALw4LY
O39ImZQ5aYLexNWStCSwv1Pp3rQ/sW7JCD3QxC1aa1PkSBIdbyt0KAcGy3fLu6nY2Db+UvpXBp8X
dX2RSU+qwhgrKs7eJpK4RFPe5YAbCjmIgyCJaWKuaq5cx0HRj4frq8D1RWatgfQkGD8wQp2OA6A8
P8GjaLAUmgvddR3ecVLCOc9ea2bZdcSbaPmh6kOmZaRFj87gTww/DDA1O8Nc5FKFPaxg0/w4eryl
kfnyOsbWWIKsGng839z8bkPxhWJ0q5GCR1LRB8XxSEM/ks4vLejk065Vu2PpDuM9jWHs0HeyolGj
upWQfPUrveG2zTz7h9914N9AJebiLSTOoJXRZP8PYFP/7DHEsJ44t56WmponCPrkPmbSyBc2QIn6
4sU94VFQewXw1kUJY8Ha39KVrxTksQLniqZfGuJNJXaMBdhHg5PFlz8XE3AnGg06V0RNdewEJozE
xYlbcoLpDZ700wEDZfjg61WD+eCJ5Olv7VFsc8bt2WVpaWOJ81ozEWdeUePYFgqnPdaGL6tjxI7K
DKlV9wHwkCLhfXJOEwmtJidEe8DSy/NeNAPNL8Y88t7/W8ubX+viYeZkWW7S3W/yMVcSlH/RmklN
3/aZD2MBsWTjhJ8HkolrOoEKnwySFlTKBkoSH3AFshizq3GcMaLwxj03lC79e9/IwMUFva+sGj+I
K92aHP3eGeNLcwam1kD9I60klL9wlDp88GXM5klRvIu6PcicMOvJc1DQsOAi5aNHf+9l9S7gmSUr
NPtluAN2rZjQB3jWwBL6lbjRCYFfSgdPgwAcPrIfWfE3a1RrFuyAN4T79qUH58Hxtdi9UWmf5Rw5
UvsVNS1dFNEaLkSJVw1tpp5ukJ1M+wpS4SZRqklfXliRrp7qvHb54HrBDt7QNCTSU7bYv1hrpGQa
yhsOpsDeISwy41kY97Y6SqiZIigFZNt8c/r9CPGv63mVc0D5sMs8ZN/MyDAWcRKo3C1WnMko9hm/
aAz4aKhWvsPZHifmEAzzWGRXTPPfpHav/hyt6kQrYJBmAmLt1vTDBwM51hgrGk0tvHV3pN3HX8CE
33oXFW3/ogBmWiWEcWL0YlrwW8hI5/T5EV2Clq63URpPQi7yKTyGOWBXxYs/pwRM29DerYF4x0Ez
UhC24lgDrr/zwtdGtntvjUU56wtNqejXGdmFt3grgabsla9ocTZiSK7MwqZwf3gWlgVfQ7gSXT5c
ljSlbUmYzlgukhjNcgehtmV7pG5ocl686Me3Ylj9vqnz1zTJeG5DpMANzDGM8MJgym4TxOW1wOHs
D+WDn9er/Mmpj5gPEIbNvU0xSkPbQAkulCYn9N0Sx5yesBpO84oU18PmOXEcxgM8oStlWvez4cNb
dfK3FcYsoCpjxZ8YYP/nO5AbsZzJ5Bac0aIvR3IYfod05FFsnMxp4XMSzoRyAQMeGsNjZcQmtOsV
GHzNuJQ8tX8LF6FFnT/7/1BQ5DiVrxNq7/GwxOell1uXCR8gxWhgi8sR2UnwJ8pGrXQAvHwYB/n3
X8btHOrrO1jYyGSGA+LNdDB8aeRe1m+XAORS5AHOVp1815dTk09OLguMjUlIEloY2gVQQVCBH2Fw
5mxEy5WbfYgdZpp0lTtvb0FqepsIqwekL34VcszNbpm0rLDMOfU4GlaeGJ0Taf33RB6fPgFfrSW0
du9UeXGW4NR0dvhdl/BvCcRsvFF8nBfNy+0hJN27sYv0Gp9P8yDLwaptJig5zBk4n1fOiLO1tXJN
iEIljCPfsCMQaOiqQlmORkhNVB5ar/oerqr/7OepDOB5DRUj7T1QVLLTY2JjoPRwbCpjxs189rgV
krT4QYy1cWtz90IJJxuxja98Ko/lJ9qbn2JdzLAwg5jeNNmWIhwSZP++R/a5QEW2LSNYsf/UUMVP
MjR/4OH9WU0ERj3kqINu6RmoGwtPlLsGZx16FCcAjOAsL0VJPsGtAF0vr5fk7HTdJ04Rhn9nMk+L
baCmHjo4n5IjGPH/jw82pyP/UHfCpXObjXJU7qeB5YCabIcHtANx6Zq0GReiaPfk+oCvoEoU8yso
j62JY81l/g9hMmey446N4kvofiOYGtbE7SdNBdsNuEK/QdZmx206/QllE+qg6Pw+4JkPOVo0ljHY
vNn5c05BHS1FTIfk3DwAsRS6BesWh38qpcBIHVwQdHKgu+eL2NpFqWuqrMFQzbCTcfpLj9wydccZ
L3mCJSu5885kC+tixKivysSlKSVdhdXLAQ1/EbbYxW+hK2HaPpIL6Vui08suNlVpXp/5o4+oQk8E
8BkW1+S/ZaDcb3bZ4FTtJukfsG2LNztBQicrZB/PHY1eoyYAqFaj3+4Eg+XSFZ4MEePX1FsIgpCf
wGbh9CLR7bGrslJDoPut49tzGCbllpvh7qONJQ8tmt7hmmu1I/a3R5wrenHLfNb+251iMfuR5NKl
IG5u3jG5qBf1q0kBAsgVvd8e8a78iu1/D8quWspOZUShfOSPi+s5jelVmTgYrVHenNhwdHcvlM3I
C4JRBJ7VLHH1SBTAO3l/WYMXtgl0oJPcbZpQZN4eRHkbcyIXt2o017PeIwSdX473rs29+9aTCgJF
q0fK8+I+UvYbrCmqEDOIfPJHHJkok+IRF8j4yOlZ/uX+4UfY+hrLNkxwRcXffrwXmFOplKsygfCm
gMtjaYkjLcqe7dB6ee8+ClN4xui+3oZWmdO68/SmS+nBeGKHBzYq+eeXoGlUMY0pd+lxjGn/xgbM
NIjW3aF6bNAiaHLA1u5khB+YwxfX3EZ6g6a4CM4pD/JhZQ++i/Rt9W59tYNw+2YPfr56CY76dDto
xYPOZS/q0mh6OS7uCjP6+WE2DEPhQqqU693ckWG3SQ3zwYOoxOO9sUhcVgwGad/x1aRCzhcqoo70
y/j+R2ewJ1u8u6b0+EScJWa4FZrkMwZNHAlCuVzgeYsCAipVdLiSPehYTyGT2/rCr538WHJjP7jb
eUeu6nr8b5vzRV55TtS4yoDAbrXa4SwJuDk0l7D+CPgbPJ4lQ977sVCEnjl5Zvc/Stw05qtPkD25
zdHs0mAI2V7q+7v7Q2fFmpe1KRn6FYH552zu4BRpk1e3PWG7ZvO74Y1uH/iMuH5n1+7zGj5UolQE
pSvcJxDBYyV8hZP676SWO4+kswkHWT0cZERUY0l5EgDXBvF1pQXZ6uHS6XwLShFHppIIJkRF+2JN
K9CkGxPhZKNqzpGkSel0UkTIH3DuE0ExPgI98S9k8w/IyFRlBfj+s0g+eYirskcb6UsFOhBcbUde
WzZZ7XhWCVGsVTgR+X/qRnMjW2UoDe5eIQjl/t+LNpSqOxnXSXmcLR/37KwJ3GRgQqBw1ejmTKev
UgdC62jbKCPW24n8cI8AYPuwVPSHNWp4HzaHpElxQ/7QMCLl5tv6P0wd65+sTMQfLTiPPYnATkrW
PeUuTbm2QgD0ZM626VYbhVOPrwqlzn95S6oMYvbM467YXhseYDwW8ZaFPdhjkZN72dTkZYupdX9t
CajODZnRXG4aO8sCFNunbU3g6MnxvaHCEDVyJPwSu6i9v0f+pKChETD8RTsSUwcBkptz6rBzXz7X
Cb7A8Ps4jz1Uom6jYeQdyBYZgKuLu+GdVvwzcDeg/DNAG/Gi6vWkAZj24TOME9wGWj0LxHoAsWfc
EutOX6RutQE6Qs1T6CwF072wpFR4U7knmqKhZqtKDnL6OL7kEnN1dvvbTGYgZ3/JXfCRZkd0kiqz
jFkEgEEJOj5h58ToIexg8pA2omuarw5isLqPrNNT7VWEUNKSMCdLTsC/BiSy8YWgHMbdVrk6miHt
RIPttNfkEloPikXbvrev4Xl/e8i25T/hkD50KTXs6KZzney4ZF7A0isdImemGuwzyUpSEQHrA+4x
etqhCq+xGedSc4RvHA0p+wC6mu4NVAyKR4j0tcVISwZABDyPCSjn2swBzCKg6QG8FUl+gbWukktI
/vlhgPA3eesCBj386bU8XgXvBHgxtvUfcxBHMrx4y0rpJ9sS2rSqtPW8OHHVWNIZ2NbJbXnNodmV
0nydRLnpS6cydFav/Hvw+v14qcN0sss5hPLM2ENP/HdsurO/iEnwWbPVLMPYt0ywha4D+TpEzHbc
g010SDatqpQBK8nDo6j5so3hAt217LIpM4TZIQKNQkJmttnSkUEnurxC7DQkyq7xTzd1/VbKU+gr
dRJ9ieSvqf3doda9aSDb5HxBZrgmotMBlHsIlrClfyoarZVris+JyWpZ9r0I4Occ4rMWzQROq9K9
Eh3fXPeKkpauaYSNJ5slmX5m1dMXSKc0Wa9YnfXPIrWrVGXIsrCo+Dg4PxRBTw7Odiqt4srmzgv5
DSHuVA61hpK94JghEBmj5GiEDpW3gsM9cijf6ufARs5YV8819o3cvB2IoZqRBulUiYIVvTZhGyP6
V3mBIE3kVnc/Q6+ckrP9G3/JWiMW9KSTRDjvui7EQAPHZhf6OiIyGg7aR+ItnueIv7MPGeKob+gz
CNNCGSFBp5T4/FhXfcn/ghnYPwra7g/LOcMasw15RDGihERae1NNo0LUc/QzPRDOCaAsUTBDLfsL
5VoC+xnPjPpqeBXrs79spOgiyIL944aKQ4RrQcqSZ103UzmXm6UJErUOz0SCxwJlcBcrlLVkt2jv
Egon6vcrzZdwJBjfBQ+PsMqvz2wAeX8A+YmgvVzhEgKUDjx4WASBzGpcjNSo8NYEQpsT1Kf4PtQ3
x2MIw7Fex7Lwx7XpIqg/Q9ekDiasqG9NFgOzl6YqcRW5N4vdmCH5YLJqmIzyVUOIadtjHPZg9BYo
Wd0QZDyw9Uorn6A94ped0scAeMkxJlv+/I1z/3d8IMfIk9f4loTQq/HKYYPM52FuiWeI5HBd6pph
SM7RQm/wH0mt/3ZXgHdj0qeagrNc+2bHPUg+xBBIALCaJfduszCN5FpcVRy3wdAs528ExK9k8Fjl
UaWWGvUfym5aeYX3GbCeQcxZbFMX7/3A7lMeI4p43Z11J8shuLgGCv3TNF2rCbftS338BE7Ks0YE
ZzNpabGBLQmObGGhhfPAZAppay1apzV18P49nHcDCaxAalIQoON0T2fR2i02KsTKpWvAsZC2x0MW
7oZK1jSDOMGs2o3FMp5qwlrnyucCC+A/ROWVyyUHu1RBkcQ3feu+s4L0mC1ihW2wgxegDqpyBR47
EBDTlD3BU7GyAp/LVS5aa3czVvqXOc7SC1Hp8aATFm5ooPpVJ5wm2hIfqCkrBWSWGMsFeZ3rjY2c
1fuH2k4G/7z3MRn9aJrNxUhWjmICVhRFj6wM5F6nn4y8kCmTFlLurOor/TYcysSkPuAVdSfUjJiY
QL2/lHVYSVvyOIVOdv96XdJ2MaN4gMa4n8wEhtVi0C2dIC/Cb6lzOSqTO4Dx3HcROMLFaz3NhYrG
KnlAuieXjtro0jlw/+0FYM3rM+RPthYiaWehyHYaUgfiNWlmtISTu3u5R2M4yXLktkVOseV7nOb7
WgRu0U9LomJNv2qsk+YiIS210dbDX+h3goZ+1vpQGpXSiluA9Dz2Eek6VJXOhr/7xsb8h1EpjF8V
673uQTGDzYwGk8bn6Q063mdNo0/tdgE8vZ4K5HwP0UIGMPjg3EqQnQVpnB4wNok3UJYDxSDckCgV
KGWl5jQg1f5tyzO/gH4Ze1zTzvCjCXY526vCn4A6tSZZqfsbqlUM446cnCPQsEBZtVsUDSskgogp
GW/5LJIblHSGNQFAS1DGzmsIW7lcpzWJE6ov2FSgt+U5avDLLB82lm0XeBlov5pJcKeekZhfqGkU
t6+YgAoMFL0IsY9YXAWfa0W0aAkviQUsSs+uz5QF87d1sscWxlQjM9zhvWv4SfH3kmLkKxx6N+tS
Zs1ghDQV0BO2o+1mQyvcxDoEVfRBlDcuF63LaTqxLdNBcERx5YyU0IyYA77m0lwfwxa0gkNqkNMr
2dmFXfWFP0HYFXOxo+4pB4TGOMlDA5CysenN1qnPUvece6dNY6CiJOD4T10N886ez0Fq4NauRDCV
cPc+4tH9ieYvHv/umxxDv2scBPnI8GqRlz6htJ8XeVVQtG6RX41Ouzz15A8yNBE/TS9WdlWID+1i
7o/HOxhb/8Lqo5yTLtxni03BNlqKadLoN1zGThFQo8MglegRrMVqQnwi4SL8IsekVekn6UiLOWzD
6IqQOp7uKscXXKxf6IQ+1CuN3REWT0fjgZ0NDvRG8e0w0E8DPitk6h59fgW0tB5POzOwBoSbw/5q
Pxw92HuUsqVKW8fBJx+DBprLVVuulJvk+7k5nBedoC47+xAHlWKUuXlaJdKdq1o9ApUgfT3MtPS6
x1ijN3fRxLTvH2VCzDsqNdgr6icRTIIB7X75hAynLixVi04Ma/u63cSq9J4nGwR4tOnVJCcyvyIr
jfAEkYP0F0C7MJNi4udi3GYI6lZrGX3x4Vb5rcOWCBh0g3P/3bnuee2e5Lj1VEExUtK8WTRgIG0F
EVHUDPSc47pCYSOxwVpG/ebxHxjTmPx2gcZJ6pE3MM6nxH3qpehnePJAwl4KModblnVANaTGbnzg
VTCm4nZT4aGbwzrScw/ICO+MNAbU+GGJYOIMGz1AwWwDfagdx3vjMG8fjMHgsHRPxv/PmB7BdGBL
LV0hLSTaRxvHkkXP32zW2gLZrh8i10tHG0OM4O+HSwqrixyBXYa1c6oRjjgIV5GRvz5/OdkiBaYh
mHv9nukTRE23nS3wsNC7/u2GZSSBs2WN28EuKl2pIpdfErryTQ1yahzskwwfGEfAsDERoDns9zUU
DchhqSFthi45c+5tqkDfPfAEDMY1ePlVz8WbK0dgwWhdw3Or8jWeDQiDK+9Tmr+ZuZv2zQ4qkbWH
wJzpK7ntTS7MVUO9wCwqwxl5gxDh4O0+XQM9ja6tfB43VnddFGUG3rM9poLISasgKypmytwxnFhH
4tO0DkapmXnhpxmlbxhd04XBY4opsUOrSqeRYSvggbcHP9oNTFdzFAQ/mdJ4n/wsVrc3uFIMphFm
lzld3qNMTvNLayc2eQIXxMWIxbaIxI3EtZ/AlNK0PUG/GSV302X3RHIw4B8FRDCLdtt9w/y7vBJ2
yPPM8FPqkaijuq7Irbz5fKlZ2zXI4kW0mZu6WhnOSAxodmmGUbdEeryzOfEdxhDoOnvAZRut4ahb
fWtffuXUkzKSLxPVnH8ZCx7lFpsTRu5SVTpDSPEOQJDSc+Ui3rJBIk0Hyr8OPS5SdTE0mxSV2751
U69snni7trm/vNRkCiI1nQy8bWnqMk8Ksg==
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
