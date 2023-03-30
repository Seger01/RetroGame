// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Thu Mar 30 11:54:15 2023
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
