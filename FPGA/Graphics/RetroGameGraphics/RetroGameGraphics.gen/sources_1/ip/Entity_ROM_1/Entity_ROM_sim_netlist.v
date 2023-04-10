// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Mon Apr 10 18:45:15 2023
// Host        : Big-Chinese-Export-Toaster running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/GitHub/RetroGame/FPGA/Graphics/RetroGameGraphics/RetroGameGraphics.gen/sources_1/ip/Entity_ROM_1/Entity_ROM_sim_netlist.v
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
  (* C_READ_DEPTH_A = "3856" *) 
  (* C_READ_DEPTH_B = "3856" *) 
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
  (* C_WRITE_DEPTH_A = "3856" *) 
  (* C_WRITE_DEPTH_B = "3856" *) 
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 25488)
`pragma protect data_block
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
SYOlCGgvfSMT
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
