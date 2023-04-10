// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Mon Apr 10 11:13:28 2023
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
NOU4n+or8aYfDoFky6tg5NTUXu8RB+9kISeJ1MJH2o76uJV4OkfaDZFJ9TId+0VWhnu8xtfqzGbZ
mV/hTh/a4p/p6OLetfxkn3rhmIQEvJ6Vw43QhTrJdKEkZCWVrx9+afW+MUYMn8P/eUBPj0EqBJeP
7TzD1aag84IzeCFkgz2YbfnwdRwv3n03wNIKcaJJw8QFzwabeiFIeo8ht6NMUWGD0MxAVCyZagn4
er0vmZneMvQgtwZqLP35grcwIg3H0XQsVgaj2TeetqLHKWr9aCr/ungDrC0GR4v4qXGhh6hPfbOL
osZMaawHlqWNTiQLPGDvUNFGwFaaxKqvrMkYXMXhQoJCzBjFXcyqy7yYvlvX80MsnfV9kjjmKNjt
Urlq1xhMqloT5wU2JUUtIC7cQlWTmbt/gPl9b4p/NJQ5DV5CMTlxKrnMMHbWXeefNDfeHDUmRmZT
Y5nwIy8Y9HLTYnBlyPZ7oFLCDSz306mY3v4xKrBBgUAjZW+263/+7ZOoZ6NFMpB8NrnyBjSURS4a
Jdpxa5mCRWIlW1nYel2kMi7ch9aetS5vh9YYYtgkDOdwoI643YvspnmrwfDzroEJCUXW/fYdRnk+
aiu9l++0IUesplTbzfe7GvP/t6QvCQGEVE3FneokmkLyNW3OgBI7Vxcft70vQVPpXGc8nGWYb0LU
Ps+YCK7JiSWhO3csD/BxnNLVhtaDGDeRzOK9kehwvKVdFD5Ht4yWFTno1TEj03HKRqGp45av40gF
oTUA+vkzwGYfy7fs0tyew1MZMSwa9eduWCE/fkR2bq0slgHoz2NQRWdL9MiPQnIHJzIeucowb1Lq
omWZGYNmpNXSnQ0UNa/i1/Erkt5QsAGAyaGfOVX2A/g6TxbqiDC8hpyCrnEjsWO9PpYVtExp1N3D
nAQPArDP9yAd+mQ0Llu0dD9poAgheAoATHTXtzsJy2e4LxQuqi4Pj6HblNgPYl5SaqPQw/JKQl2t
sWA9MMnfBPXlcl9e1opnjgk1WWAdqjbieMqxqwM5M1Fi6FT7Oa42BtIzmx/E20ADBUQFyUr+icNp
QmuOk5FXdEZwW9XIrzxFnvRyvwO8/cpT9NQF1QL9xmfB+Rn7hI0+ZJaKJfhcQOrolKW/NWEDBcpZ
ZGy5bf/3QsGzDmW+nIvIpoVEceGNeLcGJ1KyMLR6K1vLVIEtT5jo0pI4TQlnz7f64UKUd0FxzROd
1EQdeJT9kfAO14F9tIV+ONFj70UghR8xPjHccIhwt6kFdZ3fQkV8u3UwOSuLPUcPWjQ7tVwUIX5K
JXo9Gh2fqkncQ3xpwEfF05z6aA83MkO77OY7wxLNW6PwPoSzk4AKg2B077KEUdZOKMHhSCXOyy2l
VOMOaY8qadnebBgLBaFbR51Vil/FMUIP8mU+TOk6q4cILAg7k2TTvEtaoWaMKAYEXcNaE3YmhkHP
O0GFgBwBZcDAIOLq2dcahffqtmijqqnwLHWnBloPVuFskglScX5lwmR0Bf0sZNIXgjWpbBpArozi
rDPY3+nEiL/69h6Y4bVUi4tYwh1/eVOQg7fqv5sgykjH/E9xI9N7mrrIxJULj4qVPsJznHErzli+
VkqXfXEj3SkXWzIViNnQOBF9zNZBdzCwznZYTvb0I5f1asBKcCJocDMA9pS8r+I7d4v8106+LoTA
Ier2BoCB4PEj4BXAtFsSDzN4eUlF0esTUHpni4Jo3Io9E7/PkbRjOsM6u2WO75p1MJvgzfyGvCg+
fiSWd1TgmgeA0urr9Mkjdfa7XQGA+V+5jv61F3640GU7nBTvOfWMn1NNjcKwC8N42vc/Ar8zpreV
3UBCAXkfb9vVV4QwrQP7zWgolF/pTRPi5wOp++2auMC1F9cOvfVw8H/0CmXq0oiLkEkJsOIBXXPT
ftISs4abjau0OCWfB4l8FYJ2kh7vmXBGdvzoTi0tKx/K9fJS1NtGWYpjXyN1rEhvcF3kU3gWa36R
p5ZcvBfC4DVA6xZy1lM24l5rmckCMZKlQ5du/Lwwa/WYnlC/t1PU0q6o58FlMyR7+K3eSLhYuO8w
Dy7YmpIxWptlLGFGR7F/juo4US7EAeL8uXFrvofx3PrMsa+NP9/p7JXuN2288521XjbEJY62l8zQ
N/Q9iSZ4QXdboNqBwclKk35LNNuN3zTib9y8pQBErUaYO35rfCf8bMPdCHNa2H29DS1Ed12V0KlE
QggeyQ14uxl3ujIBTnpeYBX86K7eFWsx1qDD4LGC5r8P1RoH/9Au6wv/8g3y3Vzf1rT0x7CYFAu/
3EE8xggsyZUqB/s7/GZXzKoBQLccGTCCoNQHrDe8s0D1bI/uKkoDRNA8I7QtBecWHemyQzfnm9p1
JPukXXNRNFmzcQwqvVEMFjQ0vMy02MDQkAR4NcCIZyYJI4WZodkbkwQsmKOedEiSLy5zWnb+XTQE
XO8rKSIoh/4+KH2mTBneRTKZ/1S9ywUoGtoIIUq4DQk2DGtpGC1OoWgMYq5ii1FNm4C1C684k989
bv3weNiBfuM5kGH4UZGWkBipGRI5Mh2Xjqi7NcF1MYMiEdxMmhBinCUZtZcTi7Oy9o35o9nuFzlF
4Z6+h9flI8DWn6N3uxQXeuBTHGwskAsMqAD0ruwNdfx49mxyNZp2kE2m5Pv9XQ49QwEXNULYH+/n
/u/U0qipdo5thtLc3vutOHsxq5+AcsV2GxzPDWUx7X3otER7AG5vVvCRbI7L3t1aTylgi4GSH2H2
2iKIElqzxl9U/bmCYMEs7ZRA/qlExp9AD0M5LkCUNnwu1u6KQObDviYs00IiP+D19Y0khSXm7Mdk
z2J5qZnnvbtvexzw+caYa3oI12ScIRN4x5Gp/v5dcZ6KOOadP+f2hErcM5ZCty/ASseAIRjrsC37
1IO2WcvtfLEk/NPaittQ29XI4VYKgfg5HyD9XFn+F5I2fEsrY59ynRLt9asH8+9eHM9fj4X0mwEz
wl09beo5Ie5Hm3xlLoRnfQMJY65oZDDSrVA6JAF+yRK4PbjPOQ4CDkdo7RceBxr3xGLXoKYYN6fx
fBEWR3p0fmH1jfxVQN5d0D+Ew1Qn3Jv98zLwviQxgXmuRXdIwt55ftwVM66sYualbEWe9nmAtWMS
7FM3YYOQc6aMFJHqdbWjfwgxt/63QAqpJIWnAzfLceX2Cbke8vchz9MOeCIpI6LQDojONNu31IQb
JJg1Bi9iNelUedabY+9ztfEpCazSeE18HVheposouCqb7TEuksACXLg10dZxhaCfDHqUYcBGx3eR
O81wcba5LcaFo3jm7zK1viwjf4bhGnHI+QFj7WTiJiENtHug1u7J3LTYVFnusxLmD6py6vCjjdMI
0seBJj8lP4K4PmeC2xaXTHmAfT7yLNjSt+1GMPxbp8P4pUqNyeH1a24EqFLkAjw2weEbR1HWtshM
BwtLCsbmoO3E66IKkLnKrc6XBI/YxZ1WASqyhKy4zifni4la2VA7+/OXv1D2TXPDgYysPix/ZVkf
787/FKECUwA9liEkCPMTQAioi+ATSe5h6Hd8ZJ+onOgVqX/rribzKZAoe8KInOs7bODsij4VFhsk
OndGmnDSefNHQya5KW8igTHQWpNNDv2/g1Hjn4ZugJNj9QzOtMM3II/L3HtsiL8clHh4sMPNF6rl
mPHD+2eZCPkGmjxuQVU90wQhrvGMB52k3qPSd885O7dPK39ppgisFZLpwBg0Jt0cqng7xf/ZALB4
kDo5wCUMDq6JWNhSyQNU2m629Bxh5ZtHCZKNbrpVfDfceyiUyfOcaafcidSLzdlGSK+k7mKTax7E
KYCZopMdANTLbjUWwDB5yzuZfPc2fWrDBedXym9EseODaI660dqDGanpYHjzvdrVi62/GAG+oZFQ
VxCZ6qTuOQ8kj+9/GQvc8bOzsND8UGIJP/e7ncdqDHuoPy9H0o/wus6miJMSt1rrc9bGhu/W3WrL
EkOBKJKG4vAIf5OIzybiUcV2QPQVoZ6AjquR7TZci4ssfNXHlfMFcMUNT4sBa06EqMqkkf/PfM2f
2ig0yK7h0wlCbt76gHQvS1kVYOUpINkMcR6wXa+htveZoIdiVOs7mYKEQgoCWeVDNdB/qJCqHWUI
5OSVTzOwNKq8BmXjj188kImjGV1fxpKLlC/tKCD22076YmuJyEgeqReipxmgAnjbsSCatFLk6WlM
ttOHt+d4SxhbWbfSLKE5dcd3np9T/pZawjjpOX19lfAHxWPAQnSf7kx2VNIfAl4JvEA2g0DCAZBk
92SM0+fvkpvXwge4h+ceKK+HJvEKQ7w7cqOiYLn0OzaXk4LK1QbdvyKDj15szJ76wUh3RJtIyAG7
roc5C1iTJs3MhptMUb0lZcoq1MafckKfHqD2So14+0OaN3CBhBpgc6i0BaeGNHa4IdNd07xkPygr
+mQOWpPOC+7Si8FZ0DFXnM4XXMM9j7DK2tBoJm6KI9Nix0VVQnMkIaddwCYBHMx1lzYxMIhrFeoj
377hERotlEsJ+JKBb3zsT/hFeGwvs3jwa7vQin4sIVZwZ0QFnHjANViPH+PBT2EA/MCL49fcJm2L
YdKoxac20Mc1uNvzxkp1LBfBkeKXFWcXI0FpHj51wwD6BDgAhJOPUD7VCVxyBhohujDNR8o/iuEa
ZcyTr9GKkNsjz+p1fkU3DxMrTLAMaLav9qpxa74eQvFVclInErNqAnCB2GsYJl3d4YTFnWcSP2ah
ULktAKXoP2G9Wfh+nfIQXAESGgFK0EqZiU3WOTmZpsYWqZA5813oF3NTGrsPBhsTamSMXJbZC18U
sQkgCh9evaurCmay4S3KOEOonNiv093Ux17drUUF+wBK2kFw7tkEw6gkNkL99l4GbWFhTUv1y9g4
gGdiluwokM6Ew3CGOEWlGAaRVSTAwJD51ippo4q5nOV4c/gZ8+9nXNq1JiFGRImsnCh+4Y9ZxKPH
OO0ovU6Wv1awF4Y+6VVrRYHSD/jqOcNhj2FNOOUWwDNiJDdy+n93ryZ549rwu+cEsGM7m2LtWj/g
TdTgUm8g3JR4U7oeHUm9umLBn8uYP4lpgON6FmvEKEFbrgeHtKsyGqWpREN3H16CW21r8Z6x2AXO
exRZZruqei27KNwBbg3RKgn+sPVdZIzFxGfFeUozXYDO5+DRBOSVX3RbSj2bh+1QWd/BUS3GGJLg
TtbBRPqvWJpdD9m45r+qEIIVqh0bB8Ml5WzS9s2rcS8jzG5f83+aZ3l3/9il9Te2jesxlxwgMIjP
y8104XeMmb8A+v/f6jHFk3erfmWRqC7LLp6g4Mfm1JKq3u0Y0T5AQSKuFoZw46jbI9l09oY9Nijz
3t37RJ//Y/YrBBJlYYBuHa4HkzeUMKIMkzYR84ldffK6NqV0iiw5azsOCygimb/UJARF56SItagX
rT+M3p7PWic7/SDx+AnuUeUtryrpcLqtKJ+VBfFPKyWZUJA9Urk0PRPSufmRKEPblSHO5R4WewnQ
NcxOq1snEEHIHea2EN8jdbMp1tfFAhwtoQklILNoi9erYzt54a/GpqpOwjB0xRoSKhhbZ9gSk6/p
O4Miy6Sx69lU0rYcMk/AR8FwVa1ZSlWX/R5aHwQHGhF0wekGF6LwEPZmXRjxyo5ptkLjhlRTQ4eY
4AY54d52bD3gMaQLvPENuIRfRLTniy8J5eUC60tSSsSPTDU44yNaMvabQCvMxcREKbRti2k971Jv
XFtY9EPwaZSWYzZ6oEduDdOgQdVk1VId0B6pRfHDTfgtFVV7X9ILgiHLcHt/WPU6uZEjZZUEEGf3
/Z4IavefD9AE3wm/fkaRiEYIYeQvkIa8Th13M1O2Faj9kzcNsPLLQhR8B75/OJPdJ2RUUOEaVYYy
Zo17lp1tReaWrW2ckak5BKbdaIEaz2CbfNmqST+goB/CGAq+vdaNgFnyIbwYGAGcfmFdBXSOU6YC
k5WevNyCcJiDGgXotzRDHItZjzikr/PsCvHoaZOpeYe6FUn59elXNMCuiKRSXPNhmDAOJg6M6itm
6vuBNg8PHentYv2FZwEro/BQAH96pgepi3PxbsqTxAJQujTbaTeZN1I1Xs4IrpqC9WszCr0kNz34
8Uf/ynmJOux0Zy0N/aptjivHGXdvQ8r82yNTak3OxHSuoctEzk4tL8kIVxYGxYNQshZ7rQZnMQjS
Tlx8eiZGO0XOdskV3O1c8VpaUgZ2xPnzxPco4p8//DUIftZnWpE7LswhTdLzibW3QcvBG+UTncQQ
KQTjD/wimNceYdbtnJjxrV23o+PWSLegbpjR9DYSzfEoy23+dwWHR+97iJayFefDzXmIZ+WDnF9g
j3LRn9Fy6akf04SZnsuzqbxy0CaM4V1yCrqnv81NBAXrNiZULYGu10MPL8RH8gc/qXtNsmzhNNXt
dKrtm97vmOX1VNvPrn5XAc2EFRVubYzt+a6UIbmIYfarcqpoS67E+CByWnfXMfHz5hLTFXyg11kM
xExOuoMkR7mOwhBFiV7mNqtsjn4Y5qVWVylZgn4tbs8kyOrCukENQwhRezF3V6lKV1+GcDgKQ2Gi
i09zYDzVH2ytfwqW4H8paiGqUnmcwzvyMpB4lhsQMcCEduR4YuUzLHClLD7Gi7RxVWfZRpLwzkLW
/yt0+/XouoMSPfY3VOS7OH/QxbukraISJ/xgqPL4BtW76put2ZiOcEDDCtH+f/OHR1DccVpg99bv
m48U2k3ylh6/nRnYCBpurbTPdl+a849kakuYgaa/Y5uo693EG6QLKFT9jo+Zivm6GiaAgqtL3Vm/
NvPV1t883pS7DoaTg0birrMyyOC3FQ86dERE+VIcvgcXRL+U8dvX8tjhaJmDAER8h2MgrVtCWUpl
T7gm2VR4yVs+i8vsqC9vlOsqOgptrFAzPrOpgBoFn43a9nC7RdBiK3QXPcRWNpzFgu8svB7sLFob
UKLakz9Koo9nVHIQkAxhn+xen473Qu3sH6RuytJYR6LJaBhkX2k1Knbx4JlOJBn67SKNjcx/Jyjm
wrfyi4B2N9tWNpTKFvtUJig0+TO793stVyVZ6B2hSYApVltMjELlNftZn54YTRjmoqsJWSJfHwhv
QFL4N3Z9oTJL56GG1DWKcvYkcPvH1HpXOBGSTLOy7DZ4D6jp9Mb+iIl/ynyPy0pW4EorQCYAOHQP
Uh4iJ4IHLGuBpM7FYswhHwVtaYeqEcuFPOkNbf6mW7q9+LsNNJW3OuGgueAROozqpwISEYm0QtMi
PzoxkxABPrsJRa1gRspHpWJJEO59q42Iyn8pZZuWQsR1VqGL8xQDIxWVOXORj115D+7U+k3RyDjG
M2rUJ1ArcTbS6r1NUqdpB+2R0eJZ9ko5R49A87a8duRdNfYlUbsEi8eg7HoWjxarjwo+uQ3Vt4W/
yW6QNYSUhSGFcLr78IZx9QrW84usHkc7erD49kDVr0rzWOSB1MochzWN5bcaqMcPGmlUQ9FrqaoK
x2NFz/tWtt2ZJhCss4SEjTwGyxe32EczAwXeUTX4fUMASmCX7zHtHX0sKnMXOwwwKaCMq40kaODJ
4yBMQVVrxCXM28e/mJM8U3HT7DH4v0FR/nA8g7fRE7cjgIDlFdnKZHQie9QrvKpR59GmU2hEWrh4
5MJXCljnA9JmGldG89BwKUobTxh8995glB397wrgPD051Abm80cK2iQv8uC2BqHuMfiWIFYRm+Li
vc6vuDcpqEQ5eNoYqq+3FYA4aJgXGFeKnq72N/5akg0XI4iXHna7/t4QPuKZAOe/Hlfjfep+fdYe
jUA6g3qArltLfseYccrCP83iwdYDofxzpUAlBjXDh/dJ7O2Qo3PEbDGgkbUMwEZbStIxtz4kSU13
pTD9ejGsH849L0mvx3YGmtViQL6X3N9lAaGdHC917L6vV6IR5+jWgA3NsWP0xisEjBkn4ByoFUZF
r0xRhVenn09cJzN8IAoRXeBR0N49TjmCC6J9MqH0A2FQYWjhyGiLV9NyRNEEzFEHxFMPaSXWcVxq
PMZKgalGUW1J/jnaBd0Zsma/w5q7WjOab9fJmPBL7hsdo4ApjXWsCBF2lecdmK1sVNCBRLfXtY24
TbOiDHBYRbzNbF+AN+07KMPNafQ6IylAn7RZpF8CAi6cu1+DWeV7WLxlG3Eu4Wg093OrmeahNBBZ
ock49AeoiWCLMiJtxVicdtDIqygECXuRPlvlz48AMrwcrQZ5Kmd9YUqx31InR+cxfU3D8RFDw139
MQjRmY5DEj6VlZ+PSmC0FTmuY+pbi4ZjfrjDX77MvUC/XwqMUwbCrA9PpD/lYid0bKP97FM/Yuvv
TrcEDKblAbSQYPyl/KXKAa2XyE69WExdbOVrp7X48BKsEgfHujgaxSMi25Fxl/H/ipzJSjgPNynQ
ZygAcVRba+JLQXgecXwm5dKP7oXZNM4dmmfims/7Q4P1uZzwKqoUethAUdgOGMZvTIuzFju2/J55
vaLfNVs2UJ5fJK/YeZKPCy163uCCgR6CaH+LvweCC2DaAeeTD3Ad/fV3kW4IuMUbCFlDEuJzego/
Lw7CGWUgA0r9KSCe7yEn6rF8JlUoUrwLpaxDyZaBv1qHzu5+Fdc487RsEaQDz4NwehcAFlRVpYdN
uBRD6E4FlhlNFcYmXhaBv4eSg9fttv719W5+cS+gkEuuvIp+yfDS8irQin4F7P5F5IK4V6iyTm5W
TlW7yzDNzEItqdcsxLHoCPjkv61hw/idi6qX7jULvUASuQDt+yHrPOgiv/XC4mBOnylF+FTJQTtz
v4xi3/DDf4aWs9pgEdYayLEsqAqLRFpH1/pINTxebgZWeShHdHkIcjT6I7GkIwVLUnkvoiKN0zvg
/wgtpUSvs4Op9BmkI/Y9A2asY2VenL02rJMNjOBIv77n3qJ83Z00VQJJMCKFf+uSRUKVt0jgviPY
E82gR+qUUCSXV2pt6Ji2IXx/kMV/K9kXpD2y1JWHNMWjVrgfrtJdfbwXbjykefsGrScKpO/+O8d9
bAv9c1l7m8ZV1jciaSs4I6IVlSlmgdyA6z/Bl9jRNjydYPADHv+jGe4sw4+v+Bv6Mplp7V9KvLn3
EDp8jq6oL/wFGik7WnnZLEIuzXU220RekBqLbYe2d6faUN31xpn2a3FdBrQId+Px4QOPucRkjymp
+N+2xL7cOAlmhVgmTU/WQCtDbTxCkU1rHXn7c/9IAVIiwtkj483s0470XptRN82eBRuIt2r9INDU
/M3ynKZ4u0CNdfRT1P/NddmvWOV6PIhnJmrBmjWfJt/4JXA81ywih3MByorq6ja8S9qvRxqdC/oE
5esUoShxfVDa5pO+jTHTZ3y2oQ8o8XCXXSg0BAyU2CX9NawJReB4C6MYt3CkvUeSsI/bpCzlNs6Y
WaVimWu0svcrLY+V2sh4FZgnBob1DHM4i23BF8i5+F5sLZYBpYuMA1gSF64F32jSYGrVyQyYy+3r
rnGTdRpBBxGRUFcDUGoEINywUUNUkNmGRLc+VNtiXgGED3tl+Xw6sFaaOJAWt3KCTwh7ostRJ4+0
f4elHMNwq2jeIxPulK92cfMPeF4MvNmlkl115eKMEwtJAni6k82hZx4zoLIPg/oD3e0sUrt70YEO
PUcXzokXB/qExAR5y2BGuvrfN9RdZ5wRiHVrxs2fDELZwZ3WYYNIEH8P+T0fcir8FRtAEKJfrJu+
6F41pYHj6sopq3298iQ7FpB/+QJM9hv6tdLGnwTMKyTWrPRs6t+kwx35uY5FFakCYj7bvOaF9Drf
DdpYe9tdB58uzsP5RFFSc/SRKnquQr7j8zyiJPYZ9D0mCFD/qfxinmt1Wi91ktoyRItR+Mueqlim
cC2wKqXnFzSuPR+pRLHxRsDqkUNvHFxPUBXeqZYd9MCSkbcyxvO4HwnvZqkJ3y109PYZQRla0y8M
vbGWO01xNcaLRT8ezlRteX/S4bOZtOU2r/TZkn0BYCMYrgPgmT1P9aEqtTwUsh/6mRNmtbb+ujbw
lrsWPHKL6fnwWsrrPRtz7gXBOhcKm/kHEEsZeDybgjMC2CVfZn/KFAGdum08VbZgmHGFBtTD6JPi
j8VurkNEAscZy3YW8jg+sVvbfAZzQl49DHiSSWeqwJ0g+zLFqy1iH+eGpCpHPtQQbSc6z33fGzXu
wO9+9RC3OCg4jPZV+J8HCCcrl10TAMZUkV+oo90R7rtTAmEIpmLfYMqseQOh9jCfQUxJKz3LNxDY
Z8AFwGeqknqsnxMIka4ESe9TJyEfTCNb1dKtbuR4b0rxzZJW8TLRunDzkpvWovZF/DFcUsjpkGR+
NlKITWNf0uGeVWIQPgXQwJCPIBURxjApDW1ujW/Tn/RCfiK7F471HGW9uHBDnmrtt8olW5QBigxX
f0+CurzJ6vR3xNM/RWvr04qI/94l6jF/RkKztd1DjLP/pQVZK5Ii3NXSo9RWniPSZ7Z1IK27nn7O
IcS00+HJdj4ZpWIE3jK7uTF0xyvJxJixABCFPC7T4uQy95DHZueXhILir8xZfUJhd61/2C58R89M
5JdaxUL8eJ9V1o1UoGiPwnE/wzLySD+itBkFPA2vg0gmPoz8/N0YtivbRUQGX1pAf4Gj5D68zwbH
dhv9qAO9Td0dm2GOLZX6wYF4Pik+/3m/vMZ/RGgUXS1xGryufH8HPN/tR6WwmFOeJrwN2noR3KRA
UPuZrvqcxq8PLx9IEimZgBqMWp19k3HLtaI7DhlMO8emgFTWxZ2X3/FzjjrBIeEcHXHnLMp98lU1
tK5ApVwDFERm750N7Gp388dRD8C80lE/vzam9YuD86e+TFvLi2Lpek3AYJDWflwneb5Y0gb1rc/8
vHNtQ+qxMc0MFzHgliypfVsXkQ/oLAqmnEmD+8VTcImKAfW641Iz7P6C/750eamz+9c0oeAGUBvj
I7cL52giihCPwtam8K+S+PeGwNxIr/wqYvnZ4yRVk8uFFiK/b2jhNKdpLiUeSjgZLYRoLxJMc7MF
Nj375Jx4Li//Pbr2X/xPxKV5bTukLgNM3aSBKZ1o8sfTgbqGFzoawq6yNPie0glqyAADYxt/CMFK
MuCKfqxxbmz//KuG1vRQ70b29+k/vgcJ19MsBvQKznX+0iPWqoEg8YHaCdJGYFPVwu+eN7RXDatt
WplKm6zOaj/1nvgAJNYAnp7qoClAaYl4LA7T97+GuulbUp5ZGNVkwQvIvKHu7eTrTXBCWnvnyV7o
jai3SR6S59Noc8tOQuUYqu1OY37giuOrZ5aG/sBRtSBIXEGACX/Pixr5HEkK181hvKxAr3w24drw
Fbz6Jilly5wrMVuVZIZmDAGYJ0b1p9Y+WcnEkjGMecdNdoJjMBio9qaBILnl6CRBpS935LeyqjdW
6cB1viJ2yY6W01B1s2uzvbNu8rHEaEgIaSnlba2HGtYM8agDZGsfsQJQCBNsllRAAFLLV1tJ6dQt
hwQPgzBwqO9d5yBe+h6SftQzTY4NXtlH3Bh+UDEMYCx8nEWazg20KJLD9szN9ZNWNeKO1Y3y3ACt
0ZOJ2G5sLS7c5P2Nb5ILGSTpqiUAy/DYV1hIJ/vux9j1RXlzDwiMlLV60GzknSVW8rnoGMkBUEB9
++Pg2qXqFNLLi7jwVEQcFeN8kAKWDcsKgdvHXYLjMq//m8LQCVI4ziiJCWuArKhMRwpdUXSFns5z
pXX/AKdNefQ2vexGPTXscA1v2N0GhhnPljO0eStZD8DKDQHt8z8LLNFRNT2JPTqyBmJXcQYJGAxC
pbgdZIgjqWubxFyaO0Puvo/kqoYlx5GFJvvBbWIEne5HRfBp0LLLp4b4+r3g4pvX3IVBPSVVtWM5
aU3ZfLFqsNN4LojxFhE/I+6xOfhuYtMjyI+VKXVrxCNBEyEVFkGtGak6nf6m0bDd3FeFpl3tyKmK
+JdxdhYob7uHxk71Gj5s+286rin+ADTzQSSJpFkwASYFqga37iAQKyw2WLW2GYwZp4KDWBUbxlXp
+It5WueJRngQ1ZfJr3UVSJTKubtmuJI3DFR4unBstBNBtqwaeXSlZBLb5zCKvnfBOqYp6esn7+gG
nWLWxEfIuF+wRzP3O1PgQqAfZLwtsHJxHh7f5yAnHXnH9OKwMxMpIp8ZqtRa627//qEQJOmhlU8Y
eW+NBwzVZZSpkd2LFJd5zcqY3oJSQ2E+8xPbMLCmXLQ+TNuLcmIxuQUddPE/KmdOev6UkXnraGB9
jjxWFzcnpb+heFiTfmB07wVHZDf2LyL0IgjdnA0MVmTUMt027BIjl1HY5qz9092rg5TooJ23CAyj
LKAEfsJZ6Emwev4gumciIQrDA2S//1iYoseEBMbfxQixW2J8Dfr8FiPFAwmT8hZC6oeujP9ySHp9
NcFPxPPHEu+b6i018uBZY9X9/thtrcRyuAC23T2XBcWoGAfYU89X2YKHTCpabzKm+LcP4VDQ/Wuu
mD3/hVvVzrIH0AVsQQAxcNciKaTAojIUD1hncpKtfZQgfUZHcVBm8fq0GXuQEJNpwycLv5n+HbgP
sWN3eGusVR66BAyZ/mQ2SbzBGsGSs+DaAEVsRXB1KKMhzCawOGMQF4slU15BUC3QxPtK+uqyeUX9
PDeDUSP/2HR9XVGrXCXUxCy4ssv/k8YtisgKrCahLHIS5B8RDZUTbjPKkA7594/TRso8/3uLqEC0
Y94Lif9RpKRDbiIKasFtctuiT9/azcywD90ddMqFy0v4YxhRuquirNcYXTKWO+1iyQ/0tXl/clwI
tPCSDgw5L/39E6DWZye1pTPj9FuPaVFEPsiAJstK0UPguXyoEm4vjuqMeg7dlBLB3G0gZuh16PXH
9pHDs6sUCIQMBoKsgwsbdIUxlGtWhqyECmEt4Nwbmn2ll72JjeL6DXdxjC60EBMYl/8LCpFgFTem
TEJhH5i1177BczQSop314IJZgj8JmBFJM0nZasjI9Dz17cc6F06OvteHyUq4gM5Za7G+XOZFzsRC
n7VJ1p31NgnxBhVfleHmnwa4VvYz9UIOg+8tm/jaO7irwE/USzrds31FJOVBODvytGWDf7vU8L1Q
pocEsWPnMjitsTDffDvljeOeMxfRQtkM9DHDcp4bw0+03MK7qGkx973RcuMDigDfah8fJwCqwcXa
szA8R1Pu+IW/WhastcVU8UOG7SGRreZQ1hcPHZb+QEySzVjyl7LfCUWBkzCu2YwAXgfI/zaskY36
qfa5EyJFfgI9XtVSp47idrs7o3SGGOJLQfiRmRbJ6G6nWmTFzdeQiRqkzKBDdu0o62zW0edLqr9H
uudxc2Uj64Yoox51jy9JoHISRamRWIjBzOvhdlQv0DXQ3omJhneYJy8pnppCPHFXbNtR0uxWAwSV
wJbISmnM96XgRhXs4tCiTyWGi31F4g3QXkqsNiMGyH+855pEDB+aqpUZXpZN3qBUH8Utz9r5WTcT
NIU64420vgM62Fr9LYs1Ux8fZraEjY1NxBzQ8QxTZBr5ZBMI/dwSpMYRNaK3tRwvhvYLcTtVukMu
FfY+Nnvd71NnabX8HXj2mRkKDzaPhSa2R+wUMevvkM65MRubNC68pbPhr/RqOxRFwhDuJNRSCB81
oYAKIWsrs1eQc2CRpA/iX5WDdZKtsc/fP2+BJmWxKrdDyhG7BstgbTFZDA8A17ICmdgN3K0zn0LZ
+KgmkPfCdqUjN0UOIFEDkK4z8z50c3aI6DVqeJfFWwfGH/NM+hi5VAy99oKpRSpJUeqyKItJ7pru
gkPAznQ3fXRIrxThwxXRDrbqKlZd71yfKI2l6bUrGW8YNMTsduBFOhpKaWaRAzhx0nR1TGYkXEMV
UiU9iinfBRumwr5RVe4k4sBoYiB2o3vVRxbx+fsNr7Vd7FKTZzLVZoPqECZGOq5E/jfgadu9GT9h
CtlgC2qVnoUMd8XX5KnfTuOUcrY0VxJcF7klY9kgQ4O/Q3q4Emy029/FqgJ0AERPftJqwXxdlhau
ZzvfgUwMXKvYXk78/maOFM4LyAPtxWPl5XAe9DoOdLFDCqfo6RcDs8pZM9Z+TXqHmrsX9lnL0zNd
9sqVc8AHLSwXgIvc8bwCCJ9VuTtcY3eheiX8ES0z8QX6JGB6ZslG91yMrRyAZtU+3ipIGiA6Q9u2
p/QKBMYQFM5YgC+NrHJKCJZYYwHUUS8XrybY0ROVSPHtHgRWGzbgD09Osb6yj/J/D938dxmdWc/B
uHpj41vnxu4/HV1+mavfn/TqrTv620NRjxX/5/+6rvbxy1U4HppQmJrJaU8GDWrhFnkARu4Vo2ML
UBBNCZUQFv1vRGIVr1PCeE6Td8SKD90PLT0OnBrnC7ek9Ibye+Kwtt3dlB+7xMA2jmyRlDuVuHJK
S1gCHKSeAZUYGEAuDWFHFIi1IwqL4T09C1RcDpKZcZAB0e68az4+u4oAsIhN2B3mOqA4Xx780I1Y
ZFHKjTdgvuEANPJs0iVZSuO3Pew69D5ZqWXApGKUt374rI559oYjGowM6AaJLKUKKdIZjkrwEmd8
oikfxm7aaPhW/Ie5Ls28F8KelFx/AJscNRR2nnGaZB3DBZGTVNaWsCPjh37eRz023C/LgC6gcx4h
lTDhy1W4q3j7Nz303H2ETM3W9uKJM1YICxByv5Ow3FMbq3inZL+mqM+seQOo90NX5EV3XmNAlZ2Q
3tt2nefaEisi4LH7GggQUhi+mAY80bYV9jXz5uhjGN6u++jF3uRSidi+1Krx3tcHdH4AoPETHKQC
zXMLyDrjvFDSFQbkQsCCVhsbkEIMqPBXpdtWHUMeZGIBHXEwGEt+hiYRwd6sTDXxHDUtEke8isEz
NRjNfV3srI88wOzsoRfK9wemYtmbFBCgZMuIW24lIKyWFXfBgafj2zdbynbP2rfYw4bNxUCkQE3M
4MOIOVsAZCWWeZqa7tAb2hPileTteY0F5uu+KisrFSAug+MMCiI7cfgq3qXrjY3eAw63mZw6ulyH
TEFcGgdTyGqLnHCPk6Z+FN5xPNFkGoKLGbmlJHWp+4uVOofhz++E7ucUuZNODbOdwPjjjqSfcHCa
Z4ON3+duisq3erUCe8YbrgEdzQtD804ioJRFFPZuPGqld0fPgOZkbuGVW3dXuWGJ5idLi5aG9TyW
lN7H1N742xAudwpkrudaifJxHkEYQd9u4wCCVp892C2u0PFcmdt5pi/sJc+L8e8sJ0K8QMXCfmcg
9rE7JzrYLVGYUG9522SxNtI1/Drv3ha6EF1eMwnKHsNcAZ9FhGp0o6sZDQwKQhmV3qeyDFR3YFHi
UF1zXCbB9kY7hIPei4eeTlgn57XXpWxIf+rTzgGEDeD2vW/HbNNAHUrXNWzXQxvw5heEv4ibA+ys
DDJQIoYCAuB7H3SJSVR31rF58GrSSEvSMMN16fm0Y5MMpkIadT7j2quQVDT3/ho24xJqwn0veKsP
I4JWHLjRyisPs2+kOZ/3deBzX9B2OEoJ9VMv272efpTPa62EoFNMg1fmbBZqOCSuN5USjpdLPkJ8
0VWdpiSiwMRAGv+IbOir99xjbPmrNBVkiKatOoODOXOENB3iXPxRaWIvPsC7a+iKdiZw4XGfky/P
qjCjhBD1aeWaHwQ/ke/8RrkB28I/2JanGQpwWVLiFyfUT8aSBSos9fHg7tEtIHMOdvd93m0PqzhP
kQiT3LWHP05RJoR9agYyntQXAyJuuCLs7JV6rSyHKvVb8BrHZwqy8rIIY1sD5FcbeSzWEgNKobiZ
dqFhtRHUWanKM/S6GKulRhhL6pkPV+58QNm9cS18GbZkLzx8wxCJKGSqJUBsbOu8oeL+UELWHCPG
8+3sbxCbSyTDYP6kItq3uHB2YZVOzPjC9rYW/4XtSbBaL39K/aQ/2jl/+2LtiCuoBVMvmxpy7o+g
sUCz24GTcZkcIO0XjGHCBXTQKYWNIVU+oULU2C/0UOYAYzvSrfRnJwy9N3NjIi+sgveAFORXdDDY
VPVOj8XHdAjul4aqHn9KL4zwJVAa5AHqsmCCacuNaSJqDMxX+Ho/ERQtCZ+igs8HGeRB95aYwbte
XbuVZAcUTUmOkEqXViycokMjq6nPkHnnAmROngbkPrG8V+ImrY+yz3dP9yXRZpmJCD4uW3PXR1HR
xsqaWWmbFJjm/2msDZVUTCD28lJ6bkGdZQQ59ry6gzv6BYy9KaQmCOpWVdVX4askDwpz1Cn9Bwe+
Xp/7OcjXGCMkE6bRlw5IKwRzrbzn1ir1BstBpF1+WXWyiAdBSIl7CpsS0pVYOq/Fuuy1pKqsz1LH
SmL6XV+RXoH+u/DAQK0QpQ2QgGAu7qm2JI3WYD5DrzTJGEdu48z6b/VM9ja3xvI+kbS+4ewQb5Lf
4J70cVTJA+A/JMgLti2YI82WiRsgEbuczwfJfAKBrQt/nKoIIqrHgQDBZ03qckU/WOzJVPb9efvc
M6JtoS0m0OjnlFE5+mr2InCZ9NChq1nV/fEh+grUDdiYGSpSkXkd0E8fo9AYwdz+B4C2fnj+dWpU
IGJohhQY1uvDUYTwgJQhs+6yhc0Xm7MeB5U85wcTmewTpFyvEmCA1Mw0VfeWsMrlnk/tT6snCuEQ
rmEW9Wutawyk+uz1WaI3vwzf96O08DFsB/mg8HgnAKSyiqpF65SLSsxXLutt1Vc7br5F0R1Ri/Dd
aORyUKwCz3StfNs8+++otwMSwc1Vm1Ef7aSwnEJvPyxZxi9+hmBrKvEUSWnJr42el7ifBZSvLkyS
9bl8lws1/3ppd8nTcE+QBhR9cH7R59XYZlnYZ+qaKZcEBNL492N62Ivwzk5dZ+cg7K0cMChk8Vzo
CGv6mKJn8mFSiAlWvG27oJpMeVCqZk0l+kOOvmxvmk6ygEFKCctBJcb8P6zxWw4BZPRiWC6UEEf3
aog1BK7Ga0ALo7pGklN1CUa20EczSOOJkJGVsteLy2G+/3J9OJz7zrF8HNvVuYTX25WEEnp9quLa
IY4cM3DhgJ39YygV1+/dBVFbR65V5H48tkEY3IDHBILfXVKSHyAK0A36ra07kViOB+m4eUHBIyza
ZPRgKJcEp0g09I+mTfHrvhcnqhvNJOqIETL60gFovdOl3kymAjoqQLi2Jq4E5vMKIUyNL8CExnJl
iJyFl8/z4hIIMEDTQI1bk4/la1WTJLfgaNguu+URTHONsSEuNkY6cg9xeyeZh7L6EUpEaYCRHe03
CXaUIp/Njqh0UMqtQF0hSokJQN8uEjxanznWt33/azjB/VoMmJyDoz6gdsWExGpERSigXojRsS6O
CEGuc0nApIQsIEQLsm16Xq8I3SzzLIPfM2s9cFTganq4H7xio5vSdFaUUsFIW0sCpEV/edgDzH2o
dswZH9hGeV6uRUvcnegdMuA0hznHBIOQZg6C0CdMtvoiE2q7/z7+D3dTdg94DhCFftV570L4yutD
9HlynAQSLIEqO71Ki3obBpIZm837SY+o2F+CwRKcp5LRGcA1YyP8Im26NSl0r7dJ0EeQ7QFJuLBk
//xnxr84icBrsvT7wRZzMJs9BTz946V+5BZWYAOfgHIl/l4QVhz+o444anfeR3KB6/ZsRpEs3VGB
65OU5k4/1gpbyQF0asPUrBRko6MKi1fl2rABoxxsfh8CPDPlMf9cY5MKZGVJ3GgRx8iYIfG3qARL
MXh1EOvo2rDl261K2106cG9QEEEb8MuBjDE+2vhx7bmr93QpBWwmDR5uoLClF5hhbK65i44hhSc/
qmvQWg7ECVrLFAICgRTzocB3fH/dsAgfF1EGpn58q7N3eF+yQ3l/CeuIQO0nKe2IvHODIHLGe3C4
KG9nvLbZz9Iqre+lqV1+u3cyFwZLn2m7U8U21zlV4RyzShm/ISSDVzwBJKEI8P6CJ6fsbM/thaWN
UKcj/Uj7KEd4c1OcpC2TLrSyWQuHZTUBtFPZqWNhY5osPRKMYidY8IA56SJuHrj+NKolHdH+afc1
uq4RhBSEUNtymOS+lDZFSo31WWDGTHvqkDc3rs5HLc2k2K+Gzf7+cfzMiJ3uQxGcN2oNq4Ko+pX1
Ml4vf1lkiThbS2r1eddXsAyQMrc8KKohbzorUcbTte4mb5+X6jzoGAjkNRkKrFyOVCta15RWw5Ty
F0y0BNcwShO8ZciBAThyrZ+wZ5f3tvsS5NBstQmc4JbPV+ccQqsszxpKRCBBtXg0V5J+y2M5PMmy
PKHUPOfS1JhFNJcUfAF3J8Gok/S8LlYv+0lBn6RRfJUf49ZeLqvuBJvu/eV6RUHUiyJzXO0oHF5o
i5JTo676u+dFVpFJZ/ujUzzCVSwXoTOhKnpTzvQ9KvLkiQ3Qz98ztBlfFqewHtZwCUMgXdz3he5y
eVITk9iz0n+o26Xkmt+ptu01Y286aYbfqHUNfnm3yEl5nFMY1Xf8J0YhDCJfBJVqAndJisW8py6Z
LKluTGadDs6bYVHGfi1UGX4CgDlL1Nf/2gO01fzekt3SDagV458aGlyd8OHsnzjuztC2H1KtJNK5
FHMTaWjt0cCocHJDmnoTDcwypv60ITYacNzT4cUy3ox8xGSwtn4XJSvAW4GsxRnFZiv3NqMoQViK
rg15WCbomSrZCba+2dPas7sG+RpPnq6cL8dE7WnOLU+B0Zv5rJskE7oofgB9EKxzk3PiJziwazGL
hz+i3v/5IXWb8+mZIwFzVqkfA6oWOqzJu2gBGsSTuHG7K/VrHKAgXrEXebsh/S0+sE/Wi8wq158M
lEvrMM6OCCKghWrs1ZL51vUbp/MNDO9qK/NPYHChIkhtN3zpCje8E7UMCsqa4SwF6MbOR28v5A2C
So+pb8+gZiz49mtDq3C/eTddL6H2XmDqrrQBdoJDPNWHRLiq/vvxvzF4csLyZbc16XLeQEK9bI+Q
Yp40ReLC+yCtEwoB8wnyrzgZoYI4yd/PKODf5NEJ7tsMUzYAPDXv6R2fVVVzuxDIR8UZyeOBlEEz
3++o1TasUSfuAkl9OoFAuqR0X4XTrs6XYnu7KHg7uDgwG7uJGIs5KqyTTDGucGkhLcHGfRb4Akzi
l9ymdTHVAprDsljwvNZa9GZDtPypJ1sTlsHS1pDE7yi3PE2PZvyv323FaD6xKzdg28mcafGP2Sl7
KaNFH9M3mMBOrBiSYwZYEw7FAgIq355JvVDX0W7Fv4n6iun7nry+yUa1jRp6P51jjty7UFK1cFem
FNutIifIxjDsgPSFus3VPx4Y68kv4YSs3mlzTUmUlj4y3bIbpMCnJgW+AzJGTVBAGqu042hRsRuK
Ei3KQ33KQ5TT+KNYFZOE3sB2l1KQCvlIjcu1Igq5vh0ZJv53NRLVcSjtLsjQU/w36IoT/aX20uXg
zQbnjsLV8bDfHmQmxZXdkjLg0AXTMdtlUeKur6L4fRcu6bsfnGE5uXXe96i4no0V2brIjuxC+qAW
SPHuW/7pdtyspcTciCKDAfsdeA25xFMhG/ThyIOEcfIk+1h/Ove6OBfiI7lJKZSjku5FY6++xyqw
ygTZqAHI9bgBg5RS90FEy2FAQLnjp+0KyxPpIYzMuIKVd0+gl4yRJ5ZkbWRUT+zARF54mU6mueVQ
Cn4vRefndXgM4IhySjYvTKESqzpuUy3i3hd7+q2fExNSlYPPL/EUItScdq+H7TDPSPC23hp0V8mP
9eZ1/cWEp5sZ/yM3Bj2qxHFCbepRLoWQxOrluuauC7SUiXCrEbjEubzNXC3h51eM1ahZEUs9/vl2
Dol/Ro/vQ9K8eOAEqSGYy1OGsWGEw2eF7joEzU48JBK3c4lMSkeUJqf0fMqM5gqnzmrsklXtRffr
nDMuhVKz/kBrQXQu5eXPUi88bkRdRiaWKj1z7mj9BtBkYXIqaT2CemhstitQ77to3YiHlaqpAFZW
MsRHiDy8ImkzP1EBYSlfcJbWXmmbkJkYVzQ5T1P1LIDmT+BWUvDuTrl4mX2W34NFAgfa5cc55ilY
KU3lFqDkH1vA2HY3RVemfvX7RsdWX1nZSwcHM9kpU4OBSjubUgWZU/tInM8j0H2SlvXx1krRYII3
q6Sw07lfZvssHEpJ2nnx6mZotN6rrJBnjJYnCCS0MYOibUfoCWcJLW38hci6KuTx7og7OTft9bVP
Vb8EnZgIJ9hhiHIi8+Vq7Zwz0hAEd3OeCOfMgIRoSnc/NREd4ENMEfzgTSr02hYIl3d9B94/tHE3
z+chbHEcSx2slJ/w8zSJV/CbS858vjLau49gtQU6mkM5kZCFNLuNMcKivs9R+3QdXDphgECswcrS
S3mFsFINZUfIJCDoWSeeX1XyFp5974gjOi99QPp5y4vl3PGKOczO+QNsIsF+0Egru/Ixje2JTMWG
85xjb1WMmPSlcME1kNBy1A17wxunqz30Lciz4pVm/iegum4Yl7u7hXCe1V2YLmVQpGaaeZY1Y5K+
ifEFuVDgJFjP7rsqFIiW9rlXFnX3ZirnjiPFsJ5inWTXlFXj4MZJLUddyHETvMI9l95Pxzd/LPGB
5FBQAiMNoOLKZYZ7RQZFITH/9/DBW0E6Wr/4QxfkoXZ2YazL+biDWu+wG9LpMWPjy/Ns90eaU/1v
zyYo6E3SndT42Q+pE+hkbunANib9W7FnH2usKl3UIo63vWXKcoJFgPTuTyI5oH4r0CT+itJ8FNI5
Cmk7n6CxbQ+MSe0Kvdc95vURNwzCgJ38rWF4IDqoO+JTrW1xjEZwfdusuDlAawFViXx66sQUzOAp
22nh8yU1TR1x5oEcX8dd0PQ/n6N+1ziXacO0ibrhc7T8kHs7DY/5+I880IqMA7MVAp9j6fc+qjEg
0+/V/tt92bJuPGQQcyT9aictBVWijijO9c5DGWxY970cPhyRvDv0gabHhtG18YhCvESHZ0ItPx1V
l5pP9wkfRRY95eFpI0usGkWpc/uPPZpvR1D1ClSV2BcTYwY3oHn+BkyKbf9mfU/ITAXbhMBsfRDC
dKGHpb1BBpam6BqeW5klBIAjRufumBz4IoDUnU8hA8xM4lpOyp1e8Il9EeeHfnEcQ1HzyP3vVrlT
YEVdoGPz/gngp+UvwoiYoch8jN7ONUal21D7hhn6uImp14bYkGGR1NM2GrgPPVUNcSdNgOneYYMD
zFBjfG6ElvCw0LubfSHZZzw/LLlybXlrdYo52UEp6cECRdA6XNRCaqwRmsPZOC0rZFwefAaSezg+
0hk3TcJjvQkrJST8akL2DXAbso3C8GTeqBeu7DBAqaknB3iLuIBWxk1W0xrox6WHQ96J4WI+N34k
iQS2HlSYrsJ3c/qPLUiMtSmnyxBVVTdcxS/xdPVFcs9kjYCOWZpodtFtM+PDAdDCY0qMrU+0Aw52
CU5dc0Xoi7NEoJad5VQb2fpzlseQyS2bPuIF08q4bVQ7yLPFnGbye9Mhoyz/idsizs8Dx31+E+Dw
kW5H42J49Lxrmrn85wjjHq28FMU909+WkFDmYuH0G1RCP48Y0bmU/HBdyBMgknTFklMxf6/onhmr
RoRk/ntIMfCLwvoPteb3eyMa7DAizCZYj0Q5v1CONPb0hWWJ3eESGZsiw3cC9OpjazwFgVYPcL4p
6zow7pu0rA5dMpTtizOzLJN+xBNauPTGZelv41SnYvNCY0j7Rn/+p6VUnJA3l/n+Rt9OMpoUIi4a
2e/jk6QiFbb5bAlACRMziQBBkYv+kdorfp7O/gy/47XGAwhR45ikUHPc23X3McOFedLKHkxuzkX7
JAaFwszQr8j+YAAC2AGeLV2rcpl7rwzmJ3kiZF8GO/4P/Xh7SUAVAQDM7WMCRoI3FRh9LHhbia3g
M+VRRuYKjzaOQ96MinMDX/PEtYDoKYacdIjU2sxnz1vBAsV2t0WZ8vfKAdU01WgbEcjbF5PgT/+e
tXj6WqgMC0VZXPMNZz6fjq74IXxHDoDpuPuituDo4sOo918KkqfUXh0mH4Pf+oYkoVy9zrZNJ3mn
diuBWCtbvUMv450D3VFAPD1bjGHJkSvXYlYZKLlnu6whccI4g6cfv2OqxqbnG967jLvBAAcPHwtg
52IJD9LAJsmi9Z6Ab4LiCcjxoyaLCsqFv9s6rIwdb110Rb1qio++T8Epy5Is4FmTZdnI1iO8cp8T
iz+ewusLw1zxqkbI7q4AOAjRF9MMMICEMkU6XhfDg/o1lsf+bxm0CIrkuu1TvvbiGPyprL3cLbZ+
cEULvoMv9l2TqjCEZ6JPcjzdlHN+DSf23CI6elnegMmlHE6Ub3iB6l4sVcnMZNS5skgOyla36Ig2
77j3Vm2ATuAsqhBnjqI+e0Q5hwBVO8xvndcd69Z7QL1vKHGkvUKU1E5dYTMZbYt9JzTCw03ADsF1
p1/VeHDW2eY3nKs3HKxH805CTzQniZNX8iXJtKV2JKtBoG4fzxIV86P6GQsjJoDyHTnGYe3EJ7Zq
DNqv2woAL0rLFjQf5bMRzl8F18ipXVAelP4k+8tMzDJ0oLaQZoWVcyk1koi+/9/h4rQzM/2QrcGo
ge0VBpf23Ti4URKd8F7MB4NnHNk9iact5/xSzSC2Haaffte+ni0Hkpe12VAVt0FHngP+cgKFuyG6
UBEGhX33r07jIxcZx8ycUoQ7YApaSGS/bgtkZZJnArGOZC22Xzi1Afa3Yjlu9DU3kLrWKCH737de
PrkM59GMMuJvIdycJpRB6IEJJicYUXdFY5/JkHIxOD/aKUCAuActKVaPVXiCrdTnAlD7zy5j2sLU
qq2NKMeyovm2lhVghg28/G7m0/9jHg+ZX9i8173roc+uYc1SuyM/w+/H6Q0eRgEOlwpytTX3nI23
4wdWzsloSE/5ahlAUHasmp3QR4IK07YEaIjtm+4Vg+BN1c7YePHG4URgGMXgSnDJEwhRF+yz3fkK
ItVpZmqfpOuD8R3mTiM1T9necPqoC6dgc5EJkbpD+0EDcCgVJIfKZ06fV6s2mIycgBN6EbsWu7kj
LjugEqdFCOrETMowFwgjOpAnIbJGbHnuuqVsMZ/ybao4EMIZdEaDIkjQzSB4Vf0ZQLqlchWe4W0s
GS7FlggdICCTw1NY9kqEkgWpea8QezDSaTe5tSNwOBIfdoXK3gq1JaChPQCko2wRky3gB3TUMyIr
VTO0cAqFG5DiwLIr+gzCT6oxRDtzNRXI9k6hVDC+HZfABC2jXeB6FtpN2445Gi7fjEcBkd5Zov4n
xQyw6+Rsmj4/YKsGif3OscTDjcNHwlO8m5a6lfkeQEucy4FVN0D+Y2C/I48pqrAMdV9OJCjHeD8i
hGihEtx76XCfnkxBqgvznGcP5r70cAvai5bOpDK8FwhVM0iGB3UUUz536zj6U91fBEySISBbN+bB
wQ/WIfqXFtvupl9Z1YRk653IL4sJPP5dnSBcRqggG8BONR9XMUOMImihentG584wRO2w1vpKHlxK
YTySLJ5ITy2R2yl8BmSYeJkUkZU7Fh//2GD2lNwZrO1n6th8vTj1ScPol6Sz41z53ttlsq3w75Sx
6oSei+fw/3r0spiucppUIbIAk3x/PuF+mKMLcqmT3keKLwrcGnIfbGr4poyovVONEDZZrJ7wOHhL
L73CeL2JAxyxVHSxxWcCOzzTiXU+PKakwF+szKRXN3MuM5N0dVlj5TqHUohcjhLmk6xWBf/e0IxH
gu16LHjSJ81lQgcMZSTV9cfc0z8dxKcQ3w4gcFdtOBD0YumRgeeFiw2Zljzvljj42wZVorTU4a6v
0S5wvLhIMaoNDY208sLQTEB78Aqqr8nBSI3RuetvhLPsv8b3JbN0uT+RIr5BNPws/8rQOIvE/VpJ
ru9O+8oC8D8FQ52olfTb2d3+rrnkPFB+4uHCwkd9FA7jHJiebmnes4yO5xabzYLSHrTZ2yIqUQna
cZ+fMsZ6baIcdJHl7Ho77YqAtDnO+jo+jYdSrx5j5xI+aE+2iDx6hdJ1Tz4odYfy1NjVG1Q/+mz7
72P+rxUuXb2Qe4l7/M8eykBEkI3AROHiNKpMRC2dLrgW5fXo7OIyo+Sh36VxiMXpTyOJZik8ni/7
eaP8yz5qGt7vCCfaSTZZuBXtovHgnwAj6rKDRkQyy9kCzeC73EAEnZg6buQv1f+QlD7G0tZ5DUvf
wpoC2ogNJjzwpttjmwh41Ve49aYt37p3Oeny52dwRsr/65E0fBSTfM0jTW3xO4W0Aykka7+uiSib
MIaQOVBR0lLCjez/ZWohas+Ybu96lZWsK0cNtLy+gcDLnniPn83So0hGu0uWQhoKNbzeYq+ji5yI
+spFjvZ8EW62QL2lPFlW2UeBXQGME+zvi6ivhcAyc4eYjsC4ehvK0Shi45e802hSEFcuQX9wAC50
shSCehHOXEZu1+omGdX/MdDxttq0yuRFYrSk4XOuJ2hTplklewRsZmdrIGf5UHEajMubu0/3I3Nm
WIVbDmMlG10OWW1Di/KVPvEQybjYr0c9/+RqtuyTsB3cpbaeDlvyMAOONmdsbt0DFmUXCAQrftsi
F/FO25MPT/2GmfbOPChYLYWAN3k/3YcVTfm244KJ/6Gw8onkF/4Beql9JLcPSy0/ZXv9MVsqY66G
yGyv3OJm/Q/sRLmBE/AQJ2jKkHOKXEoWqSuAPjoCmh4M38k7IgDSZ9fAAhRJWs7lh9IvZf/Klahf
G8J6JiOAb78Ix0YMUWuSBdJmyf6FO0zaYbi9dTfjHvd99rT2iLC7KWzexEJdKO26suAVYORLjupv
0OJ7xwrN7lA21/wNkNDYLbmfME1zh7ZH9Yn9XD+i/APfCbXXE6mmleuirNQ1918BGOrxyxcVRygF
SOGhEcvhoGDAm02lMwUy7CiqpleVqXPW0TgBIxu7eqNlxocZT1cVT7nX5SNHSDtSdJVdvQHybBmT
P4X6C0AIQGfaWMSzU1prpCDDIgOqbSz1OYcNuOhyRSpYyK/rUVQV4cMx+BzKRW2bzcq++v1e6+yA
POhFeGcDPwioUjq1+xhMqGhpxUtw2CWz9+DBYBiCELBPuwZjvLLizzbhdRPSRrfJ2bpNyfCDH44c
g2VcTXF8v/3mP50q7aHJzaR0qYekidr38K/RuNaG+FWCoirFaLjnEfh7/HOpdxtIdGSSJ5N4trBc
g3GdDyUXOcrr0UoVh3UsMZyhqK6C8vvurLspPaswmN+nQxB8K5rCD+ZqnE9FnRm6JYPnMm2TNetP
sf9LWyo2RyaWeKH6zu93sWfb3hrlyCVAfvuxzK53dTE+i/h2/Obqx7b8+ensxQQSq7uNvRz72njG
oga02xh6RT6sael/bOl0zl0thKOZcXWPweunkSoogLHfBI5e98woOFqD2c4Os/DdNEKaitxMcotu
OXm6u0cR75K67VzXsnylw7sFZ1qgEOB2ktFilGEyWgCs9BBPf0htKeHwv8mM5zeMOd9hDOI1ZCXb
77MGnljkKFk6Bh4qsJMKalgmO/AdA5JSqa0c63Q2TzIbr2gFtmVjZu6e8e3nKu3VqxgPXh4F7JhA
ZBg5/SzcMpEm5lBI+IOv5Wd6dxGvXewUrxKhpyC1OiTMHhlKlrarOK8f+URZZbDTqOjc20B9ggqf
UO6HqEBOnEhEY/wOuJWsn8O+XgFv34wprsbZ7KNlwQf6oZ9lAjpeNsoN3N4/BC9u0Bs8Mac7qTrb
eoM+BLSP3c42W/7NhsWFbpu1MRfjmm2SvwNbrgpAsjrgHCYdSOlWEPkIYwrP8x2endQNAu4VNsfl
c8L6MoF9n/4XLViRfWw6hT54br+b1GJ9vBFFCa8XSdOKdqkP6TFWPs5LOluP5DFmvUwDFw+8aQHo
EXSmJaiM0MBYifa3XzGqvXyGVAF6pODo2WLbouz71xumaKmkFDfb1jDbBWrPM6fikDgvP8JicYaP
gGBzXx7F+T0o50hf7RlApCvdRAYwdB44yRQ/CWQ4ROKFnan0fDPbuKnJhGWs+pBjLLBs/PHY2JIJ
jrECDZgYLhKB+JNBt6upqRW6hXYqkgpVCmjShclHSKRnAg7o07sPhs2PALgxKo0iR0GpZ266zDHy
tf0LUlh3AgRPGV7KG20F1l+EfZG6HEAsjh4NKPihD8tWkkddfk0bocj4MYieKyACky6oCfMlKpRR
HkUsLeoxQcGKFe9fYAp9QsnFfeLrYikHSc73qDmJ46+vPt7W5BmDUWD3nJ6ciwi/oKSM5ZCYNbuy
kfIHWk7br6mMmTobRnQ2aIl9cGKqODNgVo0a/M84l1fxLJhaXdQjw5mZF+L8ysoGRKpcilXF5IeX
KXxuUZJE6qu2/hQaTw+txkwFCkusFJRb3MhZSe+TqHRZDkeb70wdP8lXjaEf7yZVVwhiQdjtqcIg
W6Xa5yQMPDLBo2F0Io1+eHXls2I70CykpSc72JL02pYgN075NHObfUgvtK0BEjEAauyEqPpPC8hF
UODmb7/ibwBDPKyHXN07pWcy2RPioHWzPnwilaGR8gCXGSAEY+Zdx6pWFasjuic8xkKM3sotFp/m
cs8MWCuhwZWW1DjyDPw6Agk/k8R1OGliknuUaRzfQtuSTGS4Uh0LM8wI11eJOFzTB489KEvqYd6a
YtwBhKlJb4r0NAGlQrbCjf12nLlSg1mAQTRit4Zh3/8f+QZlzRBlXOGi3ygYsmJo6tGh+bnpcPsc
rI/nhxuCf2RGsc0R2lGJE/rCvIREoALd7F1Rj1HKLI6AhljPPeN0OaWn+/1l+GEzHqRB7fBlNHM+
rj2EKdBVKt1v0sIkkFsmhzGKd5syQEaDtPf0p1/0v30rxCoUCQfsrnDOPDvuTk7xYHPADD7I7hqD
+u1Um0Ve3AUUfFE98gAQsF6HEaQOv8xYjXtYFIcKCQ7bGQ+49mHF/Btz/MOnbd2Zbe6vnSLW0tOB
gQq9RBJPbZegtLfntx6KGR+VYnf2AQNU7onlZ1jCWWgax1ejN4eyH8TRltNmxq4gMOTONYaaTp9u
46kw3StKJk57bp/W0iJoCF2QLYWHku4rP9I9UmD2XR1k47HaejojAO3RvCplrguo
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
