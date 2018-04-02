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


// IP VLNV: user.org:user:conv1l_top:1.0
// IP Revision: 2

`timescale 1ns/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module vcnnbd_conv1l_top_0_1 (
  clk,
  rstn,
  ap_start,
  ap_ready,
  ap_done,
  input_bram_rd_clk,
  input_bram_rd_rst,
  input_bram_rd_en,
  input_bram_rd_wen,
  input_bram_rd_adddr,
  input_bram_rd_dout,
  input_bram_rd_din,
  weight_bram_rd_clk,
  weight_bram_rd_rst,
  weight_bram_rd_en,
  weight_bram_rd_wen,
  weight_bram_rd_adddr,
  weight_bram_rd_dout,
  weight_bram_rd_din,
  output_bram_wr_clk,
  output_bram_wr_rst,
  output_bram_wr_en,
  output_bram_wr_wen,
  output_bram_wr_addr,
  output_bram_wr_dout,
  output_bram_wr_in
);

(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rstn RST" *)
input wire rstn;
input wire ap_start;
output wire ap_ready;
output wire ap_done;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 input_bram_rd CLK" *)
output wire input_bram_rd_clk;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 input_bram_rd RST" *)
output wire input_bram_rd_rst;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 input_bram_rd EN" *)
output wire input_bram_rd_en;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 input_bram_rd WE" *)
output wire input_bram_rd_wen;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 input_bram_rd ADDR" *)
output wire [13 : 0] input_bram_rd_adddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 input_bram_rd DIN" *)
output wire [15 : 0] input_bram_rd_dout;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 input_bram_rd DOUT" *)
input wire [15 : 0] input_bram_rd_din;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 weight_bram_rd CLK" *)
output wire weight_bram_rd_clk;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 weight_bram_rd RST" *)
output wire weight_bram_rd_rst;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 weight_bram_rd EN" *)
output wire weight_bram_rd_en;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 weight_bram_rd WE" *)
output wire weight_bram_rd_wen;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 weight_bram_rd ADDR" *)
output wire [12 : 0] weight_bram_rd_adddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 weight_bram_rd DIN" *)
output wire [15 : 0] weight_bram_rd_dout;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 weight_bram_rd DOUT" *)
input wire [15 : 0] weight_bram_rd_din;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 output_bram_wr CLK" *)
output wire output_bram_wr_clk;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 output_bram_wr RST" *)
output wire output_bram_wr_rst;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 output_bram_wr EN" *)
output wire output_bram_wr_en;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 output_bram_wr WE" *)
output wire output_bram_wr_wen;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 output_bram_wr ADDR" *)
output wire [14 : 0] output_bram_wr_addr;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 output_bram_wr DIN" *)
output wire [15 : 0] output_bram_wr_dout;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 output_bram_wr DOUT" *)
input wire [15 : 0] output_bram_wr_in;

  conv1l_top #(
    .INPUT_ADDR_WIDTH(14),
    .INPUT_DATA_WIDTH(16),
    .INPUT_ROWS_COUNT(32),
    .INPUT_COLS_COUNT(32),
    .INPUT_CHNLS_COUNT(16),
    .WEIGHT_ADDR_WIDTH(13),
    .WEIGHT_DATA_WIDTH(16),
    .WEIGHT_ROWS_COUNT(3),
    .WEIGHT_COLS_COUNT(3),
    .WEIGHT_CHNLS_COUNT(3),
    .WEIGHT_FLTRS_COUNT(32),
    .OUTPUT_ADDR_WIDTH(15),
    .OUTPUT_DATA_WIDTH(16),
    .OUTPUT_ROWS_COUNT(32),
    .OUTPUT_COLS_COUNT(32),
    .OUTPUT_CHNLS_COUNT(32),
    .CONV_IROWS_WIDTH(6),
    .CONV_ICOLS_WIDTH(6),
    .CONV_ICHNLS_WIDTH(5),
    .CONV_WROWS_WIDTH(3),
    .CONV_WCOLS_WIDTH(3),
    .CONV_WFLTRS_WIDTH(6)
  ) inst (
    .clk(clk),
    .rstn(rstn),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .input_bram_rd_clk(input_bram_rd_clk),
    .input_bram_rd_rst(input_bram_rd_rst),
    .input_bram_rd_en(input_bram_rd_en),
    .input_bram_rd_wen(input_bram_rd_wen),
    .input_bram_rd_adddr(input_bram_rd_adddr),
    .input_bram_rd_dout(input_bram_rd_dout),
    .input_bram_rd_din(input_bram_rd_din),
    .weight_bram_rd_clk(weight_bram_rd_clk),
    .weight_bram_rd_rst(weight_bram_rd_rst),
    .weight_bram_rd_en(weight_bram_rd_en),
    .weight_bram_rd_wen(weight_bram_rd_wen),
    .weight_bram_rd_adddr(weight_bram_rd_adddr),
    .weight_bram_rd_dout(weight_bram_rd_dout),
    .weight_bram_rd_din(weight_bram_rd_din),
    .output_bram_wr_clk(output_bram_wr_clk),
    .output_bram_wr_rst(output_bram_wr_rst),
    .output_bram_wr_en(output_bram_wr_en),
    .output_bram_wr_wen(output_bram_wr_wen),
    .output_bram_wr_addr(output_bram_wr_addr),
    .output_bram_wr_dout(output_bram_wr_dout),
    .output_bram_wr_in(output_bram_wr_in)
  );
endmodule
