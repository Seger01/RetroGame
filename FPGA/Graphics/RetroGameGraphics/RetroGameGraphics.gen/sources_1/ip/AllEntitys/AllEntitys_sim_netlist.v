// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Thu Feb 16 00:03:33 2023
// Host        : Big-Chinese-Export-Toaster running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/GitHub/RetroGame/FPGA/Graphics/RetroGameGraphics/RetroGameGraphics.gen/sources_1/ip/AllEntitys/AllEntitys_sim_netlist.v
// Design      : AllEntitys
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "AllEntitys,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module AllEntitys
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
  (* C_INIT_FILE = "AllEntitys.mem" *) 
  (* C_INIT_FILE_NAME = "AllEntitys.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "3584" *) 
  (* C_READ_DEPTH_B = "3584" *) 
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
  (* C_WRITE_DEPTH_A = "3584" *) 
  (* C_WRITE_DEPTH_B = "3584" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  AllEntitys_blk_mem_gen_v8_4_5 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 25488)
`pragma protect data_block
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
nSqd/piK4w8P
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
