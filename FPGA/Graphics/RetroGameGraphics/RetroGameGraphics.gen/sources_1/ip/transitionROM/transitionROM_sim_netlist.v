// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Mon Apr 10 14:41:02 2023
// Host        : Big-Chinese-Export-Toaster running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/GitHub/RetroGame/FPGA/Graphics/RetroGameGraphics/RetroGameGraphics.gen/sources_1/ip/transitionROM/transitionROM_sim_netlist.v
// Design      : transitionROM
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "transitionROM,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module transitionROM
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
  (* C_INIT_FILE = "transitionROM.mem" *) 
  (* C_INIT_FILE_NAME = "transitionROM.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "19" *) 
  (* C_READ_DEPTH_B = "19" *) 
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
  (* C_WRITE_DEPTH_A = "19" *) 
  (* C_WRITE_DEPTH_B = "19" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "4" *) 
  (* C_WRITE_WIDTH_B = "4" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  transitionROM_blk_mem_gen_v8_4_5 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20144)
`pragma protect data_block
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
KNCs6WQICu/K/UOTqBaJ4ZzZ2CRPJ+8=
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
