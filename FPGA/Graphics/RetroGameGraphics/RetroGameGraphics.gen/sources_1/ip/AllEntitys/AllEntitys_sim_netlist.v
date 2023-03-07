// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Thu Feb 16 00:03:32 2023
// Host        : Big-Chinese-Export-Toaster running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top AllEntitys -prefix
//               AllEntitys_ AllEntitys_sim_netlist.v
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 25200)
`pragma protect data_block
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
NOH1KpMY
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
