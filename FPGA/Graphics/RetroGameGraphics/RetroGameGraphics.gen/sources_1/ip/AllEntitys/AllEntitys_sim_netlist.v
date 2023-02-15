// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Wed Feb 15 16:27:28 2023
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
