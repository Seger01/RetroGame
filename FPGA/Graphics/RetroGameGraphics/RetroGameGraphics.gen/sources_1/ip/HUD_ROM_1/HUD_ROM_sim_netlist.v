// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Thu Mar 30 11:54:32 2023
// Host        : Big-Chinese-Export-Toaster running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top HUD_ROM -prefix
//               HUD_ROM_ Player_ROM_sim_netlist.v
// Design      : Player_ROM
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Player_ROM,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.1" *) 
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
  (* C_INIT_FILE = "Player_ROM.mem" *) 
  (* C_INIT_FILE_NAME = "Player_ROM.mif" *) 
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
