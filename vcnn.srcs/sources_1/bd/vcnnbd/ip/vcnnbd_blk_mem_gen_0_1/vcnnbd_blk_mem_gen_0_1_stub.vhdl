-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
-- Date        : Mon Mar 26 12:51:26 2018
-- Host        : dots running 64-bit Ubuntu 16.04.4 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/gokul/playground/ece594bb/fpgacc/vcnn/vcnn.srcs/sources_1/bd/vcnnbd/ip/vcnnbd_blk_mem_gen_0_1/vcnnbd_blk_mem_gen_0_1_stub.vhdl
-- Design      : vcnnbd_blk_mem_gen_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity vcnnbd_blk_mem_gen_0_1 is
  Port ( 
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 8 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );

end vcnnbd_blk_mem_gen_0_1;

architecture stub of vcnnbd_blk_mem_gen_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clka,addra[8:0],douta[15:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "blk_mem_gen_v8_3_6,Vivado 2017.2";
begin
end;
