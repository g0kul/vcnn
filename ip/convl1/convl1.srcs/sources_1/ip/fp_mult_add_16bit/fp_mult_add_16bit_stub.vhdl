-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
-- Date        : Sat Mar 24 23:31:37 2018
-- Host        : dots running 64-bit Ubuntu 16.04.4 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/gokul/playground/ece594bb/fpgacc/vcnn/ip/convl1/convl1.srcs/sources_1/ip/fp_mult_add_16bit/fp_mult_add_16bit_stub.vhdl
-- Design      : fp_mult_add_16bit
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fp_mult_add_16bit is
  Port ( 
    aclk : in STD_LOGIC;
    s_axis_a_tvalid : in STD_LOGIC;
    s_axis_a_tready : out STD_LOGIC;
    s_axis_a_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_b_tvalid : in STD_LOGIC;
    s_axis_b_tready : out STD_LOGIC;
    s_axis_b_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_c_tvalid : in STD_LOGIC;
    s_axis_c_tready : out STD_LOGIC;
    s_axis_c_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_result_tvalid : out STD_LOGIC;
    m_axis_result_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_result_tuser : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );

end fp_mult_add_16bit;

architecture stub of fp_mult_add_16bit is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "aclk,s_axis_a_tvalid,s_axis_a_tready,s_axis_a_tdata[15:0],s_axis_b_tvalid,s_axis_b_tready,s_axis_b_tdata[15:0],s_axis_c_tvalid,s_axis_c_tready,s_axis_c_tdata[15:0],m_axis_result_tvalid,m_axis_result_tdata[15:0],m_axis_result_tuser[1:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "floating_point_v7_1_4,Vivado 2017.2";
begin
end;
