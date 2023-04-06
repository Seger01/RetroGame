// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Wed Apr  5 10:42:12 2023
// Host        : LAPTOP-L296DK7B running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/coole/Documents/GIT/RetroGame/FPGA/Graphics/RetroGameGraphics/RetroGameGraphics.gen/sources_1/ip/Entity_ROM_1/Entity_ROM_sim_netlist.v
// Design      : Entity_ROM
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Entity_ROM,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module Entity_ROM
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
  (* C_INIT_FILE = "Entity_ROM.mem" *) 
  (* C_INIT_FILE_NAME = "Entity_ROM.mif" *) 
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
  Entity_ROM_blk_mem_gen_v8_4_5 U0
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
8Enw7wwhhSOf
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
