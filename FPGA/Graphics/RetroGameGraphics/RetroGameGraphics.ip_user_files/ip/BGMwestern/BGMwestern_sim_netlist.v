// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Mon Apr 10 11:13:27 2023
// Host        : Big-Chinese-Export-Toaster running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top BGMwestern -prefix
//               BGMwestern_ BGMwestern1_sim_netlist.v
// Design      : BGMwestern1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "BGMwestern1,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module BGMwestern
   (clka,
    ena,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [4:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [3:0]douta;

  wire [4:0]addra;
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
  wire [4:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [4:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "5" *) 
  (* C_ADDRB_WIDTH = "5" *) 
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
  (* C_INIT_FILE = "BGMwestern1.mem" *) 
  (* C_INIT_FILE_NAME = "BGMwestern1.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "17" *) 
  (* C_READ_DEPTH_B = "17" *) 
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
  (* C_WRITE_DEPTH_A = "17" *) 
  (* C_WRITE_DEPTH_B = "17" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "4" *) 
  (* C_WRITE_WIDTH_B = "4" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  BGMwestern_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0}),
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
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[4:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[4:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19824)
`pragma protect data_block
4OcOL2Vl0G6w/jrhCUlN3oqpXRMG2p3iqgEaoksoT/e2uqowUUus/Yz9S7xPtleZNFlSEkf+Wj0C
enUWyRWSP6rMFg4Q4cgA0YpCkESR5tMnzlbr3Ex3b70P37F+V2dUlyO0ycf7pOQrxKAYsS1MucQk
l0cpiB/mIbruGbjOtHyk6qPwQoQHuVwhcQ9bgrxlrXs2qp6ClVAHJnBRaz6RI5tTCzKXvdrrcazp
85j6x0I7hpODG/9pR4f7W+s6IHwl+l4i35oVgqiOt3Z2LkppoL2bMgfcsA6oFHSOxsRNeEhXQVqG
ibObRz0RS+8OycRzyk8KqwSh6piXyTQBFoBBLLyY3OarPbr3aJIAWR8w65IODysxCjy9C8yABsfg
OwCuqGfEzT5wiIi0i55OcGGwNCgaPiUMdDz+yOX3K3pTLFawzixeaym1eXj+9qL85oSMrCv2gy+d
putRgYERf9T9sStTc2daDdvoc6W+SN6eEAYBUXWDe6REuUxf+r+rMCuI84pEtNtnssr/bzRgPG1p
U5joeTsMFiSr9L6ATFVJNEVjwtjnrUrsW7oanaHB/kYUKpucEZjhinns8P/2gUxAhbgMempPTKIk
9K7CWcnlsWal+IBXiSuIMVMahPjuz2TWM1lKXzRxSR9oUq3Oru8Ff0FfZmmVmypGhTQTUwOPkRj+
MRtWfjG+Mm5SjDKQiBsV4Q/+9/3D6sGjfV0onxoDZxpbdU7DnaawrWiGqoc2EEpj6OL0PyJN9nz2
UkvfFYhYRRfSgG4iyS41Ivv1vvLYwNQ20IqRORZUMuLpb37Lv8oyovLFkr1J3+ScSjBcEv9Zb6ge
YPSTF3EP5RSTuhsmyKkNsXwwVA8DCudoKScx0w+9c6gsfDsDbHRL9YjqgpXBNczD7LM2LK5yyeif
rdLqTPX3B8XdGN/oNjblwbq3eJl7L9AGgq8or9hkcKLgPLl9p3WgOKZeANQY50ypGY3z9EB1Dgyo
svdn8wyVPIv7T2sa45Bq/pVyI60EXT2qDv/436xasacZwaP8BrbpkIu0/npoMljuDapXZYYa+IOl
GlKGvWk3MVlA4Cb17o/8Gm9Lc7bA1z62NuvEobeAjXiBNiCKz2TVAtLPl27DM+JakyVk9t70DivD
vxvTYxCD3tYDS5OS0HojYWaLlHc8fn1kej7xXG7c0rV3OuU7/0IykFhs4YBEDSzGAIwwpYhWhL5M
LaWQwWJOl2b8Q8ppcVwAZq+K3dSdT+4+HOb6LvcCEsZ7tMXi1fy3pgEAzPOWjJOj9ZbEB/W6Q/2t
PjA3GXkxl9fzEi+GsDU6HZcdXmM5NiJSeSjXmWq2qveRYsOYeH0jFk17q9pZxkxK000AOG3AdOuX
k2Lhkd3DkatqzYoQHmtPDVpxm6oiYfTcejCBJKZiHugaL7yRfNq1PLFyJFK6MgOuShHJBu7U3uvi
XK4PCopWXObU1I+Zkr1J06bhaMClZcp/lmkeQbdkkMTJMOh6m52qJ/Vep0yFteELiy6+FsN9f1tl
EG9Zci2eup6/Ji2T162/C0fAdUgPQqQORWqJ6hbM3pwACRs7+XC238EMu+8Mh0N36m2A5iev2eKH
SMpBrdrrmvw6EtmJn6KsnPM8zJkCcec5I/KsqwZW5/+HDS7O4TdAHl9WT8TC9IjKz8ZyNcHN9fQr
LLnYwaEUplAT0M3ZeAFXPdYo1N+6FD/CEuKT7qP4yDJBzLzDXb7V+zQsTsw17G8BAJCXdtabrmNX
dA9tP7b7dG7yiUABN4wxZZ4A2zWqp76jk3WPY/Dme1vUptWva93YXPfV93m8MnIiW6h/uor1wn8c
nJwl0iQ8xps9ZQfBqiLOvv+mFJo9d8kemT1SlwPzdwDdCeJy1AEnrvvmcOaAectxjV+dyLyiqTBM
ZOMXi9Eam6Km/rflli7AvDhLNVP3M0FM/lnpcASXZr3BrIKJK0ajlt/s61gaa54Jv0DsXRMiIZC+
8Uj0l4AxCkp0OP3Z7lXh+Dw6YQd24koSN4bNLYBx6rnvxqNZ3iEzM6ZjQ+FHelqxB3oNN4WloOD1
4xyygPfRHLFJUXil2reEzy1LTVE+rFCSC6azg9uT2gK/4wKKIjxQHweaqGC4lDj1F6AOUtlFN9/F
aVprcVp+ncDcpm+PMrvTFnW9EPhLG64K9CCRqG6YFclYHDTEXn5pqRTWEKH/cjiiAjW81TSyVP0w
tbt+5xsAaUAYKc5ww88lVB0J/GU0RmaJZYEtgy2FpqyP/vTaQdM5XIHdoyLMsZqRzsRj/zYzVvwU
8sp7X415rGcPoWm9/u1oaFyIImvVxEFGObCUNb93sTPGs2ZVYwc6UcmNvyaxWkEgppfYBBP/hDFK
EM6DIT0rPzOBJSHE9ljfRzMWrBTtd65HhHzDG9iYCJuv4kEkUADrm2Rkgxk27fDKjB7qbOWvVtCu
rUCru6qb8RwrCEKWpeRrgdzBzvc+swjkY/7DHvKqGC4TI/2LdBpwzMScI1Ggsj5XBCVX5lOOjBR3
T61WPGioUbHUjFazbqenFGxqeXogB3Z6MYmPQJGfbMu7GTXRqGUC+iZxvQ+TZhxYjFUJOnS+Id56
2dKZcwmwh6ciZXonoq9YJlY/qG6aiknYpLBXEzl5wpY8OgeKGJH4GKREF249u+N+t0nhJ+3MyRcD
IsOyKIt0Sys6qZP5b79Ko9LrsO+5yhsXUwsFbrXJZeVT5zn981ATYnikT7q8KO89aGRiFHNm8+Tc
rvPhX73v6ZlQs3lDqIBNf86I2TYeT3xtTzIsqm646+TOQU4WIoBTfvr5syshdxQXxCK+eEhfUGiK
IWB0Sv67H2q8c2rIV+i7IcWaKULMnYUUCkvbHJ+uJO526N5iAiCnGyi5Akj6aDEEugmAfvUqNLSK
ecdhZUUdiIkcVor0n1JjkvGINNypfi3DNSOWCl721dYVFEVzKJc9DODXi6+fBLUPG/LFLQnVhv+E
zUjpFFXKofYAbmClq2pQFQ+OksQMwbbxJ5OLPP4mqN8ZbXDzyX1XaraCCZb8njMLEMK+HqNOKgaA
NryFBi9Zgf8UUysZRLcqG1yjknAxhh2zcUs38pHBn2kulIoq60jSwi3Z/17noMmh6REtE2I4cUVQ
uaWzA6DeNsbez1hEzLTgY3sawKPUI918SXzF83rsB9wDL4TEk+ADZLdpdCxuJHdRx1+DdVdyD1ky
XvkBOru8FpYmLBX1tiU0vejF0ULw3Wi3ym7JVR3iWpmDobVEsAQACdz5kxTb3CZksyodGDSQPIDs
ukm5Rea6TgLZqpDYXw4//HqyqxVL9y3JFCuQiQBeGrxupInmftgiztTp1BiFqebC0IR5vteFCEhW
LdMB2W7Tu7W0VphwnQg0BEVdXMxD1cwKmQzKTci7fuzoqpewIJjdWtgIsqMLFmNI+utXSmN0ERMH
zx97LXdFqLpfNvMQUZ0w3XlUqqKc2N0a4WbQsnSg6L9etYIsM9KGrbIWDj29cOMaDZiULG05CysL
g33kIybLwKpAKMyX/cz3VoXtT+T/1A/pwQPw5UHTYV6HTx5csk+yl/ZNhgEan+XFhVflloC9Rpzi
gnt32REMLOnf0epQMlKJjlB7qZC0/NvCOqVsP+L9OXBKzQ7riPyZWMr6ZGhW6MRsYKDrJX9zrSd7
O9Tz0u6Q/IC9018cmQy2y3xi/3/FQBz5MrxSgG/3StgHejX2rpU6T7CRAJV23TRp+Tp0YkmMC1We
nasqPH+pJ8G+Ys8fPTopUDc8x5cKNAdD05c6t1uqcb7jrdZgmvGAtWyTdR1QthbyDqmZbVN/JuAk
RrF39oB8UUY8zxuvE8MbvmwLn911j/SBQEQEmx3lUDy5IhuCv7+R1uFcPTrBQdKjN3qyABMIuat5
D1xcKtmfaBJ+5v0yfP1VAj6i/avVRiJ6xcc/X9HrnxdnWYsciPeIbP3tGD03gJ3iyuIoWycA6r7Y
5ZnIWE61NqHtrhpdvIbYjRb3XjxNk55UiLbqWrAQOMokU7qRCrTFtENu/nBbnnJSxiIYK5hCYC+7
z3rc4ibM/g93D6b2SZ90/z9Cw1V239vBoL7K1PU9mt47d8GhlO/oGjair1D/ctLE4P5kaTfK8nDr
SIYVhnTMOLYZ8FNrSz3QXp/p5b8FmzkXGicxpMcYX4miYpmPFNYMCglvVfPw2TX0u/IkY/gqmpXn
IccfnBxJIpyTKzt8xxVoWF6Kd05B/8Opn7sbMx3W7wM0em+ZVP0zUYfOWZgIGYKFaTHZipc4BgVB
YYYrl2hA/IW33TQn71kPiyQ/ASOg/3LP9e1aBKu8SlQB/3XSy9dLEZnhYyAH6bDYL401pxvQVMfx
8KmOZ595E5Ld7R8yJ/PJWBN6/2+qcQnoUE0nTFglVtVR651+HN8YxH73UJi2pHmvCH2hZh0+/dTK
ktwWWo/6eEBLt441R0Ac+/UOpMvlseAMGQELtoYfKwKv+ehp37kFfXuCiSbwP8o6LQaFo+1ZTC+m
bZu0Qukd58zrr18DZbt/uglWCGg6YjAJcJx1kr+NaOi+QcvBK8KjaZ4414oee01JaKahaOYkFpSO
TuPk4egmYt+pb2ybd8lUphadyy6SHBqUh/BhkihbnacEkDm4NPgb+fzN7iaUL2mxH20Xc3YzTiLd
n1ljimL/L0E5B1XhcLenWUe+uuCVA5eAupZgLUF+y6AoXgIsp/5SHWya3RVmLIvPycE1MnudcZf0
FEJGTgErJYRzhGL2caoL7MXw5tOjMVC5ITTOKHD6HTtKLbVQIoywbN7Gg6TLJy970/U/axpIDu3Q
ry5QUP1Gwc81i9mZIvzvIc02adyH+pCpyCOxnt/BjNWfWSi/JppAdz80Km15phTelT30Kzw4zazG
K3wB9bOB9gbwhVubZyaTCVeOUAO3y7j8DIZooTvichV30DWyxll27XUuC3EG6Jlv41UBU3XkdwlR
78T9g7CrqoUlW0Mh1MmUfwyBP68QTgMs2BviGNXuPGMbghFyJE4S5vcgwqrjgTTP4+cnVn0XEmDs
aGrbMgZUM3SBfdgY3fWCwva5lulbR+I0E9XNlQiL6GQ0WSoStP7LmRk2TwzBtb244E+NzELsm06v
WlEwpVHWIQOrPgWekRQ0U4EtEED3VDv8jiMhQ0MMGZen2k5PCj01lUbyBNgeBw+Gc3ir0vw+EGtl
JIsIGgbEExAx3lQSBkY3DdUi1NrUtU11KCGo1r3yayH09nbkx9BBGk0Ags/OMcdR9blcoAArxYup
Y7P+5VIa10a/FuzmoHdTxvbgsKEiM7VuYTfAeUeqGrUBpOLD0YGYVpitBuygdH0HDDnrUXiowLIF
+z6rZIPBbdZ/gbKR0sBz/u93dIXxg27ySk66ks3n5JJg6rbsNDgL02HE5L7DPVMGu5tArHHaz06L
QNMFtFXHQ/evFxU4g2V+TbZp0t34gH/y7VVwB6QiuIHxcnSelZwz3gRp6TYR/kO4eb1N8XE20Zv2
J/y+1+apCW4VHZJoxmyPeyrtBYD8MuepqOyvl08FdcaxsyySXh0o3XvVnJOtoytt8oLVGacp+uQD
56PSjLuLZpNrVVfCm7qUgs29eaQPAnYye2PDHF1CwqQqCNzfNoqPVta2l0vLhdb6UAcx8uEhE2Xe
XWkm32JZRVbzy03CftdY0og2hqT/WoycD2B5/udtZQ8F+vK5Dt61LNgJ7XHvbhZGB4n53NJOy5KE
yDd7ebCGaVod/oDbwxe5wFarN1CXf9AK+XQkLH+qCQoYbu++7ETzGQ3WxbRgaTGWaDSA07HjjAsN
wC/S1zLRpEkkhXhnYe45hdERNnRBIhvlJTqm2L+i0NY+BmdSQ0XUyLsBni+PtfHkBb7M2GTisi7U
qrV0tjwKwkeVKhIxv2WF9+XQalHp1fWNLds/X7/CljFFYhDC4uknEESWXzLH50lVSY/Xi3GUYhM/
EWTjh6CDHZXNeSGc72eAMSAPL2b1mkZnMcyLAbeqFw7bxLB1zwDHwImTntYpY+zxEGlJn4vytQjZ
n14rVPyrKzxEEANNv95uJmTBH+GXlj5pY9B1NttruRv4dJOsd2qTz6DX30AqxZUfArv7FAs9jzkb
mSuIe+cB4oGVpSnH+HsavU0NGdxygiPqXeO5p662QokeRUiMWHdolTLEaukXjtCRqDgyqY2MS1nR
Tcsnv8lP+OUEN1L9VmrgeA2oHlGwNb4SvzU3EwEIqU8sztVTZGThuEVSO3xImZD2CHXuvQAKYdcn
7grD0TfKfjw7G6lePpP/uGb9XJmw0FbwKUzpcjCJtRruHDHX/vwctr20esHrO9fzlNo0oaErR6cf
c3W6v1fsA7L22V1Z5MXhowdbKMlGyFbU3X73dPCWhvgCsKbIiWgNeWufczQK4PYO/8/nO2qgppCh
akIAG8G7O7PuSPrkFGNSD0Fnj5+6rCl/uFaIg2FPcx2GT9DFYR3ScrHO3dAwluYbg2yTHK0+DQtP
LKZRel0H86uGhfSvwyE7iCEzpvJxlxn14gzw2/hgujy3MOVeo7i0bl+hJnyDlazsL80A9hysDDhz
HpxT6qgNI9C2IHbD8ErafOgw/CqbRbSiIx5w1KVVgXgJ09E40jt5+b3FuyTRWDmR7P2ri2EnN6jm
58jmip9+H0quJ12ZhMxzrkOu5qxBroU0X3LnMlSvYIeX1YmzWyCFVXuePu2raWtDMRUDpWuExVEG
zjnTGg9UcHjN76V63DPTdAbY7Gwo2aIgf9wOsaPPt19CLYuCJ3Xu9PnY8nCz0W5z7FOcaFZrJ8mu
76ArgYDvjaIkjObhT3m4FpOdGRF5Turm3InULo8w54LaXbi8tp48qtAyP7YAESf7uCuzjGpCPiqx
bNAEuwJOsmIEn2SQy495SIFS9fDx+NwuGtYO+GfgXVZs/yD/7B320qo3jFBQsoOtF0XKfpVklkEq
BhG9+VLbCT3Ciz4BbLawx9GvF146u3mTZoXc3PLvmZf4CYICRxJ/LImBaZmQ9WKTx5oPY0C6RKd9
DtDyf4cas8Nf00pp/DCBS/94qOmMGQfdBcIxf9cbknttWeMXA/Cz3k3NEue94+6/j8nd3zbN/p3L
jrQ0QlTtNS2KIifYfG7VVPSCoH3N/1vumtyo99CNj5NUrIxAw7/eX3xnS2kzBOmO1mNOpSAbz6J0
1LyHIUWJ3teJZVHPWqEBMFriRIugIh9oG+tGuPLtp9u6F3UmoSJyUSJGNA+u2Pi0XzsV54DrmF4j
rAST05ChS//pnIms63I102gL3ea9J/3uFpnEvjsUL86jk20GFypQZQ5VOnjO+M1Zd7ehHmoGrx/f
wtMKhh12XovjocPzltk4laXvkGf5TG14nq3NV8a7djxBz9bWo7QGUq5JwX+OcjZdU8oYW43tWsH/
TojCam2DhBGdtTRt5804J1Bbmteo5ZUrAVsjTLtYIA+5FAObGCf80pLmIsLII+JgtquaAtGEjzVG
HDWfaTgT3wyIme9or1N/OmUMIQ3ntk3UCsKRhYfv/+CNmY8vEcVhQb2MOPvRBr+Zk1RrrebptCCY
6VPjsJd9nWaJUqxkFje8TFAbF5byXJPNBIyR3r8aiQjX5kUXbarecg+aB+BdnU0N4RxMoAMf4MQu
g45p1Mmyfz/LW1niDoBQXkpmcWwBFH/zyophUiCfQwBBLbXCkv++9h0PzwbFzUuGc/L0MKa9jkfv
qXef+o/bELl68bDtnxj/O4sHV21/anJSqTEZF18aXX1Zm2UXnC1rD8/X8rcnY4bwhFh6FITlwuqO
BArsdjoLZ/4p66UlFkPxPB8oz4zV9M7y9xLtwkDPBhyBf4wL8ziH6NfmxkIFx3w0k6nCyz/8vAZt
+74FcXe3QGA2imD3NC7uF3TVMhVU3Uhu5HQq2CoKcFOZRlkFO7kFdJ1ZSj03ik9tXMap8awbXizg
DgPUkMn/UmwjzojhgoellFraJxpxXrWjNVqUBEQ0vqHJMiRjb4/jxDmXkV7ete8oNzHr0bWkVar6
culGsuL4MF4rFxUFGomAM13YAFIgBxCS4pHvTe0OKqdw/vM+L4nvPTaxas7wll7yW8T7vQTVlr+q
z6aDm52VKiUJSdyjXXQwuzkFai+fY0MdnNVD76uvlNCR/ORF8BT7gFrVqIgHlSqTayu/ivoOyJUc
W0n0aLAtsZy1Oz7uaVC6Zoghx1sqlYasMENapUIXmQYRNR5Tl5505mNaRLmxc0R91KgVYCMwGhLM
4PO692GaTueTHm7rHVoixWRgaDTY9HO7DrzEWiDKdgV/pFGJXQy6TCjeptnTIsRpqvjyYkCmslVD
szH6dQBBFtn75uAWh5mhwO53sk9EWSOuQU0wX7HSbQMxvYSfHgqH4lk/xwETIKkyS/KStEr+sJKy
AEqDVhi8kHmIu7JSbX/DiLzqln2GBvHJ4FE4jKSjDIQCnaUgq2i9twZIXyOdolvm2wQBZ8fJZz74
dd4/EfkzJWnfMKCWBF7NU3LJ5+tZSV/KLg6JvWQrieL89amXONJUJxrnaSE0obnYluqUE+S6VwrG
5fZ19bDAgjYw7+0LGSMwjbjivgAg+0LXkOsBoiPR+ppzScEo/vd6eFAzkJ5J0G/uFqgYzmXSGvbm
fWMxbgEiDFXJiQTVsrRNCB4swmbpzF+lsIIqgfziXOtn58ZoeA7fOn/KNv6UvdRoYPeIH53v+380
5fJDx0zZysc2AUCuMoCXg/oyyW9vFOSibfa3lMTgKiDSVZ9y8SaKkSxPQVecdCZUDHzF9SO/Vckl
Ijy1V0RJ4uPHVJr2IizJpOtIkcZKezPft7huMVleooZaYsGEZC5crrwvTm3gpUYIp4XwyU9V5m/L
h7YBlqzdqaoKzbKbq9Tn379p39sVJ14YPAb/g3T7MjKeR6OF/DMQ9UeMkILqKkYzs/6jHVVtUWhM
UaJRVobZ9gzI4VqAuj/+pJW1igm2/SIEDqy2cs5rjcv8A9CNJFZs7EQzJHqX5ADG+OAenfPIze2E
jHCBlN5IaEjq0+TC0KhTb1NEkfWe0VMhNiZQB3+SH7zb+dU9tmJCkBY9KImIYna6Ode2QOvDAOzT
kuO4gt0joZZ4h2uDhbHyATYoh0PPp5wsi4Z4ECcdQ7AtOuXe0PfSwOcIKpBXV6bHZFLKKhJA9weG
cT8EZxfThuhSYs96I1wBozdRZ6qOs7yTT77sDp5mV17rUKWhiaDSXwu0YB/xnJM6mt88Lf5Jzz0y
Cmj70fl3nX15cYfhQ3ngjTmJNGJ5CrE705uhiI+JJl2Ir9oPDkLDtRzLTJD38f690HMNspuOq5Az
xlyn01z9HjvirwjngMul/XHBikA53wed+x7LcVS3X7cUpQGCgeJfij0PQglcI5cfIm8vQmJyQXdu
ELk+b/UfPagPU3vRKnjnwvy+NO6pFb4B8SH1GuWDGYW7MffQCFV1+Hle9P2U7wx+aVRhCZF3g5fU
7O+5IqzO1C17zDNZASe+ywZxj1shqsX1IQEN9qeyZzlF/YBRysNq3aFaCGV7k8/Vb7Vdo85nf7wz
KIBqPlWKApb9uVyGMilPCx7eWvUZCQseM4+6kd4jocXs26o0Wgq/tnX04l/zxZdibu7LTIhEq7Tw
o8iue+YnWTtkoLrMBtxEijYE0V24i19L1wuAuQu5cAcSj7HrAq5mw2LzfhwKMi3ZHdt2GYajMYg/
3UWRNWQL43v2ERBT+uVevWq8Ho0sIWlg1c6zNY+pB/+e4TmQMy5jEPm8ZhCEn8FTAzkUyTWk6CoG
0PB1twuTVhDq3fPKqjCZejioO6hzHH23302UwQur6wD/y+hQTX7JLOQA5gp+65GyjwwrsMjU0ZuP
jq5YzMpdYjKX3r54uc/hwFqPkmVIoTTlJ0dD9LgRw/McW5/b778fLbBMcdvMGMl6yVAfM+UB+63D
PXkPJFsZgeb6WrjRP29EN0xgeR5zEWlF0XTdVS61fAf6DcoEpGr3nvghKLa5YGrK8cNAo+MvrMak
p8FO3fQXeKWzWYxPYwm93Waps+dRNKnRFOSdT9ehZLk+pEhFFCBkCw6/ZhwZ83kmv612frL90ci4
rqR/C/IZHAMSrODzghJlvJQ2NFtAUEtdZCLEm8MV8p4lxl7EqK6OrBQyLQFod561JcL3dxiwf1Jz
R6lLXCg9AVDcxocnGsW208/TDpfxo2XsDcj5YU7CCTVAUdE8thimy36MENig9JABM4i0HLns8rpt
sfLy3Uy0XTaMJYWAj6+FhJONRJtYDJmLE1VBE+4JPMGCu/g2a7XpRApaBUs27GcRer6csLkXNLCb
9mH9u+5KIzsJ7LO9p/4vOJPhlhjkHtiJsqGzYtqu5XuRS2LllgR8u97aeRCeMWW7p11vjS0hb/2b
kCGwP04kd6/RxnXhh1T/VHmMjveTQGrtkiaCokbFCd/6Mbk5vP9R+wn7NDfiSgxTybAyfuY0Aqg6
qqhy9SyJgIitLOfnjftI/j0NY9jTEL0zKHX0WZzdrzKarvm9uOUkcj9QKtci3ZmYymBXXlfg1B2l
uRHoWNmpmcMkPk9nHoCa0QLhMZYUHdmfEybgYpbqb/h+LMUdId1oBUgT/G/Uoou1B8LJmzkjqRk7
xphb8sukNf8HM1yBJPOaXoQz6iocPu9NrcKdUMW9H3dZU0ZwpIhBNjJHJfEXm9ZwHyANLbfn+H/A
v3ekdAiGLBNvZRYPz6DX47izqJZwLryxPFnJZuR27Z4bFwKvP1gEBZHSxC7eBYu8hDstV4rXEtqz
Nw0+P6UNeuwSuwl+xOsoG81tKido8c6vNzvUqGg2IEisByUUi93Gwv/tujB1zawhHxoyQcMpgZP5
XFHzmhoq+gbqTrCEfa6UiZlKdTr1J10BTiOUTOD/yGvRfJeqcVYNyJqAesYosdTWQ7V6bHZ2D8We
zwr+Dq7Z5w94l4OiGUym+hsZ1XZa1RkUMXL462YRr/Vo5mgP9O3q65YLc9X6qDrR7BVX/tG9NSUy
vj7Mx+VQis1mN4N/xxehNnnqfw2FtDHiqmuict27Efra0gHZ5dVFUOkQdgwHz0IhIE9W/XnkvJeZ
bmsqf/vP0KvE3Exb0qFnGdxSnBkh3TYCM/v/182B1iH0g/BNqK0ia0tWbaL8+FtFkU6bDCEPmQWh
Zh7/rjGnW47LISp3icqLAMpmW6YbfgCbvIq48GnPRqQq4+8VtiFDs+KhrqNLW6dXmE8hPCNMDzY3
ef3+pvpcVpwo7qm1sLBWeHy5Rs79BRHpnlBSmRp0e/PgiPgoJ8BCAoGCbPPFTeBxJ4e9MVwjHIUs
UKtfATB0LqBhhFBUKWOtmZI1flT3SY7lQHp6njvkZUKmI2zP46ps2Lh0vJJhPHzQtBuxUjVBSMQl
KWvo2GMiMN9Et/RZj8d1gwp2rCE4h2uF457bR8zZZILZfFc1GnZwBgRyXyl9tSXI7V6uVDWcE6ir
TiZacg5Rx+iaF73IPDCHMpkbiwVw6ryKcqo/nIwWwFYdmJCvN46nNQw9nIXTGmd4yc1nX3nfmSuZ
8gs8j8ubwppLm0DuAGjvugoeWC/munwVvGabDWX778vC1z260RLwJxlDNqgfJPjv5B0fckqjFVtl
z1B7Zw6pavFaVOxjffjIQuSHNYG8zhAvHzmNWOjZsZIodq3Z7beVYXP3KC4AMhhIFdigo+kFqxMD
tZ/reIhU65pOAwIdAMT74fOIfjNnElyKaidldKJlgx7y9e7I03XvN6o6+yrW924lmEUmG0YYMiMn
369eH7S2ji2dhXImyacI7UCDX3PpWjN0h8zC2wX8tBGUDwDsDWhLaIdLhwkM2oWxXMA7p9gKctGm
487hKM5HXzuz24b6Hm1hlTVFfWmQMn/Gmw6/mfXkGE/HUOHbRNCyyoJhIr+hoBCGESpKtMEGh0NF
AdY0apE5wo75LueQkLFZ0WkwB6HyrdYJyqAvEBmdFFXc0E/fjSZcnu17ea9766tNf0j2ba1av1pc
8pOAqajgFZqauUAs0BTul1uIFXqvLv03PEqghgIr6UYp3649Uutw9VEgOR+hfFmeE22V0BkSCadX
zeySEnQlDfTJoPlKOGDX+sEQzpTXRZ5+3YpeugG3Msg5OwaBSPVRdlAKphYXFLMGMELC/2/tkio8
/X1iNYYoewmRe8FcsD4ike8VV911s+RLXEtDpW1/6cgLqX4z35nya9bgyjjSGOdzKCB2PcevhkiI
O1h6RKhtnSWrOdOfPSlq1XgtT/5Klvld2f6PSq8jZGgPv88b6QUAJ9KlNc/hKreiVjRlEz5XjdnE
zv4WWxoSZXYVdPtIWDlUzdt1ahdzuo93U0BC7ErwS1LmE6YZmY665+DsW2YLBtZCdzzvXt9OXjBK
pYygsLAROcKO6+fRc5QCrev2GTKoQNVxkjr72GKXmtwrHS/LT503fA0c+bbdVkoZqsxKyZs85mLS
l1Dz9EcVnb/aA/gCmrApKPhgjC96FM/Ov5nxXfBG+WbZYW9kDZsaJ77fOcpf3Vf0HUsprpKR89z0
Vj4DSD5wGxnF2V5h8uoi5v1jqcV/Evu2Ylhdi2BdJpWHD1BJABTHXsws5+DJbl6rIZoArnOyhkPQ
8S9vE9CIzC1Jw7cswP2mz+XOM2OkrOnQJmAC5eei6Mjq2Tw5QvuHne/lTRVa0Wrj2oHIA7g+waSj
fMhMnXaiKMAxs7iV3GBATapQwGc7Z29Fz2AJaC24yH37RRZRE6t5yTSw/R5xesvBOj1GIqvHC9Bx
OyCY1mC81zKuuHx7mTK7Rw7j419ZDixQRG7WzeugA9mv6Rpsk9TZoeSCPmmGy0m1Ip23nCIslh/W
ljYNTzYTdbZrMB3ZNTNs9FcxL/O6IaNfeH7LNcg4NmtAn7CeWB/Nc282WivJU3Bo+MZjLjxXhs6f
1pcPa2A3hihXS4p8uVjme4lwi3cpgNI5AeV2ag10xWYu0pAQNvKbAXZ4KHRtzahBtZupTGH6jX4g
dtbxAJcqtXQ+YHIHt/jaNp4ZZ1yoDZU+6wK6m/njEIyewcbms+Dz06m/4eGZjkRHkMR4AkzC9vjz
uExZX1dTJRhaFbou8XEnpmXNkYGvmGozrWWnYAfRxTvWgeSGQMKxm+TNuFysIvpvmbabybLcmjB1
HhK+XZAPzCIczt9RTHWg+8dAdKvb+xR3edAIiT+Kr6VLhI7ubT93EXN/P0xOMeZmv3zeQ2M6kmMo
+JZ0JSttpfJfL+C5jrbZx42scjB37pf2ZsboW5jhxrZAOlVH5anrCVyHx3G0WIN+qm/CyK0HsImz
8t/3IIzydqTHNBEbMMjHxLV82ZoPBHeHtfAFwg9xlqa5ddL2713ip//Lfbtmcr7eKaA/uU2t0Ibx
Fre1UREj+apqMFvYCJ/k7IQ9NPUn7aj3XgcFR9GPoh4Wl2L75YcyW+rJi3+DZ5oPkO4SkD1XACPl
LXmwTsBHfeiH7/WVmYhjSlTJe6GUAdrKIV7xH6nZ8SsfULGKFE4c3w2Oo/rREWYVeOHgm436Uae7
mHajKziyqaRM9neTqKye3f31fWEX7+kZ3uwsldWNNsuLrbIRbBzv29STGxxXZO1wnCq6b8aBSGuD
tatojPknPiJ60FEyY6n3WGgP5T+0MddQ1SRme4NtEOh9KbhJ8vNNipW51ZsW/qnwvGyiyiHW6oCl
V/8i7FvcI07KMXuFHgkuExcILH4Z3ILmr7cH7u3FnkY8uoOFxrm+W/uPdEYsqDUx16RuRft9yul/
LiwvN6XfMLxx7vfnT9kOd5o7/0Ew6JehH3b1Bfjmgl9xQRZVeLSJYoHP4FRGkLF2Seacm1IOpTAs
LUqEaQg5rR7RvI31IMJ0e+vg4UQ+/6w8NexxrYYuP/4RNnQmqNStBKCGe+FNBFzdeCQDTmC5Kirr
jiCfPPav7d6CVvisBAFzhm+/5XkSJU4EXxz2XNsxuABvBx/nkpjk36p1kgiixn+hTRT9IXLXmPRV
BzpPyUvQtdI18XPMR3BApHOjEMFG5jzACgHCiO+dfieMh6Nle5LzRANAM+QN3JVdpKlMse0KXBQv
QIw40j8tlIEBGW8EnleGljsdIP+blYxUiZxOht3kS5W+pGPrsbnMqfS+d39As36/mbPg9EucPcbZ
FbPptIuGJKNcZrARxG0GmAWrHVNvqyCCbSaxQqsIv+BlBhlnryps4mFeceEbDZkVPXa/tMm0sL/u
qUivrCIsNE/2YQnzEsobOuCkmln00EVzXDd5l17yXNBQSlqXLj5nUeXQUiaYyJoA7FaFIcM5CZYL
yqUYT9kK5bgVV/1TZJs1yuv0ROctk49Df+c4iOV7r08wPQEUKXh5YvTb9nuXkF8QDjmpSbyP1Hy5
Kie2z+dUrN+mLRJsyTsEKx4PLfYj+tXKYK0uNhAL9eMD9sUCNOZBs1X+rGr2xuwR16HSBi5Zy/pe
JMx/RRZa1evK7RbHduop6/Ju5Cu+OzxtDDmGw2ykBN6xDAeamsrE8qm0pRp77GiiG8XLjB/+dat2
s1mq5m3h79w7MaH/9z+W3WEYyr40ubOgowvVxt6rvCDVRB7tfXxAMg23tey41ZwG6wFBNzerUTBq
8d6PUaLb9cy3Q/5bB5YKtbo5MQ9G7JVaw7uZ23F3THwwyd8QaahIzyFwm39Qn60Ezba6AvhGLapn
SQ1CwATwKxxXEHi/QukSKvGMA+4G/PT+ub5l1s6jiJdDP0eNtbmHkbvoP5GTDKoruPCMGVj9FiVP
ZCQObaE93iQ/BL+l1piQT6MUsjlWFaRGp8Zb9fYVsbjBvzgFRw0ALBGJfXUiLk/+QOaV8gNyuMyA
HNwqyYLJykG8txqDhm4BWy8AXawYjUBUBLcLBoKfU9nDKEiD87Rzhqdrt2JFFjGpgvISf/JZyxX5
PBUmot6kiLFVI+49hjVJILQVV4pP7E1g9RJOSHfA/AfwDO4uf37uDtU8KmB662/OzrysgRPj35ec
KkDoKcMf7/rnviRFwH3DrbDbdu4VSaXogOI9VxeqoDxdbH32baWbWWNJirS4zXPtkqLa7LhmOZTq
7oqiD2C+7GDPqK+nfpqnFeX1/0J+tUyZ+08cv28q8T4x2p+9Fec7duNqvbdBFeY0MQoBhPeX+kS4
TCn6tUGb8GH08fE6bQC40x9fY0aJQet1UifrgOHook4Hud6RDIX76hbyoFQLQdZoPz3/HosSDjXy
3Or7eBDKs2AoqGi/lP2f13K7oVUmgheRuEoKo6W6dRZ8pWmzRfxMGQ6Il2eD5GkSzWpOXwcKpYcG
o2twnTq/yrCtnDBaR0LMR9d4EGtw2uvau5et+oEu6VOIN5dLvw16muIPJc2L84A4rKylHlb4fSJj
+AraK3c/G6UlkWsnFFC/F9bDcVbta9GUXgBM4wvAk8j1EHtOgyYYbo9kItJ9Ej7BX8ObtV1v4zK9
IZ3eOtejjKgpe9StYhg+xT+DFhCPltsBRvRubh8THaQGDooLG5SUm3GUueLX2eElNhOSVlXkUUat
U48h0groIvu9E0qc2Ec1XQAjb+d5J1AScv7Ru/SEyB1B584yYdu4BMZtP4/eUFO7Ms4i+firAFKL
aHlGh4A/zQXOgqF1UtRXRosRhlag87aEYHHeFhR/MALo7uEmyeKpmCKQ9IP9XbTEb8r/10l4qfvK
h7RoLbmKdNmUF0vZclAQ5gL+F0GxAi0114Ter/+A4pynTplEDSON0MG7BZx+NNNnoFAhBnl7jrbk
NPtlhkfc+3yZ6htLEEEA5tReNrPP3ysRu+C5ANtSqZT6oOTFQEZJSp/8baU2XyRnIvkqQKuPL6bP
DcQnPT3NjyXHGHSwTPnrp8cRCCeWas93um2c+2JRHgV1LDJbiCydzP4coxC9VEIgRcdze6hD5HSs
C4gHP/2ehy03obUmf/VffAHAWw8K/1PEJm06nnlxKoG4ZW01YM1lYUL8WUP4xtv8XQiTTQf5XMH7
w9fyszfAyebgrN/j+eJYng4m8hbbFStEtQrfADYhTwwIuyDDDbLEF8JMt8gVunKuy6iOuV9RSOGt
fdZXUlmjlvg0j+mMCGtCC2XpZU6VbMRptOe8mSJiKQHADN+TDODs+1Dcl7jfXawzP27LiMHU+OEM
4TTg0/Rf3RQrrtxflISw9+uueuuBs0p6QE2bA0/Vjih7+ZwO8kDOTdoPgFyB/9YUjdX6XqNgjAWr
OzRe+eSR67htexwmm5o6EmnTnQPIrzjA9KlJXarfEdPP7yNm86Rhzeo1o2b8Y2GbrrYBzOv22shQ
9GKOzNB2jxKYC8NsH3MAygAjDnzG/9Cu0ZskBrapfnsAaWulHQeV07WFgLgE6G4+Wpg8lB2wAkFO
P/OyGRZro2MSuXFk6S3wSD82IhmAPK/Ha4nYDbB7VZSQ0oGVCO0iJG2zNzMSbqJ8CtNN4DspllU7
TuikucsDEPvlmTJp+5F7PEEnbzXWLeLCGk8VQSOUBvdTytsgbrgGvTtafK4yqnw3lpEr8dm0pGKL
TtAueIpnAJb2ltiPijQLD5ctwfSK+L6TJX8kLo6yk5a72QM8OcnBJ0TQqZu+87+BLHCKMw3uIbI1
QUQ0k/Af5hbypzfbVP1F3V0MUkn859FJT3XVOPCVAO89Qop1G/AG1NvuTUMMgDAPctIizCvPDBhs
RXgkunM9mo3UyHVi6h2QRhVoBoc2MBYX9BMW5videphNUMPpBm0W7jsOZaJzJHL8mmNLr3SqVoFo
9VUl0lhvL9tDfYFutELBd6LY0fUFs+Ieb6HG0CCy7ZlXe7sNwKTdcYSTUvD6iARfFvE85/rb7rSV
hPIIPdpDlQ9vZLWM9QtzlGeVTu9/UIaElx28mUWTJUxB7RqYDTsFKCwKj19DkxE2L2olPCHVKD00
4mwWObYEHuE0ht1M8Vbm/p8Nc7Bx1S7X8DTKrt9hX27ipF7xGF8HAHIIO+KfabD8fXySsVCuA+Br
dUdfuWBXd3pr6iQzmGt4vJSwW2cKWDNnMIbNIHOr4fgCtRIbrym46gDObYMOYBPRUHfChZZFez6G
CvAnbaQJLN6TuDchlwHkzKPulZdDko2KtGvxELl7jEmvGsvcxGmDe62fhJ63+Q+tc87wEIJXO5+/
5gDq7G4gwIyFtc0GYS/5j1hQZh2bnHHJTM+lfthSieYgXeHsaMMJBTtbQwaLlO5ArG9Ok6o1Lmkg
R0jUBonO/eOnXOcLDQzt2B7gubb/oPLsNvDPMDP3off736h6cYS2cVPAzatrEISIMZKnUo336aB4
t9MssBg0GR1q5/YxdYoQTuEtspHVpxy5+Lmk7Q6TczvlF+RJp9xb9l2tU7PcyaSl5ehhjCEPXu58
gf31YKqeG2xuY7uGfAgZ788cLi61ILSWc8oigz/UZAtCkfYx+EiUTQBGCMeJBQejetCEO3npciYW
IugzGtI5sAgo3C3BXg6l4+cEFJkVi+rMk9kofwGFL4iSE324qblppk32D4h/dUl3P1RKOi7cYPSd
LU40jD9CydTCwLIAGZY6lzPdETyVVUSDIl9tOWI8YbFWjWWsHc6S2Xnaxi3AvRgyGUKa4fPhI52B
lwHVt1m3DigOPYJur2AFB1+uBj4iMBnJyyo2mH3vYR756qno2cFjI7Jx+PlB+1p1pgfquIjhVY0W
crQQbj9ae/0eF6k/ZH5o58/TtQJO4Yqg1El26LFQ0RT3IROHto4ZwdyFSinoYBRTTL98GAb7Mbis
dtPIAxadU7YAQ4U5zgNnAlcFvEMFMbc9sJ1EDWXtxOknQQgw5Umqk1OpyOhBHb77PxUYisxZyqsO
tht7a8Xo+cFS54RSMgNL9brZ80xA/ND+UIia40GiaWwJZWUybS9Y6PcQB9ZgxoJheycPJFLFKkUF
tVMO2OJC8iLB7Y3vrHHEjtNasa+wg4MJa332wVezu1p7x2xo6LqRk00qT5Gej8gSnHUVC1Br7j23
frdhxBtBCZOhcx5q9EvmcorD5NVO/1pkSFV7TXY+Bw+VR5jDRn+lVB9GaudUg+unAsgr4TiNkN8N
EtDwPAco+60T32d4SqTfvQ/SyxNxwSWX9Sw3WCt2owYoDL0KGO5koX3KGweCnT7rF9GwsRbpzi9p
jjRxb/Or7D1/c0b/sQzcL1UDAkap6hxZHjfcERVx7CJ2dXYgb+b3pjyI1y2vtnk94Fz6dVnIl9vI
ihHo2CsXRSdLoD64zPXoYu2ydi5cSkNDLqciB0SeNouijh93qCAYCtElL/HJLcup+ypW04piqazb
4o1VmbZ/cPsOv4RbY6kxRBCiBXCMpw/XP1SSwgrXvp0+1FopoEz1UkHVuiTePB2YH3YvDhRSem9N
o8rOKp4iOdk+icC0IZKEeAT/f6QfmJcJqi0X0Ux5o0/tTYS6lYfLPKPP7kjoa61DjcWnRBmmCwgQ
RQOL3GVRs8pwDjrFho51kglXEQ1X5QWRiEBeFmwEua6lksBcc/PNV9/KfPzBrty46XFrJ7UpprQP
LzePO37/soZrGxdT3b0atmlgPME1O6SZZWNDsfCqetICDFeaTzlZvlQPhs1IoRhcVkd1gYNG1hG5
VZmQjpceCbRD1TO05DbL3s1twnBtvPhW/IrZe5iVDkPJwDEmcpHc2vCIVs3e6hJFdIIBrUzSEFEP
zfz4Wg/kqT8flulRE4aQOVRi6XZqs0SHyiPaPhtN14Wg5bvONF3H9UrYc5jcEpUv7KvM74mrRnwT
wkmwJWz/wW7+PEJvyV5mIr0VGDt5VEEa7Og7lFXHjAF4Ot/Emnj7WiAuUosaa9qVrTOo9R+a7lvn
GvunoQwcaWYsb8DDd6Av0ExJ1giGq9ARXe9aHtLXBT0Bz+cJarTqpsR6y/gqs3TbyInIhL0ikwZz
CPIpQ1JLGjp0iBSTEJydeGQoyhvLvQoxpEO6t7VGyZ//OAGHDvv1cn+9/8O+xTeLBnQrocXzuYof
u2n0rVn4L8225L7Rz0O1c0VDEIoU4/zOGm+QWI3FqYL5DoA29DUSkHc/GlefQROhIEcsuPyz9jsy
YIy3S8XS01NT0h0xZYBL6FhnhZgJt1664oF72EyFDBTzclb34/lfES0FSDHqHjcn91FrdxdNESVm
/05srwd2rdVVhC1Uas33PXrcoThZQ93nrPCjMTWzGR83chbt5blOUtizedMu0k+rHZFwBBCv69dp
hhlPS92E+eXq9byDt2nLdzNJDnRlBhUCvuRSMby6TLiy8wqDPeMaWrpjUEYYPvQah5xKMgoORIGt
KVcelOA1iu9RzM0K3TiFQ97lfbfSbTQPIhvY+RA6veyvItKtsQh8JgbwFls3Qx4KQ277t4WO7IDk
ot/XR3XLBJOc9vxsNe7VxeutyiXIeZuFc7r5NbT/JcggLj6LjJzQVwsShBCzLayGFXc2AZmkRjS6
ZNauGjt8UUj4SWYPGbuOjI71rfH8p2LTrjQyzpMsdXyWZ7mKj9IyhdQAWgEYRo+mRJxr5VsQGS6H
eqFILpK/6sWrLHySzVfHn1V2BFD82LOIKA3LvYCuNTtcWg2dDYPFu9iwGO8hnwQvc5GHjoUIDOsv
7mRsB37CMgwEltIzYJ6NP6qxoeCBxFcuwWRb2m2uuQ/yalaa2uISnvMSgkmqxmikVJ6+6fANwbX0
gdGuMeGyUwDnnR5AN5Mfbh2HhiNd6X4A2JbJE5H5T70u+nsDlHC424Rq3w5v5k+3DsUp7ErMp69q
c6r8zsf0b3XyAOl/KFU36/dnmw4HtH+GF2QOIIKpbyzEvZsSwzyWSfXvaqaZ8dej2dtzUYiDSMAK
/x0SRX6NqaHDoc7Vs/+hA6kBI84ZdpxlBQ2/Q2He6wBWvmjwPiEYwR26ei8A4521asF/Odydt2kH
N/0F08rdPE2yb3nb6coFuLxdHcOiIkRhWk2SqdPQFGjbOQfpQKLni506MG4vlaA9o8aj5U3uW5pM
YnCVv6VnvS4gzlZrbapVX+uxclrq0tKX9JnZ8oeDrpv3fQtFOHJoUrdCoZFzAfL3gDF7sgiwMiFC
yTyZsSCBfog9rQoScxvUH4gHwaYvPSK3ut8aUfvL5ZTmDwuNpNVWeq9q+SuEgpT9qIL8oFKq0NH/
nyciVvDTxLLimEUyTwEf16jDUWHYSxZT5uqzmjdJVLY5ZgOOdhQdUcJxgSPVbK6cRnh58nD4uXNi
ENxTJpp5/LdLGNPCSEEJ97c67Zls4T9k3jkz6aImuqdbN3mNMmKZslNHCd1G5Nkb35KE8hNENFAT
9NAlbFv17ALkizSXZzOEK+mdMXm64E4xI/suJ0HoisQNN8mZTVeGLJlFrFdSskFhKOwi9riRu3Hl
+nLq+R2LIXXHx3HWqrp76puTRaimbfWVSNOeK5aDuMCzt3kPYrVxIPNy18njGylOqxQyOX9eIYqP
fJ4UMNnNwNtq/t48+lCMRKrBXkWSQF0mEjvCV+ytjKo8VFw+urWpHZSOeGdl9d3klBrCCkciKqc4
MdEs9rkP3vDzNs54fKPItO9Oc8zTEtrpGBcAGgVNfoesSNSBmqi7OWuisMCmeUCH2c38cEkBDAtd
h9y7gjiz+3+/3Ovqa1a9b/ezF3qPA7YGaxJAfYms/Lu/FKQhZJm1uqddYdFTWhthw+lyfUXwyjdu
FT+svwFHPQh73+Dqrq03dsu9GV0vkP6JpqqF5RwxfczIXOIitEYY3t72oPFerFWZjY8THC2V+4Z5
xHKeZylapc11BLHyX/J0Dseh+hqXBrj5+eeNRirHXXhiZNtpIgeiOAi2l4ZW6um+6qgi1y5wPc0H
nVIG6CF59kU2F/+31ZAmEIBMBfNIwkO53LydXg+2rfp9CSk0TYjduuN+WG1EAtAbn/fguH5FLMlL
KP/1z9JQcFxgiNu6ZlWXxm4R6swhCWVUUIdcbahDuGdOvAbGSVfYLpnkyiTZGOCvFxX0MkHRIhlH
Xc7EHfVE/mL4aFptk8e3DuirC5OLzWRTUVibddOBIzAmebJ3J9BXwx7Ch4ZmfY0BbrSBH0Uz9/WD
PnQG2Q4CEJwRV8AeZM6mf6LOqGl8mEOcYh3f/fj2OiBCdpGVB+29VW+YxfgpcX2vlxqHvvuCX3/i
lqKp26oteFjHjLdOYyYJyHvzbFqHLjDyVJJaNIEvgTSB4kxRVeUo41U3YmeOW/tmkSgpGM0jH7m0
pxPjr3yxIYtrr0hINoPiEVngRKfeu3XSVZPZFpZltFuo3wMWG7ywpthabCsxSat5H5E9j7tKparn
tVHDdrlSyvU+58JU8l3svj67pr9fZMrAhBcBM1fRggoeZzOGIzictu1+U2mlAWbUnoTBniRyTTjP
RzGcXvOM5PgDvN2VS01WbV3shVpa9TpCYnDz9R1FWZLBnc/xJGxquyCGn3ZpkMLUmm250Te5f8Ip
SOPnMGrjK00e5TlogqtMdsyyWpRfBUBHreQ1Qqh5oPGJ1+IfHCgjqaGHS4Gax95upXnixiJQvcCJ
vsoGzond1fKsKAKDq3uRU1E5V1N7/FduBPZ/CpZ1NYfRxyBrJJ1xTlDRSim+kGpXY14wyztj0kq+
n2P6TbPeYe0ma+jRDXDQUZprmL3S77VkNzbikDHWJra3vxJ8w5XLVayFaGf9B/uQGS13vPXhQ6Up
A7s7WMfm8xTSwusOQn6vtl6z6DgkmpBo3NUzPOXF5aWSmqlvxq63xa7BIanzi60tkHn+Hlqw02Fc
mTNanuwNkewMcom6YNVlHz2PjtLwBKqrt+/HBj8SCMd+Dkb//+ZaQQwaw+e8eyPzPQywsm455ctn
4TQ1TM2fxhiE9s3f4U+G1ysq8MXgG1TdF+UDf68PvGB3w/1apxNd89hRc3Kkfmx7Cx/ZNm4/3l3W
XAsacMVeGd/UUAz3ciu2SofdPBEIyxNETc/z2IoqdrmuHcxK+YI2avGYmWo/QBfBcFpcLTyDGh4N
UNvIDxn2CeNC8Ee4ZwmGSvn65wE6E0bdEvaU6NXK9OczymQdlYcoFkXeIA5wIxOvNd4qhe+GbI90
HED28XQH+dELxC6btvEVy6i+3idfJIgS8/YlfK/YV6LALV9niebDGWgviADF6BXDqXXZQUUjdLt9
24rNCKAZ5ccft7J1CuZGY3f+5hBl2of2CFFJglsxQtrzz3Lhk56jCyMW0WWjV92IrWepTdnq5ZSh
viHZ3Kp4JHcduPiu7FRzeSfTrONzJMQ2PO+3tuPhMJDyq+8bOu6BSRhtAQ4ceE78qEpcSsPTTBq7
9rIaqZ9R/2B+epyzt7BVtVR7n7Gea2WaaL2hE/D1VF+YzPJktnk5rsgpiLvf6/rLcukl9urEX2A7
ZY2mgHvYqSmSOh6E2hCWgDeJ0iCgxwhhjGtXeoN0qusft83paVqLIfotxfh8EEgXFloWhyThQqFU
/dxYCaXHcHoCxMeCxb/XirhV3xB7CahetU4f9qXrs+L6wr7xbVqVgljDQueVce6lr3cb5YHNP10J
nge1CtAzWt2femN2eIhztJdbkj9E22x5/BuywEjSnRyl1IF9dPVwXC+ha2THsot0MopYIkca34TL
WKRehLCCkQsxALVp6XyMw9VY/epVkX5YDpUunZ14tbVw/Y7mQLKjiKYlkrCYvDsTX93t4+RwPyrj
jOpzEVWUR7DOOkR2KzggtYVzWx9nnw2K7xTxCeHAoE+SSFg1d8Yn92+dcFp6e/Dz0KtyslYZM2fI
80rRys5P0K8/Hty+SQRcTi2kr8PsUEa527pcucDm81BLdYJP+FZ0gzmcOWRQNEUEiJQNo7S6wftL
8IXt+fPqxc/klfBTqi9/h21XvzSr+LYokK0MkaYpRMTdbmeyebfpdjGotLWPUrAuIBctO2/4Sppk
Gc8QvIoSI271Ag6LuKQHl7PNxMZNYGdGwEv+hufWApp+Hr10t4iZS0LHv4VBYbxszZXywQZQS2et
tUgy1ikk22y9kx2eKMvOj1Y9Ccee9HPH/u8QVrV4k1Q+2pJPWEQzE1IN/uL8dhxtcFJ9CtgbTwbr
K9BHqW9O+P1aW78ZHZNyZQD3pLX+Olhh/Yc3OUqfxAvctk2qt8B3TwkmOmMuS8OujhLjHpjtRBV3
6nraYm/K/aWF2+GsEsvQKFt2kb5o1P93ySH3QQiCdWfRKnNvb7GOBEyF4DN0GkK1NPA6wCh/J8Mx
y6C6dHVn/OqvgIOGFnZ0zRVmzPD3EcwuaIHk2+HLZV0sTgfa4up7ywWjucXruGxPKwVWZObkrUSW
sv2Nc1bgWT/JO7AcWVaFO/u4KEMIVd10NNTJ8vCQ79V33vYpECrXaAWjDmrnKJAKmE0GU2enBHDM
z2eLKaxPMo/ZB/KU26hCD3eNtzH5S7TUqgFi2bVMEcB+Yx5/p6//DbfvpeECvMY+8O4+93Sfm77F
fT1841HphvFh48yCF12OpXxPB1p9ERFrEQPiB57FoS1wyY9M21Tc+vWF+jkcwajM2NpBZcu9WtwW
Fg5TxJmleDF1MdpHS2F2HZ7NZnFLBEXZI70D04J1jFZLtWfsxTW5vJNDfSWZtlgxVBlPvqTe/3R3
il8o565KmQ1981s0exJJB3fkk4gT4cQauiKIxRs1zUi1lDhyL0H71vrJhMAbMxvNBwL2qMR0zJ2y
Lg4lKOknJLrFhikEKJ4NAne6y9q059IsgvN7rE0POb7+haC2ztTgOSeI87LDqZP3NtMuORkGCoiL
Af6HKhSt5ydxqE8VZjU2wdgwjlzREag8NK1NI+tP0u5SRqIe6wcpkNJrXQZKWeqK+X75b58N6JBA
2jU+VXTI3YDMnv1BBXqZ7hBX3WeFuiNxo8oRysowm6sTigLhSzkSe/9v7wLSNPHHkuxHHlDLGkow
GSxQxVrNeb20yrl9c4PQW62eBoUW2BbBPlPV2GoANAZsWSPG4f2G5eb77gnAbSWlUK+MRPQ/zQ2e
tQGQwXr/WrNM+tXagfL9kZmE9ZRH/3D8mbR2EeNYU6ZTXwJq1nErFen6PSb33lDks4UP8CG2A5Pf
cXIfpNzrnoGz7c2neMSVb8QQeN/nAs6UdCYbUryfbTmR/dOq9jJoFcAcxPWrImP0H616aokrsQQN
5SBNXYzYhz1cWItLhH2BX2oFoCcb9/AI3oHftGxn8GC97BFaT1z1cHRuAQEcYkNr/4Rw4HMg7JT/
5ejt/aBjVLNck4NkBmtcboK1O/MyceNBbo6jF7v6Oh4XfEw8v9QH6afrpTuHxwxI8v4g5aEU1oqJ
qLarHGVOpqWZPz3BIqvrL5/prS/A0f7YRvYqGuAAF4OiH4NQ9tvJCqfgAq7fEU9GI0vTKN4kQ7hg
3UwNKnlt/oUxFhAw1ciFbqsDpstGfuXY40T6Zt+qTzonZ8obi03r8wqY0lUWB1Q2PEEM1MLgmOXR
Xt4B7GuP6QYyMRbxqjPADuCCwszHsrDTm8lDI72hnOmG78c1lQpXFxygltBTcbR8j/F5ImUwXPEw
+DNtuJenYyJZpGFsiW1RIYRHyrBgXUphYNhut1JY6eqn9lxFMJSNN+Ys75BhAIwUgA3FjhZsc02P
GXsCOYeUwTv7Xhh9CbBSaLTtGKI+MFb5tN6C1WUT7rGSle2YM7Yy1B4CXMcSaajcATSKAXEmO+cg
0/fUAajgkOoy5qg6oj9lzqPhnZ/D7nVjuqdG+4ABx5+fpXz64AIevXQI2IU0rir0VnWKkiqFawRj
m0+jbQwk3lmoZOJBrs0rhuOJYbggzW7uWOGkU3HYAAaeKoPiZ4NUt+TgPG5NHOkspFGVrmQu1Iot
8+8hs8Cp0DGrco5wjTpY0HPgF7YiTqbNOOxVppb8g8mW2n6TBrGn0IvCy+ZPJgDOjbp+nhza06K9
wu0+OXZgD8eydBoVZzwdlxSIFMWx7WAtqeTMdMl6fSv7EhKkA//1SDgkQ8aSC6KPjrjmG2CYumN3
sDkDjJa3d7qZpsWymdYxqfRkiy+/qIe0ZrRmtg5yM7SyLl+Ab/+CFEAX3kNmVoXljAyh8UrpzWC2
wU30l/z7CnlD4BfNk5haL1SFlz7WoeNG/noV99IoduJhknmrtOgeU0mRac3t4/f80KnpHpOdO672
FNcerpviGWVAjHYK8nLnyRLZl+sydEEfiMvMFGi3t7GfQNcEqeVLPqBZgAzTZ+zAAzn87x58mW/i
s1ypSVqKeFxHdaJYuelkIWZ5su71MGpzHHymPNBHSQGRalvJAAEwhSeoj2R+f1Kgc51pd79DdGLK
eBRYpjX8lmbmDWU+vkYs/eL3m0gTzPNKp9PH50JUahlqSIHjEoqJfi1kl9jWZlQiuGsKX76O3Ewl
2AojyRFoHRldFNY3D3/23PXlIvLMEV+zkGsQQlb3/yu6CdJZsIVlaotDb/nGlq0YlxsTcXKMUEHU
pNyVvppQtEE6L6eQpcovYdSzUfMSlz3Xr7mLUUp8giRI8KC0VJp15IyAeSHxDzBtOy8oB5+sur6u
qzndAlQCF6gHETY+gbRtBLU1NGgJWiFgMXqbym339A0euOTAM55GA0OFKRt+L6KbXH1c49NHJogQ
4btGN2u7Z86K2zw/rwnWfiXznxba8+UqDuKweJF9qB7JRWj4iEgNaVUUzIEz3KadJ2cMfmwWVRqH
VH5Coc5BkdNSOgmxXiT/RzxSMoqtnjB/YwASKGbjjSjSqH7bzCgSRlJaNWMbzOLLx9O5jUKlVmC0
EXOZpnuYLYr8JdgAfueIO2IDh1GkiIz3VXTRGEVLB+g7Y54pjLZy9NEDcIY5pJX2M5GT3iqmZGW8
SK3lnRVYDzXDX7fd58Umf5/YU2uH/MuD586rKne3RPybEUb2EnPIbUQCrldGBUD79cBgGXNAvNRk
ucy8z8oITYDlTBfHlD9pOZ9z8S4AAJMR8KB1/1SdXshmXL14GzareS8txNlT8XvHlHYWvGqWkXAC
WbyUWXZG0ZDvUhvI8wMW58Npz6Ha6L/o/oNeyKyelyijY2LfjMbWo5sGcORpbPan1V8FGbwEVtB/
/B7LbOy5A8YYY1kkSDggxevI5nj64dTXdUuYyEam0qR/QEielecLNfEhTJw3wvDHDPUoOe2hfdPi
OT2DfkZ+ThwsDYXX5213Q2BFXZIbITuc4IKirGP4K+TNd+1wlIltd+MnReE/rO2+SgegVfT/mYrr
DCrWVgKc5YZL/c+Q4X6RZQ9GLnhRGNORZ54b10C2yXf99GaBLlEe3U5umMoeaOF9kxg1YKPJGSad
K6y77LpSxZ2FPULSisKNl6g9+gz8PVZ33i7EdpZdJ3yESzjzJGZYXerC0CeaxXtrgT+EBhUyHu3f
YZn5eVSHFSVn+4MCC7fFiCVRUvaG8C0qdL3yWzZmsJnnWNFsgC/Tx1eMg2G37UB+IrE19XcEW9OY
3/Byudju+qRTnU1gbRvnnM4EzarjHUFgRoC9KAG6FVAU1SKCWyYHBvwYs9OB8P6XslhnFc5ssWie
46/wQ9oGclUhFk1iF6zrD9c0+eUTmPvr3UObRqutIP70CUjFwzLwAxGi3dShvmOXVKlbOaYaV48E
PVsPcvmpgy9y37i1bIMtZBqq8JM/X0mdikmHfygmHRVgQtvONLbcTsuB8PW7
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
