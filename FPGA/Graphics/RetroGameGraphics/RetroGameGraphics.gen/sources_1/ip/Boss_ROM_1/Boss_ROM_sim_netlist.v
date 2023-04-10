// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Tue Apr  4 14:13:17 2023
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
