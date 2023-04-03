// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Thu Mar 30 11:54:14 2023
// Host        : Big-Chinese-Export-Toaster running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top Boss_ROM -prefix
//               Boss_ROM_ Boss_ROM_sim_netlist.v
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 25184)
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
