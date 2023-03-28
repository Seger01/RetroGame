// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Mon Mar 13 09:43:57 2023
// Host        : Big-Chinese-Export-Toaster running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top Player_ROM -prefix
//               Player_ROM_ blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module Player_ROM
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
  Player_ROM_blk_mem_gen_v8_4_5 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 25216)
`pragma protect data_block
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
gZGse1CK9/3jw4MKuP0ih24V5X8llA==
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
