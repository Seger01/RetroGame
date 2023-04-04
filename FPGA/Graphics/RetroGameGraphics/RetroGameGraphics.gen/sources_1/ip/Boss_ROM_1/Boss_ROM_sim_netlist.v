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
