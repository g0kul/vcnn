-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
-- Date        : Mon Mar 26 12:51:26 2018
-- Host        : dots running 64-bit Ubuntu 16.04.4 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/gokul/playground/ece594bb/fpgacc/vcnn/vcnn.srcs/sources_1/bd/vcnnbd/ip/vcnnbd_blk_mem_gen_0_1/vcnnbd_blk_mem_gen_0_1_sim_netlist.vhdl
-- Design      : vcnnbd_blk_mem_gen_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity vcnnbd_blk_mem_gen_0_1_blk_mem_gen_prim_wrapper_init is
  port (
    douta : out STD_LOGIC_VECTOR ( 15 downto 0 );
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of vcnnbd_blk_mem_gen_0_1_blk_mem_gen_prim_wrapper_init : entity is "blk_mem_gen_prim_wrapper_init";
end vcnnbd_blk_mem_gen_0_1_blk_mem_gen_prim_wrapper_init;

architecture STRUCTURE of vcnnbd_blk_mem_gen_0_1_blk_mem_gen_prim_wrapper_init is
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_1\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_10\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_11\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_16\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_17\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_18\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_19\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_2\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_24\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_25\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_26\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_27\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_3\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_32\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_33\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_34\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_35\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_8\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_9\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram\: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 1,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0B0B060C020E070F030400040B0D0F02030D0F090309040D0B0A050F0A080800",
      INIT_01 => X"0306060F0B03030B0B0D020B030D030503000A010A0E08020A08030F03090403",
      INIT_02 => X"0B080100030701000B060D0C0A0F0106030D050E0B0B0501030503020B070B08",
      INIT_03 => X"0B0B02000B020D0C0B09050D0A080C0F03080A050B00080E030C05070B0A0A0E",
      INIT_04 => X"030B06060B010B0D0B0706040B0706040B080F0A0B090E0F0305060C0B0B0B09",
      INIT_05 => X"0B080D0C0B0406000B08070E03080B08010C0F010B040603030E0F0A030D0F04",
      INIT_06 => X"020A050A03040E0E0B020B060A0E0C0D0B080609030B000F030C0904020E0E0D",
      INIT_07 => X"0309010A0309020A020502010B060C02030A0F0E030009010B010208030A0A00",
      INIT_08 => X"0A04060203010D050B060F060B0B000D0B0B0E050B08060B0B040B070A0B0B06",
      INIT_09 => X"030508000A0702040B0B02020B000B020A0F0C0A0B06020703010D060309030D",
      INIT_0A => X"0305060A0A0E0D0D030306080B030C020B060D080300000F0303060303000602",
      INIT_0B => X"030C030B03010A0F0B0B0E010A04020603010D080B050C0E0A050B0003000304",
      INIT_0C => X"0B02000A0B0400040B050301020D0F0A0305030303040F0C0A0D0D070B09080C",
      INIT_0D => X"0B060D0203070E090B090E080306000003020500020309020A0E080903050207",
      INIT_0E => X"0B040305030402090B05090F030806080B08080D03040D070A0F030503000D07",
      INIT_0F => X"0B010F05020F050D0B090602030B0D060B09070D0B0D030E04000B0A0B050A06",
      INIT_10 => X"030A0C0E0B02080E0307010D0A070A0B0B0A0E0F030A07050B07040103050C01",
      INIT_11 => X"030309040B010402030303080B07070803020700030C0B080B0B0E0A03010706",
      INIT_12 => X"0B000C090B08060F0B06040E020E0006020A0C0C0B08070B0B0205030303040C",
      INIT_13 => X"0B090D0D030408010B0304090B070D050303070D020E080A0203050103050502",
      INIT_14 => X"020707040A0D05060B0407010B050F0403020B07030804020309080B020C0005",
      INIT_15 => X"0B0904070B0307070B0E010D0B0C09090B06080C020D030703070B010B020200",
      INIT_16 => X"03030E07020F02000305020803070B0F030D0807030D0F0E03090D020B060404",
      INIT_17 => X"030C03050308040A0B0E0701030701070B08020F0B0A080D030400090A0F000B",
      INIT_18 => X"010608050B0C06000B040F080A0D0D0F0A0F090F030906030A0D080F0B0A0D03",
      INIT_19 => X"0B0900000B0A0F040B050B01030E08070302010A02030F04030908000305090A",
      INIT_1A => X"0B0C09000B07000F030C0C040B02050A03040906030A080E03020A0D020D0B0D",
      INIT_1B => X"03010A0C0A0D09090306030103010306030603000A080B040303060803080506",
      INIT_1C => X"0B090705030402090B0305090209000F0205070402000C0D03040F0903040100",
      INIT_1D => X"010F0C080B00040C030400040905010E020F0F090306060C0B0102080B080200",
      INIT_1E => X"0A0C020E0B030A09030504000B0201090B07090C0A0F080D0A0E01060B070901",
      INIT_1F => X"0A0D0A0D030B0D0E02090F060B0704090B0B0E0403060C0303080D040B050504",
      INIT_20 => X"030A0C050B07030A0B060B000B06040103040F08020D060F030A00000301020D",
      INIT_21 => X"0A0A07070B080B0A0B0909010201090703040607030701070A04010F0B010F0E",
      INIT_22 => X"0B05000003070E07030A04030A0404070B02020A0B0507090B0D030003050008",
      INIT_23 => X"0B070B010B080B000B0B010B0309010203070F06020B0504020D0107020C0704",
      INIT_24 => X"0B0900060306030103040D0903070D07030F010C0B0609090B04090F030B0B01",
      INIT_25 => X"0303060D0B0501070B04000D0B000E05020007010B0A070503030B040B090D08",
      INIT_26 => X"0A0D0703010F0D030301000B0301090B0B08020B020C0E050B08020202030B01",
      INIT_27 => X"0305090C0B060D0B03080E0E0B0001030206000E0B050D0E03070D0A03000808",
      INIT_28 => X"030A0D0A0B080403020D0100030B040E0B020A0B03050D040B050A04020C0206",
      INIT_29 => X"0B0101080B07080B020405050B07030203080F0203000D0A0303090C030C0409",
      INIT_2A => X"0B040C02030806080A080503020302090B0A0F000A0A070B0B050E000B0C0007",
      INIT_2B => X"030B000A0304080303040300020F0E0E02090A060B090B060B0B010003080B00",
      INIT_2C => X"0B0D0F020B060901030F03000B0509040A090707030D050A0B09030F0A0F0901",
      INIT_2D => X"010E020403070A020301060C0B080D010B0E0D06030C040C030704090B0A0C0A",
      INIT_2E => X"03060C0D030B0B0F020E00040B0D07000309050603040F050B0C00080B050209",
      INIT_2F => X"0208040C03060A0A030204060B06050F0304080E0B08080902080C080305000D",
      INIT_30 => X"0306000F03080301030B020D030F0306030A090403060A000B0909060306050A",
      INIT_31 => X"0B0501050A0802010A0E020D0B0A0B090B0D09030C0002040B0C050203000C09",
      INIT_32 => X"03080109030709060B0A050F020E060A03010108030A0D0A030301090B00020C",
      INIT_33 => X"030203070B0907060A0C09010302000C0B080507030B0709030A00030A0B0204",
      INIT_34 => X"0B0601060B050C0B0204050103080E090308090A0305010203090C0C03040404",
      INIT_35 => X"0B0901010B080807030A07090B0B040C0B0C050E0306020B0B0409020B050A07",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"00000",
      INIT_B => X"00000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 18,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 18
    )
        port map (
      ADDRARDADDR(13 downto 5) => addra(8 downto 0),
      ADDRARDADDR(4 downto 0) => B"00000",
      ADDRBWRADDR(13 downto 5) => addra(8 downto 0),
      ADDRBWRADDR(4 downto 0) => B"10000",
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DIADI(15 downto 0) => B"0000000000000000",
      DIBDI(15 downto 0) => B"0000000000000000",
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"00",
      DOADO(15) => \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_0\,
      DOADO(14) => \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_1\,
      DOADO(13) => \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_2\,
      DOADO(12) => \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_3\,
      DOADO(11 downto 8) => douta(7 downto 4),
      DOADO(7) => \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_8\,
      DOADO(6) => \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_9\,
      DOADO(5) => \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_10\,
      DOADO(4) => \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_11\,
      DOADO(3 downto 0) => douta(3 downto 0),
      DOBDO(15) => \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_16\,
      DOBDO(14) => \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_17\,
      DOBDO(13) => \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_18\,
      DOBDO(12) => \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_19\,
      DOBDO(11 downto 8) => douta(15 downto 12),
      DOBDO(7) => \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_24\,
      DOBDO(6) => \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_25\,
      DOBDO(5) => \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_26\,
      DOBDO(4) => \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_27\,
      DOBDO(3 downto 0) => douta(11 downto 8),
      DOPADOP(1) => \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_32\,
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_33\,
      DOPBDOP(1) => \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_34\,
      DOPBDOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram_n_35\,
      ENARDEN => '1',
      ENBWREN => '1',
      REGCEAREGCE => '1',
      REGCEB => '1',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1 downto 0) => B"00",
      WEBWE(3 downto 0) => B"0000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity vcnnbd_blk_mem_gen_0_1_blk_mem_gen_prim_width is
  port (
    douta : out STD_LOGIC_VECTOR ( 15 downto 0 );
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of vcnnbd_blk_mem_gen_0_1_blk_mem_gen_prim_width : entity is "blk_mem_gen_prim_width";
end vcnnbd_blk_mem_gen_0_1_blk_mem_gen_prim_width;

architecture STRUCTURE of vcnnbd_blk_mem_gen_0_1_blk_mem_gen_prim_width is
begin
\prim_init.ram\: entity work.vcnnbd_blk_mem_gen_0_1_blk_mem_gen_prim_wrapper_init
     port map (
      addra(8 downto 0) => addra(8 downto 0),
      clka => clka,
      douta(15 downto 0) => douta(15 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity vcnnbd_blk_mem_gen_0_1_blk_mem_gen_generic_cstr is
  port (
    douta : out STD_LOGIC_VECTOR ( 15 downto 0 );
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of vcnnbd_blk_mem_gen_0_1_blk_mem_gen_generic_cstr : entity is "blk_mem_gen_generic_cstr";
end vcnnbd_blk_mem_gen_0_1_blk_mem_gen_generic_cstr;

architecture STRUCTURE of vcnnbd_blk_mem_gen_0_1_blk_mem_gen_generic_cstr is
begin
\ramloop[0].ram.r\: entity work.vcnnbd_blk_mem_gen_0_1_blk_mem_gen_prim_width
     port map (
      addra(8 downto 0) => addra(8 downto 0),
      clka => clka,
      douta(15 downto 0) => douta(15 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity vcnnbd_blk_mem_gen_0_1_blk_mem_gen_top is
  port (
    douta : out STD_LOGIC_VECTOR ( 15 downto 0 );
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of vcnnbd_blk_mem_gen_0_1_blk_mem_gen_top : entity is "blk_mem_gen_top";
end vcnnbd_blk_mem_gen_0_1_blk_mem_gen_top;

architecture STRUCTURE of vcnnbd_blk_mem_gen_0_1_blk_mem_gen_top is
begin
\valid.cstr\: entity work.vcnnbd_blk_mem_gen_0_1_blk_mem_gen_generic_cstr
     port map (
      addra(8 downto 0) => addra(8 downto 0),
      clka => clka,
      douta(15 downto 0) => douta(15 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity vcnnbd_blk_mem_gen_0_1_blk_mem_gen_v8_3_6_synth is
  port (
    douta : out STD_LOGIC_VECTOR ( 15 downto 0 );
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of vcnnbd_blk_mem_gen_0_1_blk_mem_gen_v8_3_6_synth : entity is "blk_mem_gen_v8_3_6_synth";
end vcnnbd_blk_mem_gen_0_1_blk_mem_gen_v8_3_6_synth;

architecture STRUCTURE of vcnnbd_blk_mem_gen_0_1_blk_mem_gen_v8_3_6_synth is
begin
\gnbram.gnativebmg.native_blk_mem_gen\: entity work.vcnnbd_blk_mem_gen_0_1_blk_mem_gen_top
     port map (
      addra(8 downto 0) => addra(8 downto 0),
      clka => clka,
      douta(15 downto 0) => douta(15 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity vcnnbd_blk_mem_gen_0_1_blk_mem_gen_v8_3_6 is
  port (
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    regcea : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 8 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 15 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 15 downto 0 );
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    regceb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 0 to 0 );
    addrb : in STD_LOGIC_VECTOR ( 8 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    injectsbiterr : in STD_LOGIC;
    injectdbiterr : in STD_LOGIC;
    eccpipece : in STD_LOGIC;
    sbiterr : out STD_LOGIC;
    dbiterr : out STD_LOGIC;
    rdaddrecc : out STD_LOGIC_VECTOR ( 8 downto 0 );
    sleep : in STD_LOGIC;
    deepsleep : in STD_LOGIC;
    shutdown : in STD_LOGIC;
    rsta_busy : out STD_LOGIC;
    rstb_busy : out STD_LOGIC;
    s_aclk : in STD_LOGIC;
    s_aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_injectsbiterr : in STD_LOGIC;
    s_axi_injectdbiterr : in STD_LOGIC;
    s_axi_sbiterr : out STD_LOGIC;
    s_axi_dbiterr : out STD_LOGIC;
    s_axi_rdaddrecc : out STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  attribute C_ADDRA_WIDTH : integer;
  attribute C_ADDRA_WIDTH of vcnnbd_blk_mem_gen_0_1_blk_mem_gen_v8_3_6 : entity is 9;
  attribute C_ADDRB_WIDTH : integer;
  attribute C_ADDRB_WIDTH of vcnnbd_blk_mem_gen_0_1_blk_mem_gen_v8_3_6 : entity is 9;
  attribute C_ALGORITHM : integer;
  attribute C_ALGORITHM of vcnnbd_blk_mem_gen_0_1_blk_mem_gen_v8_3_6 : entity is 1;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of vcnnbd_blk_mem_gen_0_1_blk_mem_gen_v8_3_6 : entity is 4;
  attribute C_AXI_SLAVE_TYPE : integer;
  attribute C_AXI_SLAVE_TYPE of vcnnbd_blk_mem_gen_0_1_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of vcnnbd_blk_mem_gen_0_1_blk_mem_gen_v8_3_6 : entity is 1;
  attribute C_BYTE_SIZE : integer;
  attribute C_BYTE_SIZE of vcnnbd_blk_mem_gen_0_1_blk_mem_gen_v8_3_6 : entity is 9;
  attribute C_COMMON_CLK : integer;
  attribute C_COMMON_CLK of vcnnbd_blk_mem_gen_0_1_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_COUNT_18K_BRAM : string;
  attribute C_COUNT_18K_BRAM of vcnnbd_blk_mem_gen_0_1_blk_mem_gen_v8_3_6 : entity is "1";
  attribute C_COUNT_36K_BRAM : string;
  attribute C_COUNT_36K_BRAM of vcnnbd_blk_mem_gen_0_1_blk_mem_gen_v8_3_6 : entity is "0";
  attribute C_CTRL_ECC_ALGO : string;
  attribute C_CTRL_ECC_ALGO of vcnnbd_blk_mem_gen_0_1_blk_mem_gen_v8_3_6 : entity is "NONE";
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of vcnnbd_blk_mem_gen_0_1_blk_mem_gen_v8_3_6 : entity is "0";
  attribute C_DISABLE_WARN_BHV_COLL : integer;
  attribute C_DISABLE_WARN_BHV_COLL of vcnnbd_blk_mem_gen_0_1_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_DISABLE_WARN_BHV_RANGE : integer;
  attribute C_DISABLE_WARN_BHV_RANGE of vcnnbd_blk_mem_gen_0_1_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of vcnnbd_blk_mem_gen_0_1_blk_mem_gen_v8_3_6 : entity is "./";
  attribute C_ENABLE_32BIT_ADDRESS : integer;
  attribute C_ENABLE_32BIT_ADDRESS of vcnnbd_blk_mem_gen_0_1_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_EN_DEEPSLEEP_PIN : integer;
  attribute C_EN_DEEPSLEEP_PIN of vcnnbd_blk_mem_gen_0_1_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_EN_ECC_PIPE : integer;
  attribute C_EN_ECC_PIPE of vcnnbd_blk_mem_gen_0_1_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_EN_RDADDRA_CHG : integer;
  attribute C_EN_RDADDRA_CHG of vcnnbd_blk_mem_gen_0_1_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_EN_RDADDRB_CHG : integer;
  attribute C_EN_RDADDRB_CHG of vcnnbd_blk_mem_gen_0_1_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of vcnnbd_blk_mem_gen_0_1_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_EN_SHUTDOWN_PIN : integer;
  attribute C_EN_SHUTDOWN_PIN of vcnnbd_blk_mem_gen_0_1_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_EN_SLEEP_PIN : integer;
  attribute C_EN_SLEEP_PIN of vcnnbd_blk_mem_gen_0_1_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_EST_POWER_SUMMARY : string;
  attribute C_EST_POWER_SUMMARY of vcnnbd_blk_mem_gen_0_1_blk_mem_gen_v8_3_6 : entity is "Estimated Power for IP     :     2.7096 mW";
  attribute C_FAMILY : string;
  attribute C_FAMILY of vcnnbd_blk_mem_gen_0_1_blk_mem_gen_v8_3_6 : entity is "zynq";
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of vcnnbd_blk_mem_gen_0_1_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_HAS_ENA : integer;
  attribute C_HAS_ENA of vcnnbd_blk_mem_gen_0_1_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_HAS_ENB : integer;
  attribute C_HAS_ENB of vcnnbd_blk_mem_gen_0_1_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_HAS_INJECTERR : integer;
  attribute C_HAS_INJECTERR of vcnnbd_blk_mem_gen_0_1_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_A : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_A of vcnnbd_blk_mem_gen_0_1_blk_mem_gen_v8_3_6 : entity is 1;
  attribute C_HAS_MEM_OUTPUT_REGS_B : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_B of vcnnbd_blk_mem_gen_0_1_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_A : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_A of vcnnbd_blk_mem_gen_0_1_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_B : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_B of vcnnbd_blk_mem_gen_0_1_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_HAS_REGCEA : integer;
  attribute C_HAS_REGCEA of vcnnbd_blk_mem_gen_0_1_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_HAS_REGCEB : integer;
  attribute C_HAS_REGCEB of vcnnbd_blk_mem_gen_0_1_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_HAS_RSTA : integer;
  attribute C_HAS_RSTA of vcnnbd_blk_mem_gen_0_1_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_HAS_RSTB : integer;
  attribute C_HAS_RSTB of vcnnbd_blk_mem_gen_0_1_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_HAS_SOFTECC_INPUT_REGS_A : integer;
  attribute C_HAS_SOFTECC_INPUT_REGS_A of vcnnbd_blk_mem_gen_0_1_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B : integer;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B of vcnnbd_blk_mem_gen_0_1_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_INITA_VAL : string;
  attribute C_INITA_VAL of vcnnbd_blk_mem_gen_0_1_blk_mem_gen_v8_3_6 : entity is "0";
  attribute C_INITB_VAL : string;
  attribute C_INITB_VAL of vcnnbd_blk_mem_gen_0_1_blk_mem_gen_v8_3_6 : entity is "0";
  attribute C_INIT_FILE : string;
  attribute C_INIT_FILE of vcnnbd_blk_mem_gen_0_1_blk_mem_gen_v8_3_6 : entity is "NONE";
  attribute C_INIT_FILE_NAME : string;
  attribute C_INIT_FILE_NAME of vcnnbd_blk_mem_gen_0_1_blk_mem_gen_v8_3_6 : entity is "vcnnbd_blk_mem_gen_0_1.mif";
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of vcnnbd_blk_mem_gen_0_1_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_LOAD_INIT_FILE : integer;
  attribute C_LOAD_INIT_FILE of vcnnbd_blk_mem_gen_0_1_blk_mem_gen_v8_3_6 : entity is 1;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of vcnnbd_blk_mem_gen_0_1_blk_mem_gen_v8_3_6 : entity is 3;
  attribute C_MUX_PIPELINE_STAGES : integer;
  attribute C_MUX_PIPELINE_STAGES of vcnnbd_blk_mem_gen_0_1_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_PRIM_TYPE : integer;
  attribute C_PRIM_TYPE of vcnnbd_blk_mem_gen_0_1_blk_mem_gen_v8_3_6 : entity is 1;
  attribute C_READ_DEPTH_A : integer;
  attribute C_READ_DEPTH_A of vcnnbd_blk_mem_gen_0_1_blk_mem_gen_v8_3_6 : entity is 512;
  attribute C_READ_DEPTH_B : integer;
  attribute C_READ_DEPTH_B of vcnnbd_blk_mem_gen_0_1_blk_mem_gen_v8_3_6 : entity is 512;
  attribute C_READ_WIDTH_A : integer;
  attribute C_READ_WIDTH_A of vcnnbd_blk_mem_gen_0_1_blk_mem_gen_v8_3_6 : entity is 16;
  attribute C_READ_WIDTH_B : integer;
  attribute C_READ_WIDTH_B of vcnnbd_blk_mem_gen_0_1_blk_mem_gen_v8_3_6 : entity is 16;
  attribute C_RSTRAM_A : integer;
  attribute C_RSTRAM_A of vcnnbd_blk_mem_gen_0_1_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_RSTRAM_B : integer;
  attribute C_RSTRAM_B of vcnnbd_blk_mem_gen_0_1_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_RST_PRIORITY_A : string;
  attribute C_RST_PRIORITY_A of vcnnbd_blk_mem_gen_0_1_blk_mem_gen_v8_3_6 : entity is "CE";
  attribute C_RST_PRIORITY_B : string;
  attribute C_RST_PRIORITY_B of vcnnbd_blk_mem_gen_0_1_blk_mem_gen_v8_3_6 : entity is "CE";
  attribute C_SIM_COLLISION_CHECK : string;
  attribute C_SIM_COLLISION_CHECK of vcnnbd_blk_mem_gen_0_1_blk_mem_gen_v8_3_6 : entity is "ALL";
  attribute C_USE_BRAM_BLOCK : integer;
  attribute C_USE_BRAM_BLOCK of vcnnbd_blk_mem_gen_0_1_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_USE_BYTE_WEA : integer;
  attribute C_USE_BYTE_WEA of vcnnbd_blk_mem_gen_0_1_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_USE_BYTE_WEB : integer;
  attribute C_USE_BYTE_WEB of vcnnbd_blk_mem_gen_0_1_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_USE_DEFAULT_DATA : integer;
  attribute C_USE_DEFAULT_DATA of vcnnbd_blk_mem_gen_0_1_blk_mem_gen_v8_3_6 : entity is 1;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of vcnnbd_blk_mem_gen_0_1_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_USE_SOFTECC : integer;
  attribute C_USE_SOFTECC of vcnnbd_blk_mem_gen_0_1_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_USE_URAM : integer;
  attribute C_USE_URAM of vcnnbd_blk_mem_gen_0_1_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_WEA_WIDTH : integer;
  attribute C_WEA_WIDTH of vcnnbd_blk_mem_gen_0_1_blk_mem_gen_v8_3_6 : entity is 1;
  attribute C_WEB_WIDTH : integer;
  attribute C_WEB_WIDTH of vcnnbd_blk_mem_gen_0_1_blk_mem_gen_v8_3_6 : entity is 1;
  attribute C_WRITE_DEPTH_A : integer;
  attribute C_WRITE_DEPTH_A of vcnnbd_blk_mem_gen_0_1_blk_mem_gen_v8_3_6 : entity is 512;
  attribute C_WRITE_DEPTH_B : integer;
  attribute C_WRITE_DEPTH_B of vcnnbd_blk_mem_gen_0_1_blk_mem_gen_v8_3_6 : entity is 512;
  attribute C_WRITE_MODE_A : string;
  attribute C_WRITE_MODE_A of vcnnbd_blk_mem_gen_0_1_blk_mem_gen_v8_3_6 : entity is "WRITE_FIRST";
  attribute C_WRITE_MODE_B : string;
  attribute C_WRITE_MODE_B of vcnnbd_blk_mem_gen_0_1_blk_mem_gen_v8_3_6 : entity is "WRITE_FIRST";
  attribute C_WRITE_WIDTH_A : integer;
  attribute C_WRITE_WIDTH_A of vcnnbd_blk_mem_gen_0_1_blk_mem_gen_v8_3_6 : entity is 16;
  attribute C_WRITE_WIDTH_B : integer;
  attribute C_WRITE_WIDTH_B of vcnnbd_blk_mem_gen_0_1_blk_mem_gen_v8_3_6 : entity is 16;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of vcnnbd_blk_mem_gen_0_1_blk_mem_gen_v8_3_6 : entity is "zynq";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of vcnnbd_blk_mem_gen_0_1_blk_mem_gen_v8_3_6 : entity is "blk_mem_gen_v8_3_6";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of vcnnbd_blk_mem_gen_0_1_blk_mem_gen_v8_3_6 : entity is "yes";
end vcnnbd_blk_mem_gen_0_1_blk_mem_gen_v8_3_6;

architecture STRUCTURE of vcnnbd_blk_mem_gen_0_1_blk_mem_gen_v8_3_6 is
  signal \<const0>\ : STD_LOGIC;
begin
  dbiterr <= \<const0>\;
  doutb(15) <= \<const0>\;
  doutb(14) <= \<const0>\;
  doutb(13) <= \<const0>\;
  doutb(12) <= \<const0>\;
  doutb(11) <= \<const0>\;
  doutb(10) <= \<const0>\;
  doutb(9) <= \<const0>\;
  doutb(8) <= \<const0>\;
  doutb(7) <= \<const0>\;
  doutb(6) <= \<const0>\;
  doutb(5) <= \<const0>\;
  doutb(4) <= \<const0>\;
  doutb(3) <= \<const0>\;
  doutb(2) <= \<const0>\;
  doutb(1) <= \<const0>\;
  doutb(0) <= \<const0>\;
  rdaddrecc(8) <= \<const0>\;
  rdaddrecc(7) <= \<const0>\;
  rdaddrecc(6) <= \<const0>\;
  rdaddrecc(5) <= \<const0>\;
  rdaddrecc(4) <= \<const0>\;
  rdaddrecc(3) <= \<const0>\;
  rdaddrecc(2) <= \<const0>\;
  rdaddrecc(1) <= \<const0>\;
  rdaddrecc(0) <= \<const0>\;
  rsta_busy <= \<const0>\;
  rstb_busy <= \<const0>\;
  s_axi_arready <= \<const0>\;
  s_axi_awready <= \<const0>\;
  s_axi_bid(3) <= \<const0>\;
  s_axi_bid(2) <= \<const0>\;
  s_axi_bid(1) <= \<const0>\;
  s_axi_bid(0) <= \<const0>\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_bvalid <= \<const0>\;
  s_axi_dbiterr <= \<const0>\;
  s_axi_rdaddrecc(8) <= \<const0>\;
  s_axi_rdaddrecc(7) <= \<const0>\;
  s_axi_rdaddrecc(6) <= \<const0>\;
  s_axi_rdaddrecc(5) <= \<const0>\;
  s_axi_rdaddrecc(4) <= \<const0>\;
  s_axi_rdaddrecc(3) <= \<const0>\;
  s_axi_rdaddrecc(2) <= \<const0>\;
  s_axi_rdaddrecc(1) <= \<const0>\;
  s_axi_rdaddrecc(0) <= \<const0>\;
  s_axi_rdata(15) <= \<const0>\;
  s_axi_rdata(14) <= \<const0>\;
  s_axi_rdata(13) <= \<const0>\;
  s_axi_rdata(12) <= \<const0>\;
  s_axi_rdata(11) <= \<const0>\;
  s_axi_rdata(10) <= \<const0>\;
  s_axi_rdata(9) <= \<const0>\;
  s_axi_rdata(8) <= \<const0>\;
  s_axi_rdata(7) <= \<const0>\;
  s_axi_rdata(6) <= \<const0>\;
  s_axi_rdata(5) <= \<const0>\;
  s_axi_rdata(4) <= \<const0>\;
  s_axi_rdata(3) <= \<const0>\;
  s_axi_rdata(2) <= \<const0>\;
  s_axi_rdata(1) <= \<const0>\;
  s_axi_rdata(0) <= \<const0>\;
  s_axi_rid(3) <= \<const0>\;
  s_axi_rid(2) <= \<const0>\;
  s_axi_rid(1) <= \<const0>\;
  s_axi_rid(0) <= \<const0>\;
  s_axi_rlast <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
  s_axi_rvalid <= \<const0>\;
  s_axi_sbiterr <= \<const0>\;
  s_axi_wready <= \<const0>\;
  sbiterr <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst_blk_mem_gen: entity work.vcnnbd_blk_mem_gen_0_1_blk_mem_gen_v8_3_6_synth
     port map (
      addra(8 downto 0) => addra(8 downto 0),
      clka => clka,
      douta(15 downto 0) => douta(15 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity vcnnbd_blk_mem_gen_0_1 is
  port (
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 8 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of vcnnbd_blk_mem_gen_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of vcnnbd_blk_mem_gen_0_1 : entity is "vcnnbd_blk_mem_gen_0_1,blk_mem_gen_v8_3_6,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of vcnnbd_blk_mem_gen_0_1 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of vcnnbd_blk_mem_gen_0_1 : entity is "blk_mem_gen_v8_3_6,Vivado 2017.2";
end vcnnbd_blk_mem_gen_0_1;

architecture STRUCTURE of vcnnbd_blk_mem_gen_0_1 is
  signal NLW_U0_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rsta_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rstb_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_doutb_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_U0_rdaddrecc_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_U0_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_rdaddrecc_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_U0_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_U0_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_ADDRA_WIDTH : integer;
  attribute C_ADDRA_WIDTH of U0 : label is 9;
  attribute C_ADDRB_WIDTH : integer;
  attribute C_ADDRB_WIDTH of U0 : label is 9;
  attribute C_ALGORITHM : integer;
  attribute C_ALGORITHM of U0 : label is 1;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of U0 : label is 4;
  attribute C_AXI_SLAVE_TYPE : integer;
  attribute C_AXI_SLAVE_TYPE of U0 : label is 0;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of U0 : label is 1;
  attribute C_BYTE_SIZE : integer;
  attribute C_BYTE_SIZE of U0 : label is 9;
  attribute C_COMMON_CLK : integer;
  attribute C_COMMON_CLK of U0 : label is 0;
  attribute C_COUNT_18K_BRAM : string;
  attribute C_COUNT_18K_BRAM of U0 : label is "1";
  attribute C_COUNT_36K_BRAM : string;
  attribute C_COUNT_36K_BRAM of U0 : label is "0";
  attribute C_CTRL_ECC_ALGO : string;
  attribute C_CTRL_ECC_ALGO of U0 : label is "NONE";
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of U0 : label is "0";
  attribute C_DISABLE_WARN_BHV_COLL : integer;
  attribute C_DISABLE_WARN_BHV_COLL of U0 : label is 0;
  attribute C_DISABLE_WARN_BHV_RANGE : integer;
  attribute C_DISABLE_WARN_BHV_RANGE of U0 : label is 0;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of U0 : label is "./";
  attribute C_ENABLE_32BIT_ADDRESS : integer;
  attribute C_ENABLE_32BIT_ADDRESS of U0 : label is 0;
  attribute C_EN_DEEPSLEEP_PIN : integer;
  attribute C_EN_DEEPSLEEP_PIN of U0 : label is 0;
  attribute C_EN_ECC_PIPE : integer;
  attribute C_EN_ECC_PIPE of U0 : label is 0;
  attribute C_EN_RDADDRA_CHG : integer;
  attribute C_EN_RDADDRA_CHG of U0 : label is 0;
  attribute C_EN_RDADDRB_CHG : integer;
  attribute C_EN_RDADDRB_CHG of U0 : label is 0;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of U0 : label is 0;
  attribute C_EN_SHUTDOWN_PIN : integer;
  attribute C_EN_SHUTDOWN_PIN of U0 : label is 0;
  attribute C_EN_SLEEP_PIN : integer;
  attribute C_EN_SLEEP_PIN of U0 : label is 0;
  attribute C_EST_POWER_SUMMARY : string;
  attribute C_EST_POWER_SUMMARY of U0 : label is "Estimated Power for IP     :     2.7096 mW";
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "zynq";
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of U0 : label is 0;
  attribute C_HAS_ENA : integer;
  attribute C_HAS_ENA of U0 : label is 0;
  attribute C_HAS_ENB : integer;
  attribute C_HAS_ENB of U0 : label is 0;
  attribute C_HAS_INJECTERR : integer;
  attribute C_HAS_INJECTERR of U0 : label is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_A : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_A of U0 : label is 1;
  attribute C_HAS_MEM_OUTPUT_REGS_B : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_A : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_A of U0 : label is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_B : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_HAS_REGCEA : integer;
  attribute C_HAS_REGCEA of U0 : label is 0;
  attribute C_HAS_REGCEB : integer;
  attribute C_HAS_REGCEB of U0 : label is 0;
  attribute C_HAS_RSTA : integer;
  attribute C_HAS_RSTA of U0 : label is 0;
  attribute C_HAS_RSTB : integer;
  attribute C_HAS_RSTB of U0 : label is 0;
  attribute C_HAS_SOFTECC_INPUT_REGS_A : integer;
  attribute C_HAS_SOFTECC_INPUT_REGS_A of U0 : label is 0;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B : integer;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_INITA_VAL : string;
  attribute C_INITA_VAL of U0 : label is "0";
  attribute C_INITB_VAL : string;
  attribute C_INITB_VAL of U0 : label is "0";
  attribute C_INIT_FILE : string;
  attribute C_INIT_FILE of U0 : label is "NONE";
  attribute C_INIT_FILE_NAME : string;
  attribute C_INIT_FILE_NAME of U0 : label is "vcnnbd_blk_mem_gen_0_1.mif";
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of U0 : label is 0;
  attribute C_LOAD_INIT_FILE : integer;
  attribute C_LOAD_INIT_FILE of U0 : label is 1;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of U0 : label is 3;
  attribute C_MUX_PIPELINE_STAGES : integer;
  attribute C_MUX_PIPELINE_STAGES of U0 : label is 0;
  attribute C_PRIM_TYPE : integer;
  attribute C_PRIM_TYPE of U0 : label is 1;
  attribute C_READ_DEPTH_A : integer;
  attribute C_READ_DEPTH_A of U0 : label is 512;
  attribute C_READ_DEPTH_B : integer;
  attribute C_READ_DEPTH_B of U0 : label is 512;
  attribute C_READ_WIDTH_A : integer;
  attribute C_READ_WIDTH_A of U0 : label is 16;
  attribute C_READ_WIDTH_B : integer;
  attribute C_READ_WIDTH_B of U0 : label is 16;
  attribute C_RSTRAM_A : integer;
  attribute C_RSTRAM_A of U0 : label is 0;
  attribute C_RSTRAM_B : integer;
  attribute C_RSTRAM_B of U0 : label is 0;
  attribute C_RST_PRIORITY_A : string;
  attribute C_RST_PRIORITY_A of U0 : label is "CE";
  attribute C_RST_PRIORITY_B : string;
  attribute C_RST_PRIORITY_B of U0 : label is "CE";
  attribute C_SIM_COLLISION_CHECK : string;
  attribute C_SIM_COLLISION_CHECK of U0 : label is "ALL";
  attribute C_USE_BRAM_BLOCK : integer;
  attribute C_USE_BRAM_BLOCK of U0 : label is 0;
  attribute C_USE_BYTE_WEA : integer;
  attribute C_USE_BYTE_WEA of U0 : label is 0;
  attribute C_USE_BYTE_WEB : integer;
  attribute C_USE_BYTE_WEB of U0 : label is 0;
  attribute C_USE_DEFAULT_DATA : integer;
  attribute C_USE_DEFAULT_DATA of U0 : label is 1;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of U0 : label is 0;
  attribute C_USE_SOFTECC : integer;
  attribute C_USE_SOFTECC of U0 : label is 0;
  attribute C_USE_URAM : integer;
  attribute C_USE_URAM of U0 : label is 0;
  attribute C_WEA_WIDTH : integer;
  attribute C_WEA_WIDTH of U0 : label is 1;
  attribute C_WEB_WIDTH : integer;
  attribute C_WEB_WIDTH of U0 : label is 1;
  attribute C_WRITE_DEPTH_A : integer;
  attribute C_WRITE_DEPTH_A of U0 : label is 512;
  attribute C_WRITE_DEPTH_B : integer;
  attribute C_WRITE_DEPTH_B of U0 : label is 512;
  attribute C_WRITE_MODE_A : string;
  attribute C_WRITE_MODE_A of U0 : label is "WRITE_FIRST";
  attribute C_WRITE_MODE_B : string;
  attribute C_WRITE_MODE_B of U0 : label is "WRITE_FIRST";
  attribute C_WRITE_WIDTH_A : integer;
  attribute C_WRITE_WIDTH_A of U0 : label is 16;
  attribute C_WRITE_WIDTH_B : integer;
  attribute C_WRITE_WIDTH_B of U0 : label is 16;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of U0 : label is "zynq";
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
begin
U0: entity work.vcnnbd_blk_mem_gen_0_1_blk_mem_gen_v8_3_6
     port map (
      addra(8 downto 0) => addra(8 downto 0),
      addrb(8 downto 0) => B"000000000",
      clka => clka,
      clkb => '0',
      dbiterr => NLW_U0_dbiterr_UNCONNECTED,
      deepsleep => '0',
      dina(15 downto 0) => B"0000000000000000",
      dinb(15 downto 0) => B"0000000000000000",
      douta(15 downto 0) => douta(15 downto 0),
      doutb(15 downto 0) => NLW_U0_doutb_UNCONNECTED(15 downto 0),
      eccpipece => '0',
      ena => '0',
      enb => '0',
      injectdbiterr => '0',
      injectsbiterr => '0',
      rdaddrecc(8 downto 0) => NLW_U0_rdaddrecc_UNCONNECTED(8 downto 0),
      regcea => '0',
      regceb => '0',
      rsta => '0',
      rsta_busy => NLW_U0_rsta_busy_UNCONNECTED,
      rstb => '0',
      rstb_busy => NLW_U0_rstb_busy_UNCONNECTED,
      s_aclk => '0',
      s_aresetn => '0',
      s_axi_araddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_arburst(1 downto 0) => B"00",
      s_axi_arid(3 downto 0) => B"0000",
      s_axi_arlen(7 downto 0) => B"00000000",
      s_axi_arready => NLW_U0_s_axi_arready_UNCONNECTED,
      s_axi_arsize(2 downto 0) => B"000",
      s_axi_arvalid => '0',
      s_axi_awaddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_awburst(1 downto 0) => B"00",
      s_axi_awid(3 downto 0) => B"0000",
      s_axi_awlen(7 downto 0) => B"00000000",
      s_axi_awready => NLW_U0_s_axi_awready_UNCONNECTED,
      s_axi_awsize(2 downto 0) => B"000",
      s_axi_awvalid => '0',
      s_axi_bid(3 downto 0) => NLW_U0_s_axi_bid_UNCONNECTED(3 downto 0),
      s_axi_bready => '0',
      s_axi_bresp(1 downto 0) => NLW_U0_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_bvalid => NLW_U0_s_axi_bvalid_UNCONNECTED,
      s_axi_dbiterr => NLW_U0_s_axi_dbiterr_UNCONNECTED,
      s_axi_injectdbiterr => '0',
      s_axi_injectsbiterr => '0',
      s_axi_rdaddrecc(8 downto 0) => NLW_U0_s_axi_rdaddrecc_UNCONNECTED(8 downto 0),
      s_axi_rdata(15 downto 0) => NLW_U0_s_axi_rdata_UNCONNECTED(15 downto 0),
      s_axi_rid(3 downto 0) => NLW_U0_s_axi_rid_UNCONNECTED(3 downto 0),
      s_axi_rlast => NLW_U0_s_axi_rlast_UNCONNECTED,
      s_axi_rready => '0',
      s_axi_rresp(1 downto 0) => NLW_U0_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_rvalid => NLW_U0_s_axi_rvalid_UNCONNECTED,
      s_axi_sbiterr => NLW_U0_s_axi_sbiterr_UNCONNECTED,
      s_axi_wdata(15 downto 0) => B"0000000000000000",
      s_axi_wlast => '0',
      s_axi_wready => NLW_U0_s_axi_wready_UNCONNECTED,
      s_axi_wstrb(0) => '0',
      s_axi_wvalid => '0',
      sbiterr => NLW_U0_sbiterr_UNCONNECTED,
      shutdown => '0',
      sleep => '0',
      wea(0) => '0',
      web(0) => '0'
    );
end STRUCTURE;
