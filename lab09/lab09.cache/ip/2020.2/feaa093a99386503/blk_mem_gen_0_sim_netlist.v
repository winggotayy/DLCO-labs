// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun Jun 25 15:40:02 2023
// Host        : PC8 running 64-bit major release  (build 9200)
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_4 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19616)
`pragma protect data_block
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
lLgEnSS8FUI=
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
