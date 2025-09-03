// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Apr 13 16:08:28 2023
// Host        : DESKTOP-V1DGMLK running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_4 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20192)
`pragma protect data_block
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
96raDrvwly2xb47y5iY=
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
