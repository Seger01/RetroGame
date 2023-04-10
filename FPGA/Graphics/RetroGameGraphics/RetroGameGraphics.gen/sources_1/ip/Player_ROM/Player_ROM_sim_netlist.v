// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Tue Apr  4 14:12:33 2023
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
  (* C_READ_DEPTH_A = "3072" *) 
  (* C_READ_DEPTH_B = "3072" *) 
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
  (* C_WRITE_DEPTH_A = "3072" *) 
  (* C_WRITE_DEPTH_B = "3072" *) 
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
a4qkLwhe
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
