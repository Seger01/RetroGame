// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Mon Apr 10 16:05:50 2023
// Host        : Big-Chinese-Export-Toaster running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               D:/GitHub/RetroGame/FPGA/Graphics/RetroGameGraphics/RetroGameGraphics.runs/BGMwestern_synth_1/BGMwestern_sim_netlist.v
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
  (* C_INIT_FILE = "BGMwestern.mem" *) 
  (* C_INIT_FILE_NAME = "BGMwestern.mif" *) 
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20096)
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
