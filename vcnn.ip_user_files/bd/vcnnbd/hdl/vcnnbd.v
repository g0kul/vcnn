//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
//Date        : Mon Mar 26 02:23:23 2018
//Host        : dots running 64-bit Ubuntu 16.04.4 LTS
//Command     : generate_target vcnnbd.bd
//Design      : vcnnbd
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "vcnnbd,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=vcnnbd,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=16,numReposBlks=16,numNonXlnxBlks=4,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=10,da_clkrst_cnt=3,da_ps7_cnt=1,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "vcnnbd.hwdef" *) 
module vcnnbd
   (DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb);
  inout [14:0]DDR_addr;
  inout [2:0]DDR_ba;
  inout DDR_cas_n;
  inout DDR_ck_n;
  inout DDR_ck_p;
  inout DDR_cke;
  inout DDR_cs_n;
  inout [3:0]DDR_dm;
  inout [31:0]DDR_dq;
  inout [3:0]DDR_dqs_n;
  inout [3:0]DDR_dqs_p;
  inout DDR_odt;
  inout DDR_ras_n;
  inout DDR_reset_n;
  inout DDR_we_n;
  inout FIXED_IO_ddr_vrn;
  inout FIXED_IO_ddr_vrp;
  inout [53:0]FIXED_IO_mio;
  inout FIXED_IO_ps_clk;
  inout FIXED_IO_ps_porb;
  inout FIXED_IO_ps_srstb;

  (* CONN_BUS_INFO = "axi_bram_ctrl_0_BRAM_PORTA xilinx.com:interface:bram:1.0 None ADDR" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [11:0]axi_bram_ctrl_0_BRAM_PORTA_ADDR;
  (* CONN_BUS_INFO = "axi_bram_ctrl_0_BRAM_PORTA xilinx.com:interface:bram:1.0 None CLK" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_bram_ctrl_0_BRAM_PORTA_CLK;
  (* CONN_BUS_INFO = "axi_bram_ctrl_0_BRAM_PORTA xilinx.com:interface:bram:1.0 None DIN" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [31:0]axi_bram_ctrl_0_BRAM_PORTA_DIN;
  (* CONN_BUS_INFO = "axi_bram_ctrl_0_BRAM_PORTA xilinx.com:interface:bram:1.0 None DOUT" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [31:0]axi_bram_ctrl_0_BRAM_PORTA_DOUT;
  (* CONN_BUS_INFO = "axi_bram_ctrl_0_BRAM_PORTA xilinx.com:interface:bram:1.0 None WE" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]axi_bram_ctrl_0_BRAM_PORTA_WE;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_lite_slave_0_ap_start;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_lite_slave_1_ap_start;
  wire [11:0]axi_smc_M00_AXI_ARADDR;
  wire [1:0]axi_smc_M00_AXI_ARBURST;
  wire [3:0]axi_smc_M00_AXI_ARCACHE;
  wire [7:0]axi_smc_M00_AXI_ARLEN;
  wire [0:0]axi_smc_M00_AXI_ARLOCK;
  wire [2:0]axi_smc_M00_AXI_ARPROT;
  wire axi_smc_M00_AXI_ARREADY;
  wire [2:0]axi_smc_M00_AXI_ARSIZE;
  wire axi_smc_M00_AXI_ARVALID;
  wire [11:0]axi_smc_M00_AXI_AWADDR;
  wire [1:0]axi_smc_M00_AXI_AWBURST;
  wire [3:0]axi_smc_M00_AXI_AWCACHE;
  wire [7:0]axi_smc_M00_AXI_AWLEN;
  wire [0:0]axi_smc_M00_AXI_AWLOCK;
  wire [2:0]axi_smc_M00_AXI_AWPROT;
  wire axi_smc_M00_AXI_AWREADY;
  wire [2:0]axi_smc_M00_AXI_AWSIZE;
  wire axi_smc_M00_AXI_AWVALID;
  wire axi_smc_M00_AXI_BREADY;
  wire [1:0]axi_smc_M00_AXI_BRESP;
  wire axi_smc_M00_AXI_BVALID;
  wire [31:0]axi_smc_M00_AXI_RDATA;
  wire axi_smc_M00_AXI_RLAST;
  wire axi_smc_M00_AXI_RREADY;
  wire [1:0]axi_smc_M00_AXI_RRESP;
  wire axi_smc_M00_AXI_RVALID;
  wire [31:0]axi_smc_M00_AXI_WDATA;
  wire axi_smc_M00_AXI_WLAST;
  wire axi_smc_M00_AXI_WREADY;
  wire [3:0]axi_smc_M00_AXI_WSTRB;
  wire axi_smc_M00_AXI_WVALID;
  wire [12:0]axi_smc_M01_AXI_ARADDR;
  wire [1:0]axi_smc_M01_AXI_ARBURST;
  wire [3:0]axi_smc_M01_AXI_ARCACHE;
  wire [7:0]axi_smc_M01_AXI_ARLEN;
  wire [0:0]axi_smc_M01_AXI_ARLOCK;
  wire [2:0]axi_smc_M01_AXI_ARPROT;
  wire axi_smc_M01_AXI_ARREADY;
  wire [2:0]axi_smc_M01_AXI_ARSIZE;
  wire axi_smc_M01_AXI_ARVALID;
  wire [12:0]axi_smc_M01_AXI_AWADDR;
  wire [1:0]axi_smc_M01_AXI_AWBURST;
  wire [3:0]axi_smc_M01_AXI_AWCACHE;
  wire [7:0]axi_smc_M01_AXI_AWLEN;
  wire [0:0]axi_smc_M01_AXI_AWLOCK;
  wire [2:0]axi_smc_M01_AXI_AWPROT;
  wire axi_smc_M01_AXI_AWREADY;
  wire [2:0]axi_smc_M01_AXI_AWSIZE;
  wire axi_smc_M01_AXI_AWVALID;
  wire axi_smc_M01_AXI_BREADY;
  wire [1:0]axi_smc_M01_AXI_BRESP;
  wire axi_smc_M01_AXI_BVALID;
  wire [31:0]axi_smc_M01_AXI_RDATA;
  wire axi_smc_M01_AXI_RLAST;
  wire axi_smc_M01_AXI_RREADY;
  wire [1:0]axi_smc_M01_AXI_RRESP;
  wire axi_smc_M01_AXI_RVALID;
  wire [31:0]axi_smc_M01_AXI_WDATA;
  wire axi_smc_M01_AXI_WLAST;
  wire axi_smc_M01_AXI_WREADY;
  wire [3:0]axi_smc_M01_AXI_WSTRB;
  wire axi_smc_M01_AXI_WVALID;
  wire [14:0]axi_smc_M02_AXI_ARADDR;
  wire [1:0]axi_smc_M02_AXI_ARBURST;
  wire [3:0]axi_smc_M02_AXI_ARCACHE;
  wire [7:0]axi_smc_M02_AXI_ARLEN;
  wire [0:0]axi_smc_M02_AXI_ARLOCK;
  wire [2:0]axi_smc_M02_AXI_ARPROT;
  wire axi_smc_M02_AXI_ARREADY;
  wire [2:0]axi_smc_M02_AXI_ARSIZE;
  wire axi_smc_M02_AXI_ARVALID;
  wire [14:0]axi_smc_M02_AXI_AWADDR;
  wire [1:0]axi_smc_M02_AXI_AWBURST;
  wire [3:0]axi_smc_M02_AXI_AWCACHE;
  wire [7:0]axi_smc_M02_AXI_AWLEN;
  wire [0:0]axi_smc_M02_AXI_AWLOCK;
  wire [2:0]axi_smc_M02_AXI_AWPROT;
  wire axi_smc_M02_AXI_AWREADY;
  wire [2:0]axi_smc_M02_AXI_AWSIZE;
  wire axi_smc_M02_AXI_AWVALID;
  wire axi_smc_M02_AXI_BREADY;
  wire [1:0]axi_smc_M02_AXI_BRESP;
  wire axi_smc_M02_AXI_BVALID;
  wire [31:0]axi_smc_M02_AXI_RDATA;
  wire axi_smc_M02_AXI_RLAST;
  wire axi_smc_M02_AXI_RREADY;
  wire [1:0]axi_smc_M02_AXI_RRESP;
  wire axi_smc_M02_AXI_RVALID;
  wire [31:0]axi_smc_M02_AXI_WDATA;
  wire axi_smc_M02_AXI_WLAST;
  wire axi_smc_M02_AXI_WREADY;
  wire [3:0]axi_smc_M02_AXI_WSTRB;
  wire axi_smc_M02_AXI_WVALID;
  (* CONN_BUS_INFO = "axi_smc_M03_AXI xilinx.com:interface:aximm:1.0 AXI4LITE ARADDR" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [4:0]axi_smc_M03_AXI_ARADDR;
  (* CONN_BUS_INFO = "axi_smc_M03_AXI xilinx.com:interface:aximm:1.0 AXI4LITE ARREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_smc_M03_AXI_ARREADY;
  (* CONN_BUS_INFO = "axi_smc_M03_AXI xilinx.com:interface:aximm:1.0 AXI4LITE ARVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_smc_M03_AXI_ARVALID;
  (* CONN_BUS_INFO = "axi_smc_M03_AXI xilinx.com:interface:aximm:1.0 AXI4LITE AWADDR" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [4:0]axi_smc_M03_AXI_AWADDR;
  (* CONN_BUS_INFO = "axi_smc_M03_AXI xilinx.com:interface:aximm:1.0 AXI4LITE AWREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_smc_M03_AXI_AWREADY;
  (* CONN_BUS_INFO = "axi_smc_M03_AXI xilinx.com:interface:aximm:1.0 AXI4LITE AWVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_smc_M03_AXI_AWVALID;
  (* CONN_BUS_INFO = "axi_smc_M03_AXI xilinx.com:interface:aximm:1.0 AXI4LITE BREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_smc_M03_AXI_BREADY;
  (* CONN_BUS_INFO = "axi_smc_M03_AXI xilinx.com:interface:aximm:1.0 AXI4LITE BRESP" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]axi_smc_M03_AXI_BRESP;
  (* CONN_BUS_INFO = "axi_smc_M03_AXI xilinx.com:interface:aximm:1.0 AXI4LITE BVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_smc_M03_AXI_BVALID;
  (* CONN_BUS_INFO = "axi_smc_M03_AXI xilinx.com:interface:aximm:1.0 AXI4LITE RDATA" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [31:0]axi_smc_M03_AXI_RDATA;
  (* CONN_BUS_INFO = "axi_smc_M03_AXI xilinx.com:interface:aximm:1.0 AXI4LITE RREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_smc_M03_AXI_RREADY;
  (* CONN_BUS_INFO = "axi_smc_M03_AXI xilinx.com:interface:aximm:1.0 AXI4LITE RRESP" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]axi_smc_M03_AXI_RRESP;
  (* CONN_BUS_INFO = "axi_smc_M03_AXI xilinx.com:interface:aximm:1.0 AXI4LITE RVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_smc_M03_AXI_RVALID;
  (* CONN_BUS_INFO = "axi_smc_M03_AXI xilinx.com:interface:aximm:1.0 AXI4LITE WDATA" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [31:0]axi_smc_M03_AXI_WDATA;
  (* CONN_BUS_INFO = "axi_smc_M03_AXI xilinx.com:interface:aximm:1.0 AXI4LITE WREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_smc_M03_AXI_WREADY;
  (* CONN_BUS_INFO = "axi_smc_M03_AXI xilinx.com:interface:aximm:1.0 AXI4LITE WSTRB" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]axi_smc_M03_AXI_WSTRB;
  (* CONN_BUS_INFO = "axi_smc_M03_AXI xilinx.com:interface:aximm:1.0 AXI4LITE WVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_smc_M03_AXI_WVALID;
  (* CONN_BUS_INFO = "axi_smc_M04_AXI xilinx.com:interface:aximm:1.0 AXI4LITE ARADDR" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [4:0]axi_smc_M04_AXI_ARADDR;
  (* CONN_BUS_INFO = "axi_smc_M04_AXI xilinx.com:interface:aximm:1.0 AXI4LITE ARREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_smc_M04_AXI_ARREADY;
  (* CONN_BUS_INFO = "axi_smc_M04_AXI xilinx.com:interface:aximm:1.0 AXI4LITE ARVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_smc_M04_AXI_ARVALID;
  (* CONN_BUS_INFO = "axi_smc_M04_AXI xilinx.com:interface:aximm:1.0 AXI4LITE AWADDR" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [4:0]axi_smc_M04_AXI_AWADDR;
  (* CONN_BUS_INFO = "axi_smc_M04_AXI xilinx.com:interface:aximm:1.0 AXI4LITE AWREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_smc_M04_AXI_AWREADY;
  (* CONN_BUS_INFO = "axi_smc_M04_AXI xilinx.com:interface:aximm:1.0 AXI4LITE AWVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_smc_M04_AXI_AWVALID;
  (* CONN_BUS_INFO = "axi_smc_M04_AXI xilinx.com:interface:aximm:1.0 AXI4LITE BREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_smc_M04_AXI_BREADY;
  (* CONN_BUS_INFO = "axi_smc_M04_AXI xilinx.com:interface:aximm:1.0 AXI4LITE BRESP" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]axi_smc_M04_AXI_BRESP;
  (* CONN_BUS_INFO = "axi_smc_M04_AXI xilinx.com:interface:aximm:1.0 AXI4LITE BVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_smc_M04_AXI_BVALID;
  (* CONN_BUS_INFO = "axi_smc_M04_AXI xilinx.com:interface:aximm:1.0 AXI4LITE RDATA" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [31:0]axi_smc_M04_AXI_RDATA;
  (* CONN_BUS_INFO = "axi_smc_M04_AXI xilinx.com:interface:aximm:1.0 AXI4LITE RREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_smc_M04_AXI_RREADY;
  (* CONN_BUS_INFO = "axi_smc_M04_AXI xilinx.com:interface:aximm:1.0 AXI4LITE RRESP" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]axi_smc_M04_AXI_RRESP;
  (* CONN_BUS_INFO = "axi_smc_M04_AXI xilinx.com:interface:aximm:1.0 AXI4LITE RVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_smc_M04_AXI_RVALID;
  (* CONN_BUS_INFO = "axi_smc_M04_AXI xilinx.com:interface:aximm:1.0 AXI4LITE WDATA" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [31:0]axi_smc_M04_AXI_WDATA;
  (* CONN_BUS_INFO = "axi_smc_M04_AXI xilinx.com:interface:aximm:1.0 AXI4LITE WREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_smc_M04_AXI_WREADY;
  (* CONN_BUS_INFO = "axi_smc_M04_AXI xilinx.com:interface:aximm:1.0 AXI4LITE WSTRB" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]axi_smc_M04_AXI_WSTRB;
  (* CONN_BUS_INFO = "axi_smc_M04_AXI xilinx.com:interface:aximm:1.0 AXI4LITE WVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_smc_M04_AXI_WVALID;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire conv1l_top_0_ap_done;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire conv1l_top_0_ap_ready;
  (* CONN_BUS_INFO = "conv1l_top_0_input_bram_rd xilinx.com:interface:bram:1.0 None ADDR" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [11:0]conv1l_top_0_input_bram_rd_ADDR;
  (* CONN_BUS_INFO = "conv1l_top_0_input_bram_rd xilinx.com:interface:bram:1.0 None CLK" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire conv1l_top_0_input_bram_rd_CLK;
  (* CONN_BUS_INFO = "conv1l_top_0_input_bram_rd xilinx.com:interface:bram:1.0 None DIN" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [15:0]conv1l_top_0_input_bram_rd_DIN;
  (* CONN_BUS_INFO = "conv1l_top_0_input_bram_rd xilinx.com:interface:bram:1.0 None DOUT" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [15:0]conv1l_top_0_input_bram_rd_DOUT;
  (* CONN_BUS_INFO = "conv1l_top_0_input_bram_rd xilinx.com:interface:bram:1.0 None WE" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire conv1l_top_0_input_bram_rd_WE;
  (* CONN_BUS_INFO = "conv1l_top_0_output_bram_wr xilinx.com:interface:bram:1.0 None ADDR" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [13:0]conv1l_top_0_output_bram_wr_ADDR;
  (* CONN_BUS_INFO = "conv1l_top_0_output_bram_wr xilinx.com:interface:bram:1.0 None CLK" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire conv1l_top_0_output_bram_wr_CLK;
  (* CONN_BUS_INFO = "conv1l_top_0_output_bram_wr xilinx.com:interface:bram:1.0 None DIN" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [15:0]conv1l_top_0_output_bram_wr_DIN;
  (* CONN_BUS_INFO = "conv1l_top_0_output_bram_wr xilinx.com:interface:bram:1.0 None DOUT" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [15:0]conv1l_top_0_output_bram_wr_DOUT;
  (* CONN_BUS_INFO = "conv1l_top_0_output_bram_wr xilinx.com:interface:bram:1.0 None RST" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire conv1l_top_0_output_bram_wr_RST;
  (* CONN_BUS_INFO = "conv1l_top_0_output_bram_wr xilinx.com:interface:bram:1.0 None WE" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire conv1l_top_0_output_bram_wr_WE;
  (* CONN_BUS_INFO = "conv1l_top_0_weight_bram_rd xilinx.com:interface:bram:1.0 None ADDR" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [8:0]conv1l_top_0_weight_bram_rd_ADDR;
  (* CONN_BUS_INFO = "conv1l_top_0_weight_bram_rd xilinx.com:interface:bram:1.0 None CLK" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire conv1l_top_0_weight_bram_rd_CLK;
  (* CONN_BUS_INFO = "conv1l_top_0_weight_bram_rd xilinx.com:interface:bram:1.0 None DIN" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [15:0]conv1l_top_0_weight_bram_rd_DIN;
  (* CONN_BUS_INFO = "conv1l_top_0_weight_bram_rd xilinx.com:interface:bram:1.0 None DOUT" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [15:0]conv1l_top_0_weight_bram_rd_DOUT;
  (* CONN_BUS_INFO = "conv1l_top_0_weight_bram_rd xilinx.com:interface:bram:1.0 None WE" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire conv1l_top_0_weight_bram_rd_WE;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire conv1l_top_1_ap_done;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire conv1l_top_1_ap_ready;
  (* CONN_BUS_INFO = "conv1l_top_1_input_bram_rd xilinx.com:interface:bram:1.0 None ADDR" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [13:0]conv1l_top_1_input_bram_rd_ADDR;
  (* CONN_BUS_INFO = "conv1l_top_1_input_bram_rd xilinx.com:interface:bram:1.0 None CLK" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire conv1l_top_1_input_bram_rd_CLK;
  (* CONN_BUS_INFO = "conv1l_top_1_input_bram_rd xilinx.com:interface:bram:1.0 None DIN" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [15:0]conv1l_top_1_input_bram_rd_DIN;
  (* CONN_BUS_INFO = "conv1l_top_1_input_bram_rd xilinx.com:interface:bram:1.0 None DOUT" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [15:0]conv1l_top_1_input_bram_rd_DOUT;
  (* CONN_BUS_INFO = "conv1l_top_1_input_bram_rd xilinx.com:interface:bram:1.0 None WE" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire conv1l_top_1_input_bram_rd_WE;
  (* CONN_BUS_INFO = "conv1l_top_1_output_bram_wr xilinx.com:interface:bram:1.0 None ADDR" *) (* DONT_TOUCH *) wire [14:0]conv1l_top_1_output_bram_wr_ADDR;
  (* CONN_BUS_INFO = "conv1l_top_1_output_bram_wr xilinx.com:interface:bram:1.0 None CLK" *) (* DONT_TOUCH *) wire conv1l_top_1_output_bram_wr_CLK;
  (* CONN_BUS_INFO = "conv1l_top_1_output_bram_wr xilinx.com:interface:bram:1.0 None DIN" *) (* DONT_TOUCH *) wire [15:0]conv1l_top_1_output_bram_wr_DIN;
  (* CONN_BUS_INFO = "conv1l_top_1_output_bram_wr xilinx.com:interface:bram:1.0 None DOUT" *) (* DONT_TOUCH *) wire [15:0]conv1l_top_1_output_bram_wr_DOUT;
  (* CONN_BUS_INFO = "conv1l_top_1_output_bram_wr xilinx.com:interface:bram:1.0 None WE" *) (* DONT_TOUCH *) wire conv1l_top_1_output_bram_wr_WE;
  (* CONN_BUS_INFO = "conv1l_top_1_weight_bram_rd xilinx.com:interface:bram:1.0 None ADDR" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [9:0]conv1l_top_1_weight_bram_rd_ADDR;
  (* CONN_BUS_INFO = "conv1l_top_1_weight_bram_rd xilinx.com:interface:bram:1.0 None CLK" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire conv1l_top_1_weight_bram_rd_CLK;
  (* CONN_BUS_INFO = "conv1l_top_1_weight_bram_rd xilinx.com:interface:bram:1.0 None DIN" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [15:0]conv1l_top_1_weight_bram_rd_DIN;
  (* CONN_BUS_INFO = "conv1l_top_1_weight_bram_rd xilinx.com:interface:bram:1.0 None DOUT" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [15:0]conv1l_top_1_weight_bram_rd_DOUT;
  (* CONN_BUS_INFO = "conv1l_top_1_weight_bram_rd xilinx.com:interface:bram:1.0 None WE" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire conv1l_top_1_weight_bram_rd_WE;
  (* CONN_BUS_INFO = "output_bram_BRAM_PORTA xilinx.com:interface:bram:1.0 None ADDR" *) (* DONT_TOUCH *) wire [14:0]output_bram_BRAM_PORTA_ADDR;
  (* CONN_BUS_INFO = "output_bram_BRAM_PORTA xilinx.com:interface:bram:1.0 None CLK" *) (* DONT_TOUCH *) wire output_bram_BRAM_PORTA_CLK;
  (* CONN_BUS_INFO = "output_bram_BRAM_PORTA xilinx.com:interface:bram:1.0 None DIN" *) (* DONT_TOUCH *) wire [31:0]output_bram_BRAM_PORTA_DIN;
  (* CONN_BUS_INFO = "output_bram_BRAM_PORTA xilinx.com:interface:bram:1.0 None DOUT" *) (* DONT_TOUCH *) wire [15:0]output_bram_BRAM_PORTA_DOUT;
  (* CONN_BUS_INFO = "output_bram_BRAM_PORTA xilinx.com:interface:bram:1.0 None EN" *) (* DONT_TOUCH *) wire output_bram_BRAM_PORTA_EN;
  (* CONN_BUS_INFO = "output_bram_BRAM_PORTA xilinx.com:interface:bram:1.0 None WE" *) (* DONT_TOUCH *) wire [3:0]output_bram_BRAM_PORTA_WE;
  wire [14:0]processing_system7_0_DDR_ADDR;
  wire [2:0]processing_system7_0_DDR_BA;
  wire processing_system7_0_DDR_CAS_N;
  wire processing_system7_0_DDR_CKE;
  wire processing_system7_0_DDR_CK_N;
  wire processing_system7_0_DDR_CK_P;
  wire processing_system7_0_DDR_CS_N;
  wire [3:0]processing_system7_0_DDR_DM;
  wire [31:0]processing_system7_0_DDR_DQ;
  wire [3:0]processing_system7_0_DDR_DQS_N;
  wire [3:0]processing_system7_0_DDR_DQS_P;
  wire processing_system7_0_DDR_ODT;
  wire processing_system7_0_DDR_RAS_N;
  wire processing_system7_0_DDR_RESET_N;
  wire processing_system7_0_DDR_WE_N;
  wire processing_system7_0_FCLK_CLK0;
  wire processing_system7_0_FCLK_RESET0_N;
  wire processing_system7_0_FIXED_IO_DDR_VRN;
  wire processing_system7_0_FIXED_IO_DDR_VRP;
  wire [53:0]processing_system7_0_FIXED_IO_MIO;
  wire processing_system7_0_FIXED_IO_PS_CLK;
  wire processing_system7_0_FIXED_IO_PS_PORB;
  wire processing_system7_0_FIXED_IO_PS_SRSTB;
  wire [31:0]processing_system7_0_M_AXI_GP0_ARADDR;
  wire [1:0]processing_system7_0_M_AXI_GP0_ARBURST;
  wire [3:0]processing_system7_0_M_AXI_GP0_ARCACHE;
  wire [11:0]processing_system7_0_M_AXI_GP0_ARID;
  wire [3:0]processing_system7_0_M_AXI_GP0_ARLEN;
  wire [1:0]processing_system7_0_M_AXI_GP0_ARLOCK;
  wire [2:0]processing_system7_0_M_AXI_GP0_ARPROT;
  wire [3:0]processing_system7_0_M_AXI_GP0_ARQOS;
  wire processing_system7_0_M_AXI_GP0_ARREADY;
  wire [2:0]processing_system7_0_M_AXI_GP0_ARSIZE;
  wire processing_system7_0_M_AXI_GP0_ARVALID;
  wire [31:0]processing_system7_0_M_AXI_GP0_AWADDR;
  wire [1:0]processing_system7_0_M_AXI_GP0_AWBURST;
  wire [3:0]processing_system7_0_M_AXI_GP0_AWCACHE;
  wire [11:0]processing_system7_0_M_AXI_GP0_AWID;
  wire [3:0]processing_system7_0_M_AXI_GP0_AWLEN;
  wire [1:0]processing_system7_0_M_AXI_GP0_AWLOCK;
  wire [2:0]processing_system7_0_M_AXI_GP0_AWPROT;
  wire [3:0]processing_system7_0_M_AXI_GP0_AWQOS;
  wire processing_system7_0_M_AXI_GP0_AWREADY;
  wire [2:0]processing_system7_0_M_AXI_GP0_AWSIZE;
  wire processing_system7_0_M_AXI_GP0_AWVALID;
  wire [11:0]processing_system7_0_M_AXI_GP0_BID;
  wire processing_system7_0_M_AXI_GP0_BREADY;
  wire [1:0]processing_system7_0_M_AXI_GP0_BRESP;
  wire processing_system7_0_M_AXI_GP0_BVALID;
  wire [31:0]processing_system7_0_M_AXI_GP0_RDATA;
  wire [11:0]processing_system7_0_M_AXI_GP0_RID;
  wire processing_system7_0_M_AXI_GP0_RLAST;
  wire processing_system7_0_M_AXI_GP0_RREADY;
  wire [1:0]processing_system7_0_M_AXI_GP0_RRESP;
  wire processing_system7_0_M_AXI_GP0_RVALID;
  wire [31:0]processing_system7_0_M_AXI_GP0_WDATA;
  wire [11:0]processing_system7_0_M_AXI_GP0_WID;
  wire processing_system7_0_M_AXI_GP0_WLAST;
  wire processing_system7_0_M_AXI_GP0_WREADY;
  wire [3:0]processing_system7_0_M_AXI_GP0_WSTRB;
  wire processing_system7_0_M_AXI_GP0_WVALID;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [0:0]rst_ps7_0_100M_peripheral_aresetn;
  (* CONN_BUS_INFO = "weight_bram_BRAM_PORTA xilinx.com:interface:bram:1.0 None ADDR" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [12:0]weight_bram_BRAM_PORTA_ADDR;
  (* CONN_BUS_INFO = "weight_bram_BRAM_PORTA xilinx.com:interface:bram:1.0 None CLK" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire weight_bram_BRAM_PORTA_CLK;
  (* CONN_BUS_INFO = "weight_bram_BRAM_PORTA xilinx.com:interface:bram:1.0 None DIN" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [31:0]weight_bram_BRAM_PORTA_DIN;
  (* CONN_BUS_INFO = "weight_bram_BRAM_PORTA xilinx.com:interface:bram:1.0 None DOUT" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [31:0]weight_bram_BRAM_PORTA_DOUT;
  (* CONN_BUS_INFO = "weight_bram_BRAM_PORTA xilinx.com:interface:bram:1.0 None WE" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]weight_bram_BRAM_PORTA_WE;

  vcnnbd_axi_lite_slave_0_2 axi_lite_slave_0
       (.S_AXI_ACLK(processing_system7_0_FCLK_CLK0),
        .S_AXI_ARADDR(axi_smc_M03_AXI_ARADDR),
        .S_AXI_ARESETN(rst_ps7_0_100M_peripheral_aresetn),
        .S_AXI_ARREADY(axi_smc_M03_AXI_ARREADY),
        .S_AXI_ARVALID(axi_smc_M03_AXI_ARVALID),
        .S_AXI_AWADDR(axi_smc_M03_AXI_AWADDR),
        .S_AXI_AWREADY(axi_smc_M03_AXI_AWREADY),
        .S_AXI_AWVALID(axi_smc_M03_AXI_AWVALID),
        .S_AXI_BREADY(axi_smc_M03_AXI_BREADY),
        .S_AXI_BRESP(axi_smc_M03_AXI_BRESP),
        .S_AXI_BVALID(axi_smc_M03_AXI_BVALID),
        .S_AXI_RDATA(axi_smc_M03_AXI_RDATA),
        .S_AXI_RREADY(axi_smc_M03_AXI_RREADY),
        .S_AXI_RRESP(axi_smc_M03_AXI_RRESP),
        .S_AXI_RVALID(axi_smc_M03_AXI_RVALID),
        .S_AXI_WDATA(axi_smc_M03_AXI_WDATA),
        .S_AXI_WREADY(axi_smc_M03_AXI_WREADY),
        .S_AXI_WSTRB(axi_smc_M03_AXI_WSTRB),
        .S_AXI_WVALID(axi_smc_M03_AXI_WVALID),
        .ap_done(conv1l_top_0_ap_done),
        .ap_ready(conv1l_top_0_ap_ready),
        .ap_start(axi_lite_slave_0_ap_start));
  vcnnbd_axi_lite_slave_0_0 axi_lite_slave_1
       (.S_AXI_ACLK(processing_system7_0_FCLK_CLK0),
        .S_AXI_ARADDR(axi_smc_M04_AXI_ARADDR),
        .S_AXI_ARESETN(rst_ps7_0_100M_peripheral_aresetn),
        .S_AXI_ARREADY(axi_smc_M04_AXI_ARREADY),
        .S_AXI_ARVALID(axi_smc_M04_AXI_ARVALID),
        .S_AXI_AWADDR(axi_smc_M04_AXI_AWADDR),
        .S_AXI_AWREADY(axi_smc_M04_AXI_AWREADY),
        .S_AXI_AWVALID(axi_smc_M04_AXI_AWVALID),
        .S_AXI_BREADY(axi_smc_M04_AXI_BREADY),
        .S_AXI_BRESP(axi_smc_M04_AXI_BRESP),
        .S_AXI_BVALID(axi_smc_M04_AXI_BVALID),
        .S_AXI_RDATA(axi_smc_M04_AXI_RDATA),
        .S_AXI_RREADY(axi_smc_M04_AXI_RREADY),
        .S_AXI_RRESP(axi_smc_M04_AXI_RRESP),
        .S_AXI_RVALID(axi_smc_M04_AXI_RVALID),
        .S_AXI_WDATA(axi_smc_M04_AXI_WDATA),
        .S_AXI_WREADY(axi_smc_M04_AXI_WREADY),
        .S_AXI_WSTRB(axi_smc_M04_AXI_WSTRB),
        .S_AXI_WVALID(axi_smc_M04_AXI_WVALID),
        .ap_done(conv1l_top_1_ap_done),
        .ap_ready(conv1l_top_1_ap_ready),
        .ap_start(axi_lite_slave_1_ap_start));
  vcnnbd_axi_smc_0 axi_smc
       (.M00_AXI_araddr(axi_smc_M00_AXI_ARADDR),
        .M00_AXI_arburst(axi_smc_M00_AXI_ARBURST),
        .M00_AXI_arcache(axi_smc_M00_AXI_ARCACHE),
        .M00_AXI_arlen(axi_smc_M00_AXI_ARLEN),
        .M00_AXI_arlock(axi_smc_M00_AXI_ARLOCK),
        .M00_AXI_arprot(axi_smc_M00_AXI_ARPROT),
        .M00_AXI_arready(axi_smc_M00_AXI_ARREADY),
        .M00_AXI_arsize(axi_smc_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(axi_smc_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_smc_M00_AXI_AWADDR),
        .M00_AXI_awburst(axi_smc_M00_AXI_AWBURST),
        .M00_AXI_awcache(axi_smc_M00_AXI_AWCACHE),
        .M00_AXI_awlen(axi_smc_M00_AXI_AWLEN),
        .M00_AXI_awlock(axi_smc_M00_AXI_AWLOCK),
        .M00_AXI_awprot(axi_smc_M00_AXI_AWPROT),
        .M00_AXI_awready(axi_smc_M00_AXI_AWREADY),
        .M00_AXI_awsize(axi_smc_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(axi_smc_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_smc_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_smc_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_smc_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_smc_M00_AXI_RDATA),
        .M00_AXI_rlast(axi_smc_M00_AXI_RLAST),
        .M00_AXI_rready(axi_smc_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_smc_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_smc_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_smc_M00_AXI_WDATA),
        .M00_AXI_wlast(axi_smc_M00_AXI_WLAST),
        .M00_AXI_wready(axi_smc_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_smc_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_smc_M00_AXI_WVALID),
        .M01_AXI_araddr(axi_smc_M01_AXI_ARADDR),
        .M01_AXI_arburst(axi_smc_M01_AXI_ARBURST),
        .M01_AXI_arcache(axi_smc_M01_AXI_ARCACHE),
        .M01_AXI_arlen(axi_smc_M01_AXI_ARLEN),
        .M01_AXI_arlock(axi_smc_M01_AXI_ARLOCK),
        .M01_AXI_arprot(axi_smc_M01_AXI_ARPROT),
        .M01_AXI_arready(axi_smc_M01_AXI_ARREADY),
        .M01_AXI_arsize(axi_smc_M01_AXI_ARSIZE),
        .M01_AXI_arvalid(axi_smc_M01_AXI_ARVALID),
        .M01_AXI_awaddr(axi_smc_M01_AXI_AWADDR),
        .M01_AXI_awburst(axi_smc_M01_AXI_AWBURST),
        .M01_AXI_awcache(axi_smc_M01_AXI_AWCACHE),
        .M01_AXI_awlen(axi_smc_M01_AXI_AWLEN),
        .M01_AXI_awlock(axi_smc_M01_AXI_AWLOCK),
        .M01_AXI_awprot(axi_smc_M01_AXI_AWPROT),
        .M01_AXI_awready(axi_smc_M01_AXI_AWREADY),
        .M01_AXI_awsize(axi_smc_M01_AXI_AWSIZE),
        .M01_AXI_awvalid(axi_smc_M01_AXI_AWVALID),
        .M01_AXI_bready(axi_smc_M01_AXI_BREADY),
        .M01_AXI_bresp(axi_smc_M01_AXI_BRESP),
        .M01_AXI_bvalid(axi_smc_M01_AXI_BVALID),
        .M01_AXI_rdata(axi_smc_M01_AXI_RDATA),
        .M01_AXI_rlast(axi_smc_M01_AXI_RLAST),
        .M01_AXI_rready(axi_smc_M01_AXI_RREADY),
        .M01_AXI_rresp(axi_smc_M01_AXI_RRESP),
        .M01_AXI_rvalid(axi_smc_M01_AXI_RVALID),
        .M01_AXI_wdata(axi_smc_M01_AXI_WDATA),
        .M01_AXI_wlast(axi_smc_M01_AXI_WLAST),
        .M01_AXI_wready(axi_smc_M01_AXI_WREADY),
        .M01_AXI_wstrb(axi_smc_M01_AXI_WSTRB),
        .M01_AXI_wvalid(axi_smc_M01_AXI_WVALID),
        .M02_AXI_araddr(axi_smc_M02_AXI_ARADDR),
        .M02_AXI_arburst(axi_smc_M02_AXI_ARBURST),
        .M02_AXI_arcache(axi_smc_M02_AXI_ARCACHE),
        .M02_AXI_arlen(axi_smc_M02_AXI_ARLEN),
        .M02_AXI_arlock(axi_smc_M02_AXI_ARLOCK),
        .M02_AXI_arprot(axi_smc_M02_AXI_ARPROT),
        .M02_AXI_arready(axi_smc_M02_AXI_ARREADY),
        .M02_AXI_arsize(axi_smc_M02_AXI_ARSIZE),
        .M02_AXI_arvalid(axi_smc_M02_AXI_ARVALID),
        .M02_AXI_awaddr(axi_smc_M02_AXI_AWADDR),
        .M02_AXI_awburst(axi_smc_M02_AXI_AWBURST),
        .M02_AXI_awcache(axi_smc_M02_AXI_AWCACHE),
        .M02_AXI_awlen(axi_smc_M02_AXI_AWLEN),
        .M02_AXI_awlock(axi_smc_M02_AXI_AWLOCK),
        .M02_AXI_awprot(axi_smc_M02_AXI_AWPROT),
        .M02_AXI_awready(axi_smc_M02_AXI_AWREADY),
        .M02_AXI_awsize(axi_smc_M02_AXI_AWSIZE),
        .M02_AXI_awvalid(axi_smc_M02_AXI_AWVALID),
        .M02_AXI_bready(axi_smc_M02_AXI_BREADY),
        .M02_AXI_bresp(axi_smc_M02_AXI_BRESP),
        .M02_AXI_bvalid(axi_smc_M02_AXI_BVALID),
        .M02_AXI_rdata(axi_smc_M02_AXI_RDATA),
        .M02_AXI_rlast(axi_smc_M02_AXI_RLAST),
        .M02_AXI_rready(axi_smc_M02_AXI_RREADY),
        .M02_AXI_rresp(axi_smc_M02_AXI_RRESP),
        .M02_AXI_rvalid(axi_smc_M02_AXI_RVALID),
        .M02_AXI_wdata(axi_smc_M02_AXI_WDATA),
        .M02_AXI_wlast(axi_smc_M02_AXI_WLAST),
        .M02_AXI_wready(axi_smc_M02_AXI_WREADY),
        .M02_AXI_wstrb(axi_smc_M02_AXI_WSTRB),
        .M02_AXI_wvalid(axi_smc_M02_AXI_WVALID),
        .M03_AXI_araddr(axi_smc_M03_AXI_ARADDR),
        .M03_AXI_arready(axi_smc_M03_AXI_ARREADY),
        .M03_AXI_arvalid(axi_smc_M03_AXI_ARVALID),
        .M03_AXI_awaddr(axi_smc_M03_AXI_AWADDR),
        .M03_AXI_awready(axi_smc_M03_AXI_AWREADY),
        .M03_AXI_awvalid(axi_smc_M03_AXI_AWVALID),
        .M03_AXI_bready(axi_smc_M03_AXI_BREADY),
        .M03_AXI_bresp(axi_smc_M03_AXI_BRESP),
        .M03_AXI_bvalid(axi_smc_M03_AXI_BVALID),
        .M03_AXI_rdata(axi_smc_M03_AXI_RDATA),
        .M03_AXI_rready(axi_smc_M03_AXI_RREADY),
        .M03_AXI_rresp(axi_smc_M03_AXI_RRESP),
        .M03_AXI_rvalid(axi_smc_M03_AXI_RVALID),
        .M03_AXI_wdata(axi_smc_M03_AXI_WDATA),
        .M03_AXI_wready(axi_smc_M03_AXI_WREADY),
        .M03_AXI_wstrb(axi_smc_M03_AXI_WSTRB),
        .M03_AXI_wvalid(axi_smc_M03_AXI_WVALID),
        .M04_AXI_araddr(axi_smc_M04_AXI_ARADDR),
        .M04_AXI_arready(axi_smc_M04_AXI_ARREADY),
        .M04_AXI_arvalid(axi_smc_M04_AXI_ARVALID),
        .M04_AXI_awaddr(axi_smc_M04_AXI_AWADDR),
        .M04_AXI_awready(axi_smc_M04_AXI_AWREADY),
        .M04_AXI_awvalid(axi_smc_M04_AXI_AWVALID),
        .M04_AXI_bready(axi_smc_M04_AXI_BREADY),
        .M04_AXI_bresp(axi_smc_M04_AXI_BRESP),
        .M04_AXI_bvalid(axi_smc_M04_AXI_BVALID),
        .M04_AXI_rdata(axi_smc_M04_AXI_RDATA),
        .M04_AXI_rready(axi_smc_M04_AXI_RREADY),
        .M04_AXI_rresp(axi_smc_M04_AXI_RRESP),
        .M04_AXI_rvalid(axi_smc_M04_AXI_RVALID),
        .M04_AXI_wdata(axi_smc_M04_AXI_WDATA),
        .M04_AXI_wready(axi_smc_M04_AXI_WREADY),
        .M04_AXI_wstrb(axi_smc_M04_AXI_WSTRB),
        .M04_AXI_wvalid(axi_smc_M04_AXI_WVALID),
        .S00_AXI_araddr(processing_system7_0_M_AXI_GP0_ARADDR),
        .S00_AXI_arburst(processing_system7_0_M_AXI_GP0_ARBURST),
        .S00_AXI_arcache(processing_system7_0_M_AXI_GP0_ARCACHE),
        .S00_AXI_arid(processing_system7_0_M_AXI_GP0_ARID),
        .S00_AXI_arlen(processing_system7_0_M_AXI_GP0_ARLEN),
        .S00_AXI_arlock(processing_system7_0_M_AXI_GP0_ARLOCK),
        .S00_AXI_arprot(processing_system7_0_M_AXI_GP0_ARPROT),
        .S00_AXI_arqos(processing_system7_0_M_AXI_GP0_ARQOS),
        .S00_AXI_arready(processing_system7_0_M_AXI_GP0_ARREADY),
        .S00_AXI_arsize(processing_system7_0_M_AXI_GP0_ARSIZE),
        .S00_AXI_arvalid(processing_system7_0_M_AXI_GP0_ARVALID),
        .S00_AXI_awaddr(processing_system7_0_M_AXI_GP0_AWADDR),
        .S00_AXI_awburst(processing_system7_0_M_AXI_GP0_AWBURST),
        .S00_AXI_awcache(processing_system7_0_M_AXI_GP0_AWCACHE),
        .S00_AXI_awid(processing_system7_0_M_AXI_GP0_AWID),
        .S00_AXI_awlen(processing_system7_0_M_AXI_GP0_AWLEN),
        .S00_AXI_awlock(processing_system7_0_M_AXI_GP0_AWLOCK),
        .S00_AXI_awprot(processing_system7_0_M_AXI_GP0_AWPROT),
        .S00_AXI_awqos(processing_system7_0_M_AXI_GP0_AWQOS),
        .S00_AXI_awready(processing_system7_0_M_AXI_GP0_AWREADY),
        .S00_AXI_awsize(processing_system7_0_M_AXI_GP0_AWSIZE),
        .S00_AXI_awvalid(processing_system7_0_M_AXI_GP0_AWVALID),
        .S00_AXI_bid(processing_system7_0_M_AXI_GP0_BID),
        .S00_AXI_bready(processing_system7_0_M_AXI_GP0_BREADY),
        .S00_AXI_bresp(processing_system7_0_M_AXI_GP0_BRESP),
        .S00_AXI_bvalid(processing_system7_0_M_AXI_GP0_BVALID),
        .S00_AXI_rdata(processing_system7_0_M_AXI_GP0_RDATA),
        .S00_AXI_rid(processing_system7_0_M_AXI_GP0_RID),
        .S00_AXI_rlast(processing_system7_0_M_AXI_GP0_RLAST),
        .S00_AXI_rready(processing_system7_0_M_AXI_GP0_RREADY),
        .S00_AXI_rresp(processing_system7_0_M_AXI_GP0_RRESP),
        .S00_AXI_rvalid(processing_system7_0_M_AXI_GP0_RVALID),
        .S00_AXI_wdata(processing_system7_0_M_AXI_GP0_WDATA),
        .S00_AXI_wid(processing_system7_0_M_AXI_GP0_WID),
        .S00_AXI_wlast(processing_system7_0_M_AXI_GP0_WLAST),
        .S00_AXI_wready(processing_system7_0_M_AXI_GP0_WREADY),
        .S00_AXI_wstrb(processing_system7_0_M_AXI_GP0_WSTRB),
        .S00_AXI_wvalid(processing_system7_0_M_AXI_GP0_WVALID),
        .aclk(processing_system7_0_FCLK_CLK0),
        .aresetn(rst_ps7_0_100M_peripheral_aresetn));
  vcnnbd_conv1l_top_0_0 conv1l_top_0
       (.ap_done(conv1l_top_0_ap_done),
        .ap_ready(conv1l_top_0_ap_ready),
        .ap_start(axi_lite_slave_0_ap_start),
        .clk(processing_system7_0_FCLK_CLK0),
        .input_bram_rd_adddr(conv1l_top_0_input_bram_rd_ADDR),
        .input_bram_rd_clk(conv1l_top_0_input_bram_rd_CLK),
        .input_bram_rd_din(conv1l_top_0_input_bram_rd_DOUT),
        .input_bram_rd_dout(conv1l_top_0_input_bram_rd_DIN),
        .input_bram_rd_wen(conv1l_top_0_input_bram_rd_WE),
        .output_bram_wr_addr(conv1l_top_0_output_bram_wr_ADDR),
        .output_bram_wr_clk(conv1l_top_0_output_bram_wr_CLK),
        .output_bram_wr_dout(conv1l_top_0_output_bram_wr_DIN),
        .output_bram_wr_in(conv1l_top_0_output_bram_wr_DOUT),
        .output_bram_wr_rst(conv1l_top_0_output_bram_wr_RST),
        .output_bram_wr_wen(conv1l_top_0_output_bram_wr_WE),
        .rstn(rst_ps7_0_100M_peripheral_aresetn),
        .weight_bram_rd_adddr(conv1l_top_0_weight_bram_rd_ADDR),
        .weight_bram_rd_clk(conv1l_top_0_weight_bram_rd_CLK),
        .weight_bram_rd_din(conv1l_top_0_weight_bram_rd_DOUT),
        .weight_bram_rd_dout(conv1l_top_0_weight_bram_rd_DIN),
        .weight_bram_rd_wen(conv1l_top_0_weight_bram_rd_WE));
  vcnnbd_conv1l_top_0_1 conv1l_top_1
       (.ap_done(conv1l_top_1_ap_done),
        .ap_ready(conv1l_top_1_ap_ready),
        .ap_start(axi_lite_slave_1_ap_start),
        .clk(processing_system7_0_FCLK_CLK0),
        .input_bram_rd_adddr(conv1l_top_1_input_bram_rd_ADDR),
        .input_bram_rd_clk(conv1l_top_1_input_bram_rd_CLK),
        .input_bram_rd_din(conv1l_top_1_input_bram_rd_DOUT),
        .input_bram_rd_dout(conv1l_top_1_input_bram_rd_DIN),
        .input_bram_rd_wen(conv1l_top_1_input_bram_rd_WE),
        .output_bram_wr_addr(conv1l_top_1_output_bram_wr_ADDR),
        .output_bram_wr_clk(conv1l_top_1_output_bram_wr_CLK),
        .output_bram_wr_dout(conv1l_top_1_output_bram_wr_DIN),
        .output_bram_wr_in(conv1l_top_1_output_bram_wr_DOUT),
        .output_bram_wr_wen(conv1l_top_1_output_bram_wr_WE),
        .rstn(rst_ps7_0_100M_peripheral_aresetn),
        .weight_bram_rd_adddr(conv1l_top_1_weight_bram_rd_ADDR),
        .weight_bram_rd_clk(conv1l_top_1_weight_bram_rd_CLK),
        .weight_bram_rd_din(conv1l_top_1_weight_bram_rd_DOUT),
        .weight_bram_rd_dout(conv1l_top_1_weight_bram_rd_DIN),
        .weight_bram_rd_wen(conv1l_top_1_weight_bram_rd_WE));
  (* BMM_INFO_ADDRESS_SPACE = "byte  0x40000000 32 > vcnnbd input_bram_mem" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  vcnnbd_axi_bram_ctrl_0_0 input_bram
       (.bram_addr_a(axi_bram_ctrl_0_BRAM_PORTA_ADDR),
        .bram_clk_a(axi_bram_ctrl_0_BRAM_PORTA_CLK),
        .bram_rddata_a(axi_bram_ctrl_0_BRAM_PORTA_DOUT),
        .bram_we_a(axi_bram_ctrl_0_BRAM_PORTA_WE),
        .bram_wrdata_a(axi_bram_ctrl_0_BRAM_PORTA_DIN),
        .s_axi_aclk(processing_system7_0_FCLK_CLK0),
        .s_axi_araddr(axi_smc_M00_AXI_ARADDR),
        .s_axi_arburst(axi_smc_M00_AXI_ARBURST),
        .s_axi_arcache(axi_smc_M00_AXI_ARCACHE),
        .s_axi_aresetn(rst_ps7_0_100M_peripheral_aresetn),
        .s_axi_arlen(axi_smc_M00_AXI_ARLEN),
        .s_axi_arlock(axi_smc_M00_AXI_ARLOCK),
        .s_axi_arprot(axi_smc_M00_AXI_ARPROT),
        .s_axi_arready(axi_smc_M00_AXI_ARREADY),
        .s_axi_arsize(axi_smc_M00_AXI_ARSIZE),
        .s_axi_arvalid(axi_smc_M00_AXI_ARVALID),
        .s_axi_awaddr(axi_smc_M00_AXI_AWADDR),
        .s_axi_awburst(axi_smc_M00_AXI_AWBURST),
        .s_axi_awcache(axi_smc_M00_AXI_AWCACHE),
        .s_axi_awlen(axi_smc_M00_AXI_AWLEN),
        .s_axi_awlock(axi_smc_M00_AXI_AWLOCK),
        .s_axi_awprot(axi_smc_M00_AXI_AWPROT),
        .s_axi_awready(axi_smc_M00_AXI_AWREADY),
        .s_axi_awsize(axi_smc_M00_AXI_AWSIZE),
        .s_axi_awvalid(axi_smc_M00_AXI_AWVALID),
        .s_axi_bready(axi_smc_M00_AXI_BREADY),
        .s_axi_bresp(axi_smc_M00_AXI_BRESP),
        .s_axi_bvalid(axi_smc_M00_AXI_BVALID),
        .s_axi_rdata(axi_smc_M00_AXI_RDATA),
        .s_axi_rlast(axi_smc_M00_AXI_RLAST),
        .s_axi_rready(axi_smc_M00_AXI_RREADY),
        .s_axi_rresp(axi_smc_M00_AXI_RRESP),
        .s_axi_rvalid(axi_smc_M00_AXI_RVALID),
        .s_axi_wdata(axi_smc_M00_AXI_WDATA),
        .s_axi_wlast(axi_smc_M00_AXI_WLAST),
        .s_axi_wready(axi_smc_M00_AXI_WREADY),
        .s_axi_wstrb(axi_smc_M00_AXI_WSTRB),
        .s_axi_wvalid(axi_smc_M00_AXI_WVALID));
  vcnnbd_blk_mem_gen_0_0 input_bram_mem
       (.addra(axi_bram_ctrl_0_BRAM_PORTA_ADDR[10:0]),
        .addrb(conv1l_top_0_input_bram_rd_ADDR),
        .clka(axi_bram_ctrl_0_BRAM_PORTA_CLK),
        .clkb(conv1l_top_0_input_bram_rd_CLK),
        .dina(axi_bram_ctrl_0_BRAM_PORTA_DIN),
        .dinb(conv1l_top_0_input_bram_rd_DIN),
        .douta(axi_bram_ctrl_0_BRAM_PORTA_DOUT),
        .doutb(conv1l_top_0_input_bram_rd_DOUT),
        .wea(axi_bram_ctrl_0_BRAM_PORTA_WE),
        .web({conv1l_top_0_input_bram_rd_WE,conv1l_top_0_input_bram_rd_WE}));
  vcnnbd_blk_mem_gen_1_0 intermediate_bram_mem
       (.addra(conv1l_top_0_output_bram_wr_ADDR),
        .addrb(conv1l_top_1_input_bram_rd_ADDR),
        .clka(conv1l_top_0_output_bram_wr_CLK),
        .clkb(conv1l_top_1_input_bram_rd_CLK),
        .dina(conv1l_top_0_output_bram_wr_DIN),
        .dinb(conv1l_top_1_input_bram_rd_DIN),
        .douta(conv1l_top_0_output_bram_wr_DOUT),
        .doutb(conv1l_top_1_input_bram_rd_DOUT),
        .rsta(conv1l_top_0_output_bram_wr_RST),
        .wea({conv1l_top_0_output_bram_wr_WE,conv1l_top_0_output_bram_wr_WE}),
        .web({conv1l_top_1_input_bram_rd_WE,conv1l_top_1_input_bram_rd_WE}));
  (* BMM_INFO_ADDRESS_SPACE = "byte  0x44000000 32 > vcnnbd output_bram_mem1" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  vcnnbd_weight_bram_0 output_bram
       (.bram_addr_a(output_bram_BRAM_PORTA_ADDR),
        .bram_clk_a(output_bram_BRAM_PORTA_CLK),
        .bram_en_a(output_bram_BRAM_PORTA_EN),
        .bram_rddata_a({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,output_bram_BRAM_PORTA_DOUT}),
        .bram_we_a(output_bram_BRAM_PORTA_WE),
        .bram_wrdata_a(output_bram_BRAM_PORTA_DIN),
        .s_axi_aclk(processing_system7_0_FCLK_CLK0),
        .s_axi_araddr(axi_smc_M02_AXI_ARADDR),
        .s_axi_arburst(axi_smc_M02_AXI_ARBURST),
        .s_axi_arcache(axi_smc_M02_AXI_ARCACHE),
        .s_axi_aresetn(rst_ps7_0_100M_peripheral_aresetn),
        .s_axi_arlen(axi_smc_M02_AXI_ARLEN),
        .s_axi_arlock(axi_smc_M02_AXI_ARLOCK),
        .s_axi_arprot(axi_smc_M02_AXI_ARPROT),
        .s_axi_arready(axi_smc_M02_AXI_ARREADY),
        .s_axi_arsize(axi_smc_M02_AXI_ARSIZE),
        .s_axi_arvalid(axi_smc_M02_AXI_ARVALID),
        .s_axi_awaddr(axi_smc_M02_AXI_AWADDR),
        .s_axi_awburst(axi_smc_M02_AXI_AWBURST),
        .s_axi_awcache(axi_smc_M02_AXI_AWCACHE),
        .s_axi_awlen(axi_smc_M02_AXI_AWLEN),
        .s_axi_awlock(axi_smc_M02_AXI_AWLOCK),
        .s_axi_awprot(axi_smc_M02_AXI_AWPROT),
        .s_axi_awready(axi_smc_M02_AXI_AWREADY),
        .s_axi_awsize(axi_smc_M02_AXI_AWSIZE),
        .s_axi_awvalid(axi_smc_M02_AXI_AWVALID),
        .s_axi_bready(axi_smc_M02_AXI_BREADY),
        .s_axi_bresp(axi_smc_M02_AXI_BRESP),
        .s_axi_bvalid(axi_smc_M02_AXI_BVALID),
        .s_axi_rdata(axi_smc_M02_AXI_RDATA),
        .s_axi_rlast(axi_smc_M02_AXI_RLAST),
        .s_axi_rready(axi_smc_M02_AXI_RREADY),
        .s_axi_rresp(axi_smc_M02_AXI_RRESP),
        .s_axi_rvalid(axi_smc_M02_AXI_RVALID),
        .s_axi_wdata(axi_smc_M02_AXI_WDATA),
        .s_axi_wlast(axi_smc_M02_AXI_WLAST),
        .s_axi_wready(axi_smc_M02_AXI_WREADY),
        .s_axi_wstrb(axi_smc_M02_AXI_WSTRB),
        .s_axi_wvalid(axi_smc_M02_AXI_WVALID));
  vcnnbd_output_bram_mem_1 output_bram_mem1
       (.addra(conv1l_top_1_output_bram_wr_ADDR),
        .addrb(output_bram_BRAM_PORTA_ADDR),
        .clka(conv1l_top_1_output_bram_wr_CLK),
        .clkb(output_bram_BRAM_PORTA_CLK),
        .dina(conv1l_top_1_output_bram_wr_DIN),
        .dinb(output_bram_BRAM_PORTA_DIN[15:0]),
        .douta(conv1l_top_1_output_bram_wr_DOUT),
        .doutb(output_bram_BRAM_PORTA_DOUT),
        .enb(output_bram_BRAM_PORTA_EN),
        .wea({conv1l_top_1_output_bram_wr_WE,conv1l_top_1_output_bram_wr_WE}),
        .web(output_bram_BRAM_PORTA_WE[1:0]));
  (* BMM_INFO_PROCESSOR = "arm > vcnnbd input_bram vcnnbd weight_bram vcnnbd output_bram" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  vcnnbd_processing_system7_0_0 processing_system7_0
       (.DDR_Addr(DDR_addr[14:0]),
        .DDR_BankAddr(DDR_ba[2:0]),
        .DDR_CAS_n(DDR_cas_n),
        .DDR_CKE(DDR_cke),
        .DDR_CS_n(DDR_cs_n),
        .DDR_Clk(DDR_ck_p),
        .DDR_Clk_n(DDR_ck_n),
        .DDR_DM(DDR_dm[3:0]),
        .DDR_DQ(DDR_dq[31:0]),
        .DDR_DQS(DDR_dqs_p[3:0]),
        .DDR_DQS_n(DDR_dqs_n[3:0]),
        .DDR_DRSTB(DDR_reset_n),
        .DDR_ODT(DDR_odt),
        .DDR_RAS_n(DDR_ras_n),
        .DDR_VRN(FIXED_IO_ddr_vrn),
        .DDR_VRP(FIXED_IO_ddr_vrp),
        .DDR_WEB(DDR_we_n),
        .FCLK_CLK0(processing_system7_0_FCLK_CLK0),
        .FCLK_RESET0_N(processing_system7_0_FCLK_RESET0_N),
        .MIO(FIXED_IO_mio[53:0]),
        .M_AXI_GP0_ACLK(processing_system7_0_FCLK_CLK0),
        .M_AXI_GP0_ARADDR(processing_system7_0_M_AXI_GP0_ARADDR),
        .M_AXI_GP0_ARBURST(processing_system7_0_M_AXI_GP0_ARBURST),
        .M_AXI_GP0_ARCACHE(processing_system7_0_M_AXI_GP0_ARCACHE),
        .M_AXI_GP0_ARID(processing_system7_0_M_AXI_GP0_ARID),
        .M_AXI_GP0_ARLEN(processing_system7_0_M_AXI_GP0_ARLEN),
        .M_AXI_GP0_ARLOCK(processing_system7_0_M_AXI_GP0_ARLOCK),
        .M_AXI_GP0_ARPROT(processing_system7_0_M_AXI_GP0_ARPROT),
        .M_AXI_GP0_ARQOS(processing_system7_0_M_AXI_GP0_ARQOS),
        .M_AXI_GP0_ARREADY(processing_system7_0_M_AXI_GP0_ARREADY),
        .M_AXI_GP0_ARSIZE(processing_system7_0_M_AXI_GP0_ARSIZE),
        .M_AXI_GP0_ARVALID(processing_system7_0_M_AXI_GP0_ARVALID),
        .M_AXI_GP0_AWADDR(processing_system7_0_M_AXI_GP0_AWADDR),
        .M_AXI_GP0_AWBURST(processing_system7_0_M_AXI_GP0_AWBURST),
        .M_AXI_GP0_AWCACHE(processing_system7_0_M_AXI_GP0_AWCACHE),
        .M_AXI_GP0_AWID(processing_system7_0_M_AXI_GP0_AWID),
        .M_AXI_GP0_AWLEN(processing_system7_0_M_AXI_GP0_AWLEN),
        .M_AXI_GP0_AWLOCK(processing_system7_0_M_AXI_GP0_AWLOCK),
        .M_AXI_GP0_AWPROT(processing_system7_0_M_AXI_GP0_AWPROT),
        .M_AXI_GP0_AWQOS(processing_system7_0_M_AXI_GP0_AWQOS),
        .M_AXI_GP0_AWREADY(processing_system7_0_M_AXI_GP0_AWREADY),
        .M_AXI_GP0_AWSIZE(processing_system7_0_M_AXI_GP0_AWSIZE),
        .M_AXI_GP0_AWVALID(processing_system7_0_M_AXI_GP0_AWVALID),
        .M_AXI_GP0_BID(processing_system7_0_M_AXI_GP0_BID),
        .M_AXI_GP0_BREADY(processing_system7_0_M_AXI_GP0_BREADY),
        .M_AXI_GP0_BRESP(processing_system7_0_M_AXI_GP0_BRESP),
        .M_AXI_GP0_BVALID(processing_system7_0_M_AXI_GP0_BVALID),
        .M_AXI_GP0_RDATA(processing_system7_0_M_AXI_GP0_RDATA),
        .M_AXI_GP0_RID(processing_system7_0_M_AXI_GP0_RID),
        .M_AXI_GP0_RLAST(processing_system7_0_M_AXI_GP0_RLAST),
        .M_AXI_GP0_RREADY(processing_system7_0_M_AXI_GP0_RREADY),
        .M_AXI_GP0_RRESP(processing_system7_0_M_AXI_GP0_RRESP),
        .M_AXI_GP0_RVALID(processing_system7_0_M_AXI_GP0_RVALID),
        .M_AXI_GP0_WDATA(processing_system7_0_M_AXI_GP0_WDATA),
        .M_AXI_GP0_WID(processing_system7_0_M_AXI_GP0_WID),
        .M_AXI_GP0_WLAST(processing_system7_0_M_AXI_GP0_WLAST),
        .M_AXI_GP0_WREADY(processing_system7_0_M_AXI_GP0_WREADY),
        .M_AXI_GP0_WSTRB(processing_system7_0_M_AXI_GP0_WSTRB),
        .M_AXI_GP0_WVALID(processing_system7_0_M_AXI_GP0_WVALID),
        .PS_CLK(FIXED_IO_ps_clk),
        .PS_PORB(FIXED_IO_ps_porb),
        .PS_SRSTB(FIXED_IO_ps_srstb));
  vcnnbd_rst_ps7_0_100M_0 rst_ps7_0_100M
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(processing_system7_0_FCLK_RESET0_N),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_ps7_0_100M_peripheral_aresetn),
        .slowest_sync_clk(processing_system7_0_FCLK_CLK0));
  vcnnbd_system_ila_0_0 system_ila_0
       (.SLOT_0_AXI_araddr(axi_smc_M04_AXI_ARADDR),
        .SLOT_0_AXI_arready(axi_smc_M04_AXI_ARREADY),
        .SLOT_0_AXI_arvalid(axi_smc_M04_AXI_ARVALID),
        .SLOT_0_AXI_awaddr(axi_smc_M04_AXI_AWADDR),
        .SLOT_0_AXI_awready(axi_smc_M04_AXI_AWREADY),
        .SLOT_0_AXI_awvalid(axi_smc_M04_AXI_AWVALID),
        .SLOT_0_AXI_bready(axi_smc_M04_AXI_BREADY),
        .SLOT_0_AXI_bresp(axi_smc_M04_AXI_BRESP),
        .SLOT_0_AXI_bvalid(axi_smc_M04_AXI_BVALID),
        .SLOT_0_AXI_rdata(axi_smc_M04_AXI_RDATA),
        .SLOT_0_AXI_rready(axi_smc_M04_AXI_RREADY),
        .SLOT_0_AXI_rresp(axi_smc_M04_AXI_RRESP),
        .SLOT_0_AXI_rvalid(axi_smc_M04_AXI_RVALID),
        .SLOT_0_AXI_wdata(axi_smc_M04_AXI_WDATA),
        .SLOT_0_AXI_wready(axi_smc_M04_AXI_WREADY),
        .SLOT_0_AXI_wstrb(axi_smc_M04_AXI_WSTRB),
        .SLOT_0_AXI_wvalid(axi_smc_M04_AXI_WVALID),
        .SLOT_10_BRAM_addr(output_bram_BRAM_PORTA_ADDR),
        .SLOT_10_BRAM_clk(output_bram_BRAM_PORTA_CLK),
        .SLOT_10_BRAM_din(output_bram_BRAM_PORTA_DIN),
        .SLOT_10_BRAM_dout({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,output_bram_BRAM_PORTA_DOUT}),
        .SLOT_10_BRAM_en(output_bram_BRAM_PORTA_EN),
        .SLOT_10_BRAM_rst(1'b0),
        .SLOT_10_BRAM_we(output_bram_BRAM_PORTA_WE),
        .SLOT_1_BRAM_addr(conv1l_top_0_input_bram_rd_ADDR),
        .SLOT_1_BRAM_clk(conv1l_top_0_input_bram_rd_CLK),
        .SLOT_1_BRAM_din(conv1l_top_0_input_bram_rd_DIN),
        .SLOT_1_BRAM_dout(conv1l_top_0_input_bram_rd_DOUT),
        .SLOT_1_BRAM_en(1'b0),
        .SLOT_1_BRAM_rst(1'b0),
        .SLOT_1_BRAM_we(conv1l_top_0_input_bram_rd_WE),
        .SLOT_2_BRAM_addr(weight_bram_BRAM_PORTA_ADDR),
        .SLOT_2_BRAM_clk(weight_bram_BRAM_PORTA_CLK),
        .SLOT_2_BRAM_din(weight_bram_BRAM_PORTA_DIN),
        .SLOT_2_BRAM_dout(weight_bram_BRAM_PORTA_DOUT),
        .SLOT_2_BRAM_en(1'b0),
        .SLOT_2_BRAM_rst(1'b0),
        .SLOT_2_BRAM_we(weight_bram_BRAM_PORTA_WE),
        .SLOT_3_BRAM_addr(conv1l_top_0_weight_bram_rd_ADDR),
        .SLOT_3_BRAM_clk(conv1l_top_0_weight_bram_rd_CLK),
        .SLOT_3_BRAM_din(conv1l_top_0_weight_bram_rd_DIN),
        .SLOT_3_BRAM_dout(conv1l_top_0_weight_bram_rd_DOUT),
        .SLOT_3_BRAM_en(1'b0),
        .SLOT_3_BRAM_rst(1'b0),
        .SLOT_3_BRAM_we(conv1l_top_0_weight_bram_rd_WE),
        .SLOT_4_AXI_araddr(axi_smc_M03_AXI_ARADDR),
        .SLOT_4_AXI_arready(axi_smc_M03_AXI_ARREADY),
        .SLOT_4_AXI_arvalid(axi_smc_M03_AXI_ARVALID),
        .SLOT_4_AXI_awaddr(axi_smc_M03_AXI_AWADDR),
        .SLOT_4_AXI_awready(axi_smc_M03_AXI_AWREADY),
        .SLOT_4_AXI_awvalid(axi_smc_M03_AXI_AWVALID),
        .SLOT_4_AXI_bready(axi_smc_M03_AXI_BREADY),
        .SLOT_4_AXI_bresp(axi_smc_M03_AXI_BRESP),
        .SLOT_4_AXI_bvalid(axi_smc_M03_AXI_BVALID),
        .SLOT_4_AXI_rdata(axi_smc_M03_AXI_RDATA),
        .SLOT_4_AXI_rready(axi_smc_M03_AXI_RREADY),
        .SLOT_4_AXI_rresp(axi_smc_M03_AXI_RRESP),
        .SLOT_4_AXI_rvalid(axi_smc_M03_AXI_RVALID),
        .SLOT_4_AXI_wdata(axi_smc_M03_AXI_WDATA),
        .SLOT_4_AXI_wready(axi_smc_M03_AXI_WREADY),
        .SLOT_4_AXI_wstrb(axi_smc_M03_AXI_WSTRB),
        .SLOT_4_AXI_wvalid(axi_smc_M03_AXI_WVALID),
        .SLOT_5_BRAM_addr(axi_bram_ctrl_0_BRAM_PORTA_ADDR),
        .SLOT_5_BRAM_clk(axi_bram_ctrl_0_BRAM_PORTA_CLK),
        .SLOT_5_BRAM_din(axi_bram_ctrl_0_BRAM_PORTA_DIN),
        .SLOT_5_BRAM_dout(axi_bram_ctrl_0_BRAM_PORTA_DOUT),
        .SLOT_5_BRAM_en(1'b0),
        .SLOT_5_BRAM_rst(1'b0),
        .SLOT_5_BRAM_we(axi_bram_ctrl_0_BRAM_PORTA_WE),
        .SLOT_6_BRAM_addr(conv1l_top_0_output_bram_wr_ADDR),
        .SLOT_6_BRAM_clk(conv1l_top_0_output_bram_wr_CLK),
        .SLOT_6_BRAM_din(conv1l_top_0_output_bram_wr_DIN),
        .SLOT_6_BRAM_dout(conv1l_top_0_output_bram_wr_DOUT),
        .SLOT_6_BRAM_en(1'b0),
        .SLOT_6_BRAM_rst(conv1l_top_0_output_bram_wr_RST),
        .SLOT_6_BRAM_we(conv1l_top_0_output_bram_wr_WE),
        .SLOT_7_BRAM_addr(conv1l_top_1_input_bram_rd_ADDR),
        .SLOT_7_BRAM_clk(conv1l_top_1_input_bram_rd_CLK),
        .SLOT_7_BRAM_din(conv1l_top_1_input_bram_rd_DIN),
        .SLOT_7_BRAM_dout(conv1l_top_1_input_bram_rd_DOUT),
        .SLOT_7_BRAM_en(1'b0),
        .SLOT_7_BRAM_rst(1'b0),
        .SLOT_7_BRAM_we(conv1l_top_1_input_bram_rd_WE),
        .SLOT_8_BRAM_addr(conv1l_top_1_weight_bram_rd_ADDR),
        .SLOT_8_BRAM_clk(conv1l_top_1_weight_bram_rd_CLK),
        .SLOT_8_BRAM_din(conv1l_top_1_weight_bram_rd_DIN),
        .SLOT_8_BRAM_dout(conv1l_top_1_weight_bram_rd_DOUT),
        .SLOT_8_BRAM_en(1'b0),
        .SLOT_8_BRAM_rst(1'b0),
        .SLOT_8_BRAM_we(conv1l_top_1_weight_bram_rd_WE),
        .SLOT_9_BRAM_addr(conv1l_top_1_output_bram_wr_ADDR),
        .SLOT_9_BRAM_clk(conv1l_top_1_output_bram_wr_CLK),
        .SLOT_9_BRAM_din(conv1l_top_1_output_bram_wr_DIN),
        .SLOT_9_BRAM_dout(conv1l_top_1_output_bram_wr_DOUT),
        .SLOT_9_BRAM_en(1'b0),
        .SLOT_9_BRAM_rst(1'b0),
        .SLOT_9_BRAM_we(conv1l_top_1_output_bram_wr_WE),
        .clk(processing_system7_0_FCLK_CLK0),
        .probe0(axi_lite_slave_1_ap_start),
        .probe1(conv1l_top_1_ap_done),
        .probe2(conv1l_top_1_ap_ready),
        .probe3(axi_lite_slave_0_ap_start),
        .probe4(conv1l_top_0_ap_ready),
        .probe5(conv1l_top_0_ap_done),
        .probe6(rst_ps7_0_100M_peripheral_aresetn),
        .resetn(rst_ps7_0_100M_peripheral_aresetn));
  vcnnbd_output_bram_mem_0 weight2_bram_mem
       (.addra(conv1l_top_1_weight_bram_rd_ADDR),
        .clka(conv1l_top_1_weight_bram_rd_CLK),
        .dina(conv1l_top_1_weight_bram_rd_DIN),
        .douta(conv1l_top_1_weight_bram_rd_DOUT),
        .wea({conv1l_top_1_weight_bram_rd_WE,conv1l_top_1_weight_bram_rd_WE}));
  (* BMM_INFO_ADDRESS_SPACE = "byte  0x42000000 32 > vcnnbd weight_bram_mem" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  vcnnbd_axi_bram_ctrl_0_1 weight_bram
       (.bram_addr_a(weight_bram_BRAM_PORTA_ADDR),
        .bram_clk_a(weight_bram_BRAM_PORTA_CLK),
        .bram_rddata_a(weight_bram_BRAM_PORTA_DOUT),
        .bram_we_a(weight_bram_BRAM_PORTA_WE),
        .bram_wrdata_a(weight_bram_BRAM_PORTA_DIN),
        .s_axi_aclk(processing_system7_0_FCLK_CLK0),
        .s_axi_araddr(axi_smc_M01_AXI_ARADDR),
        .s_axi_arburst(axi_smc_M01_AXI_ARBURST),
        .s_axi_arcache(axi_smc_M01_AXI_ARCACHE),
        .s_axi_aresetn(rst_ps7_0_100M_peripheral_aresetn),
        .s_axi_arlen(axi_smc_M01_AXI_ARLEN),
        .s_axi_arlock(axi_smc_M01_AXI_ARLOCK),
        .s_axi_arprot(axi_smc_M01_AXI_ARPROT),
        .s_axi_arready(axi_smc_M01_AXI_ARREADY),
        .s_axi_arsize(axi_smc_M01_AXI_ARSIZE),
        .s_axi_arvalid(axi_smc_M01_AXI_ARVALID),
        .s_axi_awaddr(axi_smc_M01_AXI_AWADDR),
        .s_axi_awburst(axi_smc_M01_AXI_AWBURST),
        .s_axi_awcache(axi_smc_M01_AXI_AWCACHE),
        .s_axi_awlen(axi_smc_M01_AXI_AWLEN),
        .s_axi_awlock(axi_smc_M01_AXI_AWLOCK),
        .s_axi_awprot(axi_smc_M01_AXI_AWPROT),
        .s_axi_awready(axi_smc_M01_AXI_AWREADY),
        .s_axi_awsize(axi_smc_M01_AXI_AWSIZE),
        .s_axi_awvalid(axi_smc_M01_AXI_AWVALID),
        .s_axi_bready(axi_smc_M01_AXI_BREADY),
        .s_axi_bresp(axi_smc_M01_AXI_BRESP),
        .s_axi_bvalid(axi_smc_M01_AXI_BVALID),
        .s_axi_rdata(axi_smc_M01_AXI_RDATA),
        .s_axi_rlast(axi_smc_M01_AXI_RLAST),
        .s_axi_rready(axi_smc_M01_AXI_RREADY),
        .s_axi_rresp(axi_smc_M01_AXI_RRESP),
        .s_axi_rvalid(axi_smc_M01_AXI_RVALID),
        .s_axi_wdata(axi_smc_M01_AXI_WDATA),
        .s_axi_wlast(axi_smc_M01_AXI_WLAST),
        .s_axi_wready(axi_smc_M01_AXI_WREADY),
        .s_axi_wstrb(axi_smc_M01_AXI_WSTRB),
        .s_axi_wvalid(axi_smc_M01_AXI_WVALID));
  vcnnbd_blk_mem_gen_0_1 weight_bram_mem
       (.addra(weight_bram_BRAM_PORTA_ADDR[7:0]),
        .addrb(conv1l_top_0_weight_bram_rd_ADDR),
        .clka(weight_bram_BRAM_PORTA_CLK),
        .clkb(conv1l_top_0_weight_bram_rd_CLK),
        .dina(weight_bram_BRAM_PORTA_DIN),
        .dinb(conv1l_top_0_weight_bram_rd_DIN),
        .douta(weight_bram_BRAM_PORTA_DOUT),
        .doutb(conv1l_top_0_weight_bram_rd_DOUT),
        .wea(weight_bram_BRAM_PORTA_WE),
        .web({conv1l_top_0_weight_bram_rd_WE,conv1l_top_0_weight_bram_rd_WE}));
endmodule
