// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
// Date        : Mon Mar 26 15:21:57 2018
// Host        : dots running 64-bit Ubuntu 16.04.4 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top vcnnbd_output_bram_mem_0 -prefix
//               vcnnbd_output_bram_mem_0_ vcnnbd_output_bram_mem_0_stub.v
// Design      : vcnnbd_output_bram_mem_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_3_6,Vivado 2017.2" *)
module vcnnbd_output_bram_mem_0(clka, addra, douta)
/* synthesis syn_black_box black_box_pad_pin="clka,addra[12:0],douta[15:0]" */;
  input clka;
  input [12:0]addra;
  output [15:0]douta;
endmodule
