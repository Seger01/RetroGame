// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Fri Mar 24 11:20:47 2023
// Host        : Big-Chinese-Export-Toaster running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top Entity_ROM -prefix
//               Entity_ROM_ AllEntitys_sim_netlist.v
// Design      : AllEntitys
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "AllEntitys,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.1" *) 
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
  (* C_INIT_FILE = "AllEntitys.mem" *) 
  (* C_INIT_FILE_NAME = "AllEntitys.mif" *) 
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 25200)
`pragma protect data_block
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
PtJFGuZU
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
