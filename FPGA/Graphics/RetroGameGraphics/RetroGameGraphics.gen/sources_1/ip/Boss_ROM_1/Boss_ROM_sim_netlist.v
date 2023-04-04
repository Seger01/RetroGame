// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Tue Apr  4 14:13:18 2023
// Host        : Big-Chinese-Export-Toaster running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/GitHub/RetroGame/FPGA/Graphics/RetroGameGraphics/RetroGameGraphics.gen/sources_1/ip/Boss_ROM_1/Boss_ROM_sim_netlist.v
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
