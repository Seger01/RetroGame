// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Mon Apr 10 15:16:15 2023
// Host        : Big-Chinese-Export-Toaster running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top Entity_ROM -prefix
//               Entity_ROM_ Entity_ROM_sim_netlist.v
// Design      : Entity_ROM
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Entity_ROM,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.1" *) 
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
  (* C_INIT_FILE = "Entity_ROM.mem" *) 
  (* C_INIT_FILE_NAME = "Entity_ROM.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "3344" *) 
  (* C_READ_DEPTH_B = "3344" *) 
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
  (* C_WRITE_DEPTH_A = "3344" *) 
  (* C_WRITE_DEPTH_B = "3344" *) 
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
Ql/rDeK/
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
