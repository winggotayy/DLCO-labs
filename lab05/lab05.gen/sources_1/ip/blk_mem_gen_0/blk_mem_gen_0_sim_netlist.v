// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Apr 13 17:25:33 2023
// Host        : DESKTOP-V1DGMLK running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               f:/lab05/lab05.gen/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_sim_netlist.v
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
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [1:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [3:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [15:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;

  wire [3:0]addra;
  wire clka;
  wire [15:0]dina;
  wire [15:0]douta;
  wire ena;
  wire [1:0]wea;
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
  wire [15:0]NLW_U0_doutb_UNCONNECTED;
  wire [3:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "4" *) 
  (* C_ADDRB_WIDTH = "4" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.87285 mW" *) 
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
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "blk_mem_gen_0.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "16" *) 
  (* C_READ_DEPTH_B = "16" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "16" *) 
  (* C_READ_WIDTH_B = "16" *) 
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
  (* C_WEA_WIDTH = "2" *) 
  (* C_WEB_WIDTH = "2" *) 
  (* C_WRITE_DEPTH_A = "16" *) 
  (* C_WRITE_DEPTH_B = "16" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "16" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  blk_mem_gen_0_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[15:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[3:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[3:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[15:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0}),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web({1'b0,1'b0}));
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20176)
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
