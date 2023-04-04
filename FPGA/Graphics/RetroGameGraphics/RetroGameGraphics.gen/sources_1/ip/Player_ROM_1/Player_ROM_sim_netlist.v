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
5pdmiSP8
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
