-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
-- Date        : Mon Mar 26 15:21:31 2018
-- Host        : dots running 64-bit Ubuntu 16.04.4 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/gokul/playground/ece594bb/fpgacc/vcnn/vcnn.srcs/sources_1/bd/vcnnbd/ip/vcnnbd_conv1l_top_0_1/vcnnbd_conv1l_top_0_1_stub.vhdl
-- Design      : vcnnbd_conv1l_top_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity vcnnbd_conv1l_top_0_1 is
  Port ( 
    clk : in STD_LOGIC;
    rstn : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_ready : out STD_LOGIC;
    ap_done : out STD_LOGIC;
    input_bram_rd_clk : out STD_LOGIC;
    input_bram_rd_rst : out STD_LOGIC;
    input_bram_rd_en : out STD_LOGIC;
    input_bram_rd_wen : out STD_LOGIC;
    input_bram_rd_adddr : out STD_LOGIC_VECTOR ( 13 downto 0 );
    input_bram_rd_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    input_bram_rd_din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    weight_bram_rd_clk : out STD_LOGIC;
    weight_bram_rd_rst : out STD_LOGIC;
    weight_bram_rd_en : out STD_LOGIC;
    weight_bram_rd_wen : out STD_LOGIC;
    weight_bram_rd_adddr : out STD_LOGIC_VECTOR ( 12 downto 0 );
    weight_bram_rd_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    weight_bram_rd_din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    output_bram_wr_clk : out STD_LOGIC;
    output_bram_wr_rst : out STD_LOGIC;
    output_bram_wr_en : out STD_LOGIC;
    output_bram_wr_wen : out STD_LOGIC;
    output_bram_wr_addr : out STD_LOGIC_VECTOR ( 14 downto 0 );
    output_bram_wr_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    output_bram_wr_in : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );

end vcnnbd_conv1l_top_0_1;

architecture stub of vcnnbd_conv1l_top_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rstn,ap_start,ap_ready,ap_done,input_bram_rd_clk,input_bram_rd_rst,input_bram_rd_en,input_bram_rd_wen,input_bram_rd_adddr[13:0],input_bram_rd_dout[15:0],input_bram_rd_din[15:0],weight_bram_rd_clk,weight_bram_rd_rst,weight_bram_rd_en,weight_bram_rd_wen,weight_bram_rd_adddr[12:0],weight_bram_rd_dout[15:0],weight_bram_rd_din[15:0],output_bram_wr_clk,output_bram_wr_rst,output_bram_wr_en,output_bram_wr_wen,output_bram_wr_addr[14:0],output_bram_wr_dout[15:0],output_bram_wr_in[15:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "conv1l_top,Vivado 2017.2";
begin
end;
