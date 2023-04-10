// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Mon Apr 10 15:16:16 2023
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 25488)
`pragma protect data_block
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
L9/IYbuBlXTN
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
