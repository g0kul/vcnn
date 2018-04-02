-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
-- Date        : Fri Mar 23 09:30:47 2018
-- Host        : dots running 64-bit Ubuntu 16.04.4 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top vcnnbd_blk_mem_gen_1_0 -prefix
--               vcnnbd_blk_mem_gen_1_0_ vcnnbd_blk_mem_gen_1_0_stub.vhdl
-- Design      : vcnnbd_blk_mem_gen_1_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity vcnnbd_blk_mem_gen_1_0 is
  Port ( 
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 1 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 13 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 15 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 15 downto 0 );
    clkb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 1 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 13 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );

end vcnnbd_blk_mem_gen_1_0;

architecture stub of vcnnbd_blk_mem_gen_1_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clka,rsta,wea[1:0],addra[13:0],dina[15:0],douta[15:0],clkb,web[1:0],addrb[13:0],dinb[15:0],doutb[15:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "blk_mem_gen_v8_3_6,Vivado 2017.2";
begin
end;
