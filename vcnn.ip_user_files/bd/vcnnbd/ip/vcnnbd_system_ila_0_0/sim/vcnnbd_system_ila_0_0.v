// (c) Copyright 1995-2018 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:ip:system_ila:1.0
// IP Revision: 3

`timescale 1ns/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module vcnnbd_system_ila_0_0 (
  clk,
  probe0,
  probe1,
  probe2,
  probe3,
  probe4,
  probe5,
  probe6,
  SLOT_0_AXI_awaddr,
  SLOT_0_AXI_awvalid,
  SLOT_0_AXI_awready,
  SLOT_0_AXI_wdata,
  SLOT_0_AXI_wstrb,
  SLOT_0_AXI_wvalid,
  SLOT_0_AXI_wready,
  SLOT_0_AXI_bresp,
  SLOT_0_AXI_bvalid,
  SLOT_0_AXI_bready,
  SLOT_0_AXI_araddr,
  SLOT_0_AXI_arvalid,
  SLOT_0_AXI_arready,
  SLOT_0_AXI_rdata,
  SLOT_0_AXI_rresp,
  SLOT_0_AXI_rvalid,
  SLOT_0_AXI_rready,
  SLOT_1_BRAM_en,
  SLOT_1_BRAM_dout,
  SLOT_1_BRAM_din,
  SLOT_1_BRAM_we,
  SLOT_1_BRAM_addr,
  SLOT_1_BRAM_clk,
  SLOT_1_BRAM_rst,
  SLOT_2_BRAM_en,
  SLOT_2_BRAM_dout,
  SLOT_2_BRAM_din,
  SLOT_2_BRAM_we,
  SLOT_2_BRAM_addr,
  SLOT_2_BRAM_clk,
  SLOT_2_BRAM_rst,
  SLOT_3_BRAM_en,
  SLOT_3_BRAM_dout,
  SLOT_3_BRAM_din,
  SLOT_3_BRAM_we,
  SLOT_3_BRAM_addr,
  SLOT_3_BRAM_clk,
  SLOT_3_BRAM_rst,
  SLOT_4_AXI_awaddr,
  SLOT_4_AXI_awvalid,
  SLOT_4_AXI_awready,
  SLOT_4_AXI_wdata,
  SLOT_4_AXI_wstrb,
  SLOT_4_AXI_wvalid,
  SLOT_4_AXI_wready,
  SLOT_4_AXI_bresp,
  SLOT_4_AXI_bvalid,
  SLOT_4_AXI_bready,
  SLOT_4_AXI_araddr,
  SLOT_4_AXI_arvalid,
  SLOT_4_AXI_arready,
  SLOT_4_AXI_rdata,
  SLOT_4_AXI_rresp,
  SLOT_4_AXI_rvalid,
  SLOT_4_AXI_rready,
  SLOT_5_BRAM_en,
  SLOT_5_BRAM_dout,
  SLOT_5_BRAM_din,
  SLOT_5_BRAM_we,
  SLOT_5_BRAM_addr,
  SLOT_5_BRAM_clk,
  SLOT_5_BRAM_rst,
  SLOT_6_BRAM_en,
  SLOT_6_BRAM_dout,
  SLOT_6_BRAM_din,
  SLOT_6_BRAM_we,
  SLOT_6_BRAM_addr,
  SLOT_6_BRAM_clk,
  SLOT_6_BRAM_rst,
  SLOT_7_BRAM_en,
  SLOT_7_BRAM_dout,
  SLOT_7_BRAM_din,
  SLOT_7_BRAM_we,
  SLOT_7_BRAM_addr,
  SLOT_7_BRAM_clk,
  SLOT_7_BRAM_rst,
  SLOT_8_BRAM_en,
  SLOT_8_BRAM_dout,
  SLOT_8_BRAM_din,
  SLOT_8_BRAM_we,
  SLOT_8_BRAM_addr,
  SLOT_8_BRAM_clk,
  SLOT_8_BRAM_rst,
  SLOT_9_BRAM_en,
  SLOT_9_BRAM_dout,
  SLOT_9_BRAM_din,
  SLOT_9_BRAM_we,
  SLOT_9_BRAM_addr,
  SLOT_9_BRAM_clk,
  SLOT_9_BRAM_rst,
  SLOT_10_BRAM_en,
  SLOT_10_BRAM_dout,
  SLOT_10_BRAM_din,
  SLOT_10_BRAM_we,
  SLOT_10_BRAM_addr,
  SLOT_10_BRAM_clk,
  SLOT_10_BRAM_rst,
  resetn
);

(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.clk CLK" *)
input wire clk;
input wire [0 : 0] probe0;
input wire [0 : 0] probe1;
input wire [0 : 0] probe2;
input wire [0 : 0] probe3;
input wire [0 : 0] probe4;
input wire [0 : 0] probe5;
input wire [0 : 0] probe6;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWADDR" *)
input wire [4 : 0] SLOT_0_AXI_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWVALID" *)
input wire SLOT_0_AXI_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWREADY" *)
input wire SLOT_0_AXI_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI WDATA" *)
input wire [31 : 0] SLOT_0_AXI_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI WSTRB" *)
input wire [3 : 0] SLOT_0_AXI_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI WVALID" *)
input wire SLOT_0_AXI_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI WREADY" *)
input wire SLOT_0_AXI_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI BRESP" *)
input wire [1 : 0] SLOT_0_AXI_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI BVALID" *)
input wire SLOT_0_AXI_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI BREADY" *)
input wire SLOT_0_AXI_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARADDR" *)
input wire [4 : 0] SLOT_0_AXI_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARVALID" *)
input wire SLOT_0_AXI_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARREADY" *)
input wire SLOT_0_AXI_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RDATA" *)
input wire [31 : 0] SLOT_0_AXI_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RRESP" *)
input wire [1 : 0] SLOT_0_AXI_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RVALID" *)
input wire SLOT_0_AXI_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RREADY" *)
input wire SLOT_0_AXI_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 SLOT_1_BRAM EN" *)
input wire SLOT_1_BRAM_en;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 SLOT_1_BRAM DOUT" *)
input wire [15 : 0] SLOT_1_BRAM_dout;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 SLOT_1_BRAM DIN" *)
input wire [15 : 0] SLOT_1_BRAM_din;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 SLOT_1_BRAM WE" *)
input wire SLOT_1_BRAM_we;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 SLOT_1_BRAM ADDR" *)
input wire [11 : 0] SLOT_1_BRAM_addr;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 SLOT_1_BRAM CLK" *)
input wire SLOT_1_BRAM_clk;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 SLOT_1_BRAM RST" *)
input wire SLOT_1_BRAM_rst;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 SLOT_2_BRAM EN" *)
input wire SLOT_2_BRAM_en;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 SLOT_2_BRAM DOUT" *)
input wire [31 : 0] SLOT_2_BRAM_dout;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 SLOT_2_BRAM DIN" *)
input wire [31 : 0] SLOT_2_BRAM_din;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 SLOT_2_BRAM WE" *)
input wire [3 : 0] SLOT_2_BRAM_we;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 SLOT_2_BRAM ADDR" *)
input wire [12 : 0] SLOT_2_BRAM_addr;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 SLOT_2_BRAM CLK" *)
input wire SLOT_2_BRAM_clk;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 SLOT_2_BRAM RST" *)
input wire SLOT_2_BRAM_rst;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 SLOT_3_BRAM EN" *)
input wire SLOT_3_BRAM_en;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 SLOT_3_BRAM DOUT" *)
input wire [15 : 0] SLOT_3_BRAM_dout;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 SLOT_3_BRAM DIN" *)
input wire [15 : 0] SLOT_3_BRAM_din;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 SLOT_3_BRAM WE" *)
input wire SLOT_3_BRAM_we;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 SLOT_3_BRAM ADDR" *)
input wire [8 : 0] SLOT_3_BRAM_addr;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 SLOT_3_BRAM CLK" *)
input wire SLOT_3_BRAM_clk;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 SLOT_3_BRAM RST" *)
input wire SLOT_3_BRAM_rst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI AWADDR" *)
input wire [4 : 0] SLOT_4_AXI_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI AWVALID" *)
input wire SLOT_4_AXI_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI AWREADY" *)
input wire SLOT_4_AXI_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI WDATA" *)
input wire [31 : 0] SLOT_4_AXI_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI WSTRB" *)
input wire [3 : 0] SLOT_4_AXI_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI WVALID" *)
input wire SLOT_4_AXI_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI WREADY" *)
input wire SLOT_4_AXI_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI BRESP" *)
input wire [1 : 0] SLOT_4_AXI_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI BVALID" *)
input wire SLOT_4_AXI_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI BREADY" *)
input wire SLOT_4_AXI_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI ARADDR" *)
input wire [4 : 0] SLOT_4_AXI_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI ARVALID" *)
input wire SLOT_4_AXI_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI ARREADY" *)
input wire SLOT_4_AXI_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI RDATA" *)
input wire [31 : 0] SLOT_4_AXI_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI RRESP" *)
input wire [1 : 0] SLOT_4_AXI_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI RVALID" *)
input wire SLOT_4_AXI_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI RREADY" *)
input wire SLOT_4_AXI_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 SLOT_5_BRAM EN" *)
input wire SLOT_5_BRAM_en;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 SLOT_5_BRAM DOUT" *)
input wire [31 : 0] SLOT_5_BRAM_dout;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 SLOT_5_BRAM DIN" *)
input wire [31 : 0] SLOT_5_BRAM_din;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 SLOT_5_BRAM WE" *)
input wire [3 : 0] SLOT_5_BRAM_we;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 SLOT_5_BRAM ADDR" *)
input wire [11 : 0] SLOT_5_BRAM_addr;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 SLOT_5_BRAM CLK" *)
input wire SLOT_5_BRAM_clk;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 SLOT_5_BRAM RST" *)
input wire SLOT_5_BRAM_rst;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 SLOT_6_BRAM EN" *)
input wire SLOT_6_BRAM_en;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 SLOT_6_BRAM DOUT" *)
input wire [15 : 0] SLOT_6_BRAM_dout;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 SLOT_6_BRAM DIN" *)
input wire [15 : 0] SLOT_6_BRAM_din;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 SLOT_6_BRAM WE" *)
input wire SLOT_6_BRAM_we;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 SLOT_6_BRAM ADDR" *)
input wire [13 : 0] SLOT_6_BRAM_addr;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 SLOT_6_BRAM CLK" *)
input wire SLOT_6_BRAM_clk;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 SLOT_6_BRAM RST" *)
input wire SLOT_6_BRAM_rst;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 SLOT_7_BRAM EN" *)
input wire SLOT_7_BRAM_en;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 SLOT_7_BRAM DOUT" *)
input wire [15 : 0] SLOT_7_BRAM_dout;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 SLOT_7_BRAM DIN" *)
input wire [15 : 0] SLOT_7_BRAM_din;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 SLOT_7_BRAM WE" *)
input wire SLOT_7_BRAM_we;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 SLOT_7_BRAM ADDR" *)
input wire [13 : 0] SLOT_7_BRAM_addr;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 SLOT_7_BRAM CLK" *)
input wire SLOT_7_BRAM_clk;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 SLOT_7_BRAM RST" *)
input wire SLOT_7_BRAM_rst;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 SLOT_8_BRAM EN" *)
input wire SLOT_8_BRAM_en;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 SLOT_8_BRAM DOUT" *)
input wire [15 : 0] SLOT_8_BRAM_dout;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 SLOT_8_BRAM DIN" *)
input wire [15 : 0] SLOT_8_BRAM_din;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 SLOT_8_BRAM WE" *)
input wire SLOT_8_BRAM_we;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 SLOT_8_BRAM ADDR" *)
input wire [9 : 0] SLOT_8_BRAM_addr;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 SLOT_8_BRAM CLK" *)
input wire SLOT_8_BRAM_clk;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 SLOT_8_BRAM RST" *)
input wire SLOT_8_BRAM_rst;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 SLOT_9_BRAM EN" *)
input wire SLOT_9_BRAM_en;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 SLOT_9_BRAM DOUT" *)
input wire [15 : 0] SLOT_9_BRAM_dout;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 SLOT_9_BRAM DIN" *)
input wire [15 : 0] SLOT_9_BRAM_din;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 SLOT_9_BRAM WE" *)
input wire SLOT_9_BRAM_we;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 SLOT_9_BRAM ADDR" *)
input wire [14 : 0] SLOT_9_BRAM_addr;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 SLOT_9_BRAM CLK" *)
input wire SLOT_9_BRAM_clk;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 SLOT_9_BRAM RST" *)
input wire SLOT_9_BRAM_rst;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 SLOT_10_BRAM EN" *)
input wire SLOT_10_BRAM_en;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 SLOT_10_BRAM DOUT" *)
input wire [31 : 0] SLOT_10_BRAM_dout;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 SLOT_10_BRAM DIN" *)
input wire [31 : 0] SLOT_10_BRAM_din;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 SLOT_10_BRAM WE" *)
input wire [3 : 0] SLOT_10_BRAM_we;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 SLOT_10_BRAM ADDR" *)
input wire [14 : 0] SLOT_10_BRAM_addr;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 SLOT_10_BRAM CLK" *)
input wire SLOT_10_BRAM_clk;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 SLOT_10_BRAM RST" *)
input wire SLOT_10_BRAM_rst;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.resetn RST" *)
input wire resetn;

  bd_ae0e inst (
    .clk(clk),
    .probe0(probe0),
    .probe1(probe1),
    .probe2(probe2),
    .probe3(probe3),
    .probe4(probe4),
    .probe5(probe5),
    .probe6(probe6),
    .SLOT_0_AXI_awaddr(SLOT_0_AXI_awaddr),
    .SLOT_0_AXI_awvalid(SLOT_0_AXI_awvalid),
    .SLOT_0_AXI_awready(SLOT_0_AXI_awready),
    .SLOT_0_AXI_wdata(SLOT_0_AXI_wdata),
    .SLOT_0_AXI_wstrb(SLOT_0_AXI_wstrb),
    .SLOT_0_AXI_wvalid(SLOT_0_AXI_wvalid),
    .SLOT_0_AXI_wready(SLOT_0_AXI_wready),
    .SLOT_0_AXI_bresp(SLOT_0_AXI_bresp),
    .SLOT_0_AXI_bvalid(SLOT_0_AXI_bvalid),
    .SLOT_0_AXI_bready(SLOT_0_AXI_bready),
    .SLOT_0_AXI_araddr(SLOT_0_AXI_araddr),
    .SLOT_0_AXI_arvalid(SLOT_0_AXI_arvalid),
    .SLOT_0_AXI_arready(SLOT_0_AXI_arready),
    .SLOT_0_AXI_rdata(SLOT_0_AXI_rdata),
    .SLOT_0_AXI_rresp(SLOT_0_AXI_rresp),
    .SLOT_0_AXI_rvalid(SLOT_0_AXI_rvalid),
    .SLOT_0_AXI_rready(SLOT_0_AXI_rready),
    .SLOT_1_BRAM_en(SLOT_1_BRAM_en),
    .SLOT_1_BRAM_dout(SLOT_1_BRAM_dout),
    .SLOT_1_BRAM_din(SLOT_1_BRAM_din),
    .SLOT_1_BRAM_we(SLOT_1_BRAM_we),
    .SLOT_1_BRAM_addr(SLOT_1_BRAM_addr),
    .SLOT_1_BRAM_clk(SLOT_1_BRAM_clk),
    .SLOT_1_BRAM_rst(SLOT_1_BRAM_rst),
    .SLOT_2_BRAM_en(SLOT_2_BRAM_en),
    .SLOT_2_BRAM_dout(SLOT_2_BRAM_dout),
    .SLOT_2_BRAM_din(SLOT_2_BRAM_din),
    .SLOT_2_BRAM_we(SLOT_2_BRAM_we),
    .SLOT_2_BRAM_addr(SLOT_2_BRAM_addr),
    .SLOT_2_BRAM_clk(SLOT_2_BRAM_clk),
    .SLOT_2_BRAM_rst(SLOT_2_BRAM_rst),
    .SLOT_3_BRAM_en(SLOT_3_BRAM_en),
    .SLOT_3_BRAM_dout(SLOT_3_BRAM_dout),
    .SLOT_3_BRAM_din(SLOT_3_BRAM_din),
    .SLOT_3_BRAM_we(SLOT_3_BRAM_we),
    .SLOT_3_BRAM_addr(SLOT_3_BRAM_addr),
    .SLOT_3_BRAM_clk(SLOT_3_BRAM_clk),
    .SLOT_3_BRAM_rst(SLOT_3_BRAM_rst),
    .SLOT_4_AXI_awaddr(SLOT_4_AXI_awaddr),
    .SLOT_4_AXI_awvalid(SLOT_4_AXI_awvalid),
    .SLOT_4_AXI_awready(SLOT_4_AXI_awready),
    .SLOT_4_AXI_wdata(SLOT_4_AXI_wdata),
    .SLOT_4_AXI_wstrb(SLOT_4_AXI_wstrb),
    .SLOT_4_AXI_wvalid(SLOT_4_AXI_wvalid),
    .SLOT_4_AXI_wready(SLOT_4_AXI_wready),
    .SLOT_4_AXI_bresp(SLOT_4_AXI_bresp),
    .SLOT_4_AXI_bvalid(SLOT_4_AXI_bvalid),
    .SLOT_4_AXI_bready(SLOT_4_AXI_bready),
    .SLOT_4_AXI_araddr(SLOT_4_AXI_araddr),
    .SLOT_4_AXI_arvalid(SLOT_4_AXI_arvalid),
    .SLOT_4_AXI_arready(SLOT_4_AXI_arready),
    .SLOT_4_AXI_rdata(SLOT_4_AXI_rdata),
    .SLOT_4_AXI_rresp(SLOT_4_AXI_rresp),
    .SLOT_4_AXI_rvalid(SLOT_4_AXI_rvalid),
    .SLOT_4_AXI_rready(SLOT_4_AXI_rready),
    .SLOT_5_BRAM_en(SLOT_5_BRAM_en),
    .SLOT_5_BRAM_dout(SLOT_5_BRAM_dout),
    .SLOT_5_BRAM_din(SLOT_5_BRAM_din),
    .SLOT_5_BRAM_we(SLOT_5_BRAM_we),
    .SLOT_5_BRAM_addr(SLOT_5_BRAM_addr),
    .SLOT_5_BRAM_clk(SLOT_5_BRAM_clk),
    .SLOT_5_BRAM_rst(SLOT_5_BRAM_rst),
    .SLOT_6_BRAM_en(SLOT_6_BRAM_en),
    .SLOT_6_BRAM_dout(SLOT_6_BRAM_dout),
    .SLOT_6_BRAM_din(SLOT_6_BRAM_din),
    .SLOT_6_BRAM_we(SLOT_6_BRAM_we),
    .SLOT_6_BRAM_addr(SLOT_6_BRAM_addr),
    .SLOT_6_BRAM_clk(SLOT_6_BRAM_clk),
    .SLOT_6_BRAM_rst(SLOT_6_BRAM_rst),
    .SLOT_7_BRAM_en(SLOT_7_BRAM_en),
    .SLOT_7_BRAM_dout(SLOT_7_BRAM_dout),
    .SLOT_7_BRAM_din(SLOT_7_BRAM_din),
    .SLOT_7_BRAM_we(SLOT_7_BRAM_we),
    .SLOT_7_BRAM_addr(SLOT_7_BRAM_addr),
    .SLOT_7_BRAM_clk(SLOT_7_BRAM_clk),
    .SLOT_7_BRAM_rst(SLOT_7_BRAM_rst),
    .SLOT_8_BRAM_en(SLOT_8_BRAM_en),
    .SLOT_8_BRAM_dout(SLOT_8_BRAM_dout),
    .SLOT_8_BRAM_din(SLOT_8_BRAM_din),
    .SLOT_8_BRAM_we(SLOT_8_BRAM_we),
    .SLOT_8_BRAM_addr(SLOT_8_BRAM_addr),
    .SLOT_8_BRAM_clk(SLOT_8_BRAM_clk),
    .SLOT_8_BRAM_rst(SLOT_8_BRAM_rst),
    .SLOT_9_BRAM_en(SLOT_9_BRAM_en),
    .SLOT_9_BRAM_dout(SLOT_9_BRAM_dout),
    .SLOT_9_BRAM_din(SLOT_9_BRAM_din),
    .SLOT_9_BRAM_we(SLOT_9_BRAM_we),
    .SLOT_9_BRAM_addr(SLOT_9_BRAM_addr),
    .SLOT_9_BRAM_clk(SLOT_9_BRAM_clk),
    .SLOT_9_BRAM_rst(SLOT_9_BRAM_rst),
    .SLOT_10_BRAM_en(SLOT_10_BRAM_en),
    .SLOT_10_BRAM_dout(SLOT_10_BRAM_dout),
    .SLOT_10_BRAM_din(SLOT_10_BRAM_din),
    .SLOT_10_BRAM_we(SLOT_10_BRAM_we),
    .SLOT_10_BRAM_addr(SLOT_10_BRAM_addr),
    .SLOT_10_BRAM_clk(SLOT_10_BRAM_clk),
    .SLOT_10_BRAM_rst(SLOT_10_BRAM_rst),
    .resetn(resetn)
  );
endmodule
