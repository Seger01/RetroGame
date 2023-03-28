// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Mon Mar 13 09:43:57 2023
// Host        : Big-Chinese-Export-Toaster running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top blk_mem_gen_1 -prefix
//               blk_mem_gen_1_ blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module blk_mem_gen_1
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
  blk_mem_gen_1_blk_mem_gen_v8_4_5 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 25248)
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
