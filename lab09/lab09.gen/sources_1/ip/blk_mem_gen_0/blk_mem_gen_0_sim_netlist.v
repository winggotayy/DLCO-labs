// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun Jun 25 15:40:03 2023
// Host        : PC8 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/DigitalDesign2023/lab09/lab09.gen/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module blk_mem_gen_0
   (clka,
    ena,
    wea,
    addra,
    dina,
    clkb,
    enb,
    addrb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [10:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [7:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [10:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [7:0]doutb;

  wire [10:0]addra;
  wire [10:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]doutb;
  wire ena;
  wire enb;
  wire [0:0]wea;
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
  wire [7:0]NLW_U0_douta_UNCONNECTED;
  wire [10:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [10:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "11" *) 
  (* C_ADDRB_WIDTH = "11" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "8" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.4513 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "1" *) 
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
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "blk_mem_gen_0.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1920" *) 
  (* C_READ_DEPTH_B = "1920" *) 
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
  (* C_USE_BYTE_WEA = "1" *) 
  (* C_USE_BYTE_WEB = "1" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "1920" *) 
  (* C_WRITE_DEPTH_B = "1920" *) 
  (* C_WRITE_MODE_A = "NO_CHANGE" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  blk_mem_gen_0_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(NLW_U0_douta_UNCONNECTED[7:0]),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[10:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[10:0]),
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
        .wea(wea),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
QGLtnqZzRetDH6gCWT4Js6wuLlZfrNx/VJp3sfR2NF+cxypO5AxN0oDKLJJtmdrtE/ueNDg+Qf7Z
TqBNRojORA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
B6Ger3hRvfjHkaJ+W8639Kl3TzC9TogLuklOXEiMNdc4Im+DjEUzxb3DKlzu0VW3zxZqjJ3+wsW/
LnRmPCESi5Y9eRJaLFXg79EMfoj4X+nTdHAP6yCfltBADKegZ12gpnB/8ey5yn2KA74LUtPC7jna
iyjqSfsWLGnz6UdXzwk=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BX+DxgMPRyZbYojCUR9Sk8Lq+3ZigBz4yMFHQkmurfdfDzyTPJCE827eGiPyTenK1QPVhEtf9g06
0BFXq/0COPuU1BWJwdkz1c4dE6/exDwhvEh+hPx3vRY6z8fDEf6aGVIXrHDvrmddehe7yMSIpo+k
aXHR06EEdfHCFY4TggYwhcJVXjkE+ApsVuyfmEfPmYjo8hCWyQyBsUWIOY03q1+MvUjjsmTwgs9g
fh5MY9ToaLfoJxPKdCpsqrBX4LJ+VDGFlAqIcqHTE2jCmPiToZAFXB7fzf1wDjFCBlJyFVDBGi0i
m+CouLSb7X1mvVhdDZgNrZDJMV688Bu3o54vew==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DaIU/Ddc8USbZ2mURzujJDWDH1JbHl5tFVOOQ2aVaUPIA71yyE38OXVLEtF8rNmujYH30nEeQ+FV
LVJ16aaHw+iiuaqorTM3K5KLohVlN+WlcEtSXHuPNHjw8ddqtzpaX7pH1zqZH+YmfCL5oaNLqDH4
rkBnUl0/Gm/hzSwKjYhXGQFYQ+gGP99OjXakzrAqZzp/Iq4gt+Z5902/JV9thd/isHQImJ0QyK8M
EKM579iPAfXGes2mbiNYHcvDmSPYmW1zlhOE++N1EKeea7j/msnKeyhlC+hGE4Xfn4TVvqgQexCT
rp/wS/MosY6WH1aKFQlFH2hEppA7KXUaQlvG+w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
XmWoAt4X8hrCJ5yTyug4ajJW5UhfkLNibzjihWzZ4Cr9hQSvWZoTc8rjGsLPbz6Le+/9iI5KxecS
eR0wiAO+G2IkwhZgVBeZdKoFnlnTVAyLjk9wMAFXNyJZM6b1NDbfXlPcUsC6JePvPlwwdWknkSsC
r3KvgkWAS+O3xvRmaNw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Hw3Y+rShKrXiUViyNU1/O2qv6TgheLHBnFMj1i9MUGrHYqh9pLfLYUgWR7S2vj4jv4S+Ks0BpP4p
dKEqVAFmTCfQNEUHaVcFPkOHgig6L4mhLY6HUUKJoRgiQepgLi/W3V+ZZPQSQFkB3CU4MsJzhXvR
yLcpDriZy8cnAHD87Zi5DrNGBzj3kigJeM0du6lCQbxtF5aEdoaNP+YTnIFtcqYhoYnswQlYt0sV
HKgFA8VzqzL5WYnpH7+1IKmFkJBHkyqHCa9wPK0qCKnxkuDj70YzPVqQ+cocdKU+/gNdpCOdZlci
F2HTxrgfrXndJru3TiDqu4UavqAe0MNuFp3t0w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XPVggoWL6aXz+MpODTOZhEUQDa0vfEnUDaYeEHXm2vGyqKJujN2c/FFAFBeBYdJATLsIsQ+BqoPc
pBbcFYXDBfOtFIW2dH6Y1OoD65KyJ/hAq8coa21kFgq4hFat5vzZ2iIfkCpTUr4vDZO7Xne8cZO9
WsHffoTCt5rS59wWm2b8I5R8Eh2TUbQg3RCyrcnD66cvcEnlXe1CNMQ4/loVJpA4IBinBf820Wjc
vw2fZbGI0jXC+ACSHOviH63Xwmn+aRV5Ppkup7IYoon/ieKapRQeASu3TTY37xSBXiInSdtMTzJ6
+4GfO4eSHVriCk/sWbuTBzfRzoSShrnHjzz5LA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
L78XuiswVcgO2gtebzL7SA9BC/jJGAM0v6S9pzmyqL+QYzRneiYeGyDmsW33jEVVSTuNjTXkBLY7
yTOKQruatwe4V0OLi6174saSAmPgerSV1GyLP7KhmusLV/N61avC9TPam+tekhKeE0tds4EnJ3et
4JdLh+SE4Z4pcuqCjB5MFneIYKKWDx7siU6oesAQtoSJOesfMchX63MhOjOHFP/ch+1gHv3T45hg
IGF7V7TrdREVE4f9631tlVJ1o2Dypsmo/76Itz5WCGlTMjAnWXN8IXxKN+PZ3dyt1wjrZm2P/td+
xiGszFnSLrRvw/HferwtSmRx8q0fiHZ88roGTw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kDX5kq2QEe25429T6vQqBCFvV1McKTJRYfK99ymVNK2GGvGLXSzgwJHwB2fj9rM0wme3zYYY0vQR
x+9F4L7KLlOVY6qY3LB59uDzyXBI3mMZaS905HXHJkdZHWtQWpfHhl27LqL+8FSluaD6F+KFfYOV
CwIOVuCIp/XjxFXpNBik7YiPt4kHOlDA97IXNLnYUn/g1csGqeNWce4UTne50ggWvLYGbTFGmTjT
N67TpUiGRVRCSv8Tax72GWFIMFZk3Tlp68ZUSQEybZMWX1U9XdMdtxfvNGhf8mi5jQJ2SupSzKu4
T/+53IN9T8aLePAiGBKKG1ZBj4y1ZyYA7XYvjw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19600)
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
