// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Mon Apr 10 16:04:07 2023
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
QL5wwTQ+rQpyXmFuwdruIobdb8bYDqA=
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
