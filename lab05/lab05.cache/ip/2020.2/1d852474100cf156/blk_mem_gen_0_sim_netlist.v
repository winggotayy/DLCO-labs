// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Apr 13 17:25:33 2023
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
gdKG3GuLhaIHIy5QrAY=
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
