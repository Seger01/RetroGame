// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Tue Dec 20 13:43:26 2022
// Host        : Big-Chinese-Export-Toaster running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/workspace/VIVADO/ProgHw_VGA_V1.5/ProgHw_VGA_V1.5.gen/sources_1/ip/sprite_Football/sprite_Football_sim_netlist.v
// Design      : sprite_Football
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "sprite_Football,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module sprite_Football
   (clka,
    ena,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [6:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [11:0]douta;

  wire [6:0]addra;
  wire clka;
  wire [11:0]douta;
  wire ena;
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
  wire [11:0]NLW_U0_doutb_UNCONNECTED;
  wire [6:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [6:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [11:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "7" *) 
  (* C_ADDRB_WIDTH = "7" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.5432 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
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
  (* C_INIT_FILE = "sprite_Football.mem" *) 
  (* C_INIT_FILE_NAME = "sprite_Football.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "100" *) 
  (* C_READ_DEPTH_B = "100" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "12" *) 
  (* C_READ_WIDTH_B = "12" *) 
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
  (* C_WRITE_DEPTH_A = "100" *) 
  (* C_WRITE_DEPTH_B = "100" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "12" *) 
  (* C_WRITE_WIDTH_B = "12" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  sprite_Football_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[11:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[6:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[6:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[11:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20000)
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
