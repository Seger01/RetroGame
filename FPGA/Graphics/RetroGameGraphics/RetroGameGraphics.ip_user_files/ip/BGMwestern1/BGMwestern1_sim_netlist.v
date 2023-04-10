// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Mon Apr 10 10:15:20 2023
// Host        : Big-Chinese-Export-Toaster running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               D:/GitHub/RetroGame/FPGA/Graphics/RetroGameGraphics/RetroGameGraphics.runs/BGMwestern1_synth_1/BGMwestern1_sim_netlist.v
// Design      : BGMwestern1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "BGMwestern1,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module BGMwestern1
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
  BGMwestern1_blk_mem_gen_v8_4_5 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20112)
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
