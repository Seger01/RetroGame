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
omnRQGLS
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
