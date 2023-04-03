// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Thu Mar 30 11:54:32 2023
// Host        : Big-Chinese-Export-Toaster running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top Player_ROM -prefix
//               Player_ROM_ Player_ROM_sim_netlist.v
// Design      : Player_ROM
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Player_ROM,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.1" *) 
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 25200)
`pragma protect data_block
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
BWPD+S0L
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
