// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Mon Apr  3 10:59:48 2023
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
lbqyztRiVw5F
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
