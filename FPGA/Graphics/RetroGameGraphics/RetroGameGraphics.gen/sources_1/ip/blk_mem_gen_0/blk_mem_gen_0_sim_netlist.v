// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Mon Mar 13 09:43:58 2023
// Host        : Big-Chinese-Export-Toaster running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/GitHub/RetroGame/FPGA/Graphics/RetroGameGraphics/RetroGameGraphics.gen/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module blk_mem_gen_0
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
  blk_mem_gen_0_blk_mem_gen_v8_4_5 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 25536)
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
