// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
// Date        : Fri Mar 23 09:30:47 2018
// Host        : dots running 64-bit Ubuntu 16.04.4 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top vcnnbd_blk_mem_gen_1_0 -prefix
//               vcnnbd_blk_mem_gen_1_0_ vcnnbd_blk_mem_gen_1_0_stub.v
// Design      : vcnnbd_blk_mem_gen_1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_3_6,Vivado 2017.2" *)
module vcnnbd_blk_mem_gen_1_0(clka, rsta, wea, addra, dina, douta, clkb, web, addrb, 
  dinb, doutb)
/* synthesis syn_black_box black_box_pad_pin="clka,rsta,wea[1:0],addra[13:0],dina[15:0],douta[15:0],clkb,web[1:0],addrb[13:0],dinb[15:0],doutb[15:0]" */;
  input clka;
  input rsta;
  input [1:0]wea;
  input [13:0]addra;
  input [15:0]dina;
  output [15:0]douta;
  input clkb;
  input [1:0]web;
  input [13:0]addrb;
  input [15:0]dinb;
  output [15:0]doutb;
endmodule
