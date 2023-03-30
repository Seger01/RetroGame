// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Thu Mar 30 11:54:32 2023
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 25488)
`pragma protect data_block
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
3ANhTwyZUIg/
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
