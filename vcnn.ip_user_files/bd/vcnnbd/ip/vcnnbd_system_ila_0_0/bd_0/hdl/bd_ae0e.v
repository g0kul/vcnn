//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
//Date        : Mon Mar 26 02:23:31 2018
//Host        : dots running 64-bit Ubuntu 16.04.4 LTS
//Command     : generate_target bd_ae0e.bd
//Design      : bd_ae0e
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bd_ae0e,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_ae0e,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=12,numReposBlks=12,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SBD,synth_mode=Global}" *) (* HW_HANDOFF = "vcnnbd_system_ila_0_0.hwdef" *) 
module bd_ae0e
   (SLOT_0_AXI_araddr,
    SLOT_0_AXI_arready,
    SLOT_0_AXI_arvalid,
    SLOT_0_AXI_awaddr,
    SLOT_0_AXI_awready,
    SLOT_0_AXI_awvalid,
    SLOT_0_AXI_bready,
    SLOT_0_AXI_bresp,
    SLOT_0_AXI_bvalid,
    SLOT_0_AXI_rdata,
    SLOT_0_AXI_rready,
    SLOT_0_AXI_rresp,
    SLOT_0_AXI_rvalid,
    SLOT_0_AXI_wdata,
    SLOT_0_AXI_wready,
    SLOT_0_AXI_wstrb,
    SLOT_0_AXI_wvalid,
    SLOT_10_BRAM_addr,
    SLOT_10_BRAM_clk,
    SLOT_10_BRAM_din,
    SLOT_10_BRAM_dout,
    SLOT_10_BRAM_en,
    SLOT_10_BRAM_rst,
    SLOT_10_BRAM_we,
    SLOT_1_BRAM_addr,
    SLOT_1_BRAM_clk,
    SLOT_1_BRAM_din,
    SLOT_1_BRAM_dout,
    SLOT_1_BRAM_en,
    SLOT_1_BRAM_rst,
    SLOT_1_BRAM_we,
    SLOT_2_BRAM_addr,
    SLOT_2_BRAM_clk,
    SLOT_2_BRAM_din,
    SLOT_2_BRAM_dout,
    SLOT_2_BRAM_en,
    SLOT_2_BRAM_rst,
    SLOT_2_BRAM_we,
    SLOT_3_BRAM_addr,
    SLOT_3_BRAM_clk,
    SLOT_3_BRAM_din,
    SLOT_3_BRAM_dout,
    SLOT_3_BRAM_en,
    SLOT_3_BRAM_rst,
    SLOT_3_BRAM_we,
    SLOT_4_AXI_araddr,
    SLOT_4_AXI_arready,
    SLOT_4_AXI_arvalid,
    SLOT_4_AXI_awaddr,
    SLOT_4_AXI_awready,
    SLOT_4_AXI_awvalid,
    SLOT_4_AXI_bready,
    SLOT_4_AXI_bresp,
    SLOT_4_AXI_bvalid,
    SLOT_4_AXI_rdata,
    SLOT_4_AXI_rready,
    SLOT_4_AXI_rresp,
    SLOT_4_AXI_rvalid,
    SLOT_4_AXI_wdata,
    SLOT_4_AXI_wready,
    SLOT_4_AXI_wstrb,
    SLOT_4_AXI_wvalid,
    SLOT_5_BRAM_addr,
    SLOT_5_BRAM_clk,
    SLOT_5_BRAM_din,
    SLOT_5_BRAM_dout,
    SLOT_5_BRAM_en,
    SLOT_5_BRAM_rst,
    SLOT_5_BRAM_we,
    SLOT_6_BRAM_addr,
    SLOT_6_BRAM_clk,
    SLOT_6_BRAM_din,
    SLOT_6_BRAM_dout,
    SLOT_6_BRAM_en,
    SLOT_6_BRAM_rst,
    SLOT_6_BRAM_we,
    SLOT_7_BRAM_addr,
    SLOT_7_BRAM_clk,
    SLOT_7_BRAM_din,
    SLOT_7_BRAM_dout,
    SLOT_7_BRAM_en,
    SLOT_7_BRAM_rst,
    SLOT_7_BRAM_we,
    SLOT_8_BRAM_addr,
    SLOT_8_BRAM_clk,
    SLOT_8_BRAM_din,
    SLOT_8_BRAM_dout,
    SLOT_8_BRAM_en,
    SLOT_8_BRAM_rst,
    SLOT_8_BRAM_we,
    SLOT_9_BRAM_addr,
    SLOT_9_BRAM_clk,
    SLOT_9_BRAM_din,
    SLOT_9_BRAM_dout,
    SLOT_9_BRAM_en,
    SLOT_9_BRAM_rst,
    SLOT_9_BRAM_we,
    clk,
    probe0,
    probe1,
    probe2,
    probe3,
    probe4,
    probe5,
    probe6,
    resetn);
  input [4:0]SLOT_0_AXI_araddr;
  input SLOT_0_AXI_arready;
  input SLOT_0_AXI_arvalid;
  input [4:0]SLOT_0_AXI_awaddr;
  input SLOT_0_AXI_awready;
  input SLOT_0_AXI_awvalid;
  input SLOT_0_AXI_bready;
  input [1:0]SLOT_0_AXI_bresp;
  input SLOT_0_AXI_bvalid;
  input [31:0]SLOT_0_AXI_rdata;
  input SLOT_0_AXI_rready;
  input [1:0]SLOT_0_AXI_rresp;
  input SLOT_0_AXI_rvalid;
  input [31:0]SLOT_0_AXI_wdata;
  input SLOT_0_AXI_wready;
  input [3:0]SLOT_0_AXI_wstrb;
  input SLOT_0_AXI_wvalid;
  input [14:0]SLOT_10_BRAM_addr;
  input SLOT_10_BRAM_clk;
  input [31:0]SLOT_10_BRAM_din;
  input [31:0]SLOT_10_BRAM_dout;
  input SLOT_10_BRAM_en;
  input SLOT_10_BRAM_rst;
  input [3:0]SLOT_10_BRAM_we;
  input [11:0]SLOT_1_BRAM_addr;
  input SLOT_1_BRAM_clk;
  input [15:0]SLOT_1_BRAM_din;
  input [15:0]SLOT_1_BRAM_dout;
  input SLOT_1_BRAM_en;
  input SLOT_1_BRAM_rst;
  input SLOT_1_BRAM_we;
  input [12:0]SLOT_2_BRAM_addr;
  input SLOT_2_BRAM_clk;
  input [31:0]SLOT_2_BRAM_din;
  input [31:0]SLOT_2_BRAM_dout;
  input SLOT_2_BRAM_en;
  input SLOT_2_BRAM_rst;
  input [3:0]SLOT_2_BRAM_we;
  input [8:0]SLOT_3_BRAM_addr;
  input SLOT_3_BRAM_clk;
  input [15:0]SLOT_3_BRAM_din;
  input [15:0]SLOT_3_BRAM_dout;
  input SLOT_3_BRAM_en;
  input SLOT_3_BRAM_rst;
  input SLOT_3_BRAM_we;
  input [4:0]SLOT_4_AXI_araddr;
  input SLOT_4_AXI_arready;
  input SLOT_4_AXI_arvalid;
  input [4:0]SLOT_4_AXI_awaddr;
  input SLOT_4_AXI_awready;
  input SLOT_4_AXI_awvalid;
  input SLOT_4_AXI_bready;
  input [1:0]SLOT_4_AXI_bresp;
  input SLOT_4_AXI_bvalid;
  input [31:0]SLOT_4_AXI_rdata;
  input SLOT_4_AXI_rready;
  input [1:0]SLOT_4_AXI_rresp;
  input SLOT_4_AXI_rvalid;
  input [31:0]SLOT_4_AXI_wdata;
  input SLOT_4_AXI_wready;
  input [3:0]SLOT_4_AXI_wstrb;
  input SLOT_4_AXI_wvalid;
  input [11:0]SLOT_5_BRAM_addr;
  input SLOT_5_BRAM_clk;
  input [31:0]SLOT_5_BRAM_din;
  input [31:0]SLOT_5_BRAM_dout;
  input SLOT_5_BRAM_en;
  input SLOT_5_BRAM_rst;
  input [3:0]SLOT_5_BRAM_we;
  input [13:0]SLOT_6_BRAM_addr;
  input SLOT_6_BRAM_clk;
  input [15:0]SLOT_6_BRAM_din;
  input [15:0]SLOT_6_BRAM_dout;
  input SLOT_6_BRAM_en;
  input SLOT_6_BRAM_rst;
  input SLOT_6_BRAM_we;
  input [13:0]SLOT_7_BRAM_addr;
  input SLOT_7_BRAM_clk;
  input [15:0]SLOT_7_BRAM_din;
  input [15:0]SLOT_7_BRAM_dout;
  input SLOT_7_BRAM_en;
  input SLOT_7_BRAM_rst;
  input SLOT_7_BRAM_we;
  input [9:0]SLOT_8_BRAM_addr;
  input SLOT_8_BRAM_clk;
  input [15:0]SLOT_8_BRAM_din;
  input [15:0]SLOT_8_BRAM_dout;
  input SLOT_8_BRAM_en;
  input SLOT_8_BRAM_rst;
  input SLOT_8_BRAM_we;
  input [14:0]SLOT_9_BRAM_addr;
  input SLOT_9_BRAM_clk;
  input [15:0]SLOT_9_BRAM_din;
  input [15:0]SLOT_9_BRAM_dout;
  input SLOT_9_BRAM_en;
  input SLOT_9_BRAM_rst;
  input SLOT_9_BRAM_we;
  input clk;
  input [0:0]probe0;
  input [0:0]probe1;
  input [0:0]probe2;
  input [0:0]probe3;
  input [0:0]probe4;
  input [0:0]probe5;
  input [0:0]probe6;
  input resetn;

  wire [4:0]Conn1_ARADDR;
  wire Conn1_ARREADY;
  wire Conn1_ARVALID;
  wire [4:0]Conn1_AWADDR;
  wire Conn1_AWREADY;
  wire Conn1_AWVALID;
  wire Conn1_BREADY;
  wire [1:0]Conn1_BRESP;
  wire Conn1_BVALID;
  wire [31:0]Conn1_RDATA;
  wire Conn1_RREADY;
  wire [1:0]Conn1_RRESP;
  wire Conn1_RVALID;
  wire [31:0]Conn1_WDATA;
  wire Conn1_WREADY;
  wire [3:0]Conn1_WSTRB;
  wire Conn1_WVALID;
  wire [4:0]Conn_ARADDR;
  wire Conn_ARREADY;
  wire Conn_ARVALID;
  wire [4:0]Conn_AWADDR;
  wire Conn_AWREADY;
  wire Conn_AWVALID;
  wire Conn_BREADY;
  wire [1:0]Conn_BRESP;
  wire Conn_BVALID;
  wire [31:0]Conn_RDATA;
  wire Conn_RREADY;
  wire [1:0]Conn_RRESP;
  wire Conn_RVALID;
  wire [31:0]Conn_WDATA;
  wire Conn_WREADY;
  wire [3:0]Conn_WSTRB;
  wire Conn_WVALID;
  wire [14:0]SLOT_10_BRAM_addr_1;
  wire [31:0]SLOT_10_BRAM_din_1;
  wire [31:0]SLOT_10_BRAM_dout_1;
  wire SLOT_10_BRAM_en_1;
  wire SLOT_10_BRAM_rst_1;
  wire [3:0]SLOT_10_BRAM_we_1;
  wire [11:0]SLOT_1_BRAM_addr_1;
  wire [15:0]SLOT_1_BRAM_din_1;
  wire [15:0]SLOT_1_BRAM_dout_1;
  wire SLOT_1_BRAM_en_1;
  wire SLOT_1_BRAM_rst_1;
  wire SLOT_1_BRAM_we_1;
  wire [12:0]SLOT_2_BRAM_addr_1;
  wire [31:0]SLOT_2_BRAM_din_1;
  wire [31:0]SLOT_2_BRAM_dout_1;
  wire SLOT_2_BRAM_en_1;
  wire SLOT_2_BRAM_rst_1;
  wire [3:0]SLOT_2_BRAM_we_1;
  wire [8:0]SLOT_3_BRAM_addr_1;
  wire [15:0]SLOT_3_BRAM_din_1;
  wire [15:0]SLOT_3_BRAM_dout_1;
  wire SLOT_3_BRAM_en_1;
  wire SLOT_3_BRAM_rst_1;
  wire SLOT_3_BRAM_we_1;
  wire [11:0]SLOT_5_BRAM_addr_1;
  wire [31:0]SLOT_5_BRAM_din_1;
  wire [31:0]SLOT_5_BRAM_dout_1;
  wire SLOT_5_BRAM_en_1;
  wire SLOT_5_BRAM_rst_1;
  wire [3:0]SLOT_5_BRAM_we_1;
  wire [13:0]SLOT_6_BRAM_addr_1;
  wire [15:0]SLOT_6_BRAM_din_1;
  wire [15:0]SLOT_6_BRAM_dout_1;
  wire SLOT_6_BRAM_en_1;
  wire SLOT_6_BRAM_rst_1;
  wire SLOT_6_BRAM_we_1;
  wire [13:0]SLOT_7_BRAM_addr_1;
  wire [15:0]SLOT_7_BRAM_din_1;
  wire [15:0]SLOT_7_BRAM_dout_1;
  wire SLOT_7_BRAM_en_1;
  wire SLOT_7_BRAM_rst_1;
  wire SLOT_7_BRAM_we_1;
  wire [9:0]SLOT_8_BRAM_addr_1;
  wire [15:0]SLOT_8_BRAM_din_1;
  wire [15:0]SLOT_8_BRAM_dout_1;
  wire SLOT_8_BRAM_en_1;
  wire SLOT_8_BRAM_rst_1;
  wire SLOT_8_BRAM_we_1;
  wire [14:0]SLOT_9_BRAM_addr_1;
  wire [15:0]SLOT_9_BRAM_din_1;
  wire [15:0]SLOT_9_BRAM_dout_1;
  wire SLOT_9_BRAM_en_1;
  wire SLOT_9_BRAM_rst_1;
  wire SLOT_9_BRAM_we_1;
  wire clk_1;
  wire [1:0]net_slot_0_axi_ar_cnt;
  wire [1:0]net_slot_0_axi_ar_ctrl;
  wire [4:0]net_slot_0_axi_araddr;
  wire net_slot_0_axi_arready;
  wire net_slot_0_axi_arvalid;
  wire [1:0]net_slot_0_axi_aw_cnt;
  wire [1:0]net_slot_0_axi_aw_ctrl;
  wire [4:0]net_slot_0_axi_awaddr;
  wire net_slot_0_axi_awready;
  wire net_slot_0_axi_awvalid;
  wire [1:0]net_slot_0_axi_b_cnt;
  wire [1:0]net_slot_0_axi_b_ctrl;
  wire net_slot_0_axi_bready;
  wire [1:0]net_slot_0_axi_bresp;
  wire net_slot_0_axi_bvalid;
  wire [1:0]net_slot_0_axi_r_cnt;
  wire [1:0]net_slot_0_axi_r_ctrl;
  wire [31:0]net_slot_0_axi_rdata;
  wire net_slot_0_axi_rready;
  wire [1:0]net_slot_0_axi_rresp;
  wire net_slot_0_axi_rvalid;
  wire [1:0]net_slot_0_axi_w_ctrl;
  wire [31:0]net_slot_0_axi_wdata;
  wire net_slot_0_axi_wready;
  wire [3:0]net_slot_0_axi_wstrb;
  wire net_slot_0_axi_wvalid;
  wire [1:0]net_slot_4_axi_ar_cnt;
  wire [1:0]net_slot_4_axi_ar_ctrl;
  wire [4:0]net_slot_4_axi_araddr;
  wire net_slot_4_axi_arready;
  wire net_slot_4_axi_arvalid;
  wire [1:0]net_slot_4_axi_aw_cnt;
  wire [1:0]net_slot_4_axi_aw_ctrl;
  wire [4:0]net_slot_4_axi_awaddr;
  wire net_slot_4_axi_awready;
  wire net_slot_4_axi_awvalid;
  wire [1:0]net_slot_4_axi_b_cnt;
  wire [1:0]net_slot_4_axi_b_ctrl;
  wire net_slot_4_axi_bready;
  wire [1:0]net_slot_4_axi_bresp;
  wire net_slot_4_axi_bvalid;
  wire [1:0]net_slot_4_axi_r_cnt;
  wire [1:0]net_slot_4_axi_r_ctrl;
  wire [31:0]net_slot_4_axi_rdata;
  wire net_slot_4_axi_rready;
  wire [1:0]net_slot_4_axi_rresp;
  wire net_slot_4_axi_rvalid;
  wire [1:0]net_slot_4_axi_w_ctrl;
  wire [31:0]net_slot_4_axi_wdata;
  wire net_slot_4_axi_wready;
  wire [3:0]net_slot_4_axi_wstrb;
  wire net_slot_4_axi_wvalid;
  wire [0:0]probe0_1;
  wire [0:0]probe1_1;
  wire [0:0]probe2_1;
  wire [0:0]probe3_1;
  wire [0:0]probe4_1;
  wire [0:0]probe5_1;
  wire [0:0]probe6_1;
  wire resetn_1;

  assign Conn1_ARADDR = SLOT_4_AXI_araddr[4:0];
  assign Conn1_ARREADY = SLOT_4_AXI_arready;
  assign Conn1_ARVALID = SLOT_4_AXI_arvalid;
  assign Conn1_AWADDR = SLOT_4_AXI_awaddr[4:0];
  assign Conn1_AWREADY = SLOT_4_AXI_awready;
  assign Conn1_AWVALID = SLOT_4_AXI_awvalid;
  assign Conn1_BREADY = SLOT_4_AXI_bready;
  assign Conn1_BRESP = SLOT_4_AXI_bresp[1:0];
  assign Conn1_BVALID = SLOT_4_AXI_bvalid;
  assign Conn1_RDATA = SLOT_4_AXI_rdata[31:0];
  assign Conn1_RREADY = SLOT_4_AXI_rready;
  assign Conn1_RRESP = SLOT_4_AXI_rresp[1:0];
  assign Conn1_RVALID = SLOT_4_AXI_rvalid;
  assign Conn1_WDATA = SLOT_4_AXI_wdata[31:0];
  assign Conn1_WREADY = SLOT_4_AXI_wready;
  assign Conn1_WSTRB = SLOT_4_AXI_wstrb[3:0];
  assign Conn1_WVALID = SLOT_4_AXI_wvalid;
  assign Conn_ARADDR = SLOT_0_AXI_araddr[4:0];
  assign Conn_ARREADY = SLOT_0_AXI_arready;
  assign Conn_ARVALID = SLOT_0_AXI_arvalid;
  assign Conn_AWADDR = SLOT_0_AXI_awaddr[4:0];
  assign Conn_AWREADY = SLOT_0_AXI_awready;
  assign Conn_AWVALID = SLOT_0_AXI_awvalid;
  assign Conn_BREADY = SLOT_0_AXI_bready;
  assign Conn_BRESP = SLOT_0_AXI_bresp[1:0];
  assign Conn_BVALID = SLOT_0_AXI_bvalid;
  assign Conn_RDATA = SLOT_0_AXI_rdata[31:0];
  assign Conn_RREADY = SLOT_0_AXI_rready;
  assign Conn_RRESP = SLOT_0_AXI_rresp[1:0];
  assign Conn_RVALID = SLOT_0_AXI_rvalid;
  assign Conn_WDATA = SLOT_0_AXI_wdata[31:0];
  assign Conn_WREADY = SLOT_0_AXI_wready;
  assign Conn_WSTRB = SLOT_0_AXI_wstrb[3:0];
  assign Conn_WVALID = SLOT_0_AXI_wvalid;
  assign SLOT_10_BRAM_addr_1 = SLOT_10_BRAM_addr[14:0];
  assign SLOT_10_BRAM_din_1 = SLOT_10_BRAM_din[31:0];
  assign SLOT_10_BRAM_dout_1 = SLOT_10_BRAM_dout[31:0];
  assign SLOT_10_BRAM_en_1 = SLOT_10_BRAM_en;
  assign SLOT_10_BRAM_rst_1 = SLOT_10_BRAM_rst;
  assign SLOT_10_BRAM_we_1 = SLOT_10_BRAM_we[3:0];
  assign SLOT_1_BRAM_addr_1 = SLOT_1_BRAM_addr[11:0];
  assign SLOT_1_BRAM_din_1 = SLOT_1_BRAM_din[15:0];
  assign SLOT_1_BRAM_dout_1 = SLOT_1_BRAM_dout[15:0];
  assign SLOT_1_BRAM_en_1 = SLOT_1_BRAM_en;
  assign SLOT_1_BRAM_rst_1 = SLOT_1_BRAM_rst;
  assign SLOT_1_BRAM_we_1 = SLOT_1_BRAM_we;
  assign SLOT_2_BRAM_addr_1 = SLOT_2_BRAM_addr[12:0];
  assign SLOT_2_BRAM_din_1 = SLOT_2_BRAM_din[31:0];
  assign SLOT_2_BRAM_dout_1 = SLOT_2_BRAM_dout[31:0];
  assign SLOT_2_BRAM_en_1 = SLOT_2_BRAM_en;
  assign SLOT_2_BRAM_rst_1 = SLOT_2_BRAM_rst;
  assign SLOT_2_BRAM_we_1 = SLOT_2_BRAM_we[3:0];
  assign SLOT_3_BRAM_addr_1 = SLOT_3_BRAM_addr[8:0];
  assign SLOT_3_BRAM_din_1 = SLOT_3_BRAM_din[15:0];
  assign SLOT_3_BRAM_dout_1 = SLOT_3_BRAM_dout[15:0];
  assign SLOT_3_BRAM_en_1 = SLOT_3_BRAM_en;
  assign SLOT_3_BRAM_rst_1 = SLOT_3_BRAM_rst;
  assign SLOT_3_BRAM_we_1 = SLOT_3_BRAM_we;
  assign SLOT_5_BRAM_addr_1 = SLOT_5_BRAM_addr[11:0];
  assign SLOT_5_BRAM_din_1 = SLOT_5_BRAM_din[31:0];
  assign SLOT_5_BRAM_dout_1 = SLOT_5_BRAM_dout[31:0];
  assign SLOT_5_BRAM_en_1 = SLOT_5_BRAM_en;
  assign SLOT_5_BRAM_rst_1 = SLOT_5_BRAM_rst;
  assign SLOT_5_BRAM_we_1 = SLOT_5_BRAM_we[3:0];
  assign SLOT_6_BRAM_addr_1 = SLOT_6_BRAM_addr[13:0];
  assign SLOT_6_BRAM_din_1 = SLOT_6_BRAM_din[15:0];
  assign SLOT_6_BRAM_dout_1 = SLOT_6_BRAM_dout[15:0];
  assign SLOT_6_BRAM_en_1 = SLOT_6_BRAM_en;
  assign SLOT_6_BRAM_rst_1 = SLOT_6_BRAM_rst;
  assign SLOT_6_BRAM_we_1 = SLOT_6_BRAM_we;
  assign SLOT_7_BRAM_addr_1 = SLOT_7_BRAM_addr[13:0];
  assign SLOT_7_BRAM_din_1 = SLOT_7_BRAM_din[15:0];
  assign SLOT_7_BRAM_dout_1 = SLOT_7_BRAM_dout[15:0];
  assign SLOT_7_BRAM_en_1 = SLOT_7_BRAM_en;
  assign SLOT_7_BRAM_rst_1 = SLOT_7_BRAM_rst;
  assign SLOT_7_BRAM_we_1 = SLOT_7_BRAM_we;
  assign SLOT_8_BRAM_addr_1 = SLOT_8_BRAM_addr[9:0];
  assign SLOT_8_BRAM_din_1 = SLOT_8_BRAM_din[15:0];
  assign SLOT_8_BRAM_dout_1 = SLOT_8_BRAM_dout[15:0];
  assign SLOT_8_BRAM_en_1 = SLOT_8_BRAM_en;
  assign SLOT_8_BRAM_rst_1 = SLOT_8_BRAM_rst;
  assign SLOT_8_BRAM_we_1 = SLOT_8_BRAM_we;
  assign SLOT_9_BRAM_addr_1 = SLOT_9_BRAM_addr[14:0];
  assign SLOT_9_BRAM_din_1 = SLOT_9_BRAM_din[15:0];
  assign SLOT_9_BRAM_dout_1 = SLOT_9_BRAM_dout[15:0];
  assign SLOT_9_BRAM_en_1 = SLOT_9_BRAM_en;
  assign SLOT_9_BRAM_rst_1 = SLOT_9_BRAM_rst;
  assign SLOT_9_BRAM_we_1 = SLOT_9_BRAM_we;
  assign clk_1 = clk;
  assign probe0_1 = probe0[0];
  assign probe1_1 = probe1[0];
  assign probe2_1 = probe2[0];
  assign probe3_1 = probe3[0];
  assign probe4_1 = probe4[0];
  assign probe5_1 = probe5[0];
  assign probe6_1 = probe6[0];
  assign resetn_1 = resetn;
  bd_ae0e_g_inst_0 g_inst
       (.aclk(clk_1),
        .aresetn(resetn_1),
        .m_slot_0_axi_ar_cnt(net_slot_0_axi_ar_cnt),
        .m_slot_0_axi_araddr(net_slot_0_axi_araddr),
        .m_slot_0_axi_arready(net_slot_0_axi_arready),
        .m_slot_0_axi_arvalid(net_slot_0_axi_arvalid),
        .m_slot_0_axi_aw_cnt(net_slot_0_axi_aw_cnt),
        .m_slot_0_axi_awaddr(net_slot_0_axi_awaddr),
        .m_slot_0_axi_awready(net_slot_0_axi_awready),
        .m_slot_0_axi_awvalid(net_slot_0_axi_awvalid),
        .m_slot_0_axi_b_cnt(net_slot_0_axi_b_cnt),
        .m_slot_0_axi_bready(net_slot_0_axi_bready),
        .m_slot_0_axi_bresp(net_slot_0_axi_bresp),
        .m_slot_0_axi_bvalid(net_slot_0_axi_bvalid),
        .m_slot_0_axi_r_cnt(net_slot_0_axi_r_cnt),
        .m_slot_0_axi_rdata(net_slot_0_axi_rdata),
        .m_slot_0_axi_rready(net_slot_0_axi_rready),
        .m_slot_0_axi_rresp(net_slot_0_axi_rresp),
        .m_slot_0_axi_rvalid(net_slot_0_axi_rvalid),
        .m_slot_0_axi_wdata(net_slot_0_axi_wdata),
        .m_slot_0_axi_wready(net_slot_0_axi_wready),
        .m_slot_0_axi_wstrb(net_slot_0_axi_wstrb),
        .m_slot_0_axi_wvalid(net_slot_0_axi_wvalid),
        .m_slot_1_axi_ar_cnt(net_slot_4_axi_ar_cnt),
        .m_slot_1_axi_araddr(net_slot_4_axi_araddr),
        .m_slot_1_axi_arready(net_slot_4_axi_arready),
        .m_slot_1_axi_arvalid(net_slot_4_axi_arvalid),
        .m_slot_1_axi_aw_cnt(net_slot_4_axi_aw_cnt),
        .m_slot_1_axi_awaddr(net_slot_4_axi_awaddr),
        .m_slot_1_axi_awready(net_slot_4_axi_awready),
        .m_slot_1_axi_awvalid(net_slot_4_axi_awvalid),
        .m_slot_1_axi_b_cnt(net_slot_4_axi_b_cnt),
        .m_slot_1_axi_bready(net_slot_4_axi_bready),
        .m_slot_1_axi_bresp(net_slot_4_axi_bresp),
        .m_slot_1_axi_bvalid(net_slot_4_axi_bvalid),
        .m_slot_1_axi_r_cnt(net_slot_4_axi_r_cnt),
        .m_slot_1_axi_rdata(net_slot_4_axi_rdata),
        .m_slot_1_axi_rready(net_slot_4_axi_rready),
        .m_slot_1_axi_rresp(net_slot_4_axi_rresp),
        .m_slot_1_axi_rvalid(net_slot_4_axi_rvalid),
        .m_slot_1_axi_wdata(net_slot_4_axi_wdata),
        .m_slot_1_axi_wready(net_slot_4_axi_wready),
        .m_slot_1_axi_wstrb(net_slot_4_axi_wstrb),
        .m_slot_1_axi_wvalid(net_slot_4_axi_wvalid),
        .slot_0_axi_araddr(Conn_ARADDR),
        .slot_0_axi_arready(Conn_ARREADY),
        .slot_0_axi_arvalid(Conn_ARVALID),
        .slot_0_axi_awaddr(Conn_AWADDR),
        .slot_0_axi_awready(Conn_AWREADY),
        .slot_0_axi_awvalid(Conn_AWVALID),
        .slot_0_axi_bready(Conn_BREADY),
        .slot_0_axi_bresp(Conn_BRESP),
        .slot_0_axi_bvalid(Conn_BVALID),
        .slot_0_axi_rdata(Conn_RDATA),
        .slot_0_axi_rready(Conn_RREADY),
        .slot_0_axi_rresp(Conn_RRESP),
        .slot_0_axi_rvalid(Conn_RVALID),
        .slot_0_axi_wdata(Conn_WDATA),
        .slot_0_axi_wready(Conn_WREADY),
        .slot_0_axi_wstrb(Conn_WSTRB),
        .slot_0_axi_wvalid(Conn_WVALID),
        .slot_1_axi_araddr(Conn1_ARADDR),
        .slot_1_axi_arready(Conn1_ARREADY),
        .slot_1_axi_arvalid(Conn1_ARVALID),
        .slot_1_axi_awaddr(Conn1_AWADDR),
        .slot_1_axi_awready(Conn1_AWREADY),
        .slot_1_axi_awvalid(Conn1_AWVALID),
        .slot_1_axi_bready(Conn1_BREADY),
        .slot_1_axi_bresp(Conn1_BRESP),
        .slot_1_axi_bvalid(Conn1_BVALID),
        .slot_1_axi_rdata(Conn1_RDATA),
        .slot_1_axi_rready(Conn1_RREADY),
        .slot_1_axi_rresp(Conn1_RRESP),
        .slot_1_axi_rvalid(Conn1_RVALID),
        .slot_1_axi_wdata(Conn1_WDATA),
        .slot_1_axi_wready(Conn1_WREADY),
        .slot_1_axi_wstrb(Conn1_WSTRB),
        .slot_1_axi_wvalid(Conn1_WVALID));
  bd_ae0e_ila_lib_0 ila_lib
       (.clk(clk_1),
        .probe0(probe0_1),
        .probe1(probe1_1),
        .probe10(net_slot_0_axi_awaddr),
        .probe11(net_slot_0_axi_b_cnt),
        .probe12(net_slot_0_axi_bresp),
        .probe13(net_slot_0_axi_r_cnt),
        .probe14(net_slot_0_axi_rdata),
        .probe15(net_slot_0_axi_rresp),
        .probe16(net_slot_0_axi_wdata),
        .probe17(net_slot_0_axi_wstrb),
        .probe18(net_slot_0_axi_aw_ctrl),
        .probe19(net_slot_0_axi_w_ctrl),
        .probe2(probe2_1),
        .probe20(net_slot_0_axi_b_ctrl),
        .probe21(net_slot_0_axi_ar_ctrl),
        .probe22(net_slot_0_axi_r_ctrl),
        .probe23(SLOT_1_BRAM_en_1),
        .probe24(SLOT_1_BRAM_dout_1),
        .probe25(SLOT_1_BRAM_din_1),
        .probe26(SLOT_1_BRAM_we_1),
        .probe27(SLOT_1_BRAM_addr_1),
        .probe28(SLOT_1_BRAM_rst_1),
        .probe29(SLOT_10_BRAM_addr_1),
        .probe3(probe3_1),
        .probe30(SLOT_10_BRAM_din_1),
        .probe31(SLOT_10_BRAM_dout_1),
        .probe32(SLOT_10_BRAM_en_1),
        .probe33(SLOT_10_BRAM_rst_1),
        .probe34(SLOT_10_BRAM_we_1),
        .probe35(SLOT_2_BRAM_addr_1),
        .probe36(SLOT_2_BRAM_din_1),
        .probe37(SLOT_2_BRAM_dout_1),
        .probe38(SLOT_2_BRAM_en_1),
        .probe39(SLOT_2_BRAM_rst_1),
        .probe4(probe4_1),
        .probe40(SLOT_2_BRAM_we_1),
        .probe41(SLOT_3_BRAM_en_1),
        .probe42(SLOT_3_BRAM_dout_1),
        .probe43(SLOT_3_BRAM_din_1),
        .probe44(SLOT_3_BRAM_we_1),
        .probe45(SLOT_3_BRAM_addr_1),
        .probe46(SLOT_3_BRAM_rst_1),
        .probe47(net_slot_4_axi_ar_cnt),
        .probe48(net_slot_4_axi_araddr),
        .probe49(net_slot_4_axi_aw_cnt),
        .probe5(probe5_1),
        .probe50(net_slot_4_axi_awaddr),
        .probe51(net_slot_4_axi_b_cnt),
        .probe52(net_slot_4_axi_bresp),
        .probe53(net_slot_4_axi_r_cnt),
        .probe54(net_slot_4_axi_rdata),
        .probe55(net_slot_4_axi_rresp),
        .probe56(net_slot_4_axi_wdata),
        .probe57(net_slot_4_axi_wstrb),
        .probe58(net_slot_4_axi_aw_ctrl),
        .probe59(net_slot_4_axi_w_ctrl),
        .probe6(probe6_1),
        .probe60(net_slot_4_axi_b_ctrl),
        .probe61(net_slot_4_axi_ar_ctrl),
        .probe62(net_slot_4_axi_r_ctrl),
        .probe63(SLOT_5_BRAM_addr_1),
        .probe64(SLOT_5_BRAM_din_1),
        .probe65(SLOT_5_BRAM_dout_1),
        .probe66(SLOT_5_BRAM_en_1),
        .probe67(SLOT_5_BRAM_rst_1),
        .probe68(SLOT_5_BRAM_we_1),
        .probe69(SLOT_6_BRAM_en_1),
        .probe7(net_slot_0_axi_ar_cnt),
        .probe70(SLOT_6_BRAM_dout_1),
        .probe71(SLOT_6_BRAM_din_1),
        .probe72(SLOT_6_BRAM_we_1),
        .probe73(SLOT_6_BRAM_addr_1),
        .probe74(SLOT_6_BRAM_rst_1),
        .probe75(SLOT_7_BRAM_en_1),
        .probe76(SLOT_7_BRAM_dout_1),
        .probe77(SLOT_7_BRAM_din_1),
        .probe78(SLOT_7_BRAM_we_1),
        .probe79(SLOT_7_BRAM_addr_1),
        .probe8(net_slot_0_axi_araddr),
        .probe80(SLOT_7_BRAM_rst_1),
        .probe81(SLOT_8_BRAM_en_1),
        .probe82(SLOT_8_BRAM_dout_1),
        .probe83(SLOT_8_BRAM_din_1),
        .probe84(SLOT_8_BRAM_we_1),
        .probe85(SLOT_8_BRAM_addr_1),
        .probe86(SLOT_8_BRAM_rst_1),
        .probe87(SLOT_9_BRAM_en_1),
        .probe88(SLOT_9_BRAM_dout_1),
        .probe89(SLOT_9_BRAM_din_1),
        .probe9(net_slot_0_axi_aw_cnt),
        .probe90(SLOT_9_BRAM_we_1),
        .probe91(SLOT_9_BRAM_addr_1),
        .probe92(SLOT_9_BRAM_rst_1),
        .probe93(SLOT_10_BRAM_addr_1),
        .probe94(SLOT_10_BRAM_din_1),
        .probe95(SLOT_10_BRAM_dout_1),
        .probe96(SLOT_10_BRAM_en_1),
        .probe97(SLOT_10_BRAM_rst_1),
        .probe98(SLOT_10_BRAM_we_1));
  bd_ae0e_slot_0_ar_0 slot_0_ar
       (.In0(net_slot_0_axi_arvalid),
        .In1(net_slot_0_axi_arready),
        .dout(net_slot_0_axi_ar_ctrl));
  bd_ae0e_slot_0_aw_0 slot_0_aw
       (.In0(net_slot_0_axi_awvalid),
        .In1(net_slot_0_axi_awready),
        .dout(net_slot_0_axi_aw_ctrl));
  bd_ae0e_slot_0_b_0 slot_0_b
       (.In0(net_slot_0_axi_bvalid),
        .In1(net_slot_0_axi_bready),
        .dout(net_slot_0_axi_b_ctrl));
  bd_ae0e_slot_0_r_0 slot_0_r
       (.In0(net_slot_0_axi_rvalid),
        .In1(net_slot_0_axi_rready),
        .dout(net_slot_0_axi_r_ctrl));
  bd_ae0e_slot_0_w_0 slot_0_w
       (.In0(net_slot_0_axi_wvalid),
        .In1(net_slot_0_axi_wready),
        .dout(net_slot_0_axi_w_ctrl));
  bd_ae0e_slot_4_ar_0 slot_4_ar
       (.In0(net_slot_4_axi_arvalid),
        .In1(net_slot_4_axi_arready),
        .dout(net_slot_4_axi_ar_ctrl));
  bd_ae0e_slot_4_aw_0 slot_4_aw
       (.In0(net_slot_4_axi_awvalid),
        .In1(net_slot_4_axi_awready),
        .dout(net_slot_4_axi_aw_ctrl));
  bd_ae0e_slot_4_b_0 slot_4_b
       (.In0(net_slot_4_axi_bvalid),
        .In1(net_slot_4_axi_bready),
        .dout(net_slot_4_axi_b_ctrl));
  bd_ae0e_slot_4_r_0 slot_4_r
       (.In0(net_slot_4_axi_rvalid),
        .In1(net_slot_4_axi_rready),
        .dout(net_slot_4_axi_r_ctrl));
  bd_ae0e_slot_4_w_0 slot_4_w
       (.In0(net_slot_4_axi_wvalid),
        .In1(net_slot_4_axi_wready),
        .dout(net_slot_4_axi_w_ctrl));
endmodule
