// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Thu Apr  6 11:41:13 2023
// Host        : Big-Chinese-Export-Toaster running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top BGMwestern -prefix
//               BGMwestern_ BGMwestern_sim_netlist.v
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19744)
`pragma protect data_block
47kZ+KBr8ggpyI8aUQiFw+1kV4udfxGuWNLZXGlVKKzaSVkxqrVYvSwT7OLeFZzY9Z7l1Re/lVnj
XkkPhIWpGLLZOyBsrfAQoonCTMaqioh0MjKU6AcAo/pJ4noJRgAhy4LMLI/M/Cj27u8UGc+5BcTn
CDX/VWVCDPdLDzbEyX43LL2JturnCWHPhwqROhkrfPLVZY6xY2q8+1jLV5N0YrG0QlSgKCtb28R/
AEywY7v4F3T+feWS/DN5TycN53AI+ep3HodcQh0Q86p4WiVKZUjTpvgiEwB/n9gh+oDvprNYYXRT
bzNdcnJ9vi2yHyzPwVpVFsh9uzicaRiCRsfj1c8WMfnx6k0fEY2lQaGObxlAmxvw9aG4IWZmHHPX
1sSzCNEFEXEctXYDU35N2CJl7P9lUvqGws3hVdn8eZjPbwIssMVlQejDuAAhWXNaNvUlqJrb7s7g
TAt9PcCIC+5zqMIWEI/cc4gtwur8PB5XzN5+G19/dbhrYCTn9KpYU16OylhiETzr9Nk00djln7kM
1ZshgodRWEEZUcqy5mfEsEKNRAgThdvMWVkYAWXAZuMO4q11DRoXRiWeOXTJEkTHqibWa3CCQ3bI
xJunJTjRN6aVG5mYk+krEsiJ1Bo94hNPLJey2si38HMWd7mSIBhO1R3Vw4QvQiyKG4hXQRuWF/57
znQf66yi3dabd0iIzvNr4V79xWMaohlWuWy2alrzud7FCxlszYpYkzHf3VRYRHZGX52/gsSNNgxm
T/1OCZrHpuMyPkvdIsRe7PidWphzuR2Jickgw/abTQMp1rFDj4JbsEBIhUVcKuYkvSH8s/1TCSMX
zs3pmyBdcwXIdyBMtQ/6THhevvbEwznTRdtSsEf4275Dq9zKwPYuN+RxBAv0Ws6aCmbgbr53EHlH
x+B7tEDRoVNFSF8RpA++rrgLVBT4pd3BdB+s0to7tByZ6UvDFqX9DnrKHZkV0t0yrn6+MD5HfJuT
76W+2czZUY67i8MD9306hhHZm417UNsz2jjgwuA0XgT06PBwGBCZzh5fU+GfPpSKeenK+7Hi7fQ+
A+Swgo8F7WnoPaHFVi5XSilzFKUoez8CHXnlImNWyOH1EYCSMX5rV9Lp2bjdyzg5BpxDLZofzXWv
iCBo386sueXiplp7DooHFq+oq092sc9Wk2k6bfX7TMMRx+1UBBnX00e8jtfFGiN2ujYmXSgn5PQn
BUC/Ja+s3SCY736Ivq7SnUdwsaA5/C20EzlOmWXEw1Pz/gUyuu+NQ9Kv83nE2Gjy2e6IHPhghXzE
7dy76fYkM2fHG0zH9u9CzCb4EBKtONGGmLYV6evSwAd/kF1R4HWWLo/EGsOjSJ0519R2YvIrkPVa
Xv18mCux8RA+XGU5OxyVBZqEgNS40hKov5iilqZLyDAthVNqYOVSXIS7mDUTqdhnE79dOcISMBtp
AZvgCxM1zVC3EIC7Yi/lFk5XCb9z6QJd0S9zYnkREkAc5lYJNqGHtnO82r4S4SuHGviDVd0tM1Y4
U3XYwaxbnYdvNFa74c4269UbTKNEDkaprMcLCih/f/AZbrD58i4Y4y5NcwYXUA0WclPwFCv+oKbZ
Qb/J3Yfo6zjI9annSgN6Iuf/3UrTeOF9m0l4BulW24/9++izLrKce4bD3sKHHeMmCwhAe4Md0J+J
BpI7MytCMybHwJ1wz9jwNYsXEnAV9Om5ekpMlYYXD+MYWVn9DrTjYP0veUhGUHthwQlunUQwoK0w
AqHQXOyGeBAXCT3U04F0l1DwS1FIv3AQSwIPj8igpmQoRGNK/ipjXVNk1jGlHQXNJ0Et5AunF9gb
HzBjvk9PP3f6hKwUBl/zITPA+TZFh0RgQCGQJIi6J9aLDqc67znLtohsfGbYYcMIClWRugs/OPlj
KH0JpnysWCOpP5w5oEdXX3fgh7dKmSsWyD+ASvYboW7kbClKH0QTGoBLsEkYeJBGTJ8odcNHTUH5
9wjuhIP2VZsGBgC63srEa7AYsNvvZZ+kJrEHoeSOI9t4FkQI+5Q8KA4Zyf1nPCS6mGxaE3jEGU0t
4Qm/8yGLEIFktYRNpleAGVPMBLB+zxTnR7lnZIC6St6Bbh6Xk9UPxF6QV15TQORIWncpSfB8Uagq
ubeYkn0Tp+tNxyURfw5bCQ9/brTkWlrXw7rANZvn7+YQl6ynS2eZNBqH7TqIM6AIeb5HRBhwiqwI
1HY+ILVTuapj31CzkXx8tuvnpwTy+uFylci7wX9evdGj6jTJNwkfzhV4yI9jXgLbl6gq0SP8g+RK
5zwbDP/RP7uS+28Xr5cd+tegbJ5d5vWtjggxgctdhSuDr4nemrTum/CrxOoQWrGx5kNU6+0tdfJI
4G/GFVsyjMaAisYaQY1bvChjoneuQAGUIA6C6vQiGPmcxQ+W64Ew4zWA0iJFz+UZNaQjN9fySKqh
AEydwM+irQEgo7fy81dyzACdwtlqOGn/j4WkjbbpjJ4XEL9IgOg6nkiBbnsDvGlTdkK6zMZQdxUm
FCz1Eh78U2NUrqPR7u5QCrL70fxNkkF1UNN4YM8l52TXFoRhHXyB0ikMrPKj9PYCEy1PyWegu542
WgVv1uroUalxXEJpMVsxIpey0UFfgqnwzhGSm5OVJ2sCNLoo3zrKMcJQLnsIVwcZ1u80MyJ8IZJj
b8MGOcrgT1EYfh3RrGQW4DBkdQg2v52StLgU4argB0zPeOwJBraRzCPu8yER1BBUN5y0bun1OZrb
RBr0f6o35p9uE1btuT4ye+C77FumS/2jfatxem06DkMCckPKM/04ZwP+mCk9tkWoPqCRLAkZDS2h
/LlTLPLkWA3rb889sD58nbB+lx2K+VEW0p7CqtCQjUKG+X4hF3/5UXEV2wZFEMd4lOZvHCYC/fyc
ZSzq+5c3aHjCDzTmyQyqgBEWIs9NmCkRO+H7vbOObjWPVHLstuzz/BHI3ZGsE/vHKyyFdERtsNNh
xkkTjtG4+g/gt1WtlaB84zxnjmmdJfO8Yy4/r91Lt9cJDI6f0ym+wW1/OMQr9bpFxku5wsC1VJ/Z
hCU/99bekGTzrrzWcZT+hCaE/DX13YFompl+F7kEm7ERBBWELaoFQRN4qRMti+UqCz+R7smwy3/r
L8JG/3H9CkxAEDCmZzdq/yPIvnviHZ0mUmR8X2SRmgGsREOddj38ovBdzgfB+cblOOQCMsMZUyMu
7vK04vm8ie1Eeqnh3JMcUflnn3tUt12YQ/BB6P3p8gOPadIyrYRmfYMyxBszv+cnXnwTrifBLSYW
aq7/CI7RaCKPdN61Da7e4YbBSy1n+JDw3ATq6mMdfigjQQQa54K409l81iuQ2+/z3yxNuMGjOQoI
kYrismm/CYRvCPyHVTiwMn1CALDL7aipnDE7RrzkV55a/GOCqJe2mn6QDS7rtIWoJ99jF4ziwSBf
fYfPhXZ4UzGT/igtgcGvvPS9wSCrmyi0q4dBFgsnf99Mo3dV6A/XhjYZbrq3nnZTCQ09RDOB9ges
VkIFvboaQaCrMASWV3lnHGkZ/ACmGrSh5HN+zeZYjJ48P6WbfKi9Z+vLVeXbM3yRGE6IKJUKE0do
wFXMUr7f5niSfXdc6E1m1uYUTYAUtdy+1SdozDL5Lm3wVqpc5l9yTs+6ydcc1890J53xy51nMzhR
wjDH8phjIQtV36tLiJIXbOSp29c7/xbqvpzF/2kigSsKt7b1qtLEajMsXlvrfc2djY1c+icAWbeg
LoOXZ6joayBLIjxZ3Pw9RBouGP85K6OvyjrcIwLl4FK2NMgMTZrK+Ujlg/4efAFfEvirQtv1Lr2N
WEuLU/chqcff7xLsOhU5Zmt0dMzBXkUO+ufHBZSwe+biHVkxkUCEBWYt9nuw2T94q8yfVdgXyqRj
xPeU8cJG471BBgGXP0Qm8QEr5eFuwaKz6j5wrNYSop0m6rBu4V3ecvSkdYY2/5GBQ1lH29Bk8L2C
0t15xgUmofENmytSPUXyCh9esY4POpXNkAuKT/HzbQh2CXp/54kSQnbsqufdFmompFmzr7AYdd1X
iQoeLGiAFT1byFMSystXdrAh2MCozjoWdZ5Ico7T3UYRlV/r2hEoHxl6jBuOpKCtTQQQwECyU6Su
YpEW9/kl3vax4Q+wGAfSTelOZpMWm1ShmxMWZaM29GlIs1xurHczC2hmgcfGh/uMlc01gbdCshct
McjzaJpSn8f4ocsLvypwjqZyr9fKza+yC/WLwoDfWliOgMR+uupI8ynzQze7HbuFtl6U11NPM5Xj
cAZ4nGNLQZk3sUoG2n0VLj3sJgdzEnG7AGoyHm/JvlS/gu4hO51jsAPIDQGjzTeaH/2KqdtntCBk
r623KBzVZFBPzsxQN6FvI/93ZDOrC8ynRUkV0OLI8ymRwNmz5aqnzggB9+uLU49uELI5q5uSVTmI
EjNLN7pE8LIizTzTcBhJoRGde+TiM7BEquB5ZLrqa0dmyRJJE4Szq4tsQ4TmHNCX/rQOnYvRGV9J
kky750Azviu24cp4LSevwV93iNy9jx6s5gmwIdj218j7rrtBDGj0k3lJW2SOLM7NmcYPo7gJo2ts
F/wLp2V2Om63pMOKbDbzUxxW964Vr+93R5fMg3/B/A2nF/RrHxMx1WWzJbk11a4v3qf3NSkbrw0A
PEr6OToiK9J+PCCweSW+M4f7dDpoa/XuVDgoharEKwChrybWAPccKcOGVBXZ4R7Kjz7lyH5vkoi9
/N5FR3ZhAUE68za/UYjnLaJf7b2KI6v/qBlBN+tuZkIMJUI/nBtG6UaIyDU0k9VcePu0QE/LI24o
Pj+4NfsV9+ArRbis/26IyUpYv9QW2EI0/PdJpsq37PMaVNmkhCdNmWrEkp3X1LcL1toAXtynENI+
r5acT4mnhHJ4KwjNkRspZOZzltaI87atpPNKRZz5Qc7mZtpbtl39S88PAIvVhftaxUyOzT0dE/wb
3qmUg/vpsUizjMHaaEBmampFSjYwjyHYvoae33QOBIFuSU6n40wJBkPsSzIyIt0GnPZsKPlh3wK+
wxR2xlVfYifmi8y6kB3aElAM34rjuIwxoR14Kue78TH1ArLNsujgSxHLnuGbENs7OIBS1J+/2eBg
GP/myBpwYIKMi6UZyA/3mwj/9ehw9ijT5mxj3VNzgPlHorUiYHvB/3RoHtYcQxkaxNWZjz/Lxvlz
/1lVXEXKgdMaMAOAvy2xf0jQ5YK9F3Xdl/40Fw1Xnued3L+xo3gd21gpGNC2O2LzxDuB2K6JlvoY
oTutkZ9pm2L/tqvZI98f6Vu+1trUhqooIZIxicjFIKZoJA2YvhuNg4M7uvkdQCOc7TfPw6e4xUcq
skVTrXFAhVLeooFHJ8Uw3ADmyzOzFD11R66qKAOz8f1oxeT3Wb9sFWSRJ3bk/+yrIPfGHO7Sbs4L
n7JzDmuUqtUG13xDUxOAo/3lbct0q4ocnDld+Um4ObyrME9k/FWZrRijPI8mXgCLZTeZ6EP3L3br
vAmDLuRtcIB01mJfAxNtKMhed+7jkENHbCVwj21pw+58VNsAKswGM5hlXbtDjLmcV4uFWH183yv2
jZJ+8+Urf6jR6TC2itKhalfXnW9lnEqbG9hvQ85i89AXu7/5ztFk1SvMQ9dPPfxoYrAwZ+yZav1U
FFVIwyFOnz8Z63ZL6pchlKU2U5H4o7yZs+aVnuwFu3gZHGWLPi5d7I+q7lePPJfXW8jQmLQ/wyub
u6TQu6Ivf+0vTfY+q59HtyjpaI3vKyIJrG05hAyZj3Uvvirn32MzgSVRttaClatn7uapxgrAsuhM
va0A1JwnLRWeVU7qJTNdp0RT9E7agYYcCABJCgjsqKHTz1KlHA6vRtZCP6JUXCzeZojhetbF+dKp
IQSYU/XHjUAWCbZjIzE3I/fLuWa7mpMLSebdBC+QTGrjHtH7Zmfzed3Q6XYS5YPj6iotVh0nKpUO
fCirFFncGld8ImyIBqc5zbfEn+p1L5pPWxtu7UogXlwpbnyLifHlsz/gVetdzL61HzmkpRIoCX0R
I+I8pMQi+bv5dEZJoTH3QY44YhiorAaqNpwIBRZTmotLUPnPwTqMh0UX6AnYQrPbQhya4n0L58Ie
1uGtw+TS28kgA4tcAYP6WK0jaYjQsmbzGqrVUxknhoHiTF9VlNiH906WIpXfpoCp4BWbG29UqqsP
GlqNbHhOAAGwtSZD4ukSAcR6sLpBf3/QR8f9qVqmJI14psaVLhz4z1FDpQekuhosdyXOsv0JzVhY
8eVfJ7nfTyEYp00bTRYHbx0Vd91FwSI606rePHO/tipHbTKwS6ZQQigFIh3/s6yUfgJt3qMF1GcS
LFHWCI9YzV9FD9MEQXr8elsTJhAIxhbTPBVWE80uB5KVLThQNb43azRtAzpte+eNgTgTnxO6+BVG
R/FW3dq/cLWbOM/COa+WVYDgUhRnf5vmVvKEnGRFcDanys0DTcfWvcQ7j85naLKdzJaKJjC6rpIA
G463pkCFm0TuJ1e9csqr3w71hlpQD9dr0tScdvCRAmqh4JhGeVc02mXxo3tWy9T5bQJv36F3UV6L
gWyO/W3ivIALIKlE7oP/9/rwl/rr6fKaZVIs0L/4PlSB9Gin9vTA4MwZ0/ysXe9ymXhNY348DzNV
S7o4os3a9IXeTHF/yvkT6c/MpK1gy9skKq4vruLQW9kFPOKin/No5evWYzVkZeSz33XtTBZ2hmwT
WOxmfOOaPCSVPdNLgRCDnBaPUrPd/CdA5L7S2HioDLB6bSLQ9uQeSDyK791DU3VgaCwmCfkcuMoK
3cnMlZijV+IddmaUxbsaC0m6mR5OGvAKeImqdsywI92j6fTLHXCDIMGkdm+qi4wa9gvbpcrUqhJj
3qXik+at3Xr0xFgKeK6VmNjzJ9c+rlhHNzXrpVqJHMH+xCT8OUevuCeC2Ow02UqlA9NpwfQR6pWB
xIPmmtWh/kbpjcvUnmjncUSYPi/3gHmwfQuI72Gvo0T6NgPtLmkO209+Hrl8llgmGFeVE6/Ze7cb
hT07EH3TkzuI3ky+53dJlH9kOp0ssfnwoWNPLWaHrMsorltnV0+MiAnasHzQfO5QPZ6JWiMxHv1U
BYSeDXX4xC2FnDWf3yyVHsmLJSVfnbOQwKldICQISkuh+drUd37THgusBp8ZL8/1hVZMTr5B4yPj
YP1Mn2n8xGCkrJUGqnlbKtb5awgqdcn2NCUShuWkzPa5Sm/84AcCTDl5LYJ90HcM+DXx8J8I1ggS
y91Dg9HpPX0BjUM9ErUOnp5oVKG2KnLaui60zB79fxR8svk/8XV7gygnF6XOzKjuH0D9wHa1Qcyb
Brfmd02jkh0wAZDe/X/ptC8zREehd9v5HYxHkK8Igf0uFUHmJAejdwHqdRllRxReuKL41VMIO9de
i5l0Sg4b/gDQNd1jqsSoWWq9Oh3Qg8Cvo6vAmy1bRX33+62NSmBOwDxgTRr2eNj6xZ6tnOpEUgPM
3izxao8AwMV6ZHtUFxC/TaklkRF65WmSWehTVGYz+4aiar5EWI7cHHzyOOlR0GfUA8Fbt0h8ggTB
avbDhp3W5ogShu82tC9jgUNX681pr/JiGUBJxWw4XiM3UI46BBzsT7JGfJXDgxAfiOnHXG2ztG4m
B/aRCDaZHfqpI2itXu4TuYym5Nr3gErgUf8UHEVxRcmvAnvtcuOGkY/1NOHf4fAXtfjvunSPgL96
h5bsCs9UlZCHuQp1Vy3p9XLu+BH9IWHodwmIZ05pbWt6oQC4NrUEllD5fhAEID/Rx16AcndIl3zz
qh+QaqQPoGUXKkl2EsNat+BBWIENcjBXLyXEtnp1jgAqvWgvGwCtdKMol6c/RtsochsP7l64g1z0
oNjvFfZoe5rGLauM+hDHnjRTFHjHf19emJ03HqQmHN5/dyVdKogYpC7vnPsdZqzQvA2y0VtkvoAs
QlHJgNMoxuuUf7ksX5hZBtOoOTDgCIkpT7wS6s8v6/YsE5H/o02640QN38ZedWWAY/zwUNGbo+Ar
HaVv4MrRthGpPQNhtDDRstIT8Nq5rUUWKL/ixhNXj2a+0M+cimB96HgvNDdnvikgway+6HLUaSFD
SjN40bWn9yZpjUY/iX8F2oM10PKdnLy5UquI1OODh05KadlVAdvxov8jwKdj9ox3FEjsl/vpuhcF
+16efW6c6zCAUFOPkD+5EN1VJbVGY+XIk2O0KjlpEEpWgompfSQTggQxkaY/l4ksMlRPe5I3+/Pw
XyCHFrlata9L1B45pEPj3FhTmugamjwLdhN+KF5WAk3ObnwmDJSlK2Vnb1tz+9D27+vmhFQU8RN5
G929LWqew6NLEq5FrhxW/0KboIWKOiDlKAKBciIdSddoNZLHNSVuMWAjVn9cMBqqbjs+JsPbtNbr
XSa7OaJX3Y3Tf/D4z3U/65uNS+Jwyy+rO/rwxS7shvrIBWyOsksUcV4OktV6Eqqa3u5j3cHuPuzr
LBHgZ1bg+Ox4MV1F3y9rUmqHmveH29GNPGvbsPn37zoUzrW9cCSnkOJh39HL7vphJEEl2iILeU3u
/YeFN6XPaDvc0vK5mazE9KB88q+SVjn2uNejaTUbHNvTdn7WXDDdqxq6huDHh+uqAZqi/YLTtMea
MJw1zS+HQkBoZUSvn1zD9AZ2dPVCCLdqVoi+aQMxIDS+JstDmp/7xYkmEZAXWJa4DLCSzcv2HF+I
uw8Erir6kPKs5pInilSA5lxPJp+vVSLA9LsfQdvkxr6zqaSVfixU/gafzpMIlXKTIv5leYXbqM9K
mpDqyWkFNAAPTWHxi8TGSpZ4/JD+n6VvYtJ3QfQuIHyb8MWi23ge2MuFswZIGA2UcY8Uj/a66VjS
R0W0l78qNqQlOAxJtIS3/PGXQZllD81FbsnthX4wwoRfLqwMraj1sYj2IsIdZFZ3A55d6ezKDsb+
Zk9uwQqIJ7cIP/2LwUvHRskX34fG3/ifkhkPbtHh1lxA+KKJQE2kz8XSKy5cO98MQeprnITCQmua
+wxjbGR7FbVs9Eknpy9K8baTi33FbXLZwR/pEFh65VZe99YZwjZFfp+wPCkGTCgiJR3iI2fjiZ0e
M1b5puZwlEgUpaOqootM3iQy87Fop83f0WvutQNbtxWHC+orga5Y2M+EJydlTLUJmb314I4MhP/I
YEoqYZvfki5upefyetjM4lBQmsTWrdexQRPavM4peWW0eDrWhsX5uswPTn/+AbnEKFvIuTq/I80x
mcGH+nq302NZFYZMtq1KzPYopu2FyKvRAEsxAEVqlJ+RtND1cLa+UQAV/Yr62157sZFexG7Mp4F+
8pix7Km/Z42ZvZ/n5oiIPuMyoQ3bg7O+0O7XAhllj9gvQ3WL1HJYF4xnZofXXj/Tm9FmJaDr49Fa
Qyfb2gk5kZBbneXDDJuTzRZgZBjMzEEdSLSkdDfpT04XWiE1+DGmXmhoMU5xVeUgja1d5OCFN10E
vePkJGdIP488E7g/KPV4DDhEpBDo2VjURxpQIdT0/ghtGaOasiLBGdob6BsyI/9Z0F2C2j9dH6Yu
7svc2UA3jsyE+OpduCEHtmWpQXjT3ieJ8C0qWeYIOfhEUHukFC/G+XKspgl8dh9UVsEWNnv2/a+t
zjD/xj7bupIrN1pmeD+Lw2GE/97OXiqK87ieBo1svGr24wdgeWa3FXHQwkztPfKBke5qzrByBh5B
+eC8pVwqyfvDpdXyCu4Bm7E/o9WC+NBeII1gN/N2wokTv194imdr/oN4NvZoQKMZZAE0Ey5mhlPV
ArM/2f4lXUINgn0H7ubROn2y3xoE1B2w+ethKOHON6ffk8KTgGYRvKUddY/q04BIV1dQsJeS9/rS
MUMkiF9Eig3LxL+l9E7N4JyQx/tudx99EUQyOMAfV59P/89hMdLYjvbqrL2soao/kcpiErlb9/f8
WEUn8s21Zby8svGdcacGk77K2VLMwqCWRlv91m+1jkQTywoBdvNFaW/dDjWNlC1d0eW/WLGHOUA0
xYigPASRTgdEcTuo+OTXELAkTJhs6l4lhNhAF2pAav26hQ5Mb/aZuiwjgOnhy51rpOm/ugNxmK3m
rp47E8WEMjLif6o2Hdn1hsmnEdYa9H+fhceNeoVJMNdaK90lLxJlixUE97guXhtcMNz5s7YwiAgZ
q8FbhiDWZP2ERENy1WuzQsof7UFeXwwLLrn0/tMsqvPWmQAXExetkz2tcSwkOwVsKHI2OgOtJQHl
v+kdMNefzmh21QM2j4xk6IlSmsEhHyj2IvGEVtfKsEVooPsbbpucnwQFlCCMVQGIMk/PcJaSFj9o
SBPoIwKsZFI/Cg7px/mouoCMJIXI7A8Z+5bUuaC7JpWObZcDTrpBr0StdXW3MvTZ8s9vZV3+vZ1J
ej8LlOcdm/sFnWB563I0pM5oDC9Z6lmhAsGhHw3KFPZ8JXHWZ1ZKsUsOz5pRl95Q245bq8uwl5bA
14Y6jbPIE0ftmbmYPLKoRrKJc2M7aY6fYBK73PP4IsLQ73IGy1KrtlYwflvbcrDSm3TeggGPNquG
on/qNjbnbzqOH/n3Afd5h42+DobndHVyoKDMGypXPcUsoC+Gy/DN+829vEOdNW/Wye2h8tFWSxnY
ACVTOBpY4IS1A0dTxzDJrUoRPl+6MLR70ZWJWRwCDQG5pWeIPtMrNQivzl6ekgqZXjC7O9bPA14h
BDmMJHj/u3uPVNd3VpXpaNhyJttMv6qDPqnJpaST5nzWlYof/A10TzwTErHEYxPh9WKa23xaaBiF
YXqGMIfrxFAEXE5AfADWyE8+v81MdX4fsVi5JrP8BXRI8zT61TR6L0oY6rp/6N4q9Cql0ZEiFjq7
WrMDPp18YP2xaLMm0Cu9hm1vLEEdKXoNDp4StG/wI8wxd19vlKC3RRgwXupsia0sAk3htMLSGgbY
XLit/FaEVbnWbn9PbbePTefW4LNBboaBNe/JvXbBPlAuksXU2mnwwJsYAXJiOiYKi6kfSP5IZY+B
uBQaw0b1XJ2zFVkuIMwstPMBWilfz+ZRCSCH92zxIGPzb4JuEBONGBRDQXtFC+ZkH0M9bM41MMlY
3PKciDPei+bJoMaAcYBNzDLqJpwWM041um6gRyi0bPAnLJl2L3oKLAGYUoDJSWN2oL/0GnXX83ZL
GEfRpx73HpK1J78UAHnz2/pnMboSPYTQdztUMIDRlP8SeA1ylGjYlwSWIydELG1JnL156wM1rKyM
kvsN1iKCWLAuyCskoAiu8TCrYUsGz79QVoSszl8RlPkQHRbWfMn53UUIYJwLzmzhwnuLWy2t04q4
Lcis96VIpYriXdRzdJHe/NGroU9EMR29oK7UOWEa07fsM/PKI10CDn1HJxIECnXz9Q3VAqutyYm+
paCY/Kwss7hdghLRtR+wULzHsXQE5hm1/rQEhWAaXn4ihAUftNzenLFOdHN2PN3LSZM4tcPPAgoN
q9V4PcWN0cwH9DI1cJDLR7zk9mh/ssaHbLys+qxlgNLHSqqDSLTDo8HF18+51mWB3EH77M7zvSo8
PEQCe6pz9nnrCuGGzut7ec6RPdmnCF3Ox2gEggGv2i/7l3yLuGTp2iT1ZD+8meQJHCoPFU67Wc0W
zHdQ1AmarVvqOuwKb52UOjRIf27QOXzb9xy6wMpLYLjVl+4lPYYRnYSFY9YSdMTZ6UH+des4TNfp
2A2MHl5tZtE11+r0NK25oSuCefzBGVt752U6R8zfmub0nSzMJxl8iqJesqnsPSuRK5wgbTE99F5M
ubSEuFVXhbJddK6NzP4RQ8Zy1EdUKjGEcIAl8LJCsnJ/9FMIQ0BtfBlet86hDTQ7tyBmB2zbus6W
u9z7fGZxkO7vd8IfM/IHkGwPsdLE/puXBuiGKvzHkOo4Jul6cb0XxxyYv1xYrDqEGunnuEQGLPII
VEz5mIVoPakN8kxqf51RSJ0uGa9jXR7FwUyiX3tenYNJg+xGPzvR02ekxiNp67FwHGjzoB0IY4Oq
vZHiDOACqoL2G7+CvfuZQ4deKD8VBr3fE1wbnK4j3l5pCz234KIXET23r5NBP60WJIJu5MuieMru
/zr7HAX/do1OQ9rGr39jzbZ8D7GTWlH9KvwgB41gcwVv9OoRx46BCOwNgIaG62udFhciL2YiK7w1
hHPn4mLA/QQmBYffqvdI+bh9Fx/e5nBzB1uRbNQ9Dujvk3Kk9jpBrPem+PMREsd79HUpbfsPzjpb
pMTlk2hMUhc9A1W0yRKaDDpq8HtQtxro+Rw5DhoGZ8N6uXsmYQIJ+oU+Y2ce/33J+j2QJNHyIM3n
CkD67NJ8dEVwqmhO1e7d/xvk2qjCc01ISsiWpi5hVTAdph3b6DsEE/l0QOnNlnFQzBp1ARBz1xh9
3ZnLJjcwkYPS3G9NL6wKTlHJb2DibV41wCH5cK1Vzjmfe6Z3jgbnVzCm0603tDgCHQ3out0x6pc4
VHRs9OchzocHxVvBofsFgSL4CAKU55AABa3QIqKZFqGR2hG1wQGj5Wi7looFdVxZiykE1PxXdJ1R
R9fk/+DG4Ji7RZRt91nZZg7l3pTIntEnZxIgX5ExT9OOCmv8NawcJDs60MMmA0YiD9+qvgbJXzIF
u1cz8g0BhWN51H8QkwR4NDwztNe9xqZJ/hcdgAFYjwhIC5QJfeVoODjFdRbCTmqVczQ0jGjj0OFP
WM1ug2QcAF85pwec+960LbrMfqKIxlHQQToKAqOcUJI4josxqp7UZbuCKsnutagBHbIO8VW/ilh2
Qd9An0Xvp+RzdxemMY/LqxzFtlbipMc4blsFjxEnddwPXW/wY188IjRlVAOI0zDpA3AEtFO8OV1f
Z/+NUCG+PGTT6VVxHyllIAwtYmtYB4E+EltBWRNyctStg2cMw8nBSedCzr2tQr8vaafKFQl9B0HU
r1ZVMTIerWrMOItSZC8E1aGoEscvyrCbrHxcgk2T2raLJkKT13C24vD0Uqe/6SHhggQM6GA4xNcN
gRUoxiulxBbFCsSpE1197jbKgupQRiuAXWnn1IedwyNsJrTZk8u+O0ZKhab77OYNVJJ4yfRItIno
1mGSMD6Je0LIbaLlIuA1cznTr0+I6kGloWwDjo0G+AEub0T14gGaV9AnVlKFOSPT7Qm0sOrXlFxv
N52LDyTZOtP7WQaCpdLp4krdVG2sixerTiUlf0dVN7WEo6tPbyqJjFjiteaeqTMcAOi0TzPJfwGH
Xj7BCHL5tcP/hbREvst/VamN/6mnb0Rx316Lo7H5i8J4hJZVCkl9KUdnlqzX8Eka2eBuwtijV/aa
8y1y8B0q4plNp3aMl2MufyfVP5p4LXzaQQ97DmUpzTFGh9UE9T/VDc3vi8YhpEHZOUoKSpcBvDTv
XUwujL8wb6CprYREv1KEGfKi68OrDUrCBj6kBh6ln3EYgpc0t8VYrnJ8S33gMcMIvG4k3z4/dRS+
WepDHSF0O2IFhil/xQTmQDh71Ma0Hq5i83yuLkiPrtHJouAAFxPrwTORTWXjkXGS3UOR1DUO60tA
nK0oBRAfUaJpuXuK7aGwtjAz9FW6DEJm5MH3sPttqHtc/SXWiOO0EMdHN5Rcklb8Iz89ZkLz9FHi
Vk4fJ264Z2BJ6W9/nzAjaUcpftg+T//Ia4iMFjuhz4libNwr5CoEoIbTv7ck4kFYoXb+/vopyKTO
uYCG56jrbWb7BBgwSS76RXptS1lBc4eg1OWmB17IIULaiyZALZa/LSjerWyEAC+2q+nQcVG580vt
ucLJgS1x5Fe3CiQ7G++IQIPf1JP474goTzPyD6VRbJIAvJkAZEj+wGj5EbzajLkiWrdL/Xt8ufBx
NubDzD32DgYIg7xfr7WGErbbHKp2eLPu9q3FU0tqwCSPO9/+e6Q8az/6q65gDR2o4ul1tjTwNcL7
NxUsxBALbdLvAbJ7nZ+yvALKvJRoHqMGds7UZcfO1EsXSD4uUTf+z8EzWt4I+7kZh/l9+7WLEazV
h5kI7L1Yy8OBUh8XaCD2KrqYOJiMkh28K/nf3FzemYVf9taLksgA/6H6jKB6f8vzv+OXqjtcqapr
uFm3Y6EURCXtmwn168sRGZxfXxwhiV1RUGJQhiuEt5Irq559Q/D2UIeoDTODE9yYKPuHIjOi1EoZ
Ziv/0ri1O21Et4uqTYVDt9PI8BYLblpaeJp3DkmOYeGuuc4YRvse0VpTg5poDYiltPxwulmpGT58
05SJ+Z4EUX/cDrLP76k1g22uJFpAnYNmrpJPOeGbpgj5nvOjC8obnTa0kH3vB1Ttyg7hJHPNQasj
VIf/fJLWU1KDGvrP2urXGDm6IB4L2k2QG28RSgP48Ci66bTE3HE0aL/85gc0+i8Y3YOoCe6kM21E
Iz5LIR63usYx+IT88v9AD41mvYs3t+u6slD95uTcQz8EGSNq7CBhJTKtzBcc2TszBQlKT3zhOimQ
fpsDvwU+vFhDQjxjRW8B4VQnuGhd09TDnlLlrAbA3z9Cll5uc3RckpSrah0HWo1sipQrIbbn4l3U
H9xLe6JoXNxES6N2/69tNwzXO1EDGtecmx8uQC7L9fdvPWj1hgv0ptiJ9d0WgR+JegZ9ZTqJh+B4
QoqiFK50TVpw4BDNjo7IHSGMIqg0oVXnrdxQiJNT3g6cEBVigoIomMlNk9LcIJLde5i8G3B6DOMu
I1/0vwATsN1Zmc22er6KcOvscQ0Gq9v7xCBtmbrkL0VGUKLT/yijefEVYkuC4hyAf23h5/3kHRf+
1L1klmiWVItZxVIcD6az2LAO5nGVp/Gqhy4ulHl9yWCIuAAR3XF1RZFLlGTUu9IxLYA2xrIe+Wco
IpLFSAsjqKEtThxoaW+rJbVrvaCXzwvFCinnGA0QR/BQO/ReX1dc4n2+ZyD50s79Htwa7aPyTFW+
Xh5rKwQaQ+4M9BgXPsdX4ONhN2Ctr9022ffkloSDKoSuF2A1tsGwawL8bVPl9n8UvE9+qUoK7TQ1
BHRdffGeSeoe1eHh8wXcytwM+VubA+r8ODqdlIy1FiR3FnPGUC+ukC+IOiUoZBDMu4zQvu4/Fzyt
u3Glb2fIXuRuVv53kHYODfA1731s+i747i0r5zTcyJlSuuFWvqVsry/OIhZJOXrqoXD8xOpsO5Ca
kkZHeeC2LMqBpz4UZF6Ar+KR7vVUwyafCJRgKj91lZZZsI8BUAtV5U8cJ11Uteqskf4+rELsY/Gb
i4AnlwlzFMUF0URAQtgg42UBxKb0ASa8zaVprvin7vp5kTr3dLHpWOJ54Pm3V9DEaAnexbxGiU91
jg2Gz9XxANmYGKIaRvDWORUx+NyQ0LD89ppWiiL/Xi8ajrGik3y5enGk/mPdthjMC+XgKo6glmq4
WWFMcKseegoVYHvZvAnb1YGf50hWldm/EKXYz7lcI9SmGEvyza+sXE2ZBCXmcXZLJAiTkPwWit32
7kiT4wGZR6cYFlwSDcuGZcurwpZT+RJQuTxCmDZ730fCrthSiDuCD3IuTpHeARLQ9gBeo9qNyvby
+ftLLUiBshnHcy6nFMQ+jFYtYeY88dSW6GQnc7GdqRsClQz1Tf+vbU1bNjy8PE7keecp/dHdcnRe
LR4yrltvDiO60PCM8cRv0f5T+NhAHdsSyyFP7OlkZ1rnDFEUSdCJyyUAMMfL0ol84PWwEesFBa2/
YuM4Cp/kS3K1tlnvSHQobKLIpqEfbbr5KeOW1A8/EHhl1Rd48CE3gTInj5Ry632XXnd69T/gWfxN
RlF1SW3YoY6BurQbx7L4GYHAK113M4baumU2F6u4Vjfo0PrROUxj4UJQ5K1v/a8KEp/F4XPl2pGL
2xkk9pT3osiZxg4nFUd7oG5yLJyjB5BdZ1gRG9DnySE3HM8In2nwOfmQVuDXNeZhKzA3j0mDKLpl
1Q72ApvRgSSea9jw5jtBqcgEtV56tBB5FwN/kkjlCufY5jiIBYzeh+BL5KzHErf8n/l1rcoeWbzk
34ixrPNnc7V+OkwYhixmyFVT/Lp8v/hhEi3yJZdLYqSOPM8U7n/IGlSmgnX7sdMoks2NOvnVFDyH
NlBA+O1q2nbYnSlvYcWLj6sTv6KctbQmi1KPVYqEsWaOnphkHnPit+Ty4NJ1VBPZrCFELklAoq+L
ELsI247YuPL5OrSRIel9cuMAJ+JiyFby/ZUXqijH4CJsj0I5znwJPrDUmVL1dzmR1uxYZwVND3rt
+4Pul/qbGRLWHKVbI3mg1+kukhygU55+mTM0P4Aou8uHzQbVGz2sTzGsNmw6fExk4jekYJqjWo33
1+tFkOciQuBwScnywJLdhg577AAMCtku6Y1F+57SfaiIi7k6VibhUxyj/hD3G/GxfKBNHtM71iDK
aJyl+602IAk3yHrG7bJ8LLauS2CTgRXbyb0RtOOkuGMQQxss83Bulh5nNrub9SohCiAxqwddYdnR
Pl+ci8TIpvRytq9LyGr12oU91E8xspY3nKnkwdKk1m/aDJyDs9K/1Jy06uDWR8bx9j+vms+lrS6C
mPuNFdJtWRcX5p7ejIjC1Dcaiy/Vq25gjzPfKXnywzNNexIcCTvyV9ti13Dh2nuyxA9e5SYfZZ7I
wUZWnMw0e0pMH/fWKOMscfXjwnYCOhDGIZQCPJV+/uKQu8y41CaB954Na6tipdzfZ6oC+Kpo/5Pr
o8WSdUofk/Ovz6Acf1W2BmoInggFIWlSwVxAd/15YCf3V20n2+XMNGUgZJ/knT4+6publ+0DIvMK
QlfPuS2R/TaG0g0FOh+HMidrM1/UyDS4G54yufWgwURsFjlaGMdItAuzQZGCTuDcRZ9Ewa6n0+JS
eZvBaxidDsTWMsOtm2Bx/n87IwMN0w+LlIdtZFFf/fpgF/xIUkL7+63MO/9BF38GwyIpVYnhUBB5
Po1q0jV3B8oIxNJjDxQdcx7X9XMaj42wbz2E1rcug98IxcCEYXcjXwuU3bKOGkPB9TCaptbIT0ZA
Uuf5unBHQZQL+ggLP8LIFSh7OONpE3BfLdR0QPSxnetVhAnIZYwSdvsOGaPGvAPvK7f0CjKoamUu
W7icxCY2Dnz9U5q+bVCZ3yyySFzm214c6nTidjH1aWM5LtfGjB1QjmttvhLIMawljzQGtzF+JXub
7a896iyljC95WpxpjEpFhOV5DzZDlRKgg576UR4HVb2oISBab86q+cLEhYdUsv5MTxPLDua/oiNL
q+T6qlLaq4DF655CZ25AriexyAFdumG+4hrIoelEvr6HTjz5LilMuFA0K3eUHzcH9r/NYmBq18N+
q0PAZoKQ1ACuHH1yDn/vIAyivIgI6zjUwCK/DaMeVLQJG1Rww9le1XGj7KEOzagdp6keR/imCrZF
eczAqO1N3ow6dYiaDnigtL1EsYzkGM/MygBahY/otuTFG5qbPLu0uVpkHcEHIZFUoS0VBY/ukWIh
gRTteIXZ6nZEdFz/CGnbXYWLHcLsVTTcTopDdLgfdXUG2e2NeJ+JONRwPsUgRlMkkuqC6EhCoM3j
OVGpoh2+EqS6z0d1ENRqzW8/xtitxJrygQbl8h/t9WwPHkfWdmKt7NDJyGpYI5LFAUQBoOIa8Gea
9SRGsDdBP8avU7R02yUoTCtPe83StX+uUIA7y/jlGBt8+mX/qWSuyVwTu97vgVkby9tK6x/AI2cV
VVB65ZzzrEnfpY/bMdAOAI+huNCQLXo5jDG7jVGvyLa/urXOuGDZ0nsmP2PHyWd/ewOKipp6G+y5
VToVxk7d8qUuxsy7fnzBUM2bPVWG4Bf0eFrXzLRiw15pNk5Z4wcf/g9xS5NhpyH1nhpGcsMU2+x+
lIBgHpOipFNnOnfT2I7VhpmHOr/biJufqOwGCaqeJ/+hsIdXBa/ES8i45IRZ3lG7KEfiPOp3z+jE
qLw1gXx3Dt3c22BSH7qAHg3/Ia9hoS4Ac5x7/NH8OoeH5gn8qMXI9GiRR86URdgasVnQ3qNhmpee
j9peSKj2gasEG+JsPLQ2AVtPuq9WYQbYk1ENFotSX6sh0jSGaGNRsu7M3EeRrRD+CvZjEMNz/SMl
EoGe1ZkLO+upXJm7oFMx0BBX2gB6x5VEDaZU4SMM0/uXSplSJXnSLTx3IK/QVTg+fPvn4bDonVFn
qSM+bStKKQLQnlYsCj8JJq/bvpE8JyclRo8nibpj5l6Cg8vIvsv529MZ+6RLnA3LXTws8n6BI8wD
tzRR/6lOh502j71+vDHdp4y5k9WNXQS/2SET20FmykPiQQ550YGjGyYcCc02Ds/6TluPEuaa1cnP
JP0nz8zEDLemUxrfTCg3qA3D0QLaRMJ8saOR4WIQ+redvIEyex7tgIfFJBIb17SR732CpMk85hY8
6iY4JtGnWDJ6vCfWyVPSVx5e5Z8Xgrfo9ZraJzWLBmDot5y3TdFodVVrcsPMTBNl70etRcn0LyKB
ouwTFj/aghNrrWgD0EwzCetHZYu4yw4YfY7c0+fM8aL3usHXCD+WVHTeddcUVCCKnWQFPPDJFw8Y
Ve7akP1KiBR9jPBZsC/rmRQ4odlyecmNkf4kfNI3x6rYhjAaPWCwjOs2NXJ8WfVpamDGC61TtzMJ
uLZXjPlCnD2iVse2rzsImFu9Tcyg6URJsRsprp53W3Okx677Z1WzwfnyRVvJNvHe2Hrj2SNr2KdE
ENEVxg3KJNU6eKad4mxg88SaJYGudMW2EODD0iF7mzh68nQyiWtq5pGCNOt4EkCUdHAQwwaNp68J
4yLVVTjmrbCRVGUq1xgs1N9brK0Dsg7wacEdMXzem+vPvwdJdC1uCJsjQ23ji1JS4dtLidnsCCQy
GR07cuIEwAjMpbY/dPwKzanczb2F6sXj8LHKMBOxqU6V5/G7DbzHGQkmBuoOe1dCVV6cXeUvPiHO
htyKVcUbTvyOWFMCT0M1fn+32xY557XWxrqkdxOOp3ERklXWAnL6eEh/4jWNAXoGWbXjUMK8/gJM
fjhq/2zYEMALIhqf30mabSEJ98pVheKp3FRnzYaBvN0NhRqvgeC1UnGz3Yqto8eMtRoMQ7xtyba3
UdZsytB5KLgGH6RXQ60HAGcJxgIfHxmg5sUnFpuOA7OnPdG15kdVkNacrIMcfIimlT7Vb9H7WBKj
97fuhv3hxlRnjYaUPel/eb7MfhJ3jYI5NBhd4idjlAy6zEjsscI9F/mm5AebW2MWnvzuh8/H1MUG
NhccJbZgR2tsVoeP4VUnmNZLt3doX2ruJLsXzsR36GkqwGGusegL+J+FqszO3Pyxm4FiPdyDj9J5
D+qWEjtdDtfGRsl40uwmrT4iR0xWVHDgawX4nhfbBD3oPsq8yC9RFqa3vnrgukFfdel4D58wGYI0
rHx46SL4LMpVr9VnwjSU7jOCC25z6I2qVuJ/GcHZLRqgbp98+2kv4m7ldFFJSd4Af3FaQDGY0PNc
M75Xk69O8R0v2mwMm6chLUJOPVWYN6LpKo2t6oJniKgoRKKXNa7Pd6IR4/fduZvkz/LOkIS2PKZG
QrqBZHShWwFO7aZjZk0BCZ9ExSUkY3dbQgshcewN8tV4XaZdQ45kUQORrkq9xtzuj86oaP8CIR5m
RvlQNjXfqc0I3sTPIJzgey9OzTMbDAo1ZoJrEAntOAOSMIvUjLDRTf+xvuiZ/ksQNP6rlIg+xidd
/Uges1WqEhWEvFEwSG3VRJax/sqYg4+lJNV2os8zV36B7ITb7EmgivZibhh57jlTaJabP1oaz2wz
aq099TcJ8vWxqtgZq9sNncrVgmp8Hl0oRMSkCtGd7JKAD7IZkUT9uUtu+8AK5s6ZEa1Xq+ob7Tbb
ztxBGSsc/6epEPIaefmPguazj2wA/k6OiRYgxXxwNtatB68AIT/pkyqWhPXuMthoG0yDnTcXaLeP
jymJNNLrAsEuI/mLGkTo1nLnoZ0BhwQC99Eb3kS2nj5tsc5jK2AwiOk96eK6V1g2OVEy/oMo7HEe
Q/QdBEcDUWH3fyn6jG3Pr1dOmB4KmcHfVgrzZPRBtP1zxNNTWWkyh4I5l2gpG5wcG8qZFUI2V2Gc
qvpE/J8gpj4Q8TTGZhJ46Tk+3rWHOxFBNzdiEtCwgC7S/w46bJXKWprC21bt0IHliYKRCeXVqGDS
Wm/ruW3lEbsDEzeNSAQvC7hPlXw1d7XB7PTp8MESyD/DL8/76AGwkFIexZtzMDbTeqnZ2A8uF2++
4Pt1Sianah8aYg/mNaLAK83qvQNx5MiGuC2TwZiCSRMQj3LALqDI1F2kwRuhkKuYmCjhAiQeQZqw
DCJDKbx5KZGvpobLhrHfDTzxaFvXU5sX5w7UfSIW6JkaP72Xvjsh5QjcbTIV2iuC7scsDUr3ISeo
SRv+ggI/1n60/0ZLZIDi4gcvvVhMqAIlySaFxqRNSs70srRxRFpj0w3N6TFYrgxVfCJ5hph6SC+i
CpgUGEeQCZ8/kvEiP+SGRKQ0seZ7mDRWD6/g2fQtyGutWRc/CKpnuCy2cL25q4Oyk12ErfKqFMQb
WkjbpezFrRR+PXBrbLQoemQIpsLohN4xN3IarpGe5kUVTI0+OxUANMr9QBlx1Xv/OkFawQyc1I2J
gPHdG3RbDZZjVcKiAgsXZk6UE18yB8jKOZAAlj1vptVGxkfIpT7nu2l+1ZzUZ209WRCCsEtTKLd7
A2OsW/S4YWB3Sa0qvGTlP4e++vDVLFF6W6LyxGtY80+AIKDtcMzuLH5EDnzWZHQiIsqBaBYL7AQt
xVJQt5VatZike98jcUBj5RwTaZJXOWUaL/3VFpSFSBvMQE7Rw5T2zkbPYnway3CWdCbgiUxOq0QT
41mvxVEWy3fp5G40LKQZoKrtWC7yJLUP6Z605o5u+ys/NWK/tkxRMLmaKk7NGKrGARfZIaZY8t7h
nGrIJQxgHFkv7mZw9YbO/PpWjSGD2sGBG7/R97k8wbWdKozx0rdrnJ75kADErBPAu0w6bWslf/nE
3n5oy0D1ZszZneJK8BXS3yi53CDgOlmQT0KYyvbZtgrrZJWLBVyMMagmj/oGrvmr/8DC8fIw1QrF
8z+OHhHW4pWSoZr3LB+WV78rDIxMiMks47eWr6BgPTVrS/BMSNoFYARqhx7pvf4sfpGxSO25IUtv
MEHsnQ9UluJyh6uZvoV9aNw27OZ3FBcpkBdo9nCEPBwP8hMrSTmqSsptkMNTlbyf+Rj9cH6vavXK
0Yrpi9iEjCwO4rCoYEoEYJvXFe1bY+CP/c/7SN3UsdnElKNn2oee9Hj0t0fLqwdBTtMdV4OgFy6q
lONsD6wJMiIaVt6yY409cQacahNfxc2sAa7BRd/s9l1uPxEcjSTK/SWIDh+i1R2ReQGliPMlcB3q
C3vbk0/MPn3zTy6KZn/R+13rrNO84miyMrItCgavmpaOU0Jh2q0lt0d+tY02cR5/ulwdVs4KOfW4
s/wOrtrQL8jZetLiORbLqQLoJSvAfzJShgBSj/jth8P/MMO7t/XWO+BiFV41pOJqLwPacxs/U6r3
L5Fzm34M411qPQzsGwL/sYSsOpH87mUcMEq3GOQcJOSO6zAPsd8mo90oymEpWwtSd/RWcD9HEBTg
VlXLh8EnyLB7L7RHtcvuPdTvOSWhs4BrtvANlLCrabPgaxSfttq2CV9J7uBnxKdTeFVJOLguh627
hty2hCnVVOvSq7ahvVDJy3Q+jlgIHlBFouTXo1adnuXFRJI6PczzPP7Bc5q5VPCzF+eftWUKzNaR
IEJ359wOMwWoVyqDSJX6ryGLG1jY6+gdj8c5i7hf2wSAhNfzcgKG0Xn/BiE7BAGa/77a2HqLW+Zi
xWW2+2Vendwk3qpNcH8J7X1Y5jucJJ0yKjmhWkkM2HZeZT0mZJypcFqHUQO1zbuQzf2VGBIOUfFV
U2dfJIXW7ASQfEzB/30GU8QvdBJz5n0Hyq5qgQgLgDTGKE9ugV9NLmrfWMUHtbsDlOGnXZN8hlpQ
EL8q5YjMSzAEJm1WXNX9LB6VgU1VsQ07yuEET5SxnfAUWRTKCRX3rCrtc64i/cgTAYsW7grVVDLd
EAjbswvcmmj1CIdBmrFW+T37EJ+YkMWv4s8ZnkgSmBJKYuG9QkufAJs85uBXGRtz9Pvy9qURNI1L
aH8nQzkZEsRIX7/oYduXrCkehWexVMBrgz1U84rGE33UjN/iMfF1cyXLqdVmnjRKLa1upSz7+liA
z7UzS8raCMNriyTBOkiKuTmEueEsJbk0oJcaNNTaB6Q0mGEy0Cdn9xbJipiYlDC8tIhhNmygkqfh
yBXl6mNceINQwa1RgCfK0RTzGQcCwQqUdg6yvUKBaXKEc3+kAZiXlPTWuFc2tnAIUMg5x4XoNIUk
J4xj9MMagtc6sLlAc164jWfVC6sHXf9RxWDRZSDMbIEnbAmFCdPLhFlFtKmW0k68bxgFI2mNa6nI
gNP+nvLSqNNtAsuOy0XPvqiYYSFFgXJktqf2rNP1mqSCWyoEBz/BoYGmemOZQGqqNCX21JcBNJqQ
Y7m8t+ZHFEX4KSXyUZE3NbWfNE7TKvEJiq5g+KVDa7LLAKFl8epO3kqjav/Ir9gA28eFxHCjLDLX
YOvG2lE8g7oiLlTt7vNFsp9bQoRPGfWVi8mu3KVf16pE22gdm8R96PYUYVqCTk9TVcS7ekvUVvkp
/he+u6mxVYVfUhKsbTFdX53o123ZYPxS7gQl4DZgH4ky5DUsgtCJsfkl8lh5lFC7cwY/541ufujg
klWzNSfOCKEq95JEGAUajMGzlSgerAEIKipl70GGsOLh9/62hgyw2WnM1DZsHONgwzLjNN9K3tuz
WNsL5zJcKEaO4qMi2wxZecYUqjYES2UpsYatX61gz3+z3F9XFvNocU/TNqOYHgpbrNPIiv8ikqDs
fYb5GringFgkGQaqrXD4PRM6N0nq4Qyg55hND47vhXnjxyMnvg7bQqAdGcL3DXtMO2bShY6PkVCw
pUZKlwGsXtszos0NQ5reIr+fzFezWL0RoyiKrLQcwdRyXc8ap+lzEybd90+7lFMXQQk3B8ZEKO9Y
fOQOTR9zzjHtXQ4rkd4HvOKqUtKypCRoXfafiSCHhB71D8wr2qpob6IKPqAhHytJTs4ko4u0jTOP
6rRuLm60sW5qC4sJEWoxEhXrEihiJE0jC5rZJueeZGsTF1Kd8VU7yB52n2DBTM5usyCAKQrAvUqe
6zUXnbfMtx9qd8RfzxSDL/wBUvmD/4h+S9J/+YO040casA+yrgMxMIEyIQf6uJI1zdt1NDh5QA2v
GncjkoJNrdOrCjpynqFQItJnvbaI0dVstTKfRPECwxhZGw3EEylFSW0I3DASRXCBFi81ZOfRPpFi
6P0iYaaJT/ak3yx9zhvcwUtD/cDYnQd5r/lIL3MkxRHbogH2UWVu3mqVNqJeo4IHcWlgZHLsRBQp
AXjfH1ZMvcGbnUGbCZfY/hrK0KYhA5X4Zkpe27X6E1W3XxNej7rYNXknsyTtRh+B9b6JqQPeqEWI
18Kxl0U4j+KiasZe92nZE3xIQgiWAtgBf7KPNBBUsTojVDOw0aE0bWNCg4RV/7SIJbSAU0ai3SCl
DNhdd9IpdAYtuJP7IIbSre6UDWF7zBcgPYCQqy4+GVVjB5iV7kKBuk1d6ebEGgDlFoa4xR1P24QQ
wyw7gsBxPDAeSZ/OUJjDoqIrW8bIEd/z2tOvcqK3E9iEzDwvA61g2Fncc95JeLLRydPY8z4s9nHa
xD4aHxKT55li3n17SmuxlkCf0k50nS36bQrQl8tqdNtp1VYDa4L4pZ5lSHvo9gwkuy2OKKzkxitU
t+GJcncOl9iXYhNsv22Kp1z7/GxoyOPUaiy27nWrfWzXc3UpjlvAlYJkfFX/fiCUBoZ3IoDBUFc2
mQPMIpmPANLi+GmXxMy8Vc97K5ngWH7tBYwV+ZK2nvKqZ5ganMBJjiU21owWZQjTRL9xv5YuVu+0
MxLxXq9h3Lk/OFSBy7TyueOF5miZM6L1yKpwLJ16T9jEFEQ26zOkn1LY5iUHxQjK0EjDyavS4TjM
F5Glhx4+9SNVIxv51GDzGrytrhWQmN1OP9mqT4ddW6zLkEDOvpe60eWYTorR7p0kf8JW15xeU46n
jfeljtsfBE5yzVmywezVXLW30t3gNFV1SQLmfXaPUO+0YG6X6SmxlDdUs3DBFr3uQCLW4MTH86aU
9MuI5lPoBmKE0f6Vth9iI7Na3duIH65S13ZdV71TdxUw41SjeiOkmnKlGzcDI6QMKcbhuIxup49l
brwhDQhaXGrTBRLFJCmckWYrnZIXp3XXAhcG0G2y329yKAi3l1pi5hdI18srh06YrmZEYUMB/IxM
ZrkLffWfqPi3y6wrbO6juJ8iyVxVLDJBIOFZQQBtYKTumlUW1PlHqxATsSrWnTCoFbaickV4zlqN
xTM8ZcVXtz0Fcwz6UlVi2k+irxEcLx4rxGzqUewZmFJxUu5tZSu71db5DhwNWr7blQYyP1Dg2roT
l0CHL1AuQHIBZiN5JEaXb8Mgnclxty2uqhSr19yVZT0scO7Hk34Nse3jGHAIMqc6Qs9G9OWeFw4i
bmPZhn4YAMiDBzknnIwHWiXy92BB1nvfs/uUl/tC1p/70SKCH3IwK0nXUt5d0TvQGUJPOCf7A09E
Z35Whh8UDKA8XdwTxjYUOGRI/vMTA4uuL62/+GkftEJkVcA6BXrUymaMFF+r9lPH3BjGnsKNydIy
U18QLUcSy63KOm9aOpF0fSrRTh/pRvMEkDL1+4GtF7k8EoKmfUKMbf0Hw/QiSCsOend9XSi16ZA+
2u6gebF7eqnVaxFHRztOH07z2etGn0hKKUfUFtSQ5GdRro9y0+B2aaRGoBP3t3dRQVpIcnyKYAqA
YqyWLzjeDiEE3I3XrIDHkIAn2nfTKg1w/FH2ZXSIWZh8NbyZIDlDkuxVPD3Q/doj05oJ+sxeQYZB
5lv9kWNes40rdSNRPoe2/4rdyTmoaa5hYrF7n8L4L1Gfi/pyTQrmFeYicmF46WH57SEYyGI9ayY+
JIXl4hhg8uQo4u06IkB0lzUboC1ThtZqbK6K0G8BqL1yYZ3NOTbenMMwgl2ZynAOl8GvzGjsBMD9
VB+Aq1B4FOZBota/xG7AHK3Q0p4rGRtWC49WqT0WbtSpRBJIUlMPqCYbqyQqhQ7851B0P+35cPfY
l38UNFR9rs5Uff88jls4YpS8aC7Sm8Eipxl1JWTA1SoyhoJtafaMKo/aE6/ctCR/7IYOv95qTtKy
ZhapgoYUoZ8+td2xTjtLzV/Za/S4Y7AN/zeDvRcXqemeM9rLHb9r8yApPYPSV4Tq98yr/YOn/bvY
dH3NB0j846km+BjtuYZmdgYezEeYgWyOnbdFrfJz9+qVBIrsAXXcnFBSkdw7YI11YNbR8JKz/CzD
xsZVQrw67Yf+rnoFd7AfaxbGnCs0E9a8tLro7llzztNdmqPtwSNrShKjYjMeuH7pOLrbRjXOo9FJ
wDEy0yLPjQ1Xmoee2bR/asM/0ey8iVkq+BgNhkMiPkJFmkvuB3I/fbmm1B8pJSRQtbV4DnSXAz0E
4waWRbx5n16WKyFCQqiO8eXun4xp1bJTsCTs5OZLcp6CMGyYMI/wd1ACZP7UWl4FNlFdh9e7vlY/
RBDnUbeY9mqVCgvb3oVyvILQ7pCyHSKIyYfJCE4DxX9fCAyYcFPYzdtbBuezhHAz+Ipazl0dLK4y
c/3oSBBkF6pkxZdsgbaqBxmxjFEJ8bUeU/in0mMXKhSqQoBLK+4Ty9r4Xs50GTw7O1UVj9YuaDrm
ocLRDaJfcsfiXLRn6igz7MSig6iGDZqw9gxwYP7yLPX+adXq8OAvMABBtiT/P7C4KsoSaIz40CWX
MRmeZuuO8yKDdoGk1rYtJwJAai5Ts61sw8MvQcBUs9/+uTgmsHixKtNYTfKzBfAqazpCGZ89kumA
duSzOm7J3y3tdMH84+tvJ0wbrQeE74E+9GsTl3FXq3ZEVgGnmG+JZMm2SRCGLk6C76a7KrZXuVkM
na5J9ABdYN05/SbzLCA02EDga2acT+8anzYpVYr4+TZ+waox6dt860PUFQfkgRoyFRMv7gEjh1zN
1C3zD1w52SB/iksgNudFbdxBJ0D0BS1hD3Dyzg3+QLWPyS2Y97YBuz7ZJ5UUy27c8VD1RRXtgsbq
f26TPgltYvGjujeSPpRLErcieTE5gFkpQZIixuM/7CUcBQj77lt4/yDCzMKvjXr3gdmNY+LmrE2C
eg7VoivorFdIlwkxI6+zr6Ey4NL6Rmy4azGWWiY4xz1LHNyHxgM/qF1m0o1NM2uq7Cze8PeGt7x3
pJC2R+Ago9szfMLFsGhPUxk+9Q4++8QaseUlLdjK5o+o2C83m8Mdml16X4JT24WhZpiIUT4dlU7o
lSJ06FK61tO0g8qHem747ETSz5Z72/p27MQ9qmYO42bP2c9cIf6GprUbLtce0Muz4Qi3nBfU0QkR
sVVojfxUB4bPPNdkey050sOAESc5Yw==
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
