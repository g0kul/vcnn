// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
// Date        : Mon Mar 26 15:21:30 2018
// Host        : dots running 64-bit Ubuntu 16.04.4 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/gokul/playground/ece594bb/fpgacc/vcnn/vcnn.srcs/sources_1/bd/vcnnbd/ip/vcnnbd_conv1l_top_0_1/vcnnbd_conv1l_top_0_1_stub.v
// Design      : vcnnbd_conv1l_top_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "conv1l_top,Vivado 2017.2" *)
module vcnnbd_conv1l_top_0_1(clk, rstn, ap_start, ap_ready, ap_done, 
  input_bram_rd_clk, input_bram_rd_rst, input_bram_rd_en, input_bram_rd_wen, 
  input_bram_rd_adddr, input_bram_rd_dout, input_bram_rd_din, weight_bram_rd_clk, 
  weight_bram_rd_rst, weight_bram_rd_en, weight_bram_rd_wen, weight_bram_rd_adddr, 
  weight_bram_rd_dout, weight_bram_rd_din, output_bram_wr_clk, output_bram_wr_rst, 
  output_bram_wr_en, output_bram_wr_wen, output_bram_wr_addr, output_bram_wr_dout, 
  output_bram_wr_in)
/* synthesis syn_black_box black_box_pad_pin="clk,rstn,ap_start,ap_ready,ap_done,input_bram_rd_clk,input_bram_rd_rst,input_bram_rd_en,input_bram_rd_wen,input_bram_rd_adddr[13:0],input_bram_rd_dout[15:0],input_bram_rd_din[15:0],weight_bram_rd_clk,weight_bram_rd_rst,weight_bram_rd_en,weight_bram_rd_wen,weight_bram_rd_adddr[12:0],weight_bram_rd_dout[15:0],weight_bram_rd_din[15:0],output_bram_wr_clk,output_bram_wr_rst,output_bram_wr_en,output_bram_wr_wen,output_bram_wr_addr[14:0],output_bram_wr_dout[15:0],output_bram_wr_in[15:0]" */;
  input clk;
  input rstn;
  input ap_start;
  output ap_ready;
  output ap_done;
  output input_bram_rd_clk;
  output input_bram_rd_rst;
  output input_bram_rd_en;
  output input_bram_rd_wen;
  output [13:0]input_bram_rd_adddr;
  output [15:0]input_bram_rd_dout;
  input [15:0]input_bram_rd_din;
  output weight_bram_rd_clk;
  output weight_bram_rd_rst;
  output weight_bram_rd_en;
  output weight_bram_rd_wen;
  output [12:0]weight_bram_rd_adddr;
  output [15:0]weight_bram_rd_dout;
  input [15:0]weight_bram_rd_din;
  output output_bram_wr_clk;
  output output_bram_wr_rst;
  output output_bram_wr_en;
  output output_bram_wr_wen;
  output [14:0]output_bram_wr_addr;
  output [15:0]output_bram_wr_dout;
  input [15:0]output_bram_wr_in;
endmodule
