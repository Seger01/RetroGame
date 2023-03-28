// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Mon Mar 13 09:46:25 2023
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
