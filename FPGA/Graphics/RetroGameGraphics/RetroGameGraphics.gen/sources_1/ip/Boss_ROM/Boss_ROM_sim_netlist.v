// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Mon Mar 13 09:46:26 2023
// Host        : Big-Chinese-Export-Toaster running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/GitHub/RetroGame/FPGA/Graphics/RetroGameGraphics/RetroGameGraphics.gen/sources_1/ip/Boss_ROM/Boss_ROM_sim_netlist.v
// Design      : Boss_ROM
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Boss_ROM,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module Boss_ROM
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
  (* C_INIT_FILE = "Boss_ROM.mem" *) 
  (* C_INIT_FILE_NAME = "Boss_ROM.mif" *) 
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
  Boss_ROM_blk_mem_gen_v8_4_5 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 25472)
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
