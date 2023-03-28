// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Fri Mar 24 11:20:48 2023
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
  (* C_READ_DEPTH_A = "2064" *) 
  (* C_READ_DEPTH_B = "2064" *) 
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
  (* C_WRITE_DEPTH_A = "2064" *) 
  (* C_WRITE_DEPTH_B = "2064" *) 
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
OokhaCnv/7Kc
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
