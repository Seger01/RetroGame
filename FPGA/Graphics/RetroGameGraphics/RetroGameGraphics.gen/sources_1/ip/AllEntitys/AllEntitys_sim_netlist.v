// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Wed Feb 15 18:25:22 2023
// Host        : Big-Chinese-Export-Toaster running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/GitHub/RetroGame/FPGA/Graphics/RetroGameGraphics/RetroGameGraphics.gen/sources_1/ip/AllEntitys/AllEntitys_sim_netlist.v
// Design      : AllEntitys
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "AllEntitys,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module AllEntitys
   (clka,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [8:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [7:0]douta;

  wire [8:0]addra;
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
  wire [8:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [8:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "9" *) 
  (* C_ADDRB_WIDTH = "9" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.3768 mW" *) 
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
  (* C_INIT_FILE = "AllEntitys.mem" *) 
  (* C_INIT_FILE_NAME = "AllEntitys.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "512" *) 
  (* C_READ_DEPTH_B = "512" *) 
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
  (* C_WRITE_DEPTH_A = "512" *) 
  (* C_WRITE_DEPTH_B = "512" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  AllEntitys_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[8:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[8:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19936)
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
