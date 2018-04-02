// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
// Date        : Sat Mar 24 23:31:37 2018
// Host        : dots running 64-bit Ubuntu 16.04.4 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/gokul/playground/ece594bb/fpgacc/vcnn/ip/convl1/convl1.srcs/sources_1/ip/fp_mult_add_16bit/fp_mult_add_16bit_stub.v
// Design      : fp_mult_add_16bit
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "floating_point_v7_1_4,Vivado 2017.2" *)
module fp_mult_add_16bit(aclk, s_axis_a_tvalid, s_axis_a_tready, 
  s_axis_a_tdata, s_axis_b_tvalid, s_axis_b_tready, s_axis_b_tdata, s_axis_c_tvalid, 
  s_axis_c_tready, s_axis_c_tdata, m_axis_result_tvalid, m_axis_result_tdata, 
  m_axis_result_tuser)
/* synthesis syn_black_box black_box_pad_pin="aclk,s_axis_a_tvalid,s_axis_a_tready,s_axis_a_tdata[15:0],s_axis_b_tvalid,s_axis_b_tready,s_axis_b_tdata[15:0],s_axis_c_tvalid,s_axis_c_tready,s_axis_c_tdata[15:0],m_axis_result_tvalid,m_axis_result_tdata[15:0],m_axis_result_tuser[1:0]" */;
  input aclk;
  input s_axis_a_tvalid;
  output s_axis_a_tready;
  input [15:0]s_axis_a_tdata;
  input s_axis_b_tvalid;
  output s_axis_b_tready;
  input [15:0]s_axis_b_tdata;
  input s_axis_c_tvalid;
  output s_axis_c_tready;
  input [15:0]s_axis_c_tdata;
  output m_axis_result_tvalid;
  output [15:0]m_axis_result_tdata;
  output [1:0]m_axis_result_tuser;
endmodule
