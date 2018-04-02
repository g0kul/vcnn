-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
-- Date        : Thu Mar 22 13:24:07 2018
-- Host        : dots running 64-bit Ubuntu 16.04.4 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top vcnnbd_axi_bram_ctrl_0_0 -prefix
--               vcnnbd_axi_bram_ctrl_0_0_ vcnnbd_axi_bram_ctrl_0_0_sim_netlist.vhdl
-- Design      : vcnnbd_axi_bram_ctrl_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity vcnnbd_axi_bram_ctrl_0_0_SRL_FIFO is
  port (
    \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.clr_bram_we_reg\ : out STD_LOGIC;
    bid_gets_fifo_load : out STD_LOGIC;
    \axi_bid_int_reg[0]\ : out STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_data_sng_sm_cs : in STD_LOGIC_VECTOR ( 1 downto 0 );
    p_1_out : in STD_LOGIC;
    aw_active_d1_reg : in STD_LOGIC;
    aw_active_re : in STD_LOGIC;
    bid_gets_fifo_load_d1 : in STD_LOGIC;
    axi_bvalid_int_reg : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    AW2Arb_BVALID_Cnt : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    axi_wdata_full_reg : in STD_LOGIC;
    s_axi_wlast : in STD_LOGIC;
    axi_wr_burst : in STD_LOGIC;
    s_axi_bid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end vcnnbd_axi_bram_ctrl_0_0_SRL_FIFO;

architecture STRUCTURE of vcnnbd_axi_bram_ctrl_0_0_SRL_FIFO is
  signal \Addr_Counters[0].FDRE_I_n_0\ : STD_LOGIC;
  signal \Addr_Counters[1].FDRE_I_n_0\ : STD_LOGIC;
  signal \Addr_Counters[2].FDRE_I_n_0\ : STD_LOGIC;
  signal \Addr_Counters[3].FDRE_I_n_0\ : STD_LOGIC;
  signal \Addr_Counters[3].XORCY_I_i_1_n_0\ : STD_LOGIC;
  signal CI : STD_LOGIC;
  signal D : STD_LOGIC;
  signal Data_Exists_DFF_i_2_n_0 : STD_LOGIC;
  signal Data_Exists_DFF_i_3_n_0 : STD_LOGIC;
  signal \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.clr_bram_we_i_2_n_0\ : STD_LOGIC;
  signal \^gen_wdata_sm_no_ecc_sng_reg_wready.clr_bram_we_reg\ : STD_LOGIC;
  signal S : STD_LOGIC;
  signal S0_out : STD_LOGIC;
  signal S1_out : STD_LOGIC;
  signal addr_cy_1 : STD_LOGIC;
  signal addr_cy_2 : STD_LOGIC;
  signal addr_cy_3 : STD_LOGIC;
  signal \axi_bid_int[0]_i_2_n_0\ : STD_LOGIC;
  signal \axi_bid_int[0]_i_3_n_0\ : STD_LOGIC;
  signal bid_fifo_not_empty : STD_LOGIC;
  signal bid_fifo_rd : STD_LOGIC;
  signal \^bid_gets_fifo_load\ : STD_LOGIC;
  signal bid_gets_fifo_load_d1_i_2_n_0 : STD_LOGIC;
  signal sum_A_0 : STD_LOGIC;
  signal sum_A_1 : STD_LOGIC;
  signal sum_A_2 : STD_LOGIC;
  signal sum_A_3 : STD_LOGIC;
  signal \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \Addr_Counters[0].FDRE_I\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \Addr_Counters[0].MUXCY_L_I_CARRY4\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \Addr_Counters[0].MUXCY_L_I_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \Addr_Counters[0].MUXCY_L_I_CARRY4\ : label is "LO:O";
  attribute BOX_TYPE of \Addr_Counters[1].FDRE_I\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \Addr_Counters[2].FDRE_I\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \Addr_Counters[3].FDRE_I\ : label is "PRIMITIVE";
  attribute BOX_TYPE of Data_Exists_DFF : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of Data_Exists_DFF : label is "FDR";
  attribute BOX_TYPE of \FIFO_RAM[0].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \FIFO_RAM[0].SRL16E_I\ : label is "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM ";
  attribute srl_name : string;
  attribute srl_name of \FIFO_RAM[0].SRL16E_I\ : label is "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[0].SRL16E_I ";
begin
  \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.clr_bram_we_reg\ <= \^gen_wdata_sm_no_ecc_sng_reg_wready.clr_bram_we_reg\;
  bid_gets_fifo_load <= \^bid_gets_fifo_load\;
\Addr_Counters[0].FDRE_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => bid_fifo_not_empty,
      D => sum_A_3,
      Q => \Addr_Counters[0].FDRE_I_n_0\,
      R => s_axi_aresetn
    );
\Addr_Counters[0].MUXCY_L_I_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CO_UNCONNECTED\(3),
      CO(2) => addr_cy_1,
      CO(1) => addr_cy_2,
      CO(0) => addr_cy_3,
      CYINIT => CI,
      DI(3) => \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_DI_UNCONNECTED\(3),
      DI(2) => \Addr_Counters[2].FDRE_I_n_0\,
      DI(1) => \Addr_Counters[1].FDRE_I_n_0\,
      DI(0) => \Addr_Counters[0].FDRE_I_n_0\,
      O(3) => sum_A_0,
      O(2) => sum_A_1,
      O(1) => sum_A_2,
      O(0) => sum_A_3,
      S(3) => \Addr_Counters[3].XORCY_I_i_1_n_0\,
      S(2) => S0_out,
      S(1) => S1_out,
      S(0) => S
    );
\Addr_Counters[0].MUXCY_L_I_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFFFFFE0000"
    )
        port map (
      I0 => \Addr_Counters[1].FDRE_I_n_0\,
      I1 => \Addr_Counters[3].FDRE_I_n_0\,
      I2 => \Addr_Counters[2].FDRE_I_n_0\,
      I3 => aw_active_re,
      I4 => \axi_bid_int[0]_i_2_n_0\,
      I5 => \Addr_Counters[0].FDRE_I_n_0\,
      O => S
    );
\Addr_Counters[0].MUXCY_L_I_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => aw_active_re,
      I1 => \axi_bid_int[0]_i_2_n_0\,
      I2 => \Addr_Counters[2].FDRE_I_n_0\,
      I3 => \Addr_Counters[3].FDRE_I_n_0\,
      I4 => \Addr_Counters[1].FDRE_I_n_0\,
      I5 => \Addr_Counters[0].FDRE_I_n_0\,
      O => CI
    );
\Addr_Counters[1].FDRE_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => bid_fifo_not_empty,
      D => sum_A_2,
      Q => \Addr_Counters[1].FDRE_I_n_0\,
      R => s_axi_aresetn
    );
\Addr_Counters[1].MUXCY_L_I_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFFFFFE0000"
    )
        port map (
      I0 => \Addr_Counters[3].FDRE_I_n_0\,
      I1 => \Addr_Counters[0].FDRE_I_n_0\,
      I2 => \Addr_Counters[2].FDRE_I_n_0\,
      I3 => aw_active_re,
      I4 => \axi_bid_int[0]_i_2_n_0\,
      I5 => \Addr_Counters[1].FDRE_I_n_0\,
      O => S1_out
    );
\Addr_Counters[2].FDRE_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => bid_fifo_not_empty,
      D => sum_A_1,
      Q => \Addr_Counters[2].FDRE_I_n_0\,
      R => s_axi_aresetn
    );
\Addr_Counters[2].MUXCY_L_I_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFFFFFE0000"
    )
        port map (
      I0 => \Addr_Counters[1].FDRE_I_n_0\,
      I1 => \Addr_Counters[3].FDRE_I_n_0\,
      I2 => \Addr_Counters[0].FDRE_I_n_0\,
      I3 => aw_active_re,
      I4 => \axi_bid_int[0]_i_2_n_0\,
      I5 => \Addr_Counters[2].FDRE_I_n_0\,
      O => S0_out
    );
\Addr_Counters[3].FDRE_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => bid_fifo_not_empty,
      D => sum_A_0,
      Q => \Addr_Counters[3].FDRE_I_n_0\,
      R => s_axi_aresetn
    );
\Addr_Counters[3].XORCY_I_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFFFFFE0000"
    )
        port map (
      I0 => \Addr_Counters[1].FDRE_I_n_0\,
      I1 => \Addr_Counters[0].FDRE_I_n_0\,
      I2 => \Addr_Counters[2].FDRE_I_n_0\,
      I3 => aw_active_re,
      I4 => \axi_bid_int[0]_i_2_n_0\,
      I5 => \Addr_Counters[3].FDRE_I_n_0\,
      O => \Addr_Counters[3].XORCY_I_i_1_n_0\
    );
Data_Exists_DFF: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => D,
      Q => bid_fifo_not_empty,
      R => s_axi_aresetn
    );
Data_Exists_DFF_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF20022"
    )
        port map (
      I0 => p_1_out,
      I1 => aw_active_d1_reg,
      I2 => Data_Exists_DFF_i_2_n_0,
      I3 => Data_Exists_DFF_i_3_n_0,
      I4 => bid_fifo_not_empty,
      O => D
    );
Data_Exists_DFF_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001DDD"
    )
        port map (
      I0 => \^gen_wdata_sm_no_ecc_sng_reg_wready.clr_bram_we_reg\,
      I1 => \axi_bid_int[0]_i_3_n_0\,
      I2 => s_axi_bready,
      I3 => axi_bvalid_int_reg,
      I4 => bid_gets_fifo_load_d1,
      O => Data_Exists_DFF_i_2_n_0
    );
Data_Exists_DFF_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \Addr_Counters[1].FDRE_I_n_0\,
      I1 => \Addr_Counters[3].FDRE_I_n_0\,
      I2 => \Addr_Counters[0].FDRE_I_n_0\,
      I3 => \Addr_Counters[2].FDRE_I_n_0\,
      O => Data_Exists_DFF_i_3_n_0
    );
\FIFO_RAM[0].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \Addr_Counters[0].FDRE_I_n_0\,
      A1 => \Addr_Counters[1].FDRE_I_n_0\,
      A2 => \Addr_Counters[2].FDRE_I_n_0\,
      A3 => \Addr_Counters[3].FDRE_I_n_0\,
      CE => CI,
      CLK => s_axi_aclk,
      D => s_axi_awid(0),
      Q => bid_fifo_rd
    );
\GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.clr_bram_we_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wr_data_sng_sm_cs(0),
      I1 => \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.clr_bram_we_i_2_n_0\,
      O => \^gen_wdata_sm_no_ecc_sng_reg_wready.clr_bram_we_reg\
    );
\GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.clr_bram_we_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5F1FFFFF1B1FBBFF"
    )
        port map (
      I0 => wr_data_sng_sm_cs(1),
      I1 => p_1_out,
      I2 => s_axi_wvalid,
      I3 => axi_wdata_full_reg,
      I4 => s_axi_wlast,
      I5 => axi_wr_burst,
      O => \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.clr_bram_we_i_2_n_0\
    );
\axi_bid_int[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AACFAAC0"
    )
        port map (
      I0 => s_axi_awid(0),
      I1 => bid_fifo_rd,
      I2 => \axi_bid_int[0]_i_2_n_0\,
      I3 => \^bid_gets_fifo_load\,
      I4 => s_axi_bid(0),
      O => \axi_bid_int_reg[0]\
    );
\axi_bid_int[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A888AAAAA8888888"
    )
        port map (
      I0 => bid_fifo_not_empty,
      I1 => bid_gets_fifo_load_d1,
      I2 => axi_bvalid_int_reg,
      I3 => s_axi_bready,
      I4 => \axi_bid_int[0]_i_3_n_0\,
      I5 => \^gen_wdata_sm_no_ecc_sng_reg_wready.clr_bram_we_reg\,
      O => \axi_bid_int[0]_i_2_n_0\
    );
\axi_bid_int[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => AW2Arb_BVALID_Cnt(1),
      I1 => AW2Arb_BVALID_Cnt(2),
      I2 => AW2Arb_BVALID_Cnt(0),
      O => \axi_bid_int[0]_i_3_n_0\
    );
bid_gets_fifo_load_d1_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \^gen_wdata_sm_no_ecc_sng_reg_wready.clr_bram_we_reg\,
      I1 => p_1_out,
      I2 => aw_active_d1_reg,
      I3 => bid_gets_fifo_load_d1_i_2_n_0,
      O => \^bid_gets_fifo_load\
    );
bid_gets_fifo_load_d1_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFBFFF00"
    )
        port map (
      I0 => bid_fifo_not_empty,
      I1 => s_axi_bready,
      I2 => axi_bvalid_int_reg,
      I3 => AW2Arb_BVALID_Cnt(1),
      I4 => AW2Arb_BVALID_Cnt(0),
      I5 => AW2Arb_BVALID_Cnt(2),
      O => bid_gets_fifo_load_d1_i_2_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity vcnnbd_axi_bram_ctrl_0_0_sng_port_arb is
  port (
    s_axi_awready : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    p_0_out : out STD_LOGIC;
    p_1_out : out STD_LOGIC;
    brst_one_reg : out STD_LOGIC;
    brst_zero_reg : out STD_LOGIC;
    ar_active_re : out STD_LOGIC;
    arb_sm_cs : out STD_LOGIC_VECTOR ( 1 downto 0 );
    aw_active_re : out STD_LOGIC;
    bram_we_a : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \GEN_AR_SNG.ar_active_d1_reg\ : out STD_LOGIC;
    s_axi_aresetn_0 : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    axi_rd_burst_two : in STD_LOGIC;
    ar_active_d1 : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \s_axi_arlen[6]\ : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    aw_active_d1 : in STD_LOGIC;
    \bvalid_cnt_reg[0]\ : in STD_LOGIC;
    axi_rlast_int_reg : in STD_LOGIC;
    \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0]\ : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    axi_rlast_int_reg_0 : in STD_LOGIC;
    \bvalid_cnt_reg[0]_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1]\ : in STD_LOGIC;
    \arb_sm_cs_reg[1]_0\ : in STD_LOGIC
  );
end vcnnbd_axi_bram_ctrl_0_0_sng_port_arb;

architecture STRUCTURE of vcnnbd_axi_bram_ctrl_0_0_sng_port_arb is
  signal ar_active_cmb : STD_LOGIC;
  signal ar_active_i_1_n_0 : STD_LOGIC;
  signal \^ar_active_re\ : STD_LOGIC;
  signal \^arb_sm_cs\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \arb_sm_cs[0]_i_1_n_0\ : STD_LOGIC;
  signal \arb_sm_cs[0]_i_2_n_0\ : STD_LOGIC;
  signal \arb_sm_cs[0]_i_3_n_0\ : STD_LOGIC;
  signal \arb_sm_cs[1]_i_1_n_0\ : STD_LOGIC;
  signal aw_active_i_1_n_0 : STD_LOGIC;
  signal aw_active_i_4_n_0 : STD_LOGIC;
  signal aw_active_i_5_n_0 : STD_LOGIC;
  signal axi_arready_cmb : STD_LOGIC;
  signal axi_arready_int_i_2_n_0 : STD_LOGIC;
  signal axi_awready_cmb : STD_LOGIC;
  signal axi_awready_int_i_3_n_0 : STD_LOGIC;
  signal last_arb_won : STD_LOGIC;
  signal last_arb_won_i_1_n_0 : STD_LOGIC;
  signal \^p_0_out\ : STD_LOGIC;
  signal \^p_1_out\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \GEN_AR_SNG.ar_active_d1_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of ar_active_i_2 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \arb_sm_cs[0]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of aw_active_i_5 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of axi_awready_int_i_3 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \bram_we_a[1]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \bram_we_a[2]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \bram_we_a[3]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[11]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[11]_i_1__0\ : label is "soft_lutpair2";
begin
  ar_active_re <= \^ar_active_re\;
  arb_sm_cs(1 downto 0) <= \^arb_sm_cs\(1 downto 0);
  p_0_out <= \^p_0_out\;
  p_1_out <= \^p_1_out\;
\GEN_AR_SNG.ar_active_d1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0888"
    )
        port map (
      I0 => \^p_0_out\,
      I1 => s_axi_aresetn,
      I2 => axi_rlast_int_reg_0,
      I3 => s_axi_rready,
      O => \GEN_AR_SNG.ar_active_d1_reg\
    );
ar_active_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABBBBBB8A888888"
    )
        port map (
      I0 => ar_active_cmb,
      I1 => axi_arready_int_i_2_n_0,
      I2 => \^arb_sm_cs\(1),
      I3 => \^arb_sm_cs\(0),
      I4 => axi_rlast_int_reg,
      I5 => \^p_0_out\,
      O => ar_active_i_1_n_0
    );
ar_active_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F03070"
    )
        port map (
      I0 => last_arb_won,
      I1 => s_axi_awvalid,
      I2 => s_axi_arvalid,
      I3 => \^arb_sm_cs\(0),
      I4 => \^arb_sm_cs\(1),
      O => ar_active_cmb
    );
ar_active_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => ar_active_i_1_n_0,
      Q => \^p_0_out\,
      R => s_axi_aresetn_0
    );
\arb_sm_cs[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0030FFFFD0F00000"
    )
        port map (
      I0 => last_arb_won,
      I1 => \^arb_sm_cs\(1),
      I2 => s_axi_arvalid,
      I3 => s_axi_awvalid,
      I4 => \arb_sm_cs[0]_i_2_n_0\,
      I5 => \^arb_sm_cs\(0),
      O => \arb_sm_cs[0]_i_1_n_0\
    );
\arb_sm_cs[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEEFAAA"
    )
        port map (
      I0 => \bvalid_cnt_reg[0]\,
      I1 => axi_rlast_int_reg,
      I2 => \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0]\,
      I3 => \^arb_sm_cs\(1),
      I4 => \^arb_sm_cs\(0),
      I5 => \arb_sm_cs[0]_i_3_n_0\,
      O => \arb_sm_cs[0]_i_2_n_0\
    );
\arb_sm_cs[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000070"
    )
        port map (
      I0 => last_arb_won,
      I1 => s_axi_awvalid,
      I2 => s_axi_arvalid,
      I3 => \^arb_sm_cs\(1),
      I4 => \^arb_sm_cs\(0),
      O => \arb_sm_cs[0]_i_3_n_0\
    );
\arb_sm_cs[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00440F5500440F00"
    )
        port map (
      I0 => \bvalid_cnt_reg[0]_0\,
      I1 => axi_rlast_int_reg,
      I2 => \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0]\,
      I3 => \^arb_sm_cs\(1),
      I4 => \^arb_sm_cs\(0),
      I5 => axi_awready_int_i_3_n_0,
      O => \arb_sm_cs[1]_i_1_n_0\
    );
\arb_sm_cs_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \arb_sm_cs[0]_i_1_n_0\,
      Q => \^arb_sm_cs\(0),
      R => s_axi_aresetn_0
    );
\arb_sm_cs_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \arb_sm_cs[1]_i_1_n_0\,
      Q => \^arb_sm_cs\(1),
      R => s_axi_aresetn_0
    );
aw_active_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFDFDFDDC0C0C0CC"
    )
        port map (
      I0 => \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1]\,
      I1 => \arb_sm_cs_reg[1]_0\,
      I2 => aw_active_i_4_n_0,
      I3 => \^arb_sm_cs\(0),
      I4 => aw_active_i_5_n_0,
      I5 => \^p_1_out\,
      O => aw_active_i_1_n_0
    );
aw_active_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => \^arb_sm_cs\(1),
      I1 => \^arb_sm_cs\(0),
      I2 => axi_rlast_int_reg_0,
      I3 => s_axi_rready,
      I4 => \bvalid_cnt_reg[0]_0\,
      O => aw_active_i_4_n_0
    );
aw_active_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0444"
    )
        port map (
      I0 => \^arb_sm_cs\(1),
      I1 => s_axi_arvalid,
      I2 => s_axi_awvalid,
      I3 => last_arb_won,
      O => aw_active_i_5_n_0
    );
aw_active_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => aw_active_i_1_n_0,
      Q => \^p_1_out\,
      R => s_axi_aresetn_0
    );
axi_arready_int_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAEAAAAA"
    )
        port map (
      I0 => axi_arready_int_i_2_n_0,
      I1 => axi_rlast_int_reg,
      I2 => \^arb_sm_cs\(0),
      I3 => \^arb_sm_cs\(1),
      I4 => s_axi_arvalid,
      I5 => s_axi_awvalid,
      O => axi_arready_cmb
    );
axi_arready_int_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000F07000000070"
    )
        port map (
      I0 => last_arb_won,
      I1 => s_axi_awvalid,
      I2 => s_axi_arvalid,
      I3 => \^arb_sm_cs\(1),
      I4 => \^arb_sm_cs\(0),
      I5 => \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0]\,
      O => axi_arready_int_i_2_n_0
    );
axi_arready_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_arready_cmb,
      Q => s_axi_arready,
      R => s_axi_aresetn_0
    );
axi_awready_int_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008000F00080000"
    )
        port map (
      I0 => s_axi_rready,
      I1 => axi_rlast_int_reg_0,
      I2 => \bvalid_cnt_reg[0]_0\,
      I3 => \^arb_sm_cs\(1),
      I4 => \^arb_sm_cs\(0),
      I5 => axi_awready_int_i_3_n_0,
      O => axi_awready_cmb
    );
axi_awready_int_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => last_arb_won,
      I1 => s_axi_awvalid,
      I2 => s_axi_arvalid,
      O => axi_awready_int_i_3_n_0
    );
axi_awready_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_awready_cmb,
      Q => s_axi_awready,
      R => s_axi_aresetn_0
    );
\bram_we_a[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^p_1_out\,
      I1 => Q(0),
      O => bram_we_a(0)
    );
\bram_we_a[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^p_1_out\,
      I1 => Q(1),
      O => bram_we_a(1)
    );
\bram_we_a[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^p_1_out\,
      I1 => Q(2),
      O => bram_we_a(2)
    );
\bram_we_a[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^p_1_out\,
      I1 => Q(3),
      O => bram_we_a(3)
    );
brst_one_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"04FF"
    )
        port map (
      I0 => axi_rd_burst_two,
      I1 => \^p_0_out\,
      I2 => ar_active_d1,
      I3 => s_axi_aresetn,
      O => brst_one_reg
    );
brst_zero_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => s_axi_arlen(2),
      I1 => s_axi_arlen(3),
      I2 => s_axi_arlen(1),
      I3 => s_axi_arlen(0),
      I4 => \s_axi_arlen[6]\,
      I5 => \^ar_active_re\,
      O => brst_zero_reg
    );
last_arb_won_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => ar_active_cmb,
      I1 => axi_arready_cmb,
      I2 => \bvalid_cnt_reg[0]\,
      I3 => aw_active_i_4_n_0,
      I4 => last_arb_won,
      O => last_arb_won_i_1_n_0
    );
last_arb_won_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => last_arb_won_i_1_n_0,
      Q => last_arb_won,
      R => s_axi_aresetn_0
    );
\save_init_bram_addr_ld[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^p_1_out\,
      I1 => aw_active_d1,
      O => aw_active_re
    );
\save_init_bram_addr_ld[11]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^p_0_out\,
      I1 => ar_active_d1,
      O => \^ar_active_re\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity vcnnbd_axi_bram_ctrl_0_0_wrap_brst is
  port (
    \ADDR_SNG_PORT.bram_addr_int_reg[11]\ : out STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[2]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 8 downto 0 );
    aw_active_re : in STD_LOGIC;
    curr_wrap_burst_reg : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[2]_0\ : in STD_LOGIC;
    \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0]\ : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    aw_active_d1_reg : in STD_LOGIC;
    p_1_out : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_aresetn : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end vcnnbd_axi_bram_ctrl_0_0_wrap_brst;

architecture STRUCTURE of vcnnbd_axi_bram_ctrl_0_0_wrap_brst is
  signal \^d\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal save_init_bram_addr_ld : STD_LOGIC_VECTOR ( 11 downto 3 );
  signal \save_init_bram_addr_ld[11]_i_3_n_0\ : STD_LOGIC;
  signal \save_init_bram_addr_ld[11]_i_4_n_0\ : STD_LOGIC;
  signal \save_init_bram_addr_ld[11]_i_5_n_0\ : STD_LOGIC;
  signal wrap_burst_total : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \wrap_burst_total[0]_i_1_n_0\ : STD_LOGIC;
  signal \wrap_burst_total[1]_i_1_n_0\ : STD_LOGIC;
  signal \wrap_burst_total[2]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ADDR_SNG_PORT.bram_addr_int[2]_i_3\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[10]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[6]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[7]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[8]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[9]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \wrap_burst_total[0]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \wrap_burst_total[2]_i_1\ : label is "soft_lutpair37";
begin
  D(8 downto 0) <= \^d\(8 downto 0);
\ADDR_SNG_PORT.bram_addr_int[11]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEAAAEAAAAAAAA"
    )
        port map (
      I0 => aw_active_re,
      I1 => curr_wrap_burst_reg,
      I2 => \ADDR_SNG_PORT.bram_addr_int_reg[2]_0\,
      I3 => \save_init_bram_addr_ld[11]_i_5_n_0\,
      I4 => \save_init_bram_addr_ld[11]_i_4_n_0\,
      I5 => \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0]\,
      O => \ADDR_SNG_PORT.bram_addr_int_reg[11]\
    );
\ADDR_SNG_PORT.bram_addr_int[2]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_awaddr(0),
      I1 => \save_init_bram_addr_ld[11]_i_3_n_0\,
      O => \ADDR_SNG_PORT.bram_addr_int_reg[2]\
    );
\save_init_bram_addr_ld[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(8),
      I1 => \save_init_bram_addr_ld[11]_i_3_n_0\,
      I2 => save_init_bram_addr_ld(10),
      O => \^d\(7)
    );
\save_init_bram_addr_ld[11]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(9),
      I1 => \save_init_bram_addr_ld[11]_i_3_n_0\,
      I2 => save_init_bram_addr_ld(11),
      O => \^d\(8)
    );
\save_init_bram_addr_ld[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F4F4F44FFFFFFFF"
    )
        port map (
      I0 => aw_active_d1_reg,
      I1 => p_1_out,
      I2 => \save_init_bram_addr_ld[11]_i_4_n_0\,
      I3 => \save_init_bram_addr_ld[11]_i_5_n_0\,
      I4 => \ADDR_SNG_PORT.bram_addr_int_reg[2]_0\,
      I5 => curr_wrap_burst_reg,
      O => \save_init_bram_addr_ld[11]_i_3_n_0\
    );
\save_init_bram_addr_ld[11]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000008F00A000"
    )
        port map (
      I0 => Q(1),
      I1 => Q(2),
      I2 => wrap_burst_total(1),
      I3 => Q(0),
      I4 => wrap_burst_total(0),
      I5 => wrap_burst_total(2),
      O => \save_init_bram_addr_ld[11]_i_4_n_0\
    );
\save_init_bram_addr_ld[11]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => wrap_burst_total(0),
      I1 => wrap_burst_total(2),
      I2 => wrap_burst_total(1),
      O => \save_init_bram_addr_ld[11]_i_5_n_0\
    );
\save_init_bram_addr_ld[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BB88B8888888BB88"
    )
        port map (
      I0 => s_axi_awaddr(1),
      I1 => \save_init_bram_addr_ld[11]_i_3_n_0\,
      I2 => wrap_burst_total(0),
      I3 => save_init_bram_addr_ld(3),
      I4 => wrap_burst_total(1),
      I5 => wrap_burst_total(2),
      O => \^d\(0)
    );
\save_init_bram_addr_ld[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BB8BB8BB88888888"
    )
        port map (
      I0 => s_axi_awaddr(2),
      I1 => \save_init_bram_addr_ld[11]_i_3_n_0\,
      I2 => wrap_burst_total(0),
      I3 => wrap_burst_total(2),
      I4 => wrap_burst_total(1),
      I5 => save_init_bram_addr_ld(4),
      O => \^d\(1)
    );
\save_init_bram_addr_ld[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8B888B8B8"
    )
        port map (
      I0 => s_axi_awaddr(3),
      I1 => \save_init_bram_addr_ld[11]_i_3_n_0\,
      I2 => save_init_bram_addr_ld(5),
      I3 => wrap_burst_total(1),
      I4 => wrap_burst_total(2),
      I5 => wrap_burst_total(0),
      O => \^d\(2)
    );
\save_init_bram_addr_ld[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(4),
      I1 => \save_init_bram_addr_ld[11]_i_3_n_0\,
      I2 => save_init_bram_addr_ld(6),
      O => \^d\(3)
    );
\save_init_bram_addr_ld[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(5),
      I1 => \save_init_bram_addr_ld[11]_i_3_n_0\,
      I2 => save_init_bram_addr_ld(7),
      O => \^d\(4)
    );
\save_init_bram_addr_ld[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(6),
      I1 => \save_init_bram_addr_ld[11]_i_3_n_0\,
      I2 => save_init_bram_addr_ld(8),
      O => \^d\(5)
    );
\save_init_bram_addr_ld[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(7),
      I1 => \save_init_bram_addr_ld[11]_i_3_n_0\,
      I2 => save_init_bram_addr_ld(9),
      O => \^d\(6)
    );
\save_init_bram_addr_ld_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => aw_active_re,
      D => \^d\(7),
      Q => save_init_bram_addr_ld(10),
      R => s_axi_aresetn
    );
\save_init_bram_addr_ld_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => aw_active_re,
      D => \^d\(8),
      Q => save_init_bram_addr_ld(11),
      R => s_axi_aresetn
    );
\save_init_bram_addr_ld_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => aw_active_re,
      D => \^d\(0),
      Q => save_init_bram_addr_ld(3),
      R => s_axi_aresetn
    );
\save_init_bram_addr_ld_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => aw_active_re,
      D => \^d\(1),
      Q => save_init_bram_addr_ld(4),
      R => s_axi_aresetn
    );
\save_init_bram_addr_ld_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => aw_active_re,
      D => \^d\(2),
      Q => save_init_bram_addr_ld(5),
      R => s_axi_aresetn
    );
\save_init_bram_addr_ld_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => aw_active_re,
      D => \^d\(3),
      Q => save_init_bram_addr_ld(6),
      R => s_axi_aresetn
    );
\save_init_bram_addr_ld_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => aw_active_re,
      D => \^d\(4),
      Q => save_init_bram_addr_ld(7),
      R => s_axi_aresetn
    );
\save_init_bram_addr_ld_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => aw_active_re,
      D => \^d\(5),
      Q => save_init_bram_addr_ld(8),
      R => s_axi_aresetn
    );
\save_init_bram_addr_ld_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => aw_active_re,
      D => \^d\(6),
      Q => save_init_bram_addr_ld(9),
      R => s_axi_aresetn
    );
\wrap_burst_total[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4004"
    )
        port map (
      I0 => s_axi_awlen(3),
      I1 => s_axi_awlen(0),
      I2 => s_axi_awlen(1),
      I3 => s_axi_awlen(2),
      O => \wrap_burst_total[0]_i_1_n_0\
    );
\wrap_burst_total[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => s_axi_awlen(3),
      I1 => s_axi_awlen(0),
      I2 => s_axi_awlen(1),
      O => \wrap_burst_total[1]_i_1_n_0\
    );
\wrap_burst_total[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s_axi_awlen(3),
      I1 => s_axi_awlen(2),
      I2 => s_axi_awlen(0),
      I3 => s_axi_awlen(1),
      O => \wrap_burst_total[2]_i_1_n_0\
    );
\wrap_burst_total_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => aw_active_re,
      D => \wrap_burst_total[0]_i_1_n_0\,
      Q => wrap_burst_total(0),
      R => s_axi_aresetn
    );
\wrap_burst_total_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => aw_active_re,
      D => \wrap_burst_total[1]_i_1_n_0\,
      Q => wrap_burst_total(1),
      R => s_axi_aresetn
    );
\wrap_burst_total_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => aw_active_re,
      D => \wrap_burst_total[2]_i_1_n_0\,
      Q => wrap_burst_total(2),
      R => s_axi_aresetn
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity vcnnbd_axi_bram_ctrl_0_0_wrap_brst_0 is
  port (
    D : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \ADDR_SNG_PORT.bram_addr_int_reg[6]\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ADDR_SNG_PORT.bram_addr_int_reg[11]\ : out STD_LOGIC;
    \rd_data_sm_cs_reg[1]\ : out STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[11]_0\ : out STD_LOGIC;
    bram_rst_a : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    p_0_out : in STD_LOGIC;
    aw_active_d1_reg : in STD_LOGIC;
    \save_init_bram_addr_ld_reg[11]_0\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \ADDR_SNG_PORT.bram_addr_int_reg[2]\ : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[4]\ : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[5]\ : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[7]\ : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[8]\ : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[9]\ : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[10]\ : in STD_LOGIC;
    \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0]\ : in STD_LOGIC;
    curr_fixed_burst_reg : in STD_LOGIC;
    curr_fixed_burst_reg_0 : in STD_LOGIC;
    curr_wrap_burst_reg_reg : in STD_LOGIC;
    curr_wrap_burst_reg : in STD_LOGIC;
    \GEN_AR_SNG.ar_active_d1_reg\ : in STD_LOGIC;
    s_axi_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \rd_data_sm_cs_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_rd_burst_two_reg : in STD_LOGIC;
    axi_rd_burst : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    axi_rvalid_int_reg : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    brst_zero : in STD_LOGIC;
    end_brst_rd : in STD_LOGIC;
    ar_active_re : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of vcnnbd_axi_bram_ctrl_0_0_wrap_brst_0 : entity is "wrap_brst";
end vcnnbd_axi_bram_ctrl_0_0_wrap_brst_0;

architecture STRUCTURE of vcnnbd_axi_bram_ctrl_0_0_wrap_brst_0 is
  signal \ADDR_SNG_PORT.bram_addr_int[11]_i_4_n_0\ : STD_LOGIC;
  signal \ADDR_SNG_PORT.bram_addr_int[2]_i_2_n_0\ : STD_LOGIC;
  signal \ADDR_SNG_PORT.bram_addr_int[2]_i_4_n_0\ : STD_LOGIC;
  signal \^addr_sng_port.bram_addr_int_reg[11]\ : STD_LOGIC;
  signal \^addr_sng_port.bram_addr_int_reg[11]_0\ : STD_LOGIC;
  signal \^addr_sng_port.bram_addr_int_reg[6]\ : STD_LOGIC;
  signal RdChnl_BRAM_Addr_Ld : STD_LOGIC_VECTOR ( 9 downto 1 );
  signal \^bram_rst_a\ : STD_LOGIC;
  signal \^rd_data_sm_cs_reg[1]\ : STD_LOGIC;
  signal \save_init_bram_addr_ld[11]_i_3__0_n_0\ : STD_LOGIC;
  signal \save_init_bram_addr_ld[3]_i_2_n_0\ : STD_LOGIC;
  signal \save_init_bram_addr_ld[4]_i_2_n_0\ : STD_LOGIC;
  signal \save_init_bram_addr_ld[5]_i_2_n_0\ : STD_LOGIC;
  signal \save_init_bram_addr_ld_reg_n_0_[10]\ : STD_LOGIC;
  signal \save_init_bram_addr_ld_reg_n_0_[11]\ : STD_LOGIC;
  signal \save_init_bram_addr_ld_reg_n_0_[3]\ : STD_LOGIC;
  signal \save_init_bram_addr_ld_reg_n_0_[4]\ : STD_LOGIC;
  signal \save_init_bram_addr_ld_reg_n_0_[5]\ : STD_LOGIC;
  signal \save_init_bram_addr_ld_reg_n_0_[6]\ : STD_LOGIC;
  signal \save_init_bram_addr_ld_reg_n_0_[7]\ : STD_LOGIC;
  signal \save_init_bram_addr_ld_reg_n_0_[8]\ : STD_LOGIC;
  signal \save_init_bram_addr_ld_reg_n_0_[9]\ : STD_LOGIC;
  signal \wrap_burst_total[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \wrap_burst_total[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \wrap_burst_total[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \wrap_burst_total_reg_n_0_[0]\ : STD_LOGIC;
  signal \wrap_burst_total_reg_n_0_[1]\ : STD_LOGIC;
  signal \wrap_burst_total_reg_n_0_[2]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[11]_i_3__0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[3]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[4]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[5]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \wrap_burst_total[0]_i_1__0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \wrap_burst_total[2]_i_1__0\ : label is "soft_lutpair7";
begin
  \ADDR_SNG_PORT.bram_addr_int_reg[11]\ <= \^addr_sng_port.bram_addr_int_reg[11]\;
  \ADDR_SNG_PORT.bram_addr_int_reg[11]_0\ <= \^addr_sng_port.bram_addr_int_reg[11]_0\;
  \ADDR_SNG_PORT.bram_addr_int_reg[6]\ <= \^addr_sng_port.bram_addr_int_reg[6]\;
  bram_rst_a <= \^bram_rst_a\;
  \rd_data_sm_cs_reg[1]\ <= \^rd_data_sm_cs_reg[1]\;
\ADDR_SNG_PORT.bram_addr_int[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F606F6F6F606060"
    )
        port map (
      I0 => Q(8),
      I1 => \ADDR_SNG_PORT.bram_addr_int_reg[9]\,
      I2 => \ADDR_SNG_PORT.bram_addr_int[11]_i_4_n_0\,
      I3 => RdChnl_BRAM_Addr_Ld(8),
      I4 => p_0_out,
      I5 => \save_init_bram_addr_ld_reg[11]_0\(7),
      O => D(8)
    );
\ADDR_SNG_PORT.bram_addr_int[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555D555DFF5D555D"
    )
        port map (
      I0 => \ADDR_SNG_PORT.bram_addr_int[11]_i_4_n_0\,
      I1 => \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0]\,
      I2 => curr_fixed_burst_reg,
      I3 => p_0_out,
      I4 => \^addr_sng_port.bram_addr_int_reg[11]\,
      I5 => curr_fixed_burst_reg_0,
      O => E(0)
    );
\ADDR_SNG_PORT.bram_addr_int[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F606F6F6F606060"
    )
        port map (
      I0 => Q(9),
      I1 => \ADDR_SNG_PORT.bram_addr_int_reg[10]\,
      I2 => \ADDR_SNG_PORT.bram_addr_int[11]_i_4_n_0\,
      I3 => RdChnl_BRAM_Addr_Ld(9),
      I4 => p_0_out,
      I5 => \save_init_bram_addr_ld_reg[11]_0\(8),
      O => D(9)
    );
\ADDR_SNG_PORT.bram_addr_int[11]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1555155500001555"
    )
        port map (
      I0 => curr_wrap_burst_reg_reg,
      I1 => \save_init_bram_addr_ld[11]_i_3__0_n_0\,
      I2 => \^addr_sng_port.bram_addr_int_reg[11]\,
      I3 => curr_wrap_burst_reg,
      I4 => p_0_out,
      I5 => \GEN_AR_SNG.ar_active_d1_reg\,
      O => \ADDR_SNG_PORT.bram_addr_int[11]_i_4_n_0\
    );
\ADDR_SNG_PORT.bram_addr_int[11]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAEAAAAEA"
    )
        port map (
      I0 => \^rd_data_sm_cs_reg[1]\,
      I1 => \^addr_sng_port.bram_addr_int_reg[11]_0\,
      I2 => \rd_data_sm_cs_reg[3]\(2),
      I3 => \rd_data_sm_cs_reg[3]\(1),
      I4 => \rd_data_sm_cs_reg[3]\(0),
      I5 => \rd_data_sm_cs_reg[3]\(3),
      O => \^addr_sng_port.bram_addr_int_reg[11]\
    );
\ADDR_SNG_PORT.bram_addr_int[11]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => axi_rvalid_int_reg,
      I1 => s_axi_rready,
      I2 => brst_zero,
      I3 => end_brst_rd,
      O => \^addr_sng_port.bram_addr_int_reg[11]_0\
    );
\ADDR_SNG_PORT.bram_addr_int[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555555550CFF0C00"
    )
        port map (
      I0 => Q(0),
      I1 => s_axi_araddr(0),
      I2 => \ADDR_SNG_PORT.bram_addr_int[2]_i_2_n_0\,
      I3 => p_0_out,
      I4 => aw_active_d1_reg,
      I5 => \ADDR_SNG_PORT.bram_addr_int[11]_i_4_n_0\,
      O => D(0)
    );
\ADDR_SNG_PORT.bram_addr_int[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F1000000"
    )
        port map (
      I0 => \^addr_sng_port.bram_addr_int_reg[6]\,
      I1 => \save_init_bram_addr_ld[5]_i_2_n_0\,
      I2 => \ADDR_SNG_PORT.bram_addr_int[2]_i_4_n_0\,
      I3 => \^addr_sng_port.bram_addr_int_reg[11]\,
      I4 => curr_wrap_burst_reg,
      O => \ADDR_SNG_PORT.bram_addr_int[2]_i_2_n_0\
    );
\ADDR_SNG_PORT.bram_addr_int[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000008808C0C0"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => \wrap_burst_total_reg_n_0_[0]\,
      I3 => Q(2),
      I4 => \wrap_burst_total_reg_n_0_[1]\,
      I5 => \wrap_burst_total_reg_n_0_[2]\,
      O => \ADDR_SNG_PORT.bram_addr_int[2]_i_4_n_0\
    );
\ADDR_SNG_PORT.bram_addr_int[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F606F6F6F606060"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => \ADDR_SNG_PORT.bram_addr_int[11]_i_4_n_0\,
      I3 => RdChnl_BRAM_Addr_Ld(1),
      I4 => p_0_out,
      I5 => \save_init_bram_addr_ld_reg[11]_0\(0),
      O => D(1)
    );
\ADDR_SNG_PORT.bram_addr_int[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F606F6F6F606060"
    )
        port map (
      I0 => Q(2),
      I1 => \ADDR_SNG_PORT.bram_addr_int_reg[2]\,
      I2 => \ADDR_SNG_PORT.bram_addr_int[11]_i_4_n_0\,
      I3 => RdChnl_BRAM_Addr_Ld(2),
      I4 => p_0_out,
      I5 => \save_init_bram_addr_ld_reg[11]_0\(1),
      O => D(2)
    );
\ADDR_SNG_PORT.bram_addr_int[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9F909F9F9F909090"
    )
        port map (
      I0 => Q(3),
      I1 => \ADDR_SNG_PORT.bram_addr_int_reg[4]\,
      I2 => \ADDR_SNG_PORT.bram_addr_int[11]_i_4_n_0\,
      I3 => RdChnl_BRAM_Addr_Ld(3),
      I4 => p_0_out,
      I5 => \save_init_bram_addr_ld_reg[11]_0\(2),
      O => D(3)
    );
\ADDR_SNG_PORT.bram_addr_int[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9F909F9F9F909090"
    )
        port map (
      I0 => Q(4),
      I1 => \^addr_sng_port.bram_addr_int_reg[6]\,
      I2 => \ADDR_SNG_PORT.bram_addr_int[11]_i_4_n_0\,
      I3 => RdChnl_BRAM_Addr_Ld(4),
      I4 => p_0_out,
      I5 => \save_init_bram_addr_ld_reg[11]_0\(3),
      O => D(4)
    );
\ADDR_SNG_PORT.bram_addr_int[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => Q(2),
      I3 => Q(3),
      O => \^addr_sng_port.bram_addr_int_reg[6]\
    );
\ADDR_SNG_PORT.bram_addr_int[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9F909F9F9F909090"
    )
        port map (
      I0 => \ADDR_SNG_PORT.bram_addr_int_reg[5]\,
      I1 => Q(5),
      I2 => \ADDR_SNG_PORT.bram_addr_int[11]_i_4_n_0\,
      I3 => RdChnl_BRAM_Addr_Ld(5),
      I4 => p_0_out,
      I5 => \save_init_bram_addr_ld_reg[11]_0\(4),
      O => D(5)
    );
\ADDR_SNG_PORT.bram_addr_int[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F606F6F6F606060"
    )
        port map (
      I0 => Q(6),
      I1 => \ADDR_SNG_PORT.bram_addr_int_reg[7]\,
      I2 => \ADDR_SNG_PORT.bram_addr_int[11]_i_4_n_0\,
      I3 => RdChnl_BRAM_Addr_Ld(6),
      I4 => p_0_out,
      I5 => \save_init_bram_addr_ld_reg[11]_0\(5),
      O => D(6)
    );
\ADDR_SNG_PORT.bram_addr_int[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F606F6F6F606060"
    )
        port map (
      I0 => Q(7),
      I1 => \ADDR_SNG_PORT.bram_addr_int_reg[8]\,
      I2 => \ADDR_SNG_PORT.bram_addr_int[11]_i_4_n_0\,
      I3 => RdChnl_BRAM_Addr_Ld(7),
      I4 => p_0_out,
      I5 => \save_init_bram_addr_ld_reg[11]_0\(6),
      O => D(7)
    );
bram_rst_a_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_aresetn,
      O => \^bram_rst_a\
    );
\rd_data_sm_cs[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0101010000100010"
    )
        port map (
      I0 => \rd_data_sm_cs_reg[3]\(2),
      I1 => \rd_data_sm_cs_reg[3]\(3),
      I2 => \rd_data_sm_cs_reg[3]\(1),
      I3 => axi_rd_burst_two_reg,
      I4 => axi_rd_burst,
      I5 => \rd_data_sm_cs_reg[3]\(0),
      O => \^rd_data_sm_cs_reg[1]\
    );
\save_init_bram_addr_ld[10]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => \save_init_bram_addr_ld_reg_n_0_[10]\,
      I1 => \save_init_bram_addr_ld[11]_i_3__0_n_0\,
      I2 => \^addr_sng_port.bram_addr_int_reg[11]\,
      I3 => curr_wrap_burst_reg,
      I4 => s_axi_araddr(8),
      O => RdChnl_BRAM_Addr_Ld(8)
    );
\save_init_bram_addr_ld[11]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => \save_init_bram_addr_ld_reg_n_0_[11]\,
      I1 => \save_init_bram_addr_ld[11]_i_3__0_n_0\,
      I2 => \^addr_sng_port.bram_addr_int_reg[11]\,
      I3 => curr_wrap_burst_reg,
      I4 => s_axi_araddr(9),
      O => RdChnl_BRAM_Addr_Ld(9)
    );
\save_init_bram_addr_ld[11]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAABA"
    )
        port map (
      I0 => \ADDR_SNG_PORT.bram_addr_int[2]_i_4_n_0\,
      I1 => \wrap_burst_total_reg_n_0_[0]\,
      I2 => \wrap_burst_total_reg_n_0_[2]\,
      I3 => \wrap_burst_total_reg_n_0_[1]\,
      I4 => \^addr_sng_port.bram_addr_int_reg[6]\,
      O => \save_init_bram_addr_ld[11]_i_3__0_n_0\
    );
\save_init_bram_addr_ld[3]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => \save_init_bram_addr_ld[3]_i_2_n_0\,
      I1 => \save_init_bram_addr_ld[11]_i_3__0_n_0\,
      I2 => \^addr_sng_port.bram_addr_int_reg[11]\,
      I3 => curr_wrap_burst_reg,
      I4 => s_axi_araddr(1),
      O => RdChnl_BRAM_Addr_Ld(1)
    );
\save_init_bram_addr_ld[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C80C"
    )
        port map (
      I0 => \wrap_burst_total_reg_n_0_[0]\,
      I1 => \save_init_bram_addr_ld_reg_n_0_[3]\,
      I2 => \wrap_burst_total_reg_n_0_[1]\,
      I3 => \wrap_burst_total_reg_n_0_[2]\,
      O => \save_init_bram_addr_ld[3]_i_2_n_0\
    );
\save_init_bram_addr_ld[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => \save_init_bram_addr_ld[4]_i_2_n_0\,
      I1 => \save_init_bram_addr_ld[11]_i_3__0_n_0\,
      I2 => \^addr_sng_port.bram_addr_int_reg[11]\,
      I3 => curr_wrap_burst_reg,
      I4 => s_axi_araddr(2),
      O => RdChnl_BRAM_Addr_Ld(2)
    );
\save_init_bram_addr_ld[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DB00"
    )
        port map (
      I0 => \wrap_burst_total_reg_n_0_[0]\,
      I1 => \wrap_burst_total_reg_n_0_[2]\,
      I2 => \wrap_burst_total_reg_n_0_[1]\,
      I3 => \save_init_bram_addr_ld_reg_n_0_[4]\,
      O => \save_init_bram_addr_ld[4]_i_2_n_0\
    );
\save_init_bram_addr_ld[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8FFFFFFF80000000"
    )
        port map (
      I0 => \save_init_bram_addr_ld_reg_n_0_[5]\,
      I1 => \save_init_bram_addr_ld[5]_i_2_n_0\,
      I2 => \save_init_bram_addr_ld[11]_i_3__0_n_0\,
      I3 => \^addr_sng_port.bram_addr_int_reg[11]\,
      I4 => curr_wrap_burst_reg,
      I5 => s_axi_araddr(3),
      O => RdChnl_BRAM_Addr_Ld(3)
    );
\save_init_bram_addr_ld[5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => \wrap_burst_total_reg_n_0_[0]\,
      I1 => \wrap_burst_total_reg_n_0_[2]\,
      I2 => \wrap_burst_total_reg_n_0_[1]\,
      O => \save_init_bram_addr_ld[5]_i_2_n_0\
    );
\save_init_bram_addr_ld[6]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => \save_init_bram_addr_ld_reg_n_0_[6]\,
      I1 => \save_init_bram_addr_ld[11]_i_3__0_n_0\,
      I2 => \^addr_sng_port.bram_addr_int_reg[11]\,
      I3 => curr_wrap_burst_reg,
      I4 => s_axi_araddr(4),
      O => RdChnl_BRAM_Addr_Ld(4)
    );
\save_init_bram_addr_ld[7]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => \save_init_bram_addr_ld_reg_n_0_[7]\,
      I1 => \save_init_bram_addr_ld[11]_i_3__0_n_0\,
      I2 => \^addr_sng_port.bram_addr_int_reg[11]\,
      I3 => curr_wrap_burst_reg,
      I4 => s_axi_araddr(5),
      O => RdChnl_BRAM_Addr_Ld(5)
    );
\save_init_bram_addr_ld[8]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => \save_init_bram_addr_ld_reg_n_0_[8]\,
      I1 => \save_init_bram_addr_ld[11]_i_3__0_n_0\,
      I2 => \^addr_sng_port.bram_addr_int_reg[11]\,
      I3 => curr_wrap_burst_reg,
      I4 => s_axi_araddr(6),
      O => RdChnl_BRAM_Addr_Ld(6)
    );
\save_init_bram_addr_ld[9]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => \save_init_bram_addr_ld_reg_n_0_[9]\,
      I1 => \save_init_bram_addr_ld[11]_i_3__0_n_0\,
      I2 => \^addr_sng_port.bram_addr_int_reg[11]\,
      I3 => curr_wrap_burst_reg,
      I4 => s_axi_araddr(7),
      O => RdChnl_BRAM_Addr_Ld(7)
    );
\save_init_bram_addr_ld_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => RdChnl_BRAM_Addr_Ld(8),
      Q => \save_init_bram_addr_ld_reg_n_0_[10]\,
      R => \^bram_rst_a\
    );
\save_init_bram_addr_ld_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => RdChnl_BRAM_Addr_Ld(9),
      Q => \save_init_bram_addr_ld_reg_n_0_[11]\,
      R => \^bram_rst_a\
    );
\save_init_bram_addr_ld_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => RdChnl_BRAM_Addr_Ld(1),
      Q => \save_init_bram_addr_ld_reg_n_0_[3]\,
      R => \^bram_rst_a\
    );
\save_init_bram_addr_ld_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => RdChnl_BRAM_Addr_Ld(2),
      Q => \save_init_bram_addr_ld_reg_n_0_[4]\,
      R => \^bram_rst_a\
    );
\save_init_bram_addr_ld_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => RdChnl_BRAM_Addr_Ld(3),
      Q => \save_init_bram_addr_ld_reg_n_0_[5]\,
      R => \^bram_rst_a\
    );
\save_init_bram_addr_ld_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => RdChnl_BRAM_Addr_Ld(4),
      Q => \save_init_bram_addr_ld_reg_n_0_[6]\,
      R => \^bram_rst_a\
    );
\save_init_bram_addr_ld_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => RdChnl_BRAM_Addr_Ld(5),
      Q => \save_init_bram_addr_ld_reg_n_0_[7]\,
      R => \^bram_rst_a\
    );
\save_init_bram_addr_ld_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => RdChnl_BRAM_Addr_Ld(6),
      Q => \save_init_bram_addr_ld_reg_n_0_[8]\,
      R => \^bram_rst_a\
    );
\save_init_bram_addr_ld_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => RdChnl_BRAM_Addr_Ld(7),
      Q => \save_init_bram_addr_ld_reg_n_0_[9]\,
      R => \^bram_rst_a\
    );
\wrap_burst_total[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0804"
    )
        port map (
      I0 => s_axi_arlen(1),
      I1 => s_axi_arlen(0),
      I2 => s_axi_arlen(3),
      I3 => s_axi_arlen(2),
      O => \wrap_burst_total[0]_i_1__0_n_0\
    );
\wrap_burst_total[1]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s_axi_arlen(1),
      I1 => s_axi_arlen(0),
      I2 => s_axi_arlen(3),
      O => \wrap_burst_total[1]_i_1__0_n_0\
    );
\wrap_burst_total[2]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s_axi_arlen(1),
      I1 => s_axi_arlen(0),
      I2 => s_axi_arlen(2),
      I3 => s_axi_arlen(3),
      O => \wrap_burst_total[2]_i_1__0_n_0\
    );
\wrap_burst_total_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => \wrap_burst_total[0]_i_1__0_n_0\,
      Q => \wrap_burst_total_reg_n_0_[0]\,
      R => \^bram_rst_a\
    );
\wrap_burst_total_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => \wrap_burst_total[1]_i_1__0_n_0\,
      Q => \wrap_burst_total_reg_n_0_[1]\,
      R => \^bram_rst_a\
    );
\wrap_burst_total_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => \wrap_burst_total[2]_i_1__0_n_0\,
      Q => \wrap_burst_total_reg_n_0_[2]\,
      R => \^bram_rst_a\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity vcnnbd_axi_bram_ctrl_0_0_rd_chnl is
  port (
    bram_rst_a : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ar_active_d1 : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rlast : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    p_7_in : out STD_LOGIC;
    axi_rd_burst_two : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \ADDR_SNG_PORT.bram_addr_int_reg[6]\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    axi_rd_burst_reg_0 : out STD_LOGIC;
    \arb_sm_cs_reg[1]\ : out STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    ar_active_re : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    ar_active_reg : in STD_LOGIC;
    p_0_out : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ar_active_reg_0 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    aw_active_d1_reg : in STD_LOGIC;
    \save_init_bram_addr_ld_reg[11]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \ADDR_SNG_PORT.bram_addr_int_reg[2]\ : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[4]\ : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[5]\ : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[7]\ : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[8]\ : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[9]\ : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[10]\ : in STD_LOGIC;
    \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0]\ : in STD_LOGIC;
    curr_fixed_burst_reg : in STD_LOGIC;
    curr_wrap_burst_reg_reg_0 : in STD_LOGIC;
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ar_active_reg_1 : in STD_LOGIC;
    bram_rddata_a : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end vcnnbd_axi_bram_ctrl_0_0_rd_chnl;

architecture STRUCTURE of vcnnbd_axi_bram_ctrl_0_0_rd_chnl is
  signal \/FSM_sequential_rlast_sm_cs[0]_i_2_n_0\ : STD_LOGIC;
  signal \/FSM_sequential_rlast_sm_cs[1]_i_2_n_0\ : STD_LOGIC;
  signal \/i__n_0\ : STD_LOGIC;
  signal \FSM_sequential_rlast_sm_cs[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rlast_sm_cs[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rlast_sm_cs[2]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_BRST_MAX_WO_NARROW.brst_cnt_max_i_1_n_0\ : STD_LOGIC;
  signal \GEN_RDATA_NO_ECC.GEN_RDATA[0].axi_rdata_int[0]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_RDATA_NO_ECC.GEN_RDATA[10].axi_rdata_int[10]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_RDATA_NO_ECC.GEN_RDATA[11].axi_rdata_int[11]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_RDATA_NO_ECC.GEN_RDATA[12].axi_rdata_int[12]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_RDATA_NO_ECC.GEN_RDATA[13].axi_rdata_int[13]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_RDATA_NO_ECC.GEN_RDATA[14].axi_rdata_int[14]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_RDATA_NO_ECC.GEN_RDATA[15].axi_rdata_int[15]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_RDATA_NO_ECC.GEN_RDATA[16].axi_rdata_int[16]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_RDATA_NO_ECC.GEN_RDATA[17].axi_rdata_int[17]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_RDATA_NO_ECC.GEN_RDATA[18].axi_rdata_int[18]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_RDATA_NO_ECC.GEN_RDATA[19].axi_rdata_int[19]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_RDATA_NO_ECC.GEN_RDATA[1].axi_rdata_int[1]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_RDATA_NO_ECC.GEN_RDATA[20].axi_rdata_int[20]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_RDATA_NO_ECC.GEN_RDATA[21].axi_rdata_int[21]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_RDATA_NO_ECC.GEN_RDATA[22].axi_rdata_int[22]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_RDATA_NO_ECC.GEN_RDATA[23].axi_rdata_int[23]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_RDATA_NO_ECC.GEN_RDATA[24].axi_rdata_int[24]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_RDATA_NO_ECC.GEN_RDATA[25].axi_rdata_int[25]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_RDATA_NO_ECC.GEN_RDATA[26].axi_rdata_int[26]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_RDATA_NO_ECC.GEN_RDATA[27].axi_rdata_int[27]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_RDATA_NO_ECC.GEN_RDATA[28].axi_rdata_int[28]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_RDATA_NO_ECC.GEN_RDATA[29].axi_rdata_int[29]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_RDATA_NO_ECC.GEN_RDATA[2].axi_rdata_int[2]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_RDATA_NO_ECC.GEN_RDATA[30].axi_rdata_int[30]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_3_n_0\ : STD_LOGIC;
  signal \GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_4_n_0\ : STD_LOGIC;
  signal \GEN_RDATA_NO_ECC.GEN_RDATA[3].axi_rdata_int[3]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_RDATA_NO_ECC.GEN_RDATA[4].axi_rdata_int[4]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_RDATA_NO_ECC.GEN_RDATA[5].axi_rdata_int[5]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_RDATA_NO_ECC.GEN_RDATA[6].axi_rdata_int[6]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_RDATA_NO_ECC.GEN_RDATA[7].axi_rdata_int[7]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_RDATA_NO_ECC.GEN_RDATA[8].axi_rdata_int[8]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_RDATA_NO_ECC.GEN_RDATA[9].axi_rdata_int[9]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_RID_SNG.axi_rid_int[0]_i_1_n_0\ : STD_LOGIC;
  signal I_WRAP_BRST_n_12 : STD_LOGIC;
  signal I_WRAP_BRST_n_13 : STD_LOGIC;
  signal I_WRAP_BRST_n_14 : STD_LOGIC;
  signal act_rd_burst : STD_LOGIC;
  signal act_rd_burst_i_1_n_0 : STD_LOGIC;
  signal act_rd_burst_i_3_n_0 : STD_LOGIC;
  signal act_rd_burst_set : STD_LOGIC;
  signal act_rd_burst_two : STD_LOGIC;
  signal act_rd_burst_two_i_1_n_0 : STD_LOGIC;
  signal \^ar_active_d1\ : STD_LOGIC;
  signal axi_rd_burst : STD_LOGIC;
  signal axi_rd_burst_i_1_n_0 : STD_LOGIC;
  signal axi_rd_burst_i_3_n_0 : STD_LOGIC;
  signal axi_rd_burst_i_4_n_0 : STD_LOGIC;
  signal \^axi_rd_burst_reg_0\ : STD_LOGIC;
  signal \^axi_rd_burst_two\ : STD_LOGIC;
  signal axi_rd_burst_two_i_1_n_0 : STD_LOGIC;
  signal axi_rd_burst_two_reg_n_0 : STD_LOGIC;
  signal axi_rdata_en : STD_LOGIC;
  signal axi_rid_temp : STD_LOGIC;
  signal axi_rlast_int_i_1_n_0 : STD_LOGIC;
  signal axi_rlast_set : STD_LOGIC;
  signal axi_rvalid_clr_ok : STD_LOGIC;
  signal axi_rvalid_clr_ok_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_clr_ok_i_2_n_0 : STD_LOGIC;
  signal axi_rvalid_int_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_set : STD_LOGIC;
  signal axi_rvalid_set_cmb : STD_LOGIC;
  signal bram_en_int_i_1_n_0 : STD_LOGIC;
  signal bram_en_int_i_2_n_0 : STD_LOGIC;
  signal bram_en_int_i_3_n_0 : STD_LOGIC;
  signal bram_en_int_i_4_n_0 : STD_LOGIC;
  signal bram_en_int_i_5_n_0 : STD_LOGIC;
  signal bram_en_int_i_6_n_0 : STD_LOGIC;
  signal bram_en_int_i_7_n_0 : STD_LOGIC;
  signal bram_en_int_i_8_n_0 : STD_LOGIC;
  signal bram_en_int_i_9_n_0 : STD_LOGIC;
  signal \^bram_rst_a\ : STD_LOGIC;
  signal brst_cnt : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \brst_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \brst_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \brst_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \brst_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \brst_cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \brst_cnt[4]_i_2_n_0\ : STD_LOGIC;
  signal \brst_cnt[5]_i_1_n_0\ : STD_LOGIC;
  signal \brst_cnt[6]_i_1_n_0\ : STD_LOGIC;
  signal \brst_cnt[7]_i_1_n_0\ : STD_LOGIC;
  signal \brst_cnt[7]_i_2_n_0\ : STD_LOGIC;
  signal \brst_cnt[7]_i_3_n_0\ : STD_LOGIC;
  signal brst_cnt_max : STD_LOGIC;
  signal brst_cnt_max_d1 : STD_LOGIC;
  signal brst_one : STD_LOGIC;
  signal brst_one_i_1_n_0 : STD_LOGIC;
  signal brst_one_i_2_n_0 : STD_LOGIC;
  signal brst_one_i_4_n_0 : STD_LOGIC;
  signal brst_one_i_5_n_0 : STD_LOGIC;
  signal brst_zero : STD_LOGIC;
  signal brst_zero_i_1_n_0 : STD_LOGIC;
  signal curr_fixed_burst : STD_LOGIC;
  signal curr_fixed_burst_reg_0 : STD_LOGIC;
  signal curr_wrap_burst_reg : STD_LOGIC;
  signal \curr_wrap_burst_reg_i_1__0_n_0\ : STD_LOGIC;
  signal disable_b2b_brst : STD_LOGIC;
  signal disable_b2b_brst_cmb : STD_LOGIC;
  signal disable_b2b_brst_i_2_n_0 : STD_LOGIC;
  signal disable_b2b_brst_i_3_n_0 : STD_LOGIC;
  signal disable_b2b_brst_i_4_n_0 : STD_LOGIC;
  signal end_brst_rd : STD_LOGIC;
  signal end_brst_rd_clr : STD_LOGIC;
  signal end_brst_rd_clr_i_1_n_0 : STD_LOGIC;
  signal end_brst_rd_i_1_n_0 : STD_LOGIC;
  signal last_bram_addr : STD_LOGIC;
  signal last_bram_addr0 : STD_LOGIC;
  signal last_bram_addr_i_2_n_0 : STD_LOGIC;
  signal last_bram_addr_i_3_n_0 : STD_LOGIC;
  signal last_bram_addr_i_4_n_0 : STD_LOGIC;
  signal last_bram_addr_i_5_n_0 : STD_LOGIC;
  signal p_0_in4_in : STD_LOGIC;
  signal \^p_7_in\ : STD_LOGIC;
  signal pend_rd_op : STD_LOGIC;
  signal pend_rd_op_i_1_n_0 : STD_LOGIC;
  signal pend_rd_op_i_2_n_0 : STD_LOGIC;
  signal pend_rd_op_i_3_n_0 : STD_LOGIC;
  signal pend_rd_op_i_4_n_0 : STD_LOGIC;
  signal pend_rd_op_i_5_n_0 : STD_LOGIC;
  signal rd_adv_buf24_out : STD_LOGIC;
  signal rd_data_sm_cs : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \rd_data_sm_cs[0]_i_1_n_0\ : STD_LOGIC;
  signal \rd_data_sm_cs[0]_i_2_n_0\ : STD_LOGIC;
  signal \rd_data_sm_cs[0]_i_3_n_0\ : STD_LOGIC;
  signal \rd_data_sm_cs[0]_i_4_n_0\ : STD_LOGIC;
  signal \rd_data_sm_cs[1]_i_1_n_0\ : STD_LOGIC;
  signal \rd_data_sm_cs[2]_i_1_n_0\ : STD_LOGIC;
  signal \rd_data_sm_cs[2]_i_2_n_0\ : STD_LOGIC;
  signal \rd_data_sm_cs[2]_i_3_n_0\ : STD_LOGIC;
  signal \rd_data_sm_cs[2]_i_4_n_0\ : STD_LOGIC;
  signal \rd_data_sm_cs[3]_i_2_n_0\ : STD_LOGIC;
  signal \rd_data_sm_cs[3]_i_3_n_0\ : STD_LOGIC;
  signal \rd_data_sm_cs[3]_i_4_n_0\ : STD_LOGIC;
  signal \rd_data_sm_cs[3]_i_5_n_0\ : STD_LOGIC;
  signal \rd_data_sm_cs[3]_i_6_n_0\ : STD_LOGIC;
  signal rd_data_sm_ns : STD_LOGIC;
  signal rd_skid_buf : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal rd_skid_buf_ld : STD_LOGIC;
  signal rd_skid_buf_ld_cmb : STD_LOGIC;
  signal rd_skid_buf_ld_reg : STD_LOGIC;
  signal rddata_mux_sel : STD_LOGIC;
  signal rddata_mux_sel_cmb : STD_LOGIC;
  signal rddata_mux_sel_i_1_n_0 : STD_LOGIC;
  signal rddata_mux_sel_i_3_n_0 : STD_LOGIC;
  signal rlast_sm_cs : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of rlast_sm_cs : signal is "yes";
  signal \^s_axi_rid\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s_axi_rlast\ : STD_LOGIC;
  signal \^s_axi_rvalid\ : STD_LOGIC;
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_rlast_sm_cs_reg[0]\ : label is "yes";
  attribute KEEP of \FSM_sequential_rlast_sm_cs_reg[1]\ : label is "yes";
  attribute KEEP of \FSM_sequential_rlast_sm_cs_reg[2]\ : label is "yes";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[0].axi_rdata_int[0]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[10].axi_rdata_int[10]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[11].axi_rdata_int[11]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[12].axi_rdata_int[12]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[13].axi_rdata_int[13]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[14].axi_rdata_int[14]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[15].axi_rdata_int[15]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[16].axi_rdata_int[16]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[17].axi_rdata_int[17]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[18].axi_rdata_int[18]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[19].axi_rdata_int[19]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[1].axi_rdata_int[1]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[20].axi_rdata_int[20]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[21].axi_rdata_int[21]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[22].axi_rdata_int[22]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[23].axi_rdata_int[23]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[24].axi_rdata_int[24]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[25].axi_rdata_int[25]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[26].axi_rdata_int[26]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[27].axi_rdata_int[27]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[28].axi_rdata_int[28]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[29].axi_rdata_int[29]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[2].axi_rdata_int[2]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[30].axi_rdata_int[30]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_3\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_4\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_5\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[3].axi_rdata_int[3]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[4].axi_rdata_int[4]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[5].axi_rdata_int[5]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[6].axi_rdata_int[6]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[7].axi_rdata_int[7]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[8].axi_rdata_int[8]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[9].axi_rdata_int[9]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of axi_arready_int_i_3 : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of axi_rd_burst_i_2 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of axi_rd_burst_i_3 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of axi_rd_burst_i_4 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of axi_rvalid_set_i_1 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of bram_en_int_i_7 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of bram_en_int_i_8 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of bram_en_int_i_9 : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \brst_cnt[0]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \brst_cnt[4]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \brst_cnt[7]_i_3\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of brst_one_i_2 : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of brst_zero_i_1 : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of brst_zero_i_3 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \curr_fixed_burst_reg_i_1__0\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \curr_wrap_burst_reg_i_1__0\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of disable_b2b_brst_i_4 : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of last_bram_addr_i_1 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of pend_rd_op_i_4 : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of pend_rd_op_i_5 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \rd_data_sm_cs[2]_i_4\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \rd_data_sm_cs[3]_i_5\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \rd_data_sm_cs[3]_i_6\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of rddata_mux_sel_i_1 : label is "soft_lutpair17";
begin
  ar_active_d1 <= \^ar_active_d1\;
  axi_rd_burst_reg_0 <= \^axi_rd_burst_reg_0\;
  axi_rd_burst_two <= \^axi_rd_burst_two\;
  bram_rst_a <= \^bram_rst_a\;
  p_7_in <= \^p_7_in\;
  s_axi_rid(0) <= \^s_axi_rid\(0);
  s_axi_rlast <= \^s_axi_rlast\;
  s_axi_rvalid <= \^s_axi_rvalid\;
\/FSM_sequential_rlast_sm_cs[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0011001300130013"
    )
        port map (
      I0 => axi_rd_burst,
      I1 => rlast_sm_cs(1),
      I2 => act_rd_burst_two,
      I3 => axi_rd_burst_two_reg_n_0,
      I4 => s_axi_rready,
      I5 => \^s_axi_rvalid\,
      O => \/FSM_sequential_rlast_sm_cs[0]_i_2_n_0\
    );
\/FSM_sequential_rlast_sm_cs[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"003F007F003F0055"
    )
        port map (
      I0 => axi_rd_burst,
      I1 => \^s_axi_rvalid\,
      I2 => s_axi_rready,
      I3 => rlast_sm_cs(1),
      I4 => axi_rd_burst_two_reg_n_0,
      I5 => act_rd_burst_two,
      O => \/FSM_sequential_rlast_sm_cs[1]_i_2_n_0\
    );
\/i_\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F000F111F000E000"
    )
        port map (
      I0 => rlast_sm_cs(2),
      I1 => rlast_sm_cs(1),
      I2 => s_axi_rready,
      I3 => \^s_axi_rvalid\,
      I4 => rlast_sm_cs(0),
      I5 => last_bram_addr,
      O => \/i__n_0\
    );
\/i___0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00008080000F8080"
    )
        port map (
      I0 => \^s_axi_rvalid\,
      I1 => s_axi_rready,
      I2 => rlast_sm_cs(0),
      I3 => rlast_sm_cs(1),
      I4 => rlast_sm_cs(2),
      I5 => \^s_axi_rlast\,
      O => axi_rlast_set
    );
\FSM_sequential_rlast_sm_cs[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01FF0100"
    )
        port map (
      I0 => rlast_sm_cs(2),
      I1 => rlast_sm_cs(0),
      I2 => \/FSM_sequential_rlast_sm_cs[0]_i_2_n_0\,
      I3 => \/i__n_0\,
      I4 => rlast_sm_cs(0),
      O => \FSM_sequential_rlast_sm_cs[0]_i_1_n_0\
    );
\FSM_sequential_rlast_sm_cs[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01FF0100"
    )
        port map (
      I0 => rlast_sm_cs(2),
      I1 => rlast_sm_cs(0),
      I2 => \/FSM_sequential_rlast_sm_cs[1]_i_2_n_0\,
      I3 => \/i__n_0\,
      I4 => rlast_sm_cs(1),
      O => \FSM_sequential_rlast_sm_cs[1]_i_1_n_0\
    );
\FSM_sequential_rlast_sm_cs[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00A4FFFF00A40000"
    )
        port map (
      I0 => rlast_sm_cs(1),
      I1 => p_0_in4_in,
      I2 => rlast_sm_cs(0),
      I3 => rlast_sm_cs(2),
      I4 => \/i__n_0\,
      I5 => rlast_sm_cs(2),
      O => \FSM_sequential_rlast_sm_cs[2]_i_1_n_0\
    );
\FSM_sequential_rlast_sm_cs[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axi_rd_burst,
      I1 => axi_rd_burst_two_reg_n_0,
      O => p_0_in4_in
    );
\FSM_sequential_rlast_sm_cs_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_sequential_rlast_sm_cs[0]_i_1_n_0\,
      Q => rlast_sm_cs(0),
      R => \^bram_rst_a\
    );
\FSM_sequential_rlast_sm_cs_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_sequential_rlast_sm_cs[1]_i_1_n_0\,
      Q => rlast_sm_cs(1),
      R => \^bram_rst_a\
    );
\FSM_sequential_rlast_sm_cs_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_sequential_rlast_sm_cs[2]_i_1_n_0\,
      Q => rlast_sm_cs(2),
      R => \^bram_rst_a\
    );
\GEN_AR_SNG.ar_active_d1_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => ar_active_reg,
      Q => \^ar_active_d1\,
      R => '0'
    );
\GEN_BRST_MAX_WO_NARROW.brst_cnt_max_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA00AA000000AA00"
    )
        port map (
      I0 => brst_cnt_max,
      I1 => pend_rd_op,
      I2 => brst_zero,
      I3 => s_axi_aresetn,
      I4 => p_0_out,
      I5 => \^ar_active_d1\,
      O => \GEN_BRST_MAX_WO_NARROW.brst_cnt_max_i_1_n_0\
    );
\GEN_BRST_MAX_WO_NARROW.brst_cnt_max_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_BRST_MAX_WO_NARROW.brst_cnt_max_i_1_n_0\,
      Q => brst_cnt_max,
      R => '0'
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[0].axi_rdata_int[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(0),
      I1 => bram_rddata_a(0),
      I2 => rddata_mux_sel,
      O => \GEN_RDATA_NO_ECC.GEN_RDATA[0].axi_rdata_int[0]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[0].axi_rdata_int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_RDATA_NO_ECC.GEN_RDATA[0].axi_rdata_int[0]_i_1_n_0\,
      Q => s_axi_rdata(0),
      R => \GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[10].axi_rdata_int[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(10),
      I1 => bram_rddata_a(10),
      I2 => rddata_mux_sel,
      O => \GEN_RDATA_NO_ECC.GEN_RDATA[10].axi_rdata_int[10]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[10].axi_rdata_int_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_RDATA_NO_ECC.GEN_RDATA[10].axi_rdata_int[10]_i_1_n_0\,
      Q => s_axi_rdata(10),
      R => \GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[11].axi_rdata_int[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(11),
      I1 => bram_rddata_a(11),
      I2 => rddata_mux_sel,
      O => \GEN_RDATA_NO_ECC.GEN_RDATA[11].axi_rdata_int[11]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[11].axi_rdata_int_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_RDATA_NO_ECC.GEN_RDATA[11].axi_rdata_int[11]_i_1_n_0\,
      Q => s_axi_rdata(11),
      R => \GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[12].axi_rdata_int[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(12),
      I1 => bram_rddata_a(12),
      I2 => rddata_mux_sel,
      O => \GEN_RDATA_NO_ECC.GEN_RDATA[12].axi_rdata_int[12]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[12].axi_rdata_int_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_RDATA_NO_ECC.GEN_RDATA[12].axi_rdata_int[12]_i_1_n_0\,
      Q => s_axi_rdata(12),
      R => \GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[13].axi_rdata_int[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(13),
      I1 => bram_rddata_a(13),
      I2 => rddata_mux_sel,
      O => \GEN_RDATA_NO_ECC.GEN_RDATA[13].axi_rdata_int[13]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[13].axi_rdata_int_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_RDATA_NO_ECC.GEN_RDATA[13].axi_rdata_int[13]_i_1_n_0\,
      Q => s_axi_rdata(13),
      R => \GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[14].axi_rdata_int[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(14),
      I1 => bram_rddata_a(14),
      I2 => rddata_mux_sel,
      O => \GEN_RDATA_NO_ECC.GEN_RDATA[14].axi_rdata_int[14]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[14].axi_rdata_int_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_RDATA_NO_ECC.GEN_RDATA[14].axi_rdata_int[14]_i_1_n_0\,
      Q => s_axi_rdata(14),
      R => \GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[15].axi_rdata_int[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(15),
      I1 => bram_rddata_a(15),
      I2 => rddata_mux_sel,
      O => \GEN_RDATA_NO_ECC.GEN_RDATA[15].axi_rdata_int[15]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[15].axi_rdata_int_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_RDATA_NO_ECC.GEN_RDATA[15].axi_rdata_int[15]_i_1_n_0\,
      Q => s_axi_rdata(15),
      R => \GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[16].axi_rdata_int[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(16),
      I1 => bram_rddata_a(16),
      I2 => rddata_mux_sel,
      O => \GEN_RDATA_NO_ECC.GEN_RDATA[16].axi_rdata_int[16]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[16].axi_rdata_int_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_RDATA_NO_ECC.GEN_RDATA[16].axi_rdata_int[16]_i_1_n_0\,
      Q => s_axi_rdata(16),
      R => \GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[17].axi_rdata_int[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(17),
      I1 => bram_rddata_a(17),
      I2 => rddata_mux_sel,
      O => \GEN_RDATA_NO_ECC.GEN_RDATA[17].axi_rdata_int[17]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[17].axi_rdata_int_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_RDATA_NO_ECC.GEN_RDATA[17].axi_rdata_int[17]_i_1_n_0\,
      Q => s_axi_rdata(17),
      R => \GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[18].axi_rdata_int[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(18),
      I1 => bram_rddata_a(18),
      I2 => rddata_mux_sel,
      O => \GEN_RDATA_NO_ECC.GEN_RDATA[18].axi_rdata_int[18]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[18].axi_rdata_int_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_RDATA_NO_ECC.GEN_RDATA[18].axi_rdata_int[18]_i_1_n_0\,
      Q => s_axi_rdata(18),
      R => \GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[19].axi_rdata_int[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(19),
      I1 => bram_rddata_a(19),
      I2 => rddata_mux_sel,
      O => \GEN_RDATA_NO_ECC.GEN_RDATA[19].axi_rdata_int[19]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[19].axi_rdata_int_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_RDATA_NO_ECC.GEN_RDATA[19].axi_rdata_int[19]_i_1_n_0\,
      Q => s_axi_rdata(19),
      R => \GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[1].axi_rdata_int[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(1),
      I1 => bram_rddata_a(1),
      I2 => rddata_mux_sel,
      O => \GEN_RDATA_NO_ECC.GEN_RDATA[1].axi_rdata_int[1]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[1].axi_rdata_int_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_RDATA_NO_ECC.GEN_RDATA[1].axi_rdata_int[1]_i_1_n_0\,
      Q => s_axi_rdata(1),
      R => \GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[20].axi_rdata_int[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(20),
      I1 => bram_rddata_a(20),
      I2 => rddata_mux_sel,
      O => \GEN_RDATA_NO_ECC.GEN_RDATA[20].axi_rdata_int[20]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[20].axi_rdata_int_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_RDATA_NO_ECC.GEN_RDATA[20].axi_rdata_int[20]_i_1_n_0\,
      Q => s_axi_rdata(20),
      R => \GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[21].axi_rdata_int[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(21),
      I1 => bram_rddata_a(21),
      I2 => rddata_mux_sel,
      O => \GEN_RDATA_NO_ECC.GEN_RDATA[21].axi_rdata_int[21]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[21].axi_rdata_int_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_RDATA_NO_ECC.GEN_RDATA[21].axi_rdata_int[21]_i_1_n_0\,
      Q => s_axi_rdata(21),
      R => \GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[22].axi_rdata_int[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(22),
      I1 => bram_rddata_a(22),
      I2 => rddata_mux_sel,
      O => \GEN_RDATA_NO_ECC.GEN_RDATA[22].axi_rdata_int[22]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[22].axi_rdata_int_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_RDATA_NO_ECC.GEN_RDATA[22].axi_rdata_int[22]_i_1_n_0\,
      Q => s_axi_rdata(22),
      R => \GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[23].axi_rdata_int[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(23),
      I1 => bram_rddata_a(23),
      I2 => rddata_mux_sel,
      O => \GEN_RDATA_NO_ECC.GEN_RDATA[23].axi_rdata_int[23]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[23].axi_rdata_int_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_RDATA_NO_ECC.GEN_RDATA[23].axi_rdata_int[23]_i_1_n_0\,
      Q => s_axi_rdata(23),
      R => \GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[24].axi_rdata_int[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(24),
      I1 => bram_rddata_a(24),
      I2 => rddata_mux_sel,
      O => \GEN_RDATA_NO_ECC.GEN_RDATA[24].axi_rdata_int[24]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[24].axi_rdata_int_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_RDATA_NO_ECC.GEN_RDATA[24].axi_rdata_int[24]_i_1_n_0\,
      Q => s_axi_rdata(24),
      R => \GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[25].axi_rdata_int[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(25),
      I1 => bram_rddata_a(25),
      I2 => rddata_mux_sel,
      O => \GEN_RDATA_NO_ECC.GEN_RDATA[25].axi_rdata_int[25]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[25].axi_rdata_int_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_RDATA_NO_ECC.GEN_RDATA[25].axi_rdata_int[25]_i_1_n_0\,
      Q => s_axi_rdata(25),
      R => \GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[26].axi_rdata_int[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(26),
      I1 => bram_rddata_a(26),
      I2 => rddata_mux_sel,
      O => \GEN_RDATA_NO_ECC.GEN_RDATA[26].axi_rdata_int[26]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[26].axi_rdata_int_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_RDATA_NO_ECC.GEN_RDATA[26].axi_rdata_int[26]_i_1_n_0\,
      Q => s_axi_rdata(26),
      R => \GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[27].axi_rdata_int[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(27),
      I1 => bram_rddata_a(27),
      I2 => rddata_mux_sel,
      O => \GEN_RDATA_NO_ECC.GEN_RDATA[27].axi_rdata_int[27]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[27].axi_rdata_int_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_RDATA_NO_ECC.GEN_RDATA[27].axi_rdata_int[27]_i_1_n_0\,
      Q => s_axi_rdata(27),
      R => \GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[28].axi_rdata_int[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(28),
      I1 => bram_rddata_a(28),
      I2 => rddata_mux_sel,
      O => \GEN_RDATA_NO_ECC.GEN_RDATA[28].axi_rdata_int[28]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[28].axi_rdata_int_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_RDATA_NO_ECC.GEN_RDATA[28].axi_rdata_int[28]_i_1_n_0\,
      Q => s_axi_rdata(28),
      R => \GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[29].axi_rdata_int[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(29),
      I1 => bram_rddata_a(29),
      I2 => rddata_mux_sel,
      O => \GEN_RDATA_NO_ECC.GEN_RDATA[29].axi_rdata_int[29]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[29].axi_rdata_int_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_RDATA_NO_ECC.GEN_RDATA[29].axi_rdata_int[29]_i_1_n_0\,
      Q => s_axi_rdata(29),
      R => \GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[2].axi_rdata_int[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(2),
      I1 => bram_rddata_a(2),
      I2 => rddata_mux_sel,
      O => \GEN_RDATA_NO_ECC.GEN_RDATA[2].axi_rdata_int[2]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[2].axi_rdata_int_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_RDATA_NO_ECC.GEN_RDATA[2].axi_rdata_int[2]_i_1_n_0\,
      Q => s_axi_rdata(2),
      R => \GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[30].axi_rdata_int[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(30),
      I1 => bram_rddata_a(30),
      I2 => rddata_mux_sel,
      O => \GEN_RDATA_NO_ECC.GEN_RDATA[30].axi_rdata_int[30]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[30].axi_rdata_int_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_RDATA_NO_ECC.GEN_RDATA[30].axi_rdata_int[30]_i_1_n_0\,
      Q => s_axi_rdata(30),
      R => \GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => s_axi_rready,
      I1 => \^s_axi_rlast\,
      I2 => s_axi_aresetn,
      O => \GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0330002033300300"
    )
        port map (
      I0 => \GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_4_n_0\,
      I1 => rd_data_sm_cs(3),
      I2 => rd_data_sm_cs(2),
      I3 => rd_data_sm_cs(1),
      I4 => rd_adv_buf24_out,
      I5 => rd_data_sm_cs(0),
      O => axi_rdata_en
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(31),
      I1 => bram_rddata_a(31),
      I2 => rddata_mux_sel,
      O => \GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_3_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => act_rd_burst_two,
      I1 => act_rd_burst,
      O => \GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_4_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_rready,
      I1 => \^s_axi_rvalid\,
      O => rd_adv_buf24_out
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_3_n_0\,
      Q => s_axi_rdata(31),
      R => \GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[3].axi_rdata_int[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(3),
      I1 => bram_rddata_a(3),
      I2 => rddata_mux_sel,
      O => \GEN_RDATA_NO_ECC.GEN_RDATA[3].axi_rdata_int[3]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[3].axi_rdata_int_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_RDATA_NO_ECC.GEN_RDATA[3].axi_rdata_int[3]_i_1_n_0\,
      Q => s_axi_rdata(3),
      R => \GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[4].axi_rdata_int[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(4),
      I1 => bram_rddata_a(4),
      I2 => rddata_mux_sel,
      O => \GEN_RDATA_NO_ECC.GEN_RDATA[4].axi_rdata_int[4]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[4].axi_rdata_int_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_RDATA_NO_ECC.GEN_RDATA[4].axi_rdata_int[4]_i_1_n_0\,
      Q => s_axi_rdata(4),
      R => \GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[5].axi_rdata_int[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(5),
      I1 => bram_rddata_a(5),
      I2 => rddata_mux_sel,
      O => \GEN_RDATA_NO_ECC.GEN_RDATA[5].axi_rdata_int[5]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[5].axi_rdata_int_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_RDATA_NO_ECC.GEN_RDATA[5].axi_rdata_int[5]_i_1_n_0\,
      Q => s_axi_rdata(5),
      R => \GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[6].axi_rdata_int[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(6),
      I1 => bram_rddata_a(6),
      I2 => rddata_mux_sel,
      O => \GEN_RDATA_NO_ECC.GEN_RDATA[6].axi_rdata_int[6]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[6].axi_rdata_int_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_RDATA_NO_ECC.GEN_RDATA[6].axi_rdata_int[6]_i_1_n_0\,
      Q => s_axi_rdata(6),
      R => \GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[7].axi_rdata_int[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(7),
      I1 => bram_rddata_a(7),
      I2 => rddata_mux_sel,
      O => \GEN_RDATA_NO_ECC.GEN_RDATA[7].axi_rdata_int[7]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[7].axi_rdata_int_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_RDATA_NO_ECC.GEN_RDATA[7].axi_rdata_int[7]_i_1_n_0\,
      Q => s_axi_rdata(7),
      R => \GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[8].axi_rdata_int[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(8),
      I1 => bram_rddata_a(8),
      I2 => rddata_mux_sel,
      O => \GEN_RDATA_NO_ECC.GEN_RDATA[8].axi_rdata_int[8]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[8].axi_rdata_int_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_RDATA_NO_ECC.GEN_RDATA[8].axi_rdata_int[8]_i_1_n_0\,
      Q => s_axi_rdata(8),
      R => \GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[9].axi_rdata_int[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(9),
      I1 => bram_rddata_a(9),
      I2 => rddata_mux_sel,
      O => \GEN_RDATA_NO_ECC.GEN_RDATA[9].axi_rdata_int[9]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[9].axi_rdata_int_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_RDATA_NO_ECC.GEN_RDATA[9].axi_rdata_int[9]_i_1_n_0\,
      Q => s_axi_rdata(9),
      R => \GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAEAA"
    )
        port map (
      I0 => rd_skid_buf_ld_reg,
      I1 => rd_data_sm_cs(2),
      I2 => rd_data_sm_cs(3),
      I3 => rd_adv_buf24_out,
      I4 => rd_data_sm_cs(1),
      I5 => rd_data_sm_cs(0),
      O => rd_skid_buf_ld
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(0),
      Q => rd_skid_buf(0),
      R => \^bram_rst_a\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(10),
      Q => rd_skid_buf(10),
      R => \^bram_rst_a\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(11),
      Q => rd_skid_buf(11),
      R => \^bram_rst_a\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(12),
      Q => rd_skid_buf(12),
      R => \^bram_rst_a\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(13),
      Q => rd_skid_buf(13),
      R => \^bram_rst_a\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(14),
      Q => rd_skid_buf(14),
      R => \^bram_rst_a\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(15),
      Q => rd_skid_buf(15),
      R => \^bram_rst_a\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(16),
      Q => rd_skid_buf(16),
      R => \^bram_rst_a\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(17),
      Q => rd_skid_buf(17),
      R => \^bram_rst_a\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(18),
      Q => rd_skid_buf(18),
      R => \^bram_rst_a\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(19),
      Q => rd_skid_buf(19),
      R => \^bram_rst_a\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(1),
      Q => rd_skid_buf(1),
      R => \^bram_rst_a\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(20),
      Q => rd_skid_buf(20),
      R => \^bram_rst_a\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(21),
      Q => rd_skid_buf(21),
      R => \^bram_rst_a\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(22),
      Q => rd_skid_buf(22),
      R => \^bram_rst_a\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(23),
      Q => rd_skid_buf(23),
      R => \^bram_rst_a\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(24),
      Q => rd_skid_buf(24),
      R => \^bram_rst_a\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(25),
      Q => rd_skid_buf(25),
      R => \^bram_rst_a\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(26),
      Q => rd_skid_buf(26),
      R => \^bram_rst_a\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(27),
      Q => rd_skid_buf(27),
      R => \^bram_rst_a\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(28),
      Q => rd_skid_buf(28),
      R => \^bram_rst_a\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(29),
      Q => rd_skid_buf(29),
      R => \^bram_rst_a\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(2),
      Q => rd_skid_buf(2),
      R => \^bram_rst_a\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(30),
      Q => rd_skid_buf(30),
      R => \^bram_rst_a\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(31),
      Q => rd_skid_buf(31),
      R => \^bram_rst_a\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(3),
      Q => rd_skid_buf(3),
      R => \^bram_rst_a\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(4),
      Q => rd_skid_buf(4),
      R => \^bram_rst_a\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(5),
      Q => rd_skid_buf(5),
      R => \^bram_rst_a\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(6),
      Q => rd_skid_buf(6),
      R => \^bram_rst_a\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(7),
      Q => rd_skid_buf(7),
      R => \^bram_rst_a\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(8),
      Q => rd_skid_buf(8),
      R => \^bram_rst_a\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(9),
      Q => rd_skid_buf(9),
      R => \^bram_rst_a\
    );
\GEN_RID_SNG.axi_rid_int[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FECE3202"
    )
        port map (
      I0 => \^s_axi_rid\(0),
      I1 => ar_active_re,
      I2 => axi_rvalid_set,
      I3 => axi_rid_temp,
      I4 => s_axi_arid(0),
      I5 => \GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0\,
      O => \GEN_RID_SNG.axi_rid_int[0]_i_1_n_0\
    );
\GEN_RID_SNG.axi_rid_int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_RID_SNG.axi_rid_int[0]_i_1_n_0\,
      Q => \^s_axi_rid\(0),
      R => '0'
    );
\GEN_RID_SNG.axi_rid_temp_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => s_axi_arid(0),
      Q => axi_rid_temp,
      R => \^bram_rst_a\
    );
I_WRAP_BRST: entity work.vcnnbd_axi_bram_ctrl_0_0_wrap_brst_0
     port map (
      \ADDR_SNG_PORT.bram_addr_int_reg[10]\ => \ADDR_SNG_PORT.bram_addr_int_reg[10]\,
      \ADDR_SNG_PORT.bram_addr_int_reg[11]\ => I_WRAP_BRST_n_12,
      \ADDR_SNG_PORT.bram_addr_int_reg[11]_0\ => I_WRAP_BRST_n_14,
      \ADDR_SNG_PORT.bram_addr_int_reg[2]\ => \ADDR_SNG_PORT.bram_addr_int_reg[2]\,
      \ADDR_SNG_PORT.bram_addr_int_reg[4]\ => \ADDR_SNG_PORT.bram_addr_int_reg[4]\,
      \ADDR_SNG_PORT.bram_addr_int_reg[5]\ => \ADDR_SNG_PORT.bram_addr_int_reg[5]\,
      \ADDR_SNG_PORT.bram_addr_int_reg[6]\ => \ADDR_SNG_PORT.bram_addr_int_reg[6]\,
      \ADDR_SNG_PORT.bram_addr_int_reg[7]\ => \ADDR_SNG_PORT.bram_addr_int_reg[7]\,
      \ADDR_SNG_PORT.bram_addr_int_reg[8]\ => \ADDR_SNG_PORT.bram_addr_int_reg[8]\,
      \ADDR_SNG_PORT.bram_addr_int_reg[9]\ => \ADDR_SNG_PORT.bram_addr_int_reg[9]\,
      D(9 downto 0) => D(9 downto 0),
      E(0) => E(0),
      \GEN_AR_SNG.ar_active_d1_reg\ => \^ar_active_d1\,
      \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0]\ => \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0]\,
      Q(9 downto 0) => Q(9 downto 0),
      ar_active_re => ar_active_re,
      aw_active_d1_reg => aw_active_d1_reg,
      axi_rd_burst => axi_rd_burst,
      axi_rd_burst_two_reg => axi_rd_burst_two_reg_n_0,
      axi_rvalid_int_reg => \^s_axi_rvalid\,
      bram_rst_a => \^bram_rst_a\,
      brst_zero => brst_zero,
      curr_fixed_burst_reg => curr_fixed_burst_reg,
      curr_fixed_burst_reg_0 => curr_fixed_burst_reg_0,
      curr_wrap_burst_reg => curr_wrap_burst_reg,
      curr_wrap_burst_reg_reg => curr_wrap_burst_reg_reg_0,
      end_brst_rd => end_brst_rd,
      p_0_out => p_0_out,
      \rd_data_sm_cs_reg[1]\ => I_WRAP_BRST_n_13,
      \rd_data_sm_cs_reg[3]\(3 downto 0) => rd_data_sm_cs(3 downto 0),
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(9 downto 0) => s_axi_araddr(9 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arlen(3 downto 0) => s_axi_arlen(3 downto 0),
      s_axi_rready => s_axi_rready,
      \save_init_bram_addr_ld_reg[11]_0\(8 downto 0) => \save_init_bram_addr_ld_reg[11]\(8 downto 0)
    );
act_rd_burst_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000022E2EEE2"
    )
        port map (
      I0 => act_rd_burst,
      I1 => act_rd_burst_set,
      I2 => axi_rd_burst,
      I3 => ar_active_re,
      I4 => \^axi_rd_burst_two\,
      I5 => act_rd_burst_i_3_n_0,
      O => act_rd_burst_i_1_n_0
    );
act_rd_burst_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000002E"
    )
        port map (
      I0 => ar_active_reg_0,
      I1 => rd_data_sm_cs(0),
      I2 => p_0_in4_in,
      I3 => rd_data_sm_cs(2),
      I4 => rd_data_sm_cs(1),
      I5 => rd_data_sm_cs(3),
      O => act_rd_burst_set
    );
act_rd_burst_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"10000004FFFFFFFF"
    )
        port map (
      I0 => \rd_data_sm_cs[3]_i_6_n_0\,
      I1 => rd_data_sm_cs(3),
      I2 => rd_data_sm_cs(2),
      I3 => rd_data_sm_cs(1),
      I4 => rd_data_sm_cs(0),
      I5 => s_axi_aresetn,
      O => act_rd_burst_i_3_n_0
    );
act_rd_burst_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => act_rd_burst_i_1_n_0,
      Q => act_rd_burst,
      R => '0'
    );
act_rd_burst_two_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => act_rd_burst_two,
      I1 => act_rd_burst_set,
      I2 => axi_rd_burst_two_reg_n_0,
      I3 => ar_active_re,
      I4 => \^axi_rd_burst_two\,
      I5 => act_rd_burst_i_3_n_0,
      O => act_rd_burst_two_i_1_n_0
    );
act_rd_burst_two_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => act_rd_burst_two_i_1_n_0,
      Q => act_rd_burst_two,
      R => '0'
    );
axi_arready_int_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s_axi_rlast\,
      I1 => s_axi_rready,
      O => \arb_sm_cs_reg[1]\
    );
axi_rd_burst_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"300030000000AA00"
    )
        port map (
      I0 => axi_rd_burst,
      I1 => \^axi_rd_burst_two\,
      I2 => axi_rd_burst_i_3_n_0,
      I3 => s_axi_aresetn,
      I4 => brst_zero,
      I5 => ar_active_re,
      O => axi_rd_burst_i_1_n_0
    );
axi_rd_burst_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => s_axi_arlen(6),
      I1 => s_axi_arlen(7),
      I2 => s_axi_arlen(5),
      I3 => s_axi_arlen(4),
      I4 => axi_rd_burst_i_4_n_0,
      O => \^axi_rd_burst_two\
    );
axi_rd_burst_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \^axi_rd_burst_reg_0\,
      I1 => s_axi_arlen(0),
      I2 => s_axi_arlen(1),
      I3 => s_axi_arlen(3),
      I4 => s_axi_arlen(2),
      O => axi_rd_burst_i_3_n_0
    );
axi_rd_burst_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => s_axi_arlen(2),
      I1 => s_axi_arlen(3),
      I2 => s_axi_arlen(0),
      I3 => s_axi_arlen(1),
      O => axi_rd_burst_i_4_n_0
    );
axi_rd_burst_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_rd_burst_i_1_n_0,
      Q => axi_rd_burst,
      R => '0'
    );
axi_rd_burst_two_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00A0C0C000A000A0"
    )
        port map (
      I0 => axi_rd_burst_two_reg_n_0,
      I1 => \^axi_rd_burst_two\,
      I2 => s_axi_aresetn,
      I3 => brst_zero,
      I4 => \^ar_active_d1\,
      I5 => p_0_out,
      O => axi_rd_burst_two_i_1_n_0
    );
axi_rd_burst_two_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_rd_burst_two_i_1_n_0,
      Q => axi_rd_burst_two_reg_n_0,
      R => '0'
    );
axi_rlast_int_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA20"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => s_axi_rready,
      I2 => \^s_axi_rlast\,
      I3 => axi_rlast_set,
      O => axi_rlast_int_i_1_n_0
    );
axi_rlast_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_rlast_int_i_1_n_0,
      Q => \^s_axi_rlast\,
      R => '0'
    );
axi_rvalid_clr_ok_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEAA"
    )
        port map (
      I0 => axi_rvalid_clr_ok_i_2_n_0,
      I1 => disable_b2b_brst_cmb,
      I2 => disable_b2b_brst,
      I3 => last_bram_addr,
      I4 => axi_rvalid_clr_ok,
      O => axi_rvalid_clr_ok_i_1_n_0
    );
axi_rvalid_clr_ok_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44444F4444444444"
    )
        port map (
      I0 => \^ar_active_d1\,
      I1 => p_0_out,
      I2 => rd_data_sm_cs(3),
      I3 => rd_data_sm_cs(2),
      I4 => rd_data_sm_cs(1),
      I5 => rd_data_sm_cs(0),
      O => axi_rvalid_clr_ok_i_2_n_0
    );
axi_rvalid_clr_ok_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_rvalid_clr_ok_i_1_n_0,
      Q => axi_rvalid_clr_ok,
      R => \^bram_rst_a\
    );
axi_rvalid_int_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E0E0E0E0E0E0E0"
    )
        port map (
      I0 => \^s_axi_rvalid\,
      I1 => axi_rvalid_set,
      I2 => s_axi_aresetn,
      I3 => axi_rvalid_clr_ok,
      I4 => s_axi_rready,
      I5 => \^s_axi_rlast\,
      O => axi_rvalid_int_i_1_n_0
    );
axi_rvalid_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_rvalid_int_i_1_n_0,
      Q => \^s_axi_rvalid\,
      R => '0'
    );
axi_rvalid_set_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => rd_data_sm_cs(1),
      I1 => rd_data_sm_cs(2),
      I2 => rd_data_sm_cs(3),
      I3 => rd_data_sm_cs(0),
      O => axi_rvalid_set_cmb
    );
axi_rvalid_set_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_rvalid_set_cmb,
      Q => axi_rvalid_set,
      R => \^bram_rst_a\
    );
bram_en_int_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEFFFEEEEE000E"
    )
        port map (
      I0 => bram_en_int_i_2_n_0,
      I1 => bram_en_int_i_3_n_0,
      I2 => bram_en_int_i_4_n_0,
      I3 => \rd_data_sm_cs[3]_i_5_n_0\,
      I4 => bram_en_int_i_5_n_0,
      I5 => \^p_7_in\,
      O => bram_en_int_i_1_n_0
    );
bram_en_int_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F000EE000000F0"
    )
        port map (
      I0 => axi_rd_burst,
      I1 => axi_rd_burst_two_reg_n_0,
      I2 => ar_active_re,
      I3 => rd_data_sm_cs(1),
      I4 => rd_data_sm_cs(2),
      I5 => rd_data_sm_cs(0),
      O => bram_en_int_i_2_n_0
    );
bram_en_int_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEA000000"
    )
        port map (
      I0 => ar_active_re,
      I1 => pend_rd_op,
      I2 => rd_adv_buf24_out,
      I3 => rd_data_sm_cs(2),
      I4 => rd_data_sm_cs(1),
      I5 => bram_en_int_i_6_n_0,
      O => bram_en_int_i_3_n_0
    );
bram_en_int_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F000FF11F0FFFF11"
    )
        port map (
      I0 => \rd_data_sm_cs[2]_i_4_n_0\,
      I1 => rd_adv_buf24_out,
      I2 => bram_en_int_i_7_n_0,
      I3 => rd_data_sm_cs(1),
      I4 => rd_data_sm_cs(0),
      I5 => \rd_data_sm_cs[2]_i_3_n_0\,
      O => bram_en_int_i_4_n_0
    );
bram_en_int_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3200323232323232"
    )
        port map (
      I0 => ar_active_re,
      I1 => disable_b2b_brst_i_4_n_0,
      I2 => bram_en_int_i_8_n_0,
      I3 => \rd_data_sm_cs[2]_i_4_n_0\,
      I4 => brst_one,
      I5 => bram_en_int_i_9_n_0,
      O => bram_en_int_i_5_n_0
    );
bram_en_int_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0202303F02020000"
    )
        port map (
      I0 => rd_adv_buf24_out,
      I1 => \rd_data_sm_cs[2]_i_4_n_0\,
      I2 => rd_data_sm_cs(0),
      I3 => axi_rd_burst_two_reg_n_0,
      I4 => rd_data_sm_cs(2),
      I5 => rd_data_sm_cs(1),
      O => bram_en_int_i_6_n_0
    );
bram_en_int_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0BBBBBBB"
    )
        port map (
      I0 => \^ar_active_d1\,
      I1 => p_0_out,
      I2 => pend_rd_op,
      I3 => s_axi_rready,
      I4 => \^s_axi_rvalid\,
      O => bram_en_int_i_7_n_0
    );
bram_en_int_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => rd_data_sm_cs(1),
      I1 => rd_data_sm_cs(0),
      O => bram_en_int_i_8_n_0
    );
bram_en_int_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7000"
    )
        port map (
      I0 => \^s_axi_rvalid\,
      I1 => s_axi_rready,
      I2 => rd_data_sm_cs(0),
      I3 => rd_data_sm_cs(1),
      O => bram_en_int_i_9_n_0
    );
bram_en_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => bram_en_int_i_1_n_0,
      Q => \^p_7_in\,
      R => \^bram_rst_a\
    );
\brst_cnt[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08FB"
    )
        port map (
      I0 => s_axi_arlen(0),
      I1 => p_0_out,
      I2 => \^ar_active_d1\,
      I3 => brst_cnt(0),
      O => \brst_cnt[0]_i_1_n_0\
    );
\brst_cnt[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB0808FB"
    )
        port map (
      I0 => s_axi_arlen(1),
      I1 => p_0_out,
      I2 => \^ar_active_d1\,
      I3 => brst_cnt(0),
      I4 => brst_cnt(1),
      O => \brst_cnt[1]_i_1_n_0\
    );
\brst_cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFBFB08080808FB"
    )
        port map (
      I0 => s_axi_arlen(2),
      I1 => p_0_out,
      I2 => \^ar_active_d1\,
      I3 => brst_cnt(0),
      I4 => brst_cnt(1),
      I5 => brst_cnt(2),
      O => \brst_cnt[2]_i_1_n_0\
    );
\brst_cnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBB88888888B"
    )
        port map (
      I0 => s_axi_arlen(3),
      I1 => ar_active_re,
      I2 => brst_cnt(2),
      I3 => brst_cnt(1),
      I4 => brst_cnt(0),
      I5 => brst_cnt(3),
      O => \brst_cnt[3]_i_1_n_0\
    );
\brst_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB0808FB"
    )
        port map (
      I0 => s_axi_arlen(4),
      I1 => p_0_out,
      I2 => \^ar_active_d1\,
      I3 => \brst_cnt[4]_i_2_n_0\,
      I4 => brst_cnt(4),
      O => \brst_cnt[4]_i_1_n_0\
    );
\brst_cnt[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => brst_cnt(3),
      I1 => brst_cnt(0),
      I2 => brst_cnt(1),
      I3 => brst_cnt(2),
      O => \brst_cnt[4]_i_2_n_0\
    );
\brst_cnt[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB0808FB"
    )
        port map (
      I0 => s_axi_arlen(5),
      I1 => p_0_out,
      I2 => \^ar_active_d1\,
      I3 => \brst_cnt[7]_i_3_n_0\,
      I4 => brst_cnt(5),
      O => \brst_cnt[5]_i_1_n_0\
    );
\brst_cnt[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FB08FB0808FB"
    )
        port map (
      I0 => s_axi_arlen(6),
      I1 => p_0_out,
      I2 => \^ar_active_d1\,
      I3 => brst_cnt(6),
      I4 => \brst_cnt[7]_i_3_n_0\,
      I5 => brst_cnt(5),
      O => \brst_cnt[6]_i_1_n_0\
    );
\brst_cnt[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \^ar_active_d1\,
      I1 => p_0_out,
      I2 => I_WRAP_BRST_n_12,
      O => \brst_cnt[7]_i_1_n_0\
    );
\brst_cnt[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8B8B8B88B"
    )
        port map (
      I0 => s_axi_arlen(7),
      I1 => ar_active_re,
      I2 => brst_cnt(7),
      I3 => \brst_cnt[7]_i_3_n_0\,
      I4 => brst_cnt(5),
      I5 => brst_cnt(6),
      O => \brst_cnt[7]_i_2_n_0\
    );
\brst_cnt[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => brst_cnt(4),
      I1 => brst_cnt(2),
      I2 => brst_cnt(1),
      I3 => brst_cnt(0),
      I4 => brst_cnt(3),
      O => \brst_cnt[7]_i_3_n_0\
    );
brst_cnt_max_d1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => brst_cnt_max,
      Q => brst_cnt_max_d1,
      R => \^bram_rst_a\
    );
\brst_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \brst_cnt[7]_i_1_n_0\,
      D => \brst_cnt[0]_i_1_n_0\,
      Q => brst_cnt(0),
      R => \^bram_rst_a\
    );
\brst_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \brst_cnt[7]_i_1_n_0\,
      D => \brst_cnt[1]_i_1_n_0\,
      Q => brst_cnt(1),
      R => \^bram_rst_a\
    );
\brst_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \brst_cnt[7]_i_1_n_0\,
      D => \brst_cnt[2]_i_1_n_0\,
      Q => brst_cnt(2),
      R => \^bram_rst_a\
    );
\brst_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \brst_cnt[7]_i_1_n_0\,
      D => \brst_cnt[3]_i_1_n_0\,
      Q => brst_cnt(3),
      R => \^bram_rst_a\
    );
\brst_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \brst_cnt[7]_i_1_n_0\,
      D => \brst_cnt[4]_i_1_n_0\,
      Q => brst_cnt(4),
      R => \^bram_rst_a\
    );
\brst_cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \brst_cnt[7]_i_1_n_0\,
      D => \brst_cnt[5]_i_1_n_0\,
      Q => brst_cnt(5),
      R => \^bram_rst_a\
    );
\brst_cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \brst_cnt[7]_i_1_n_0\,
      D => \brst_cnt[6]_i_1_n_0\,
      Q => brst_cnt(6),
      R => \^bram_rst_a\
    );
\brst_cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \brst_cnt[7]_i_1_n_0\,
      D => \brst_cnt[7]_i_2_n_0\,
      Q => brst_cnt(7),
      R => \^bram_rst_a\
    );
brst_one_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0E0E0F0E000E0E0E"
    )
        port map (
      I0 => brst_one,
      I1 => brst_one_i_2_n_0,
      I2 => ar_active_reg_1,
      I3 => brst_one_i_4_n_0,
      I4 => brst_cnt(0),
      I5 => brst_cnt(1),
      O => brst_one_i_1_n_0
    );
brst_one_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \^axi_rd_burst_two\,
      I1 => \^ar_active_d1\,
      I2 => p_0_out,
      O => brst_one_i_2_n_0
    );
brst_one_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => I_WRAP_BRST_n_12,
      I1 => brst_one_i_5_n_0,
      I2 => brst_cnt(2),
      I3 => brst_cnt(4),
      I4 => brst_cnt(3),
      I5 => brst_cnt(7),
      O => brst_one_i_4_n_0
    );
brst_one_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => brst_cnt(5),
      I1 => brst_cnt(6),
      O => brst_one_i_5_n_0
    );
brst_one_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => brst_one_i_1_n_0,
      Q => brst_one,
      R => '0'
    );
brst_zero_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => brst_zero,
      I1 => last_bram_addr_i_2_n_0,
      I2 => s_axi_aresetn,
      I3 => ar_active_reg_0,
      O => brst_zero_i_1_n_0
    );
brst_zero_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => s_axi_arlen(4),
      I1 => s_axi_arlen(5),
      I2 => s_axi_arlen(7),
      I3 => s_axi_arlen(6),
      O => \^axi_rd_burst_reg_0\
    );
brst_zero_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => brst_zero_i_1_n_0,
      Q => brst_zero,
      R => '0'
    );
\curr_fixed_burst_reg_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_arburst(0),
      I1 => s_axi_arburst(1),
      O => curr_fixed_burst
    );
curr_fixed_burst_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => curr_fixed_burst,
      Q => curr_fixed_burst_reg_0,
      R => \^bram_rst_a\
    );
\curr_wrap_burst_reg_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_arburst(1),
      I1 => s_axi_arburst(0),
      O => \curr_wrap_burst_reg_i_1__0_n_0\
    );
curr_wrap_burst_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => \curr_wrap_burst_reg_i_1__0_n_0\,
      Q => curr_wrap_burst_reg,
      R => \^bram_rst_a\
    );
disable_b2b_brst_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF8AA8AAA2"
    )
        port map (
      I0 => disable_b2b_brst_i_2_n_0,
      I1 => rd_data_sm_cs(3),
      I2 => rd_data_sm_cs(2),
      I3 => rd_data_sm_cs(1),
      I4 => rd_data_sm_cs(0),
      I5 => disable_b2b_brst_i_3_n_0,
      O => disable_b2b_brst_cmb
    );
disable_b2b_brst_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AABAAABAAABAAAAA"
    )
        port map (
      I0 => disable_b2b_brst,
      I1 => disable_b2b_brst_i_4_n_0,
      I2 => rd_data_sm_cs(0),
      I3 => rd_adv_buf24_out,
      I4 => brst_one,
      I5 => \rd_data_sm_cs[2]_i_4_n_0\,
      O => disable_b2b_brst_i_2_n_0
    );
disable_b2b_brst_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000000020002"
    )
        port map (
      I0 => rd_data_sm_cs(0),
      I1 => rd_data_sm_cs(3),
      I2 => rd_data_sm_cs(2),
      I3 => rd_data_sm_cs(1),
      I4 => axi_rd_burst_two_reg_n_0,
      I5 => axi_rd_burst,
      O => disable_b2b_brst_i_3_n_0
    );
disable_b2b_brst_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => rd_data_sm_cs(2),
      I1 => rd_data_sm_cs(3),
      O => disable_b2b_brst_i_4_n_0
    );
disable_b2b_brst_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => disable_b2b_brst_cmb,
      Q => disable_b2b_brst,
      R => \^bram_rst_a\
    );
end_brst_rd_clr_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFAFFFB05000000"
    )
        port map (
      I0 => rd_data_sm_cs(3),
      I1 => ar_active_re,
      I2 => rd_data_sm_cs(1),
      I3 => rd_data_sm_cs(2),
      I4 => rd_data_sm_cs(0),
      I5 => end_brst_rd_clr,
      O => end_brst_rd_clr_i_1_n_0
    );
end_brst_rd_clr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => end_brst_rd_clr_i_1_n_0,
      Q => end_brst_rd_clr,
      R => \^bram_rst_a\
    );
end_brst_rd_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0020F020"
    )
        port map (
      I0 => brst_cnt_max,
      I1 => brst_cnt_max_d1,
      I2 => s_axi_aresetn,
      I3 => end_brst_rd,
      I4 => end_brst_rd_clr,
      O => end_brst_rd_i_1_n_0
    );
end_brst_rd_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => end_brst_rd_i_1_n_0,
      Q => end_brst_rd,
      R => '0'
    );
last_bram_addr_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAAAAAB"
    )
        port map (
      I0 => last_bram_addr_i_2_n_0,
      I1 => last_bram_addr_i_3_n_0,
      I2 => rd_data_sm_cs(2),
      I3 => rd_data_sm_cs(1),
      I4 => rd_data_sm_cs(0),
      O => last_bram_addr0
    );
last_bram_addr_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => last_bram_addr_i_4_n_0,
      I1 => I_WRAP_BRST_n_12,
      I2 => brst_cnt(0),
      I3 => brst_cnt(1),
      O => last_bram_addr_i_2_n_0
    );
last_bram_addr_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EE0EEEEEEEEEEEEE"
    )
        port map (
      I0 => last_bram_addr_i_5_n_0,
      I1 => ar_active_reg_0,
      I2 => rd_data_sm_cs(3),
      I3 => rd_data_sm_cs(2),
      I4 => rd_adv_buf24_out,
      I5 => p_0_in4_in,
      O => last_bram_addr_i_3_n_0
    );
last_bram_addr_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => brst_cnt(7),
      I1 => brst_cnt(3),
      I2 => brst_cnt(4),
      I3 => brst_cnt(2),
      I4 => brst_cnt(5),
      I5 => brst_cnt(6),
      O => last_bram_addr_i_4_n_0
    );
last_bram_addr_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F1F3F3F3FFF3FFF3"
    )
        port map (
      I0 => p_0_in4_in,
      I1 => ar_active_re,
      I2 => rd_data_sm_cs(3),
      I3 => rd_data_sm_cs(2),
      I4 => pend_rd_op,
      I5 => rd_adv_buf24_out,
      O => last_bram_addr_i_5_n_0
    );
last_bram_addr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => last_bram_addr0,
      Q => last_bram_addr,
      R => \^bram_rst_a\
    );
pend_rd_op_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08AAFFFF08AA0000"
    )
        port map (
      I0 => ar_active_re,
      I1 => p_0_in4_in,
      I2 => rd_data_sm_cs(2),
      I3 => rd_data_sm_cs(0),
      I4 => pend_rd_op_i_2_n_0,
      I5 => pend_rd_op,
      O => pend_rd_op_i_1_n_0
    );
pend_rd_op_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => pend_rd_op_i_3_n_0,
      I1 => rd_data_sm_cs(1),
      I2 => rd_data_sm_cs(2),
      I3 => pend_rd_op_i_4_n_0,
      I4 => rd_adv_buf24_out,
      I5 => pend_rd_op,
      O => pend_rd_op_i_2_n_0
    );
pend_rd_op_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F5F5F4F4F5550000"
    )
        port map (
      I0 => pend_rd_op_i_5_n_0,
      I1 => \^s_axi_rlast\,
      I2 => axi_rvalid_set_cmb,
      I3 => p_0_in4_in,
      I4 => ar_active_re,
      I5 => pend_rd_op,
      O => pend_rd_op_i_3_n_0
    );
pend_rd_op_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rd_data_sm_cs(0),
      I1 => rd_data_sm_cs(3),
      O => pend_rd_op_i_4_n_0
    );
pend_rd_op_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => rd_data_sm_cs(0),
      I1 => rd_data_sm_cs(1),
      I2 => rd_data_sm_cs(2),
      I3 => rd_data_sm_cs(3),
      O => pend_rd_op_i_5_n_0
    );
pend_rd_op_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => pend_rd_op_i_1_n_0,
      Q => pend_rd_op,
      R => \^bram_rst_a\
    );
\rd_data_sm_cs[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF57770000"
    )
        port map (
      I0 => \rd_data_sm_cs[0]_i_2_n_0\,
      I1 => \rd_data_sm_cs[3]_i_5_n_0\,
      I2 => rd_data_sm_cs(1),
      I3 => rd_data_sm_cs(0),
      I4 => \rd_data_sm_cs[0]_i_3_n_0\,
      I5 => \rd_data_sm_cs[0]_i_4_n_0\,
      O => \rd_data_sm_cs[0]_i_1_n_0\
    );
\rd_data_sm_cs[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF1FFFFFFFFFFF"
    )
        port map (
      I0 => ar_active_re,
      I1 => pend_rd_op,
      I2 => s_axi_rready,
      I3 => \^s_axi_rvalid\,
      I4 => rd_data_sm_cs(3),
      I5 => rd_data_sm_cs(2),
      O => \rd_data_sm_cs[0]_i_2_n_0\
    );
\rd_data_sm_cs[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF444FFFFFFFFF"
    )
        port map (
      I0 => ar_active_re,
      I1 => rd_adv_buf24_out,
      I2 => act_rd_burst_two,
      I3 => act_rd_burst,
      I4 => rd_data_sm_cs(1),
      I5 => rd_data_sm_cs(0),
      O => \rd_data_sm_cs[0]_i_3_n_0\
    );
\rd_data_sm_cs[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1113011310130013"
    )
        port map (
      I0 => rd_data_sm_cs(3),
      I1 => rd_data_sm_cs(2),
      I2 => rd_data_sm_cs(1),
      I3 => rd_data_sm_cs(0),
      I4 => rd_adv_buf24_out,
      I5 => p_0_in4_in,
      O => \rd_data_sm_cs[0]_i_4_n_0\
    );
\rd_data_sm_cs[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAABBFFAF"
    )
        port map (
      I0 => I_WRAP_BRST_n_13,
      I1 => \rd_data_sm_cs[2]_i_3_n_0\,
      I2 => \rd_data_sm_cs[2]_i_4_n_0\,
      I3 => rd_data_sm_cs(1),
      I4 => rd_data_sm_cs(0),
      I5 => \rd_data_sm_cs[3]_i_5_n_0\,
      O => \rd_data_sm_cs[1]_i_1_n_0\
    );
\rd_data_sm_cs[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAABABFFFA"
    )
        port map (
      I0 => \rd_data_sm_cs[2]_i_2_n_0\,
      I1 => \rd_data_sm_cs[2]_i_3_n_0\,
      I2 => rd_data_sm_cs(1),
      I3 => \rd_data_sm_cs[2]_i_4_n_0\,
      I4 => rd_data_sm_cs(0),
      I5 => \rd_data_sm_cs[3]_i_5_n_0\,
      O => \rd_data_sm_cs[2]_i_1_n_0\
    );
\rd_data_sm_cs[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000AB88"
    )
        port map (
      I0 => rd_data_sm_cs(1),
      I1 => axi_rd_burst_two_reg_n_0,
      I2 => axi_rd_burst,
      I3 => rd_data_sm_cs(0),
      I4 => rd_data_sm_cs(3),
      I5 => rd_data_sm_cs(2),
      O => \rd_data_sm_cs[2]_i_2_n_0\
    );
\rd_data_sm_cs[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000400040000000"
    )
        port map (
      I0 => \^ar_active_d1\,
      I1 => p_0_out,
      I2 => s_axi_rready,
      I3 => \^s_axi_rvalid\,
      I4 => act_rd_burst_two,
      I5 => act_rd_burst,
      O => \rd_data_sm_cs[2]_i_3_n_0\
    );
\rd_data_sm_cs[2]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => end_brst_rd,
      I1 => brst_zero,
      O => \rd_data_sm_cs[2]_i_4_n_0\
    );
\rd_data_sm_cs[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFEFEB20002028"
    )
        port map (
      I0 => \rd_data_sm_cs[3]_i_3_n_0\,
      I1 => rd_data_sm_cs(3),
      I2 => rd_data_sm_cs(2),
      I3 => rd_data_sm_cs(1),
      I4 => rd_data_sm_cs(0),
      I5 => \rd_data_sm_cs[3]_i_4_n_0\,
      O => rd_data_sm_ns
    );
\rd_data_sm_cs[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100055001000"
    )
        port map (
      I0 => \rd_data_sm_cs[3]_i_5_n_0\,
      I1 => \rd_data_sm_cs[3]_i_6_n_0\,
      I2 => ar_active_re,
      I3 => rd_data_sm_cs(0),
      I4 => rd_data_sm_cs(1),
      I5 => rd_adv_buf24_out,
      O => \rd_data_sm_cs[3]_i_2_n_0\
    );
\rd_data_sm_cs[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFAEEAAAAAAAA"
    )
        port map (
      I0 => rd_adv_buf24_out,
      I1 => rd_data_sm_cs(1),
      I2 => rd_data_sm_cs(3),
      I3 => rd_data_sm_cs(2),
      I4 => rd_data_sm_cs(0),
      I5 => ar_active_re,
      O => \rd_data_sm_cs[3]_i_3_n_0\
    );
\rd_data_sm_cs[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F3F3FAEEFFFFFAEE"
    )
        port map (
      I0 => ar_active_re,
      I1 => rd_data_sm_cs(1),
      I2 => rd_data_sm_cs(3),
      I3 => rd_data_sm_cs(2),
      I4 => rd_data_sm_cs(0),
      I5 => I_WRAP_BRST_n_14,
      O => \rd_data_sm_cs[3]_i_4_n_0\
    );
\rd_data_sm_cs[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => rd_data_sm_cs(3),
      I1 => rd_data_sm_cs(2),
      O => \rd_data_sm_cs[3]_i_5_n_0\
    );
\rd_data_sm_cs[3]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FFF"
    )
        port map (
      I0 => act_rd_burst,
      I1 => act_rd_burst_two,
      I2 => \^s_axi_rvalid\,
      I3 => s_axi_rready,
      O => \rd_data_sm_cs[3]_i_6_n_0\
    );
\rd_data_sm_cs_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => rd_data_sm_ns,
      D => \rd_data_sm_cs[0]_i_1_n_0\,
      Q => rd_data_sm_cs(0),
      R => \^bram_rst_a\
    );
\rd_data_sm_cs_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => rd_data_sm_ns,
      D => \rd_data_sm_cs[1]_i_1_n_0\,
      Q => rd_data_sm_cs(1),
      R => \^bram_rst_a\
    );
\rd_data_sm_cs_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => rd_data_sm_ns,
      D => \rd_data_sm_cs[2]_i_1_n_0\,
      Q => rd_data_sm_cs(2),
      R => \^bram_rst_a\
    );
\rd_data_sm_cs_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => rd_data_sm_ns,
      D => \rd_data_sm_cs[3]_i_2_n_0\,
      Q => rd_data_sm_cs(3),
      R => \^bram_rst_a\
    );
rd_skid_buf_ld_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008FF0"
    )
        port map (
      I0 => \^s_axi_rvalid\,
      I1 => s_axi_rready,
      I2 => rd_data_sm_cs(0),
      I3 => rd_data_sm_cs(1),
      I4 => rd_data_sm_cs(2),
      I5 => rd_data_sm_cs(3),
      O => rd_skid_buf_ld_cmb
    );
rd_skid_buf_ld_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => rd_skid_buf_ld_cmb,
      Q => rd_skid_buf_ld_reg,
      R => \^bram_rst_a\
    );
rddata_mux_sel_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => rddata_mux_sel_cmb,
      I1 => rd_data_sm_cs(3),
      I2 => rddata_mux_sel_i_3_n_0,
      I3 => rddata_mux_sel,
      O => rddata_mux_sel_i_1_n_0
    );
rddata_mux_sel_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F00FF00010F0F000"
    )
        port map (
      I0 => act_rd_burst_two,
      I1 => act_rd_burst,
      I2 => rd_data_sm_cs(2),
      I3 => rd_adv_buf24_out,
      I4 => rd_data_sm_cs(0),
      I5 => rd_data_sm_cs(1),
      O => rddata_mux_sel_cmb
    );
rddata_mux_sel_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F707000FF7070F0F"
    )
        port map (
      I0 => s_axi_rready,
      I1 => \^s_axi_rvalid\,
      I2 => rd_data_sm_cs(0),
      I3 => rd_data_sm_cs(1),
      I4 => rd_data_sm_cs(2),
      I5 => axi_rd_burst_two_reg_n_0,
      O => rddata_mux_sel_i_3_n_0
    );
rddata_mux_sel_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => rddata_mux_sel_i_1_n_0,
      Q => rddata_mux_sel,
      R => \^bram_rst_a\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity vcnnbd_axi_bram_ctrl_0_0_wr_chnl is
  port (
    aw_active_d1 : out STD_LOGIC;
    bram_wrdata_a : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wready : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    curr_fixed_burst_reg : out STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[11]\ : out STD_LOGIC;
    aw_active_reg : out STD_LOGIC;
    aw_active_reg_0 : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ADDR_SNG_PORT.bram_addr_int_reg[11]_0\ : out STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[2]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \arb_sm_cs_reg[1]\ : out STD_LOGIC;
    last_arb_won_reg : out STD_LOGIC;
    \arb_sm_cs_reg[1]_0\ : out STD_LOGIC;
    bram_en_a : out STD_LOGIC;
    \bram_we_a[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aresetn_0 : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_1_out : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_aresetn : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    arb_sm_cs : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    aw_active_re : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_wlast : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[2]_0\ : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    p_7_in : in STD_LOGIC;
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end vcnnbd_axi_bram_ctrl_0_0_wr_chnl;

architecture STRUCTURE of vcnnbd_axi_bram_ctrl_0_0_wr_chnl is
  signal \^addr_sng_port.bram_addr_int_reg[11]\ : STD_LOGIC;
  signal AW2Arb_BVALID_Cnt : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal BID_FIFO_n_0 : STD_LOGIC;
  signal BID_FIFO_n_2 : STD_LOGIC;
  signal \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[0]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[1]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[1]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_WR_NO_ECC.bram_we_int[3]_i_1_n_0\ : STD_LOGIC;
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^aw_active_d1\ : STD_LOGIC;
  signal axi_bvalid_int_i_1_n_0 : STD_LOGIC;
  signal axi_bvalid_int_i_2_n_0 : STD_LOGIC;
  signal axi_wdata_full_cmb : STD_LOGIC;
  signal axi_wdata_full_reg : STD_LOGIC;
  signal axi_wr_burst : STD_LOGIC;
  signal axi_wr_burst_i_1_n_0 : STD_LOGIC;
  signal axi_wr_burst_i_2_n_0 : STD_LOGIC;
  signal axi_wready_int_mod_i_1_n_0 : STD_LOGIC;
  signal bid_gets_fifo_load : STD_LOGIC;
  signal bid_gets_fifo_load_d1 : STD_LOGIC;
  signal bram_en_cmb : STD_LOGIC;
  signal \bvalid_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \bvalid_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \bvalid_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal clr_bram_we : STD_LOGIC;
  signal \^curr_fixed_burst_reg\ : STD_LOGIC;
  signal curr_fixed_burst_reg_i_1_n_0 : STD_LOGIC;
  signal curr_wrap_burst_reg : STD_LOGIC;
  signal curr_wrap_burst_reg_i_1_n_0 : STD_LOGIC;
  signal p_8_in : STD_LOGIC;
  signal \^s_axi_bid\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s_axi_bvalid\ : STD_LOGIC;
  signal wr_data_sng_sm_cs : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal wrdata_reg_ld : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ADDR_SNG_PORT.bram_addr_int[11]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \ADDR_SNG_PORT.bram_addr_int[11]_i_5\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.axi_wdata_full_reg_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.bram_en_int_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \arb_sm_cs[1]_i_2\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of aw_active_i_3 : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of axi_awready_int_i_2 : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of axi_wr_burst_i_2 : label is "soft_lutpair41";
begin
  \ADDR_SNG_PORT.bram_addr_int_reg[11]\ <= \^addr_sng_port.bram_addr_int_reg[11]\;
  SR(0) <= \^sr\(0);
  aw_active_d1 <= \^aw_active_d1\;
  curr_fixed_burst_reg <= \^curr_fixed_burst_reg\;
  s_axi_bid(0) <= \^s_axi_bid\(0);
  s_axi_bvalid <= \^s_axi_bvalid\;
\ADDR_SNG_PORT.bram_addr_int[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"04FF"
    )
        port map (
      I0 => aw_active_re,
      I1 => wr_data_sng_sm_cs(0),
      I2 => wr_data_sng_sm_cs(1),
      I3 => s_axi_aresetn,
      O => \^sr\(0)
    );
\ADDR_SNG_PORT.bram_addr_int[11]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => wr_data_sng_sm_cs(0),
      I1 => wr_data_sng_sm_cs(1),
      I2 => s_axi_wvalid,
      O => \^addr_sng_port.bram_addr_int_reg[11]\
    );
BID_FIFO: entity work.vcnnbd_axi_bram_ctrl_0_0_SRL_FIFO
     port map (
      AW2Arb_BVALID_Cnt(2 downto 0) => AW2Arb_BVALID_Cnt(2 downto 0),
      \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.clr_bram_we_reg\ => BID_FIFO_n_0,
      aw_active_d1_reg => \^aw_active_d1\,
      aw_active_re => aw_active_re,
      \axi_bid_int_reg[0]\ => BID_FIFO_n_2,
      axi_bvalid_int_reg => \^s_axi_bvalid\,
      axi_wdata_full_reg => axi_wdata_full_reg,
      axi_wr_burst => axi_wr_burst,
      bid_gets_fifo_load => bid_gets_fifo_load,
      bid_gets_fifo_load_d1 => bid_gets_fifo_load_d1,
      p_1_out => p_1_out,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn_0,
      s_axi_awid(0) => s_axi_awid(0),
      s_axi_bid(0) => \^s_axi_bid\(0),
      s_axi_bready => s_axi_bready,
      s_axi_wlast => s_axi_wlast,
      s_axi_wvalid => s_axi_wvalid,
      wr_data_sng_sm_cs(1 downto 0) => wr_data_sng_sm_cs(1 downto 0)
    );
\GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.axi_wdata_full_reg_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FDCD3100"
    )
        port map (
      I0 => p_1_out,
      I1 => wr_data_sng_sm_cs(1),
      I2 => wr_data_sng_sm_cs(0),
      I3 => s_axi_wvalid,
      I4 => axi_wdata_full_reg,
      O => axi_wdata_full_cmb
    );
\GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.axi_wdata_full_reg_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_wdata_full_cmb,
      Q => axi_wdata_full_reg,
      R => s_axi_aresetn_0
    );
\GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.bram_en_int_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"33102200"
    )
        port map (
      I0 => wr_data_sng_sm_cs(1),
      I1 => wr_data_sng_sm_cs(0),
      I2 => axi_wdata_full_reg,
      I3 => s_axi_wvalid,
      I4 => p_1_out,
      O => bram_en_cmb
    );
\GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.bram_en_int_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => bram_en_cmb,
      Q => p_8_in,
      R => s_axi_aresetn_0
    );
\GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.clr_bram_we_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => BID_FIFO_n_0,
      Q => clr_bram_we,
      R => s_axi_aresetn_0
    );
\GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFFFF3A0000"
    )
        port map (
      I0 => s_axi_wlast,
      I1 => axi_wr_burst,
      I2 => axi_wdata_full_reg,
      I3 => wr_data_sng_sm_cs(1),
      I4 => \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[1]_i_2_n_0\,
      I5 => wr_data_sng_sm_cs(0),
      O => \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[0]_i_1_n_0\
    );
\GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF00C50000"
    )
        port map (
      I0 => s_axi_wlast,
      I1 => axi_wr_burst,
      I2 => axi_wdata_full_reg,
      I3 => wr_data_sng_sm_cs(0),
      I4 => \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[1]_i_2_n_0\,
      I5 => wr_data_sng_sm_cs(1),
      O => \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[1]_i_1_n_0\
    );
\GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFC080C08"
    )
        port map (
      I0 => axi_wdata_full_reg,
      I1 => p_1_out,
      I2 => wr_data_sng_sm_cs(1),
      I3 => s_axi_wvalid,
      I4 => s_axi_wlast,
      I5 => wr_data_sng_sm_cs(0),
      O => \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[1]_i_2_n_0\
    );
\GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[0]_i_1_n_0\,
      Q => wr_data_sng_sm_cs(0),
      R => s_axi_aresetn_0
    );
\GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[1]_i_1_n_0\,
      Q => wr_data_sng_sm_cs(1),
      R => s_axi_aresetn_0
    );
\GEN_WRDATA[0].bram_wrdata_int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(0),
      Q => bram_wrdata_a(0),
      R => '0'
    );
\GEN_WRDATA[10].bram_wrdata_int_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(10),
      Q => bram_wrdata_a(10),
      R => '0'
    );
\GEN_WRDATA[11].bram_wrdata_int_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(11),
      Q => bram_wrdata_a(11),
      R => '0'
    );
\GEN_WRDATA[12].bram_wrdata_int_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(12),
      Q => bram_wrdata_a(12),
      R => '0'
    );
\GEN_WRDATA[13].bram_wrdata_int_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(13),
      Q => bram_wrdata_a(13),
      R => '0'
    );
\GEN_WRDATA[14].bram_wrdata_int_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(14),
      Q => bram_wrdata_a(14),
      R => '0'
    );
\GEN_WRDATA[15].bram_wrdata_int_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(15),
      Q => bram_wrdata_a(15),
      R => '0'
    );
\GEN_WRDATA[16].bram_wrdata_int_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(16),
      Q => bram_wrdata_a(16),
      R => '0'
    );
\GEN_WRDATA[17].bram_wrdata_int_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(17),
      Q => bram_wrdata_a(17),
      R => '0'
    );
\GEN_WRDATA[18].bram_wrdata_int_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(18),
      Q => bram_wrdata_a(18),
      R => '0'
    );
\GEN_WRDATA[19].bram_wrdata_int_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(19),
      Q => bram_wrdata_a(19),
      R => '0'
    );
\GEN_WRDATA[1].bram_wrdata_int_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(1),
      Q => bram_wrdata_a(1),
      R => '0'
    );
\GEN_WRDATA[20].bram_wrdata_int_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(20),
      Q => bram_wrdata_a(20),
      R => '0'
    );
\GEN_WRDATA[21].bram_wrdata_int_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(21),
      Q => bram_wrdata_a(21),
      R => '0'
    );
\GEN_WRDATA[22].bram_wrdata_int_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(22),
      Q => bram_wrdata_a(22),
      R => '0'
    );
\GEN_WRDATA[23].bram_wrdata_int_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(23),
      Q => bram_wrdata_a(23),
      R => '0'
    );
\GEN_WRDATA[24].bram_wrdata_int_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(24),
      Q => bram_wrdata_a(24),
      R => '0'
    );
\GEN_WRDATA[25].bram_wrdata_int_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(25),
      Q => bram_wrdata_a(25),
      R => '0'
    );
\GEN_WRDATA[26].bram_wrdata_int_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(26),
      Q => bram_wrdata_a(26),
      R => '0'
    );
\GEN_WRDATA[27].bram_wrdata_int_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(27),
      Q => bram_wrdata_a(27),
      R => '0'
    );
\GEN_WRDATA[28].bram_wrdata_int_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(28),
      Q => bram_wrdata_a(28),
      R => '0'
    );
\GEN_WRDATA[29].bram_wrdata_int_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(29),
      Q => bram_wrdata_a(29),
      R => '0'
    );
\GEN_WRDATA[2].bram_wrdata_int_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(2),
      Q => bram_wrdata_a(2),
      R => '0'
    );
\GEN_WRDATA[30].bram_wrdata_int_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(30),
      Q => bram_wrdata_a(30),
      R => '0'
    );
\GEN_WRDATA[31].bram_wrdata_int[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0CC4"
    )
        port map (
      I0 => axi_wdata_full_reg,
      I1 => s_axi_wvalid,
      I2 => wr_data_sng_sm_cs(1),
      I3 => wr_data_sng_sm_cs(0),
      O => wrdata_reg_ld
    );
\GEN_WRDATA[31].bram_wrdata_int_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(31),
      Q => bram_wrdata_a(31),
      R => '0'
    );
\GEN_WRDATA[3].bram_wrdata_int_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(3),
      Q => bram_wrdata_a(3),
      R => '0'
    );
\GEN_WRDATA[4].bram_wrdata_int_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(4),
      Q => bram_wrdata_a(4),
      R => '0'
    );
\GEN_WRDATA[5].bram_wrdata_int_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(5),
      Q => bram_wrdata_a(5),
      R => '0'
    );
\GEN_WRDATA[6].bram_wrdata_int_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(6),
      Q => bram_wrdata_a(6),
      R => '0'
    );
\GEN_WRDATA[7].bram_wrdata_int_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(7),
      Q => bram_wrdata_a(7),
      R => '0'
    );
\GEN_WRDATA[8].bram_wrdata_int_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(8),
      Q => bram_wrdata_a(8),
      R => '0'
    );
\GEN_WRDATA[9].bram_wrdata_int_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(9),
      Q => bram_wrdata_a(9),
      R => '0'
    );
\GEN_WR_NO_ECC.bram_we_int[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F33B0000FFFFFFFF"
    )
        port map (
      I0 => axi_wdata_full_reg,
      I1 => s_axi_wvalid,
      I2 => wr_data_sng_sm_cs(1),
      I3 => wr_data_sng_sm_cs(0),
      I4 => clr_bram_we,
      I5 => s_axi_aresetn,
      O => \GEN_WR_NO_ECC.bram_we_int[3]_i_1_n_0\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wstrb(0),
      Q => \bram_we_a[3]\(0),
      R => \GEN_WR_NO_ECC.bram_we_int[3]_i_1_n_0\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wstrb(1),
      Q => \bram_we_a[3]\(1),
      R => \GEN_WR_NO_ECC.bram_we_int[3]_i_1_n_0\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wstrb(2),
      Q => \bram_we_a[3]\(2),
      R => \GEN_WR_NO_ECC.bram_we_int[3]_i_1_n_0\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wstrb(3),
      Q => \bram_we_a[3]\(3),
      R => \GEN_WR_NO_ECC.bram_we_int[3]_i_1_n_0\
    );
I_WRAP_BRST: entity work.vcnnbd_axi_bram_ctrl_0_0_wrap_brst
     port map (
      \ADDR_SNG_PORT.bram_addr_int_reg[11]\ => \ADDR_SNG_PORT.bram_addr_int_reg[11]_0\,
      \ADDR_SNG_PORT.bram_addr_int_reg[2]\ => \ADDR_SNG_PORT.bram_addr_int_reg[2]\,
      \ADDR_SNG_PORT.bram_addr_int_reg[2]_0\ => \ADDR_SNG_PORT.bram_addr_int_reg[2]_0\,
      D(8 downto 0) => D(8 downto 0),
      \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0]\ => \^addr_sng_port.bram_addr_int_reg[11]\,
      Q(2 downto 0) => Q(2 downto 0),
      aw_active_d1_reg => \^aw_active_d1\,
      aw_active_re => aw_active_re,
      curr_wrap_burst_reg => curr_wrap_burst_reg,
      p_1_out => p_1_out,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn_0,
      s_axi_awaddr(9 downto 0) => s_axi_awaddr(9 downto 0),
      s_axi_awlen(3 downto 0) => s_axi_awlen(3 downto 0)
    );
\arb_sm_cs[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wr_data_sng_sm_cs(0),
      I1 => wr_data_sng_sm_cs(1),
      O => \arb_sm_cs_reg[1]\
    );
aw_active_d1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_1_out,
      Q => \^aw_active_d1\,
      R => s_axi_aresetn_0
    );
aw_active_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => wr_data_sng_sm_cs(1),
      I1 => wr_data_sng_sm_cs(0),
      I2 => arb_sm_cs(1),
      O => aw_active_reg
    );
aw_active_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"15550000"
    )
        port map (
      I0 => arb_sm_cs(1),
      I1 => AW2Arb_BVALID_Cnt(1),
      I2 => AW2Arb_BVALID_Cnt(2),
      I3 => AW2Arb_BVALID_Cnt(0),
      I4 => s_axi_awvalid,
      O => aw_active_reg_0
    );
axi_awready_int_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D555"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => AW2Arb_BVALID_Cnt(0),
      I2 => AW2Arb_BVALID_Cnt(2),
      I3 => AW2Arb_BVALID_Cnt(1),
      O => \arb_sm_cs_reg[1]_0\
    );
\axi_bid_int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => BID_FIFO_n_2,
      Q => \^s_axi_bid\(0),
      R => s_axi_aresetn_0
    );
axi_bvalid_int_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAA88AAA8"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => AW2Arb_BVALID_Cnt(2),
      I2 => AW2Arb_BVALID_Cnt(0),
      I3 => AW2Arb_BVALID_Cnt(1),
      I4 => axi_bvalid_int_i_2_n_0,
      I5 => BID_FIFO_n_0,
      O => axi_bvalid_int_i_1_n_0
    );
axi_bvalid_int_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE000000"
    )
        port map (
      I0 => AW2Arb_BVALID_Cnt(0),
      I1 => AW2Arb_BVALID_Cnt(2),
      I2 => AW2Arb_BVALID_Cnt(1),
      I3 => s_axi_bready,
      I4 => \^s_axi_bvalid\,
      O => axi_bvalid_int_i_2_n_0
    );
axi_bvalid_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_bvalid_int_i_1_n_0,
      Q => \^s_axi_bvalid\,
      R => '0'
    );
axi_wr_burst_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => s_axi_wlast,
      I1 => axi_wr_burst_i_2_n_0,
      I2 => axi_wr_burst,
      O => axi_wr_burst_i_1_n_0
    );
axi_wr_burst_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55450040"
    )
        port map (
      I0 => wr_data_sng_sm_cs(1),
      I1 => p_1_out,
      I2 => axi_wdata_full_reg,
      I3 => wr_data_sng_sm_cs(0),
      I4 => s_axi_wvalid,
      O => axi_wr_burst_i_2_n_0
    );
axi_wr_burst_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_wr_burst_i_1_n_0,
      Q => axi_wr_burst,
      R => s_axi_aresetn_0
    );
axi_wready_int_mod_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22220AAA22220A02"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => axi_wdata_full_reg,
      I2 => s_axi_wvalid,
      I3 => wr_data_sng_sm_cs(0),
      I4 => wr_data_sng_sm_cs(1),
      I5 => p_1_out,
      O => axi_wready_int_mod_i_1_n_0
    );
axi_wready_int_mod_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_wready_int_mod_i_1_n_0,
      Q => s_axi_wready,
      R => '0'
    );
bid_gets_fifo_load_d1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => bid_gets_fifo_load,
      Q => bid_gets_fifo_load_d1,
      R => s_axi_aresetn_0
    );
bram_en_a_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_8_in,
      I1 => p_7_in,
      O => bram_en_a
    );
\bvalid_cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0000FFF1FFFE000"
    )
        port map (
      I0 => AW2Arb_BVALID_Cnt(2),
      I1 => AW2Arb_BVALID_Cnt(1),
      I2 => s_axi_bready,
      I3 => \^s_axi_bvalid\,
      I4 => BID_FIFO_n_0,
      I5 => AW2Arb_BVALID_Cnt(0),
      O => \bvalid_cnt[0]_i_1_n_0\
    );
\bvalid_cnt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D52AD52ABF40BF00"
    )
        port map (
      I0 => BID_FIFO_n_0,
      I1 => \^s_axi_bvalid\,
      I2 => s_axi_bready,
      I3 => AW2Arb_BVALID_Cnt(1),
      I4 => AW2Arb_BVALID_Cnt(2),
      I5 => AW2Arb_BVALID_Cnt(0),
      O => \bvalid_cnt[1]_i_1_n_0\
    );
\bvalid_cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D5FF2A00FFBF0000"
    )
        port map (
      I0 => BID_FIFO_n_0,
      I1 => \^s_axi_bvalid\,
      I2 => s_axi_bready,
      I3 => AW2Arb_BVALID_Cnt(1),
      I4 => AW2Arb_BVALID_Cnt(2),
      I5 => AW2Arb_BVALID_Cnt(0),
      O => \bvalid_cnt[2]_i_1_n_0\
    );
\bvalid_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \bvalid_cnt[0]_i_1_n_0\,
      Q => AW2Arb_BVALID_Cnt(0),
      R => s_axi_aresetn_0
    );
\bvalid_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \bvalid_cnt[1]_i_1_n_0\,
      Q => AW2Arb_BVALID_Cnt(1),
      R => s_axi_aresetn_0
    );
\bvalid_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \bvalid_cnt[2]_i_1_n_0\,
      Q => AW2Arb_BVALID_Cnt(2),
      R => s_axi_aresetn_0
    );
curr_fixed_burst_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000008A8A8ABA"
    )
        port map (
      I0 => \^curr_fixed_burst_reg\,
      I1 => \^aw_active_d1\,
      I2 => p_1_out,
      I3 => s_axi_awburst(1),
      I4 => s_axi_awburst(0),
      I5 => \^sr\(0),
      O => curr_fixed_burst_reg_i_1_n_0
    );
curr_fixed_burst_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => curr_fixed_burst_reg_i_1_n_0,
      Q => \^curr_fixed_burst_reg\,
      R => '0'
    );
curr_wrap_burst_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000008ABA8A8A"
    )
        port map (
      I0 => curr_wrap_burst_reg,
      I1 => \^aw_active_d1\,
      I2 => p_1_out,
      I3 => s_axi_awburst(0),
      I4 => s_axi_awburst(1),
      I5 => \^sr\(0),
      O => curr_wrap_burst_reg_i_1_n_0
    );
curr_wrap_burst_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => curr_wrap_burst_reg_i_1_n_0,
      Q => curr_wrap_burst_reg,
      R => '0'
    );
last_arb_won_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002AAA"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => AW2Arb_BVALID_Cnt(0),
      I2 => AW2Arb_BVALID_Cnt(2),
      I3 => AW2Arb_BVALID_Cnt(1),
      I4 => arb_sm_cs(1),
      I5 => arb_sm_cs(0),
      O => last_arb_won_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity vcnnbd_axi_bram_ctrl_0_0_full_axi is
  port (
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rlast : out STD_LOGIC;
    BRAM_Addr_A : out STD_LOGIC_VECTOR ( 9 downto 0 );
    bram_rst_a : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    bram_wrdata_a : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awready : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    bram_we_a : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bram_en_a : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wready : out STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_rready : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end vcnnbd_axi_bram_ctrl_0_0_full_axi;

architecture STRUCTURE of vcnnbd_axi_bram_ctrl_0_0_full_axi is
  signal \ADDR_SNG_PORT.bram_addr_int[10]_i_2_n_0\ : STD_LOGIC;
  signal \ADDR_SNG_PORT.bram_addr_int[11]_i_7_n_0\ : STD_LOGIC;
  signal \ADDR_SNG_PORT.bram_addr_int[4]_i_2_n_0\ : STD_LOGIC;
  signal \ADDR_SNG_PORT.bram_addr_int[5]_i_2_n_0\ : STD_LOGIC;
  signal \ADDR_SNG_PORT.bram_addr_int[7]_i_2_n_0\ : STD_LOGIC;
  signal \ADDR_SNG_PORT.bram_addr_int[8]_i_2_n_0\ : STD_LOGIC;
  signal \ADDR_SNG_PORT.bram_addr_int[9]_i_2_n_0\ : STD_LOGIC;
  signal \^bram_addr_a\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \GEN_ARB.I_SNG_PORT_n_14\ : STD_LOGIC;
  signal \GEN_ARB.I_SNG_PORT_n_4\ : STD_LOGIC;
  signal \GEN_ARB.I_SNG_PORT_n_5\ : STD_LOGIC;
  signal I_RD_CHNL_n_39 : STD_LOGIC;
  signal I_RD_CHNL_n_40 : STD_LOGIC;
  signal I_RD_CHNL_n_41 : STD_LOGIC;
  signal I_RD_CHNL_n_42 : STD_LOGIC;
  signal I_RD_CHNL_n_43 : STD_LOGIC;
  signal I_RD_CHNL_n_44 : STD_LOGIC;
  signal I_RD_CHNL_n_45 : STD_LOGIC;
  signal I_RD_CHNL_n_46 : STD_LOGIC;
  signal I_RD_CHNL_n_47 : STD_LOGIC;
  signal I_RD_CHNL_n_48 : STD_LOGIC;
  signal I_RD_CHNL_n_49 : STD_LOGIC;
  signal I_RD_CHNL_n_50 : STD_LOGIC;
  signal I_RD_CHNL_n_51 : STD_LOGIC;
  signal I_RD_CHNL_n_52 : STD_LOGIC;
  signal I_WR_CHNL_n_37 : STD_LOGIC;
  signal I_WR_CHNL_n_38 : STD_LOGIC;
  signal I_WR_CHNL_n_39 : STD_LOGIC;
  signal I_WR_CHNL_n_40 : STD_LOGIC;
  signal I_WR_CHNL_n_41 : STD_LOGIC;
  signal I_WR_CHNL_n_42 : STD_LOGIC;
  signal I_WR_CHNL_n_52 : STD_LOGIC;
  signal I_WR_CHNL_n_53 : STD_LOGIC;
  signal I_WR_CHNL_n_54 : STD_LOGIC;
  signal WrChnl_BRAM_Addr_Ld : STD_LOGIC_VECTOR ( 9 downto 1 );
  signal ar_active_d1 : STD_LOGIC;
  signal ar_active_re : STD_LOGIC;
  signal arb_sm_cs : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal aw_active_d1 : STD_LOGIC;
  signal aw_active_re : STD_LOGIC;
  signal axi_rd_burst_two : STD_LOGIC;
  signal \^bram_rst_a\ : STD_LOGIC;
  signal curr_fixed_burst_reg : STD_LOGIC;
  signal p_0_out : STD_LOGIC;
  signal p_1_out : STD_LOGIC;
  signal p_6_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_7_in : STD_LOGIC;
  signal \^s_axi_rlast\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ADDR_SNG_PORT.bram_addr_int[10]_i_2\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \ADDR_SNG_PORT.bram_addr_int[5]_i_2\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \ADDR_SNG_PORT.bram_addr_int[7]_i_2\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \ADDR_SNG_PORT.bram_addr_int[9]_i_2\ : label is "soft_lutpair45";
begin
  BRAM_Addr_A(9 downto 0) <= \^bram_addr_a\(9 downto 0);
  bram_rst_a <= \^bram_rst_a\;
  s_axi_rlast <= \^s_axi_rlast\;
\ADDR_SNG_PORT.bram_addr_int[10]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => \^bram_addr_a\(7),
      I1 => \^bram_addr_a\(5),
      I2 => \^bram_addr_a\(4),
      I3 => I_RD_CHNL_n_49,
      I4 => \^bram_addr_a\(6),
      O => \ADDR_SNG_PORT.bram_addr_int[10]_i_2_n_0\
    );
\ADDR_SNG_PORT.bram_addr_int[11]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800000000000000"
    )
        port map (
      I0 => \^bram_addr_a\(8),
      I1 => \^bram_addr_a\(6),
      I2 => I_RD_CHNL_n_49,
      I3 => \^bram_addr_a\(4),
      I4 => \^bram_addr_a\(5),
      I5 => \^bram_addr_a\(7),
      O => \ADDR_SNG_PORT.bram_addr_int[11]_i_7_n_0\
    );
\ADDR_SNG_PORT.bram_addr_int[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^bram_addr_a\(0),
      I1 => \^bram_addr_a\(1),
      O => \ADDR_SNG_PORT.bram_addr_int[4]_i_2_n_0\
    );
\ADDR_SNG_PORT.bram_addr_int[5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \^bram_addr_a\(2),
      I1 => \^bram_addr_a\(1),
      I2 => \^bram_addr_a\(0),
      O => \ADDR_SNG_PORT.bram_addr_int[5]_i_2_n_0\
    );
\ADDR_SNG_PORT.bram_addr_int[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \^bram_addr_a\(3),
      I1 => \^bram_addr_a\(2),
      I2 => \^bram_addr_a\(1),
      I3 => \^bram_addr_a\(0),
      I4 => \^bram_addr_a\(4),
      O => \ADDR_SNG_PORT.bram_addr_int[7]_i_2_n_0\
    );
\ADDR_SNG_PORT.bram_addr_int[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^bram_addr_a\(5),
      I1 => \^bram_addr_a\(4),
      I2 => \^bram_addr_a\(0),
      I3 => \^bram_addr_a\(1),
      I4 => \^bram_addr_a\(2),
      I5 => \^bram_addr_a\(3),
      O => \ADDR_SNG_PORT.bram_addr_int[8]_i_2_n_0\
    );
\ADDR_SNG_PORT.bram_addr_int[9]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \^bram_addr_a\(6),
      I1 => I_RD_CHNL_n_49,
      I2 => \^bram_addr_a\(4),
      I3 => \^bram_addr_a\(5),
      O => \ADDR_SNG_PORT.bram_addr_int[9]_i_2_n_0\
    );
\ADDR_SNG_PORT.bram_addr_int_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => I_RD_CHNL_n_50,
      D => I_RD_CHNL_n_40,
      Q => \^bram_addr_a\(8),
      R => I_WR_CHNL_n_40
    );
\ADDR_SNG_PORT.bram_addr_int_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => I_RD_CHNL_n_50,
      D => I_RD_CHNL_n_39,
      Q => \^bram_addr_a\(9),
      R => I_WR_CHNL_n_40
    );
\ADDR_SNG_PORT.bram_addr_int_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => I_RD_CHNL_n_50,
      D => I_RD_CHNL_n_48,
      Q => \^bram_addr_a\(0),
      R => I_WR_CHNL_n_40
    );
\ADDR_SNG_PORT.bram_addr_int_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => I_RD_CHNL_n_50,
      D => I_RD_CHNL_n_47,
      Q => \^bram_addr_a\(1),
      R => I_WR_CHNL_n_40
    );
\ADDR_SNG_PORT.bram_addr_int_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => I_RD_CHNL_n_50,
      D => I_RD_CHNL_n_46,
      Q => \^bram_addr_a\(2),
      R => I_WR_CHNL_n_40
    );
\ADDR_SNG_PORT.bram_addr_int_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => I_RD_CHNL_n_50,
      D => I_RD_CHNL_n_45,
      Q => \^bram_addr_a\(3),
      R => I_WR_CHNL_n_40
    );
\ADDR_SNG_PORT.bram_addr_int_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => I_RD_CHNL_n_50,
      D => I_RD_CHNL_n_44,
      Q => \^bram_addr_a\(4),
      R => I_WR_CHNL_n_40
    );
\ADDR_SNG_PORT.bram_addr_int_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => I_RD_CHNL_n_50,
      D => I_RD_CHNL_n_43,
      Q => \^bram_addr_a\(5),
      R => I_WR_CHNL_n_40
    );
\ADDR_SNG_PORT.bram_addr_int_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => I_RD_CHNL_n_50,
      D => I_RD_CHNL_n_42,
      Q => \^bram_addr_a\(6),
      R => I_WR_CHNL_n_40
    );
\ADDR_SNG_PORT.bram_addr_int_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => I_RD_CHNL_n_50,
      D => I_RD_CHNL_n_41,
      Q => \^bram_addr_a\(7),
      R => I_WR_CHNL_n_40
    );
\GEN_ARB.I_SNG_PORT\: entity work.vcnnbd_axi_bram_ctrl_0_0_sng_port_arb
     port map (
      \GEN_AR_SNG.ar_active_d1_reg\ => \GEN_ARB.I_SNG_PORT_n_14\,
      \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0]\ => I_WR_CHNL_n_52,
      \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1]\ => I_WR_CHNL_n_38,
      Q(3 downto 0) => p_6_in(3 downto 0),
      ar_active_d1 => ar_active_d1,
      ar_active_re => ar_active_re,
      arb_sm_cs(1 downto 0) => arb_sm_cs(1 downto 0),
      \arb_sm_cs_reg[1]_0\ => I_WR_CHNL_n_39,
      aw_active_d1 => aw_active_d1,
      aw_active_re => aw_active_re,
      axi_rd_burst_two => axi_rd_burst_two,
      axi_rlast_int_reg => I_RD_CHNL_n_52,
      axi_rlast_int_reg_0 => \^s_axi_rlast\,
      bram_we_a(3 downto 0) => bram_we_a(3 downto 0),
      brst_one_reg => \GEN_ARB.I_SNG_PORT_n_4\,
      brst_zero_reg => \GEN_ARB.I_SNG_PORT_n_5\,
      \bvalid_cnt_reg[0]\ => I_WR_CHNL_n_53,
      \bvalid_cnt_reg[0]_0\ => I_WR_CHNL_n_54,
      p_0_out => p_0_out,
      p_1_out => p_1_out,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_aresetn_0 => \^bram_rst_a\,
      s_axi_arlen(3 downto 0) => s_axi_arlen(3 downto 0),
      \s_axi_arlen[6]\ => I_RD_CHNL_n_51,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_rready => s_axi_rready
    );
I_RD_CHNL: entity work.vcnnbd_axi_bram_ctrl_0_0_rd_chnl
     port map (
      \ADDR_SNG_PORT.bram_addr_int_reg[10]\ => \ADDR_SNG_PORT.bram_addr_int[11]_i_7_n_0\,
      \ADDR_SNG_PORT.bram_addr_int_reg[2]\ => \ADDR_SNG_PORT.bram_addr_int[4]_i_2_n_0\,
      \ADDR_SNG_PORT.bram_addr_int_reg[4]\ => \ADDR_SNG_PORT.bram_addr_int[5]_i_2_n_0\,
      \ADDR_SNG_PORT.bram_addr_int_reg[5]\ => \ADDR_SNG_PORT.bram_addr_int[7]_i_2_n_0\,
      \ADDR_SNG_PORT.bram_addr_int_reg[6]\ => I_RD_CHNL_n_49,
      \ADDR_SNG_PORT.bram_addr_int_reg[7]\ => \ADDR_SNG_PORT.bram_addr_int[8]_i_2_n_0\,
      \ADDR_SNG_PORT.bram_addr_int_reg[8]\ => \ADDR_SNG_PORT.bram_addr_int[9]_i_2_n_0\,
      \ADDR_SNG_PORT.bram_addr_int_reg[9]\ => \ADDR_SNG_PORT.bram_addr_int[10]_i_2_n_0\,
      D(9) => I_RD_CHNL_n_39,
      D(8) => I_RD_CHNL_n_40,
      D(7) => I_RD_CHNL_n_41,
      D(6) => I_RD_CHNL_n_42,
      D(5) => I_RD_CHNL_n_43,
      D(4) => I_RD_CHNL_n_44,
      D(3) => I_RD_CHNL_n_45,
      D(2) => I_RD_CHNL_n_46,
      D(1) => I_RD_CHNL_n_47,
      D(0) => I_RD_CHNL_n_48,
      E(0) => I_RD_CHNL_n_50,
      \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0]\ => I_WR_CHNL_n_37,
      Q(9 downto 0) => \^bram_addr_a\(9 downto 0),
      ar_active_d1 => ar_active_d1,
      ar_active_re => ar_active_re,
      ar_active_reg => \GEN_ARB.I_SNG_PORT_n_14\,
      ar_active_reg_0 => \GEN_ARB.I_SNG_PORT_n_5\,
      ar_active_reg_1 => \GEN_ARB.I_SNG_PORT_n_4\,
      \arb_sm_cs_reg[1]\ => I_RD_CHNL_n_52,
      aw_active_d1_reg => I_WR_CHNL_n_42,
      axi_rd_burst_reg_0 => I_RD_CHNL_n_51,
      axi_rd_burst_two => axi_rd_burst_two,
      bram_rddata_a(31 downto 0) => bram_rddata_a(31 downto 0),
      bram_rst_a => \^bram_rst_a\,
      curr_fixed_burst_reg => curr_fixed_burst_reg,
      curr_wrap_burst_reg_reg_0 => I_WR_CHNL_n_41,
      p_0_out => p_0_out,
      p_7_in => p_7_in,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(9 downto 0) => s_axi_araddr(9 downto 0),
      s_axi_arburst(1 downto 0) => s_axi_arburst(1 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arid(0) => s_axi_arid(0),
      s_axi_arlen(7 downto 0) => s_axi_arlen(7 downto 0),
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rid(0) => s_axi_rid(0),
      s_axi_rlast => \^s_axi_rlast\,
      s_axi_rready => s_axi_rready,
      s_axi_rvalid => s_axi_rvalid,
      \save_init_bram_addr_ld_reg[11]\(8 downto 0) => WrChnl_BRAM_Addr_Ld(9 downto 1)
    );
I_WR_CHNL: entity work.vcnnbd_axi_bram_ctrl_0_0_wr_chnl
     port map (
      \ADDR_SNG_PORT.bram_addr_int_reg[11]\ => I_WR_CHNL_n_37,
      \ADDR_SNG_PORT.bram_addr_int_reg[11]_0\ => I_WR_CHNL_n_41,
      \ADDR_SNG_PORT.bram_addr_int_reg[2]\ => I_WR_CHNL_n_42,
      \ADDR_SNG_PORT.bram_addr_int_reg[2]_0\ => I_RD_CHNL_n_49,
      D(8 downto 0) => WrChnl_BRAM_Addr_Ld(9 downto 1),
      Q(2 downto 0) => \^bram_addr_a\(2 downto 0),
      SR(0) => I_WR_CHNL_n_40,
      arb_sm_cs(1 downto 0) => arb_sm_cs(1 downto 0),
      \arb_sm_cs_reg[1]\ => I_WR_CHNL_n_52,
      \arb_sm_cs_reg[1]_0\ => I_WR_CHNL_n_54,
      aw_active_d1 => aw_active_d1,
      aw_active_re => aw_active_re,
      aw_active_reg => I_WR_CHNL_n_38,
      aw_active_reg_0 => I_WR_CHNL_n_39,
      bram_en_a => bram_en_a,
      \bram_we_a[3]\(3 downto 0) => p_6_in(3 downto 0),
      bram_wrdata_a(31 downto 0) => bram_wrdata_a(31 downto 0),
      curr_fixed_burst_reg => curr_fixed_burst_reg,
      last_arb_won_reg => I_WR_CHNL_n_53,
      p_1_out => p_1_out,
      p_7_in => p_7_in,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_aresetn_0 => \^bram_rst_a\,
      s_axi_awaddr(9 downto 0) => s_axi_awaddr(9 downto 0),
      s_axi_awburst(1 downto 0) => s_axi_awburst(1 downto 0),
      s_axi_awid(0) => s_axi_awid(0),
      s_axi_awlen(3 downto 0) => s_axi_awlen(3 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bid(0) => s_axi_bid(0),
      s_axi_bready => s_axi_bready,
      s_axi_bvalid => s_axi_bvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wlast => s_axi_wlast,
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity vcnnbd_axi_bram_ctrl_0_0_axi_bram_ctrl_top is
  port (
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rlast : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 9 downto 0 );
    bram_rst_a : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    bram_wrdata_a : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awready : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    bram_we_a : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bram_en_a : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wready : out STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_rready : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end vcnnbd_axi_bram_ctrl_0_0_axi_bram_ctrl_top;

architecture STRUCTURE of vcnnbd_axi_bram_ctrl_0_0_axi_bram_ctrl_top is
begin
\GEN_AXI4.I_FULL_AXI\: entity work.vcnnbd_axi_bram_ctrl_0_0_full_axi
     port map (
      BRAM_Addr_A(9 downto 0) => Q(9 downto 0),
      bram_en_a => bram_en_a,
      bram_rddata_a(31 downto 0) => bram_rddata_a(31 downto 0),
      bram_rst_a => bram_rst_a,
      bram_we_a(3 downto 0) => bram_we_a(3 downto 0),
      bram_wrdata_a(31 downto 0) => bram_wrdata_a(31 downto 0),
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(9 downto 0) => s_axi_araddr(9 downto 0),
      s_axi_arburst(1 downto 0) => s_axi_arburst(1 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arid(0) => s_axi_arid(0),
      s_axi_arlen(7 downto 0) => s_axi_arlen(7 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(9 downto 0) => s_axi_awaddr(9 downto 0),
      s_axi_awburst(1 downto 0) => s_axi_awburst(1 downto 0),
      s_axi_awid(0) => s_axi_awid(0),
      s_axi_awlen(3 downto 0) => s_axi_awlen(3 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bid(0) => s_axi_bid(0),
      s_axi_bready => s_axi_bready,
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rid(0) => s_axi_rid(0),
      s_axi_rlast => s_axi_rlast,
      s_axi_rready => s_axi_rready,
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wlast => s_axi_wlast,
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity vcnnbd_axi_bram_ctrl_0_0_axi_bram_ctrl is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    ecc_interrupt : out STD_LOGIC;
    ecc_ue : out STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC;
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC;
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_ctrl_awvalid : in STD_LOGIC;
    s_axi_ctrl_awready : out STD_LOGIC;
    s_axi_ctrl_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_wvalid : in STD_LOGIC;
    s_axi_ctrl_wready : out STD_LOGIC;
    s_axi_ctrl_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ctrl_bvalid : out STD_LOGIC;
    s_axi_ctrl_bready : in STD_LOGIC;
    s_axi_ctrl_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_arvalid : in STD_LOGIC;
    s_axi_ctrl_arready : out STD_LOGIC;
    s_axi_ctrl_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ctrl_rvalid : out STD_LOGIC;
    s_axi_ctrl_rready : in STD_LOGIC;
    bram_rst_a : out STD_LOGIC;
    bram_clk_a : out STD_LOGIC;
    bram_en_a : out STD_LOGIC;
    bram_we_a : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bram_addr_a : out STD_LOGIC_VECTOR ( 11 downto 0 );
    bram_wrdata_a : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_rst_b : out STD_LOGIC;
    bram_clk_b : out STD_LOGIC;
    bram_en_b : out STD_LOGIC;
    bram_we_b : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bram_addr_b : out STD_LOGIC_VECTOR ( 11 downto 0 );
    bram_wrdata_b : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_rddata_b : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute C_BRAM_ADDR_WIDTH : integer;
  attribute C_BRAM_ADDR_WIDTH of vcnnbd_axi_bram_ctrl_0_0_axi_bram_ctrl : entity is 10;
  attribute C_BRAM_INST_MODE : string;
  attribute C_BRAM_INST_MODE of vcnnbd_axi_bram_ctrl_0_0_axi_bram_ctrl : entity is "EXTERNAL";
  attribute C_ECC : integer;
  attribute C_ECC of vcnnbd_axi_bram_ctrl_0_0_axi_bram_ctrl : entity is 0;
  attribute C_ECC_ONOFF_RESET_VALUE : integer;
  attribute C_ECC_ONOFF_RESET_VALUE of vcnnbd_axi_bram_ctrl_0_0_axi_bram_ctrl : entity is 0;
  attribute C_ECC_TYPE : integer;
  attribute C_ECC_TYPE of vcnnbd_axi_bram_ctrl_0_0_axi_bram_ctrl : entity is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of vcnnbd_axi_bram_ctrl_0_0_axi_bram_ctrl : entity is "zynq";
  attribute C_FAULT_INJECT : integer;
  attribute C_FAULT_INJECT of vcnnbd_axi_bram_ctrl_0_0_axi_bram_ctrl : entity is 0;
  attribute C_MEMORY_DEPTH : integer;
  attribute C_MEMORY_DEPTH of vcnnbd_axi_bram_ctrl_0_0_axi_bram_ctrl : entity is 1024;
  attribute C_SELECT_XPM : integer;
  attribute C_SELECT_XPM of vcnnbd_axi_bram_ctrl_0_0_axi_bram_ctrl : entity is 0;
  attribute C_SINGLE_PORT_BRAM : integer;
  attribute C_SINGLE_PORT_BRAM of vcnnbd_axi_bram_ctrl_0_0_axi_bram_ctrl : entity is 1;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of vcnnbd_axi_bram_ctrl_0_0_axi_bram_ctrl : entity is 12;
  attribute C_S_AXI_CTRL_ADDR_WIDTH : integer;
  attribute C_S_AXI_CTRL_ADDR_WIDTH of vcnnbd_axi_bram_ctrl_0_0_axi_bram_ctrl : entity is 32;
  attribute C_S_AXI_CTRL_DATA_WIDTH : integer;
  attribute C_S_AXI_CTRL_DATA_WIDTH of vcnnbd_axi_bram_ctrl_0_0_axi_bram_ctrl : entity is 32;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of vcnnbd_axi_bram_ctrl_0_0_axi_bram_ctrl : entity is 32;
  attribute C_S_AXI_ID_WIDTH : integer;
  attribute C_S_AXI_ID_WIDTH of vcnnbd_axi_bram_ctrl_0_0_axi_bram_ctrl : entity is 1;
  attribute C_S_AXI_PROTOCOL : string;
  attribute C_S_AXI_PROTOCOL of vcnnbd_axi_bram_ctrl_0_0_axi_bram_ctrl : entity is "AXI4";
  attribute C_S_AXI_SUPPORTS_NARROW_BURST : integer;
  attribute C_S_AXI_SUPPORTS_NARROW_BURST of vcnnbd_axi_bram_ctrl_0_0_axi_bram_ctrl : entity is 0;
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of vcnnbd_axi_bram_ctrl_0_0_axi_bram_ctrl : entity is "yes";
end vcnnbd_axi_bram_ctrl_0_0_axi_bram_ctrl;

architecture STRUCTURE of vcnnbd_axi_bram_ctrl_0_0_axi_bram_ctrl is
  signal \<const0>\ : STD_LOGIC;
  signal \^bram_addr_a\ : STD_LOGIC_VECTOR ( 11 downto 2 );
  signal \^s_axi_aclk\ : STD_LOGIC;
begin
  \^s_axi_aclk\ <= s_axi_aclk;
  bram_addr_a(11 downto 2) <= \^bram_addr_a\(11 downto 2);
  bram_addr_a(1) <= \<const0>\;
  bram_addr_a(0) <= \<const0>\;
  bram_addr_b(11) <= \<const0>\;
  bram_addr_b(10) <= \<const0>\;
  bram_addr_b(9) <= \<const0>\;
  bram_addr_b(8) <= \<const0>\;
  bram_addr_b(7) <= \<const0>\;
  bram_addr_b(6) <= \<const0>\;
  bram_addr_b(5) <= \<const0>\;
  bram_addr_b(4) <= \<const0>\;
  bram_addr_b(3) <= \<const0>\;
  bram_addr_b(2) <= \<const0>\;
  bram_addr_b(1) <= \<const0>\;
  bram_addr_b(0) <= \<const0>\;
  bram_clk_a <= \^s_axi_aclk\;
  bram_clk_b <= \<const0>\;
  bram_en_b <= \<const0>\;
  bram_rst_b <= \<const0>\;
  bram_we_b(3) <= \<const0>\;
  bram_we_b(2) <= \<const0>\;
  bram_we_b(1) <= \<const0>\;
  bram_we_b(0) <= \<const0>\;
  bram_wrdata_b(31) <= \<const0>\;
  bram_wrdata_b(30) <= \<const0>\;
  bram_wrdata_b(29) <= \<const0>\;
  bram_wrdata_b(28) <= \<const0>\;
  bram_wrdata_b(27) <= \<const0>\;
  bram_wrdata_b(26) <= \<const0>\;
  bram_wrdata_b(25) <= \<const0>\;
  bram_wrdata_b(24) <= \<const0>\;
  bram_wrdata_b(23) <= \<const0>\;
  bram_wrdata_b(22) <= \<const0>\;
  bram_wrdata_b(21) <= \<const0>\;
  bram_wrdata_b(20) <= \<const0>\;
  bram_wrdata_b(19) <= \<const0>\;
  bram_wrdata_b(18) <= \<const0>\;
  bram_wrdata_b(17) <= \<const0>\;
  bram_wrdata_b(16) <= \<const0>\;
  bram_wrdata_b(15) <= \<const0>\;
  bram_wrdata_b(14) <= \<const0>\;
  bram_wrdata_b(13) <= \<const0>\;
  bram_wrdata_b(12) <= \<const0>\;
  bram_wrdata_b(11) <= \<const0>\;
  bram_wrdata_b(10) <= \<const0>\;
  bram_wrdata_b(9) <= \<const0>\;
  bram_wrdata_b(8) <= \<const0>\;
  bram_wrdata_b(7) <= \<const0>\;
  bram_wrdata_b(6) <= \<const0>\;
  bram_wrdata_b(5) <= \<const0>\;
  bram_wrdata_b(4) <= \<const0>\;
  bram_wrdata_b(3) <= \<const0>\;
  bram_wrdata_b(2) <= \<const0>\;
  bram_wrdata_b(1) <= \<const0>\;
  bram_wrdata_b(0) <= \<const0>\;
  ecc_interrupt <= \<const0>\;
  ecc_ue <= \<const0>\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_ctrl_arready <= \<const0>\;
  s_axi_ctrl_awready <= \<const0>\;
  s_axi_ctrl_bresp(1) <= \<const0>\;
  s_axi_ctrl_bresp(0) <= \<const0>\;
  s_axi_ctrl_bvalid <= \<const0>\;
  s_axi_ctrl_rdata(31) <= \<const0>\;
  s_axi_ctrl_rdata(30) <= \<const0>\;
  s_axi_ctrl_rdata(29) <= \<const0>\;
  s_axi_ctrl_rdata(28) <= \<const0>\;
  s_axi_ctrl_rdata(27) <= \<const0>\;
  s_axi_ctrl_rdata(26) <= \<const0>\;
  s_axi_ctrl_rdata(25) <= \<const0>\;
  s_axi_ctrl_rdata(24) <= \<const0>\;
  s_axi_ctrl_rdata(23) <= \<const0>\;
  s_axi_ctrl_rdata(22) <= \<const0>\;
  s_axi_ctrl_rdata(21) <= \<const0>\;
  s_axi_ctrl_rdata(20) <= \<const0>\;
  s_axi_ctrl_rdata(19) <= \<const0>\;
  s_axi_ctrl_rdata(18) <= \<const0>\;
  s_axi_ctrl_rdata(17) <= \<const0>\;
  s_axi_ctrl_rdata(16) <= \<const0>\;
  s_axi_ctrl_rdata(15) <= \<const0>\;
  s_axi_ctrl_rdata(14) <= \<const0>\;
  s_axi_ctrl_rdata(13) <= \<const0>\;
  s_axi_ctrl_rdata(12) <= \<const0>\;
  s_axi_ctrl_rdata(11) <= \<const0>\;
  s_axi_ctrl_rdata(10) <= \<const0>\;
  s_axi_ctrl_rdata(9) <= \<const0>\;
  s_axi_ctrl_rdata(8) <= \<const0>\;
  s_axi_ctrl_rdata(7) <= \<const0>\;
  s_axi_ctrl_rdata(6) <= \<const0>\;
  s_axi_ctrl_rdata(5) <= \<const0>\;
  s_axi_ctrl_rdata(4) <= \<const0>\;
  s_axi_ctrl_rdata(3) <= \<const0>\;
  s_axi_ctrl_rdata(2) <= \<const0>\;
  s_axi_ctrl_rdata(1) <= \<const0>\;
  s_axi_ctrl_rdata(0) <= \<const0>\;
  s_axi_ctrl_rresp(1) <= \<const0>\;
  s_axi_ctrl_rresp(0) <= \<const0>\;
  s_axi_ctrl_rvalid <= \<const0>\;
  s_axi_ctrl_wready <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gext_inst.abcv4_0_ext_inst\: entity work.vcnnbd_axi_bram_ctrl_0_0_axi_bram_ctrl_top
     port map (
      Q(9 downto 0) => \^bram_addr_a\(11 downto 2),
      bram_en_a => bram_en_a,
      bram_rddata_a(31 downto 0) => bram_rddata_a(31 downto 0),
      bram_rst_a => bram_rst_a,
      bram_we_a(3 downto 0) => bram_we_a(3 downto 0),
      bram_wrdata_a(31 downto 0) => bram_wrdata_a(31 downto 0),
      s_axi_aclk => \^s_axi_aclk\,
      s_axi_araddr(9 downto 0) => s_axi_araddr(11 downto 2),
      s_axi_arburst(1 downto 0) => s_axi_arburst(1 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arid(0) => s_axi_arid(0),
      s_axi_arlen(7 downto 0) => s_axi_arlen(7 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(9 downto 0) => s_axi_awaddr(11 downto 2),
      s_axi_awburst(1 downto 0) => s_axi_awburst(1 downto 0),
      s_axi_awid(0) => s_axi_awid(0),
      s_axi_awlen(3 downto 0) => s_axi_awlen(3 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bid(0) => s_axi_bid(0),
      s_axi_bready => s_axi_bready,
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rid(0) => s_axi_rid(0),
      s_axi_rlast => s_axi_rlast,
      s_axi_rready => s_axi_rready,
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wlast => s_axi_wlast,
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity vcnnbd_axi_bram_ctrl_0_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC;
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC;
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    bram_rst_a : out STD_LOGIC;
    bram_clk_a : out STD_LOGIC;
    bram_en_a : out STD_LOGIC;
    bram_we_a : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bram_addr_a : out STD_LOGIC_VECTOR ( 11 downto 0 );
    bram_wrdata_a : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of vcnnbd_axi_bram_ctrl_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of vcnnbd_axi_bram_ctrl_0_0 : entity is "vcnnbd_axi_bram_ctrl_0_0,axi_bram_ctrl,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of vcnnbd_axi_bram_ctrl_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of vcnnbd_axi_bram_ctrl_0_0 : entity is "axi_bram_ctrl,Vivado 2017.2";
end vcnnbd_axi_bram_ctrl_0_0;

architecture STRUCTURE of vcnnbd_axi_bram_ctrl_0_0 is
  signal NLW_U0_bram_clk_b_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_bram_en_b_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_bram_rst_b_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_ecc_interrupt_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_ecc_ue_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_ctrl_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_ctrl_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_ctrl_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_ctrl_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_ctrl_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_bram_addr_b_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_U0_bram_we_b_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_bram_wrdata_b_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_ctrl_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_ctrl_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_s_axi_ctrl_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute C_BRAM_ADDR_WIDTH : integer;
  attribute C_BRAM_ADDR_WIDTH of U0 : label is 10;
  attribute C_BRAM_INST_MODE : string;
  attribute C_BRAM_INST_MODE of U0 : label is "EXTERNAL";
  attribute C_ECC : integer;
  attribute C_ECC of U0 : label is 0;
  attribute C_ECC_ONOFF_RESET_VALUE : integer;
  attribute C_ECC_ONOFF_RESET_VALUE of U0 : label is 0;
  attribute C_ECC_TYPE : integer;
  attribute C_ECC_TYPE of U0 : label is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "zynq";
  attribute C_FAULT_INJECT : integer;
  attribute C_FAULT_INJECT of U0 : label is 0;
  attribute C_MEMORY_DEPTH : integer;
  attribute C_MEMORY_DEPTH of U0 : label is 1024;
  attribute C_SELECT_XPM : integer;
  attribute C_SELECT_XPM of U0 : label is 0;
  attribute C_SINGLE_PORT_BRAM : integer;
  attribute C_SINGLE_PORT_BRAM of U0 : label is 1;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of U0 : label is 12;
  attribute C_S_AXI_CTRL_ADDR_WIDTH : integer;
  attribute C_S_AXI_CTRL_ADDR_WIDTH of U0 : label is 32;
  attribute C_S_AXI_CTRL_DATA_WIDTH : integer;
  attribute C_S_AXI_CTRL_DATA_WIDTH of U0 : label is 32;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of U0 : label is 32;
  attribute C_S_AXI_ID_WIDTH : integer;
  attribute C_S_AXI_ID_WIDTH of U0 : label is 1;
  attribute C_S_AXI_PROTOCOL : string;
  attribute C_S_AXI_PROTOCOL of U0 : label is "AXI4";
  attribute C_S_AXI_SUPPORTS_NARROW_BURST : integer;
  attribute C_S_AXI_SUPPORTS_NARROW_BURST of U0 : label is 0;
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
begin
U0: entity work.vcnnbd_axi_bram_ctrl_0_0_axi_bram_ctrl
     port map (
      bram_addr_a(11 downto 0) => bram_addr_a(11 downto 0),
      bram_addr_b(11 downto 0) => NLW_U0_bram_addr_b_UNCONNECTED(11 downto 0),
      bram_clk_a => bram_clk_a,
      bram_clk_b => NLW_U0_bram_clk_b_UNCONNECTED,
      bram_en_a => bram_en_a,
      bram_en_b => NLW_U0_bram_en_b_UNCONNECTED,
      bram_rddata_a(31 downto 0) => bram_rddata_a(31 downto 0),
      bram_rddata_b(31 downto 0) => B"00000000000000000000000000000000",
      bram_rst_a => bram_rst_a,
      bram_rst_b => NLW_U0_bram_rst_b_UNCONNECTED,
      bram_we_a(3 downto 0) => bram_we_a(3 downto 0),
      bram_we_b(3 downto 0) => NLW_U0_bram_we_b_UNCONNECTED(3 downto 0),
      bram_wrdata_a(31 downto 0) => bram_wrdata_a(31 downto 0),
      bram_wrdata_b(31 downto 0) => NLW_U0_bram_wrdata_b_UNCONNECTED(31 downto 0),
      ecc_interrupt => NLW_U0_ecc_interrupt_UNCONNECTED,
      ecc_ue => NLW_U0_ecc_ue_UNCONNECTED,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(11 downto 0) => s_axi_araddr(11 downto 0),
      s_axi_arburst(1 downto 0) => s_axi_arburst(1 downto 0),
      s_axi_arcache(3 downto 0) => s_axi_arcache(3 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arid(0) => '0',
      s_axi_arlen(7 downto 0) => s_axi_arlen(7 downto 0),
      s_axi_arlock => s_axi_arlock,
      s_axi_arprot(2 downto 0) => s_axi_arprot(2 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arsize(2 downto 0) => s_axi_arsize(2 downto 0),
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(11 downto 0) => s_axi_awaddr(11 downto 0),
      s_axi_awburst(1 downto 0) => s_axi_awburst(1 downto 0),
      s_axi_awcache(3 downto 0) => s_axi_awcache(3 downto 0),
      s_axi_awid(0) => '0',
      s_axi_awlen(7 downto 0) => s_axi_awlen(7 downto 0),
      s_axi_awlock => s_axi_awlock,
      s_axi_awprot(2 downto 0) => s_axi_awprot(2 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awsize(2 downto 0) => s_axi_awsize(2 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bid(0) => NLW_U0_s_axi_bid_UNCONNECTED(0),
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_ctrl_araddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_ctrl_arready => NLW_U0_s_axi_ctrl_arready_UNCONNECTED,
      s_axi_ctrl_arvalid => '0',
      s_axi_ctrl_awaddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_ctrl_awready => NLW_U0_s_axi_ctrl_awready_UNCONNECTED,
      s_axi_ctrl_awvalid => '0',
      s_axi_ctrl_bready => '0',
      s_axi_ctrl_bresp(1 downto 0) => NLW_U0_s_axi_ctrl_bresp_UNCONNECTED(1 downto 0),
      s_axi_ctrl_bvalid => NLW_U0_s_axi_ctrl_bvalid_UNCONNECTED,
      s_axi_ctrl_rdata(31 downto 0) => NLW_U0_s_axi_ctrl_rdata_UNCONNECTED(31 downto 0),
      s_axi_ctrl_rready => '0',
      s_axi_ctrl_rresp(1 downto 0) => NLW_U0_s_axi_ctrl_rresp_UNCONNECTED(1 downto 0),
      s_axi_ctrl_rvalid => NLW_U0_s_axi_ctrl_rvalid_UNCONNECTED,
      s_axi_ctrl_wdata(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_ctrl_wready => NLW_U0_s_axi_ctrl_wready_UNCONNECTED,
      s_axi_ctrl_wvalid => '0',
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rid(0) => NLW_U0_s_axi_rid_UNCONNECTED(0),
      s_axi_rlast => s_axi_rlast,
      s_axi_rready => s_axi_rready,
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wlast => s_axi_wlast,
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
