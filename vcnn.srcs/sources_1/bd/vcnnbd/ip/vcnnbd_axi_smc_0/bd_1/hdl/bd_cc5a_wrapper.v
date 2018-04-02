//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
//Date        : Thu Mar  8 22:48:12 2018
//Host        : dots running 64-bit Ubuntu 16.04.4 LTS
//Command     : generate_target bd_cc5a_wrapper.bd
//Design      : bd_cc5a_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_cc5a_wrapper
   (M00_AXI_araddr,
    M00_AXI_arburst,
    M00_AXI_arcache,
    M00_AXI_arid,
    M00_AXI_arlen,
    M00_AXI_arlock,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arready,
    M00_AXI_arregion,
    M00_AXI_arsize,
    M00_AXI_aruser,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awburst,
    M00_AXI_awcache,
    M00_AXI_awid,
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awready,
    M00_AXI_awregion,
    M00_AXI_awsize,
    M00_AXI_awuser,
    M00_AXI_awvalid,
    M00_AXI_bid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_buser,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rid,
    M00_AXI_rlast,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_ruser,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wid,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wuser,
    M00_AXI_wvalid,
    M01_AXI_araddr,
    M01_AXI_arburst,
    M01_AXI_arcache,
    M01_AXI_arid,
    M01_AXI_arlen,
    M01_AXI_arlock,
    M01_AXI_arprot,
    M01_AXI_arqos,
    M01_AXI_arready,
    M01_AXI_arregion,
    M01_AXI_arsize,
    M01_AXI_aruser,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awburst,
    M01_AXI_awcache,
    M01_AXI_awid,
    M01_AXI_awlen,
    M01_AXI_awlock,
    M01_AXI_awprot,
    M01_AXI_awqos,
    M01_AXI_awready,
    M01_AXI_awregion,
    M01_AXI_awsize,
    M01_AXI_awuser,
    M01_AXI_awvalid,
    M01_AXI_bid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_buser,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rid,
    M01_AXI_rlast,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_ruser,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wid,
    M01_AXI_wlast,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wuser,
    M01_AXI_wvalid,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arregion,
    S00_AXI_arsize,
    S00_AXI_aruser,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awregion,
    S00_AXI_awsize,
    S00_AXI_awuser,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_buser,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_ruser,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wid,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wuser,
    S00_AXI_wvalid,
    aclk,
    aresetn);
  output M00_AXI_araddr;
  output [1:0]M00_AXI_arburst;
  output [3:0]M00_AXI_arcache;
  output M00_AXI_arid;
  output M00_AXI_arlen;
  output M00_AXI_arlock;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  input [0:0]M00_AXI_arready;
  output [3:0]M00_AXI_arregion;
  output [2:0]M00_AXI_arsize;
  output M00_AXI_aruser;
  output [0:0]M00_AXI_arvalid;
  output M00_AXI_awaddr;
  output [1:0]M00_AXI_awburst;
  output [3:0]M00_AXI_awcache;
  output M00_AXI_awid;
  output M00_AXI_awlen;
  output M00_AXI_awlock;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  input [0:0]M00_AXI_awready;
  output [3:0]M00_AXI_awregion;
  output [2:0]M00_AXI_awsize;
  output M00_AXI_awuser;
  output [0:0]M00_AXI_awvalid;
  input M00_AXI_bid;
  output [0:0]M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_buser;
  input [0:0]M00_AXI_bvalid;
  input M00_AXI_rdata;
  input M00_AXI_rid;
  input [0:0]M00_AXI_rlast;
  output [0:0]M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_ruser;
  input [0:0]M00_AXI_rvalid;
  output M00_AXI_wdata;
  output M00_AXI_wid;
  output [0:0]M00_AXI_wlast;
  input [0:0]M00_AXI_wready;
  output M00_AXI_wstrb;
  output M00_AXI_wuser;
  output [0:0]M00_AXI_wvalid;
  output M01_AXI_araddr;
  output [1:0]M01_AXI_arburst;
  output [3:0]M01_AXI_arcache;
  output M01_AXI_arid;
  output M01_AXI_arlen;
  output M01_AXI_arlock;
  output [2:0]M01_AXI_arprot;
  output [3:0]M01_AXI_arqos;
  input [0:0]M01_AXI_arready;
  output [3:0]M01_AXI_arregion;
  output [2:0]M01_AXI_arsize;
  output M01_AXI_aruser;
  output [0:0]M01_AXI_arvalid;
  output M01_AXI_awaddr;
  output [1:0]M01_AXI_awburst;
  output [3:0]M01_AXI_awcache;
  output M01_AXI_awid;
  output M01_AXI_awlen;
  output M01_AXI_awlock;
  output [2:0]M01_AXI_awprot;
  output [3:0]M01_AXI_awqos;
  input [0:0]M01_AXI_awready;
  output [3:0]M01_AXI_awregion;
  output [2:0]M01_AXI_awsize;
  output M01_AXI_awuser;
  output [0:0]M01_AXI_awvalid;
  input M01_AXI_bid;
  output [0:0]M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input M01_AXI_buser;
  input [0:0]M01_AXI_bvalid;
  input M01_AXI_rdata;
  input M01_AXI_rid;
  input [0:0]M01_AXI_rlast;
  output [0:0]M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input M01_AXI_ruser;
  input [0:0]M01_AXI_rvalid;
  output M01_AXI_wdata;
  output M01_AXI_wid;
  output [0:0]M01_AXI_wlast;
  input [0:0]M01_AXI_wready;
  output M01_AXI_wstrb;
  output M01_AXI_wuser;
  output [0:0]M01_AXI_wvalid;
  input S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input S00_AXI_arid;
  input S00_AXI_arlen;
  input S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output [0:0]S00_AXI_arready;
  input [3:0]S00_AXI_arregion;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_aruser;
  input [0:0]S00_AXI_arvalid;
  input S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input S00_AXI_awid;
  input S00_AXI_awlen;
  input S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output [0:0]S00_AXI_awready;
  input [3:0]S00_AXI_awregion;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awuser;
  input [0:0]S00_AXI_awvalid;
  output S00_AXI_bid;
  input [0:0]S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_buser;
  output [0:0]S00_AXI_bvalid;
  output S00_AXI_rdata;
  output S00_AXI_rid;
  output [0:0]S00_AXI_rlast;
  input [0:0]S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_ruser;
  output [0:0]S00_AXI_rvalid;
  input S00_AXI_wdata;
  input S00_AXI_wid;
  input [0:0]S00_AXI_wlast;
  output [0:0]S00_AXI_wready;
  input S00_AXI_wstrb;
  input S00_AXI_wuser;
  input [0:0]S00_AXI_wvalid;
  input aclk;
  input aresetn;

  wire M00_AXI_araddr;
  wire [1:0]M00_AXI_arburst;
  wire [3:0]M00_AXI_arcache;
  wire M00_AXI_arid;
  wire M00_AXI_arlen;
  wire M00_AXI_arlock;
  wire [2:0]M00_AXI_arprot;
  wire [3:0]M00_AXI_arqos;
  wire [0:0]M00_AXI_arready;
  wire [3:0]M00_AXI_arregion;
  wire [2:0]M00_AXI_arsize;
  wire M00_AXI_aruser;
  wire [0:0]M00_AXI_arvalid;
  wire M00_AXI_awaddr;
  wire [1:0]M00_AXI_awburst;
  wire [3:0]M00_AXI_awcache;
  wire M00_AXI_awid;
  wire M00_AXI_awlen;
  wire M00_AXI_awlock;
  wire [2:0]M00_AXI_awprot;
  wire [3:0]M00_AXI_awqos;
  wire [0:0]M00_AXI_awready;
  wire [3:0]M00_AXI_awregion;
  wire [2:0]M00_AXI_awsize;
  wire M00_AXI_awuser;
  wire [0:0]M00_AXI_awvalid;
  wire M00_AXI_bid;
  wire [0:0]M00_AXI_bready;
  wire [1:0]M00_AXI_bresp;
  wire M00_AXI_buser;
  wire [0:0]M00_AXI_bvalid;
  wire M00_AXI_rdata;
  wire M00_AXI_rid;
  wire [0:0]M00_AXI_rlast;
  wire [0:0]M00_AXI_rready;
  wire [1:0]M00_AXI_rresp;
  wire M00_AXI_ruser;
  wire [0:0]M00_AXI_rvalid;
  wire M00_AXI_wdata;
  wire M00_AXI_wid;
  wire [0:0]M00_AXI_wlast;
  wire [0:0]M00_AXI_wready;
  wire M00_AXI_wstrb;
  wire M00_AXI_wuser;
  wire [0:0]M00_AXI_wvalid;
  wire M01_AXI_araddr;
  wire [1:0]M01_AXI_arburst;
  wire [3:0]M01_AXI_arcache;
  wire M01_AXI_arid;
  wire M01_AXI_arlen;
  wire M01_AXI_arlock;
  wire [2:0]M01_AXI_arprot;
  wire [3:0]M01_AXI_arqos;
  wire [0:0]M01_AXI_arready;
  wire [3:0]M01_AXI_arregion;
  wire [2:0]M01_AXI_arsize;
  wire M01_AXI_aruser;
  wire [0:0]M01_AXI_arvalid;
  wire M01_AXI_awaddr;
  wire [1:0]M01_AXI_awburst;
  wire [3:0]M01_AXI_awcache;
  wire M01_AXI_awid;
  wire M01_AXI_awlen;
  wire M01_AXI_awlock;
  wire [2:0]M01_AXI_awprot;
  wire [3:0]M01_AXI_awqos;
  wire [0:0]M01_AXI_awready;
  wire [3:0]M01_AXI_awregion;
  wire [2:0]M01_AXI_awsize;
  wire M01_AXI_awuser;
  wire [0:0]M01_AXI_awvalid;
  wire M01_AXI_bid;
  wire [0:0]M01_AXI_bready;
  wire [1:0]M01_AXI_bresp;
  wire M01_AXI_buser;
  wire [0:0]M01_AXI_bvalid;
  wire M01_AXI_rdata;
  wire M01_AXI_rid;
  wire [0:0]M01_AXI_rlast;
  wire [0:0]M01_AXI_rready;
  wire [1:0]M01_AXI_rresp;
  wire M01_AXI_ruser;
  wire [0:0]M01_AXI_rvalid;
  wire M01_AXI_wdata;
  wire M01_AXI_wid;
  wire [0:0]M01_AXI_wlast;
  wire [0:0]M01_AXI_wready;
  wire M01_AXI_wstrb;
  wire M01_AXI_wuser;
  wire [0:0]M01_AXI_wvalid;
  wire S00_AXI_araddr;
  wire [1:0]S00_AXI_arburst;
  wire [3:0]S00_AXI_arcache;
  wire S00_AXI_arid;
  wire S00_AXI_arlen;
  wire S00_AXI_arlock;
  wire [2:0]S00_AXI_arprot;
  wire [3:0]S00_AXI_arqos;
  wire [0:0]S00_AXI_arready;
  wire [3:0]S00_AXI_arregion;
  wire [2:0]S00_AXI_arsize;
  wire S00_AXI_aruser;
  wire [0:0]S00_AXI_arvalid;
  wire S00_AXI_awaddr;
  wire [1:0]S00_AXI_awburst;
  wire [3:0]S00_AXI_awcache;
  wire S00_AXI_awid;
  wire S00_AXI_awlen;
  wire S00_AXI_awlock;
  wire [2:0]S00_AXI_awprot;
  wire [3:0]S00_AXI_awqos;
  wire [0:0]S00_AXI_awready;
  wire [3:0]S00_AXI_awregion;
  wire [2:0]S00_AXI_awsize;
  wire S00_AXI_awuser;
  wire [0:0]S00_AXI_awvalid;
  wire S00_AXI_bid;
  wire [0:0]S00_AXI_bready;
  wire [1:0]S00_AXI_bresp;
  wire S00_AXI_buser;
  wire [0:0]S00_AXI_bvalid;
  wire S00_AXI_rdata;
  wire S00_AXI_rid;
  wire [0:0]S00_AXI_rlast;
  wire [0:0]S00_AXI_rready;
  wire [1:0]S00_AXI_rresp;
  wire S00_AXI_ruser;
  wire [0:0]S00_AXI_rvalid;
  wire S00_AXI_wdata;
  wire S00_AXI_wid;
  wire [0:0]S00_AXI_wlast;
  wire [0:0]S00_AXI_wready;
  wire S00_AXI_wstrb;
  wire S00_AXI_wuser;
  wire [0:0]S00_AXI_wvalid;
  wire aclk;
  wire aresetn;

  bd_cc5a bd_cc5a_i
       (.M00_AXI_araddr(M00_AXI_araddr),
        .M00_AXI_arburst(M00_AXI_arburst),
        .M00_AXI_arcache(M00_AXI_arcache),
        .M00_AXI_arid(M00_AXI_arid),
        .M00_AXI_arlen(M00_AXI_arlen),
        .M00_AXI_arlock(M00_AXI_arlock),
        .M00_AXI_arprot(M00_AXI_arprot),
        .M00_AXI_arqos(M00_AXI_arqos),
        .M00_AXI_arready(M00_AXI_arready),
        .M00_AXI_arregion(M00_AXI_arregion),
        .M00_AXI_arsize(M00_AXI_arsize),
        .M00_AXI_aruser(M00_AXI_aruser),
        .M00_AXI_arvalid(M00_AXI_arvalid),
        .M00_AXI_awaddr(M00_AXI_awaddr),
        .M00_AXI_awburst(M00_AXI_awburst),
        .M00_AXI_awcache(M00_AXI_awcache),
        .M00_AXI_awid(M00_AXI_awid),
        .M00_AXI_awlen(M00_AXI_awlen),
        .M00_AXI_awlock(M00_AXI_awlock),
        .M00_AXI_awprot(M00_AXI_awprot),
        .M00_AXI_awqos(M00_AXI_awqos),
        .M00_AXI_awready(M00_AXI_awready),
        .M00_AXI_awregion(M00_AXI_awregion),
        .M00_AXI_awsize(M00_AXI_awsize),
        .M00_AXI_awuser(M00_AXI_awuser),
        .M00_AXI_awvalid(M00_AXI_awvalid),
        .M00_AXI_bid(M00_AXI_bid),
        .M00_AXI_bready(M00_AXI_bready),
        .M00_AXI_bresp(M00_AXI_bresp),
        .M00_AXI_buser(M00_AXI_buser),
        .M00_AXI_bvalid(M00_AXI_bvalid),
        .M00_AXI_rdata(M00_AXI_rdata),
        .M00_AXI_rid(M00_AXI_rid),
        .M00_AXI_rlast(M00_AXI_rlast),
        .M00_AXI_rready(M00_AXI_rready),
        .M00_AXI_rresp(M00_AXI_rresp),
        .M00_AXI_ruser(M00_AXI_ruser),
        .M00_AXI_rvalid(M00_AXI_rvalid),
        .M00_AXI_wdata(M00_AXI_wdata),
        .M00_AXI_wid(M00_AXI_wid),
        .M00_AXI_wlast(M00_AXI_wlast),
        .M00_AXI_wready(M00_AXI_wready),
        .M00_AXI_wstrb(M00_AXI_wstrb),
        .M00_AXI_wuser(M00_AXI_wuser),
        .M00_AXI_wvalid(M00_AXI_wvalid),
        .M01_AXI_araddr(M01_AXI_araddr),
        .M01_AXI_arburst(M01_AXI_arburst),
        .M01_AXI_arcache(M01_AXI_arcache),
        .M01_AXI_arid(M01_AXI_arid),
        .M01_AXI_arlen(M01_AXI_arlen),
        .M01_AXI_arlock(M01_AXI_arlock),
        .M01_AXI_arprot(M01_AXI_arprot),
        .M01_AXI_arqos(M01_AXI_arqos),
        .M01_AXI_arready(M01_AXI_arready),
        .M01_AXI_arregion(M01_AXI_arregion),
        .M01_AXI_arsize(M01_AXI_arsize),
        .M01_AXI_aruser(M01_AXI_aruser),
        .M01_AXI_arvalid(M01_AXI_arvalid),
        .M01_AXI_awaddr(M01_AXI_awaddr),
        .M01_AXI_awburst(M01_AXI_awburst),
        .M01_AXI_awcache(M01_AXI_awcache),
        .M01_AXI_awid(M01_AXI_awid),
        .M01_AXI_awlen(M01_AXI_awlen),
        .M01_AXI_awlock(M01_AXI_awlock),
        .M01_AXI_awprot(M01_AXI_awprot),
        .M01_AXI_awqos(M01_AXI_awqos),
        .M01_AXI_awready(M01_AXI_awready),
        .M01_AXI_awregion(M01_AXI_awregion),
        .M01_AXI_awsize(M01_AXI_awsize),
        .M01_AXI_awuser(M01_AXI_awuser),
        .M01_AXI_awvalid(M01_AXI_awvalid),
        .M01_AXI_bid(M01_AXI_bid),
        .M01_AXI_bready(M01_AXI_bready),
        .M01_AXI_bresp(M01_AXI_bresp),
        .M01_AXI_buser(M01_AXI_buser),
        .M01_AXI_bvalid(M01_AXI_bvalid),
        .M01_AXI_rdata(M01_AXI_rdata),
        .M01_AXI_rid(M01_AXI_rid),
        .M01_AXI_rlast(M01_AXI_rlast),
        .M01_AXI_rready(M01_AXI_rready),
        .M01_AXI_rresp(M01_AXI_rresp),
        .M01_AXI_ruser(M01_AXI_ruser),
        .M01_AXI_rvalid(M01_AXI_rvalid),
        .M01_AXI_wdata(M01_AXI_wdata),
        .M01_AXI_wid(M01_AXI_wid),
        .M01_AXI_wlast(M01_AXI_wlast),
        .M01_AXI_wready(M01_AXI_wready),
        .M01_AXI_wstrb(M01_AXI_wstrb),
        .M01_AXI_wuser(M01_AXI_wuser),
        .M01_AXI_wvalid(M01_AXI_wvalid),
        .S00_AXI_araddr(S00_AXI_araddr),
        .S00_AXI_arburst(S00_AXI_arburst),
        .S00_AXI_arcache(S00_AXI_arcache),
        .S00_AXI_arid(S00_AXI_arid),
        .S00_AXI_arlen(S00_AXI_arlen),
        .S00_AXI_arlock(S00_AXI_arlock),
        .S00_AXI_arprot(S00_AXI_arprot),
        .S00_AXI_arqos(S00_AXI_arqos),
        .S00_AXI_arready(S00_AXI_arready),
        .S00_AXI_arregion(S00_AXI_arregion),
        .S00_AXI_arsize(S00_AXI_arsize),
        .S00_AXI_aruser(S00_AXI_aruser),
        .S00_AXI_arvalid(S00_AXI_arvalid),
        .S00_AXI_awaddr(S00_AXI_awaddr),
        .S00_AXI_awburst(S00_AXI_awburst),
        .S00_AXI_awcache(S00_AXI_awcache),
        .S00_AXI_awid(S00_AXI_awid),
        .S00_AXI_awlen(S00_AXI_awlen),
        .S00_AXI_awlock(S00_AXI_awlock),
        .S00_AXI_awprot(S00_AXI_awprot),
        .S00_AXI_awqos(S00_AXI_awqos),
        .S00_AXI_awready(S00_AXI_awready),
        .S00_AXI_awregion(S00_AXI_awregion),
        .S00_AXI_awsize(S00_AXI_awsize),
        .S00_AXI_awuser(S00_AXI_awuser),
        .S00_AXI_awvalid(S00_AXI_awvalid),
        .S00_AXI_bid(S00_AXI_bid),
        .S00_AXI_bready(S00_AXI_bready),
        .S00_AXI_bresp(S00_AXI_bresp),
        .S00_AXI_buser(S00_AXI_buser),
        .S00_AXI_bvalid(S00_AXI_bvalid),
        .S00_AXI_rdata(S00_AXI_rdata),
        .S00_AXI_rid(S00_AXI_rid),
        .S00_AXI_rlast(S00_AXI_rlast),
        .S00_AXI_rready(S00_AXI_rready),
        .S00_AXI_rresp(S00_AXI_rresp),
        .S00_AXI_ruser(S00_AXI_ruser),
        .S00_AXI_rvalid(S00_AXI_rvalid),
        .S00_AXI_wdata(S00_AXI_wdata),
        .S00_AXI_wid(S00_AXI_wid),
        .S00_AXI_wlast(S00_AXI_wlast),
        .S00_AXI_wready(S00_AXI_wready),
        .S00_AXI_wstrb(S00_AXI_wstrb),
        .S00_AXI_wuser(S00_AXI_wuser),
        .S00_AXI_wvalid(S00_AXI_wvalid),
        .aclk(aclk),
        .aresetn(aresetn));
endmodule
