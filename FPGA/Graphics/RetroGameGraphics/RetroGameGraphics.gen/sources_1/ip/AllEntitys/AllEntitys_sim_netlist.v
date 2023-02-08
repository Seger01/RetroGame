// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Wed Feb  8 22:35:05 2023
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
