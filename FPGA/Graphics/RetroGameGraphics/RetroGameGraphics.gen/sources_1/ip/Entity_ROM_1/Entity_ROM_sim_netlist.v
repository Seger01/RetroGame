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
7I3++Ge9
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
