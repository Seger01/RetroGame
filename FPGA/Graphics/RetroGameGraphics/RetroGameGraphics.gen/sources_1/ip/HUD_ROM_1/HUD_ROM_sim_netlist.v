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
