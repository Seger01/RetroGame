// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Tue Apr  4 14:12:34 2023
// Host        : Big-Chinese-Export-Toaster running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/GitHub/RetroGame/FPGA/Graphics/RetroGameGraphics/RetroGameGraphics.gen/sources_1/ip/Player_ROM/Player_ROM_sim_netlist.v
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 25488)
`pragma protect data_block
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
CudHxcBg1qUW
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
