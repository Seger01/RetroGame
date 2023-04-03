// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Mon Mar 13 09:43:57 2023
// Host        : Big-Chinese-Export-Toaster running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top HUD_ROM -prefix
//               HUD_ROM_ blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module HUD_ROM
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
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "blk_mem_gen_0.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "2304" *) 
  (* C_READ_DEPTH_B = "2304" *) 
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
  (* C_WRITE_DEPTH_A = "2304" *) 
  (* C_WRITE_DEPTH_B = "2304" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  HUD_ROM_blk_mem_gen_v8_4_5 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 25168)
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
