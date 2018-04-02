#connect_debug_port u_ila_0/probe8 [get_nets [list {vcnnbd_i/conv1l_top_0/inst/input_bram_rd_adddr[0]} {vcnnbd_i/conv1l_top_0/inst/input_bram_rd_adddr[1]} {vcnnbd_i/conv1l_top_0/inst/input_bram_rd_adddr[2]} {vcnnbd_i/conv1l_top_0/inst/input_bram_rd_adddr[3]} {vcnnbd_i/conv1l_top_0/inst/input_bram_rd_adddr[4]} {vcnnbd_i/conv1l_top_0/inst/input_bram_rd_adddr[5]} {vcnnbd_i/conv1l_top_0/inst/input_bram_rd_adddr[6]} {vcnnbd_i/conv1l_top_0/inst/input_bram_rd_adddr[7]} {vcnnbd_i/conv1l_top_0/inst/input_bram_rd_adddr[8]} {vcnnbd_i/conv1l_top_0/inst/input_bram_rd_adddr[9]} {vcnnbd_i/conv1l_top_0/inst/input_bram_rd_adddr[10]} {vcnnbd_i/conv1l_top_0/inst/input_bram_rd_adddr[11]} {vcnnbd_i/conv1l_top_0/inst/input_bram_rd_adddr[12]} {vcnnbd_i/conv1l_top_0/inst/input_bram_rd_adddr[13]} {vcnnbd_i/conv1l_top_0/inst/input_bram_rd_adddr[14]} {vcnnbd_i/conv1l_top_0/inst/input_bram_rd_adddr[15]}]]
#connect_debug_port u_ila_0/probe14 [get_nets [list {vcnnbd_i/conv1l_top_0/output_bram_wr_wen[0]}]]


connect_debug_port u_ila_0/probe21 [get_nets [list vcnnbd_i/conv1l_top_0_input_bram_rd_EN]]
connect_debug_port u_ila_0/probe22 [get_nets [list vcnnbd_i/conv1l_top_0_output_bram_wr_EN]]
connect_debug_port u_ila_0/probe24 [get_nets [list vcnnbd_i/conv1l_top_0_weight_bram_rd_EN]]

connect_debug_port u_ila_0/probe4 [get_nets [list {vcnnbd_i/conv1l_top_1/weight_bram_rd_adddr[0]} {vcnnbd_i/conv1l_top_1/weight_bram_rd_adddr[1]} {vcnnbd_i/conv1l_top_1/weight_bram_rd_adddr[2]} {vcnnbd_i/conv1l_top_1/weight_bram_rd_adddr[3]} {vcnnbd_i/conv1l_top_1/weight_bram_rd_adddr[4]} {vcnnbd_i/conv1l_top_1/weight_bram_rd_adddr[5]} {vcnnbd_i/conv1l_top_1/weight_bram_rd_adddr[6]} {vcnnbd_i/conv1l_top_1/weight_bram_rd_adddr[7]} {vcnnbd_i/conv1l_top_1/weight_bram_rd_adddr[8]} {vcnnbd_i/conv1l_top_1/weight_bram_rd_adddr[9]} {vcnnbd_i/conv1l_top_1/weight_bram_rd_adddr[10]} {vcnnbd_i/conv1l_top_1/weight_bram_rd_adddr[11]} {vcnnbd_i/conv1l_top_1/weight_bram_rd_adddr[12]} {vcnnbd_i/conv1l_top_1/weight_bram_rd_adddr[13]} {vcnnbd_i/conv1l_top_1/weight_bram_rd_adddr[14]} {vcnnbd_i/conv1l_top_1/weight_bram_rd_adddr[15]}]]
connect_debug_port dbg_hub/clk [get_nets u_ila_0_FCLK_CLK0]

connect_debug_port u_ila_0/probe40 [get_nets [list vcnnbd_i/conv1l_top_0/inst/mult_a_rdy]]
connect_debug_port u_ila_0/probe41 [get_nets [list vcnnbd_i/conv1l_top_0/inst/mult_b_rdy]]
connect_debug_port u_ila_0/probe42 [get_nets [list vcnnbd_i/conv1l_top_0/inst/mult_c_rdy]]
connect_debug_port u_ila_0/probe45 [get_nets [list vcnnbd_i/conv1l_top_1/output_bram_wr_en]]
connect_debug_port u_ila_0/probe46 [get_nets [list vcnnbd_i/conv1l_top_1/output_bram_wr_rst]]

connect_debug_port u_ila_0/probe79 [get_nets [list vcnnbd_i/conv1l_top_0/inst/n_conv_state1]]


connect_debug_port u_ila_0/probe11 [get_nets [list {vcnnbd_i/conv1l_top_0/inst/conv_iaddr1[0]} {vcnnbd_i/conv1l_top_0/inst/conv_iaddr1[1]} {vcnnbd_i/conv1l_top_0/inst/conv_iaddr1[2]} {vcnnbd_i/conv1l_top_0/inst/conv_iaddr1[3]} {vcnnbd_i/conv1l_top_0/inst/conv_iaddr1[4]} {vcnnbd_i/conv1l_top_0/inst/conv_iaddr1[5]}]]
connect_debug_port u_ila_0/probe12 [get_nets [list {vcnnbd_i/conv1l_top_0/inst/conv_iaddr0[0]} {vcnnbd_i/conv1l_top_0/inst/conv_iaddr0[1]} {vcnnbd_i/conv1l_top_0/inst/conv_iaddr0[2]} {vcnnbd_i/conv1l_top_0/inst/conv_iaddr0[3]} {vcnnbd_i/conv1l_top_0/inst/conv_iaddr0[4]} {vcnnbd_i/conv1l_top_0/inst/conv_iaddr0[5]} {vcnnbd_i/conv1l_top_0/inst/conv_iaddr0[6]}]]
connect_debug_port u_ila_0/probe52 [get_nets [list {vcnnbd_i/conv1l_top_0/inst/conv_waddr1[0]} {vcnnbd_i/conv1l_top_0/inst/conv_waddr1[1]} {vcnnbd_i/conv1l_top_0/inst/conv_waddr1[2]} {vcnnbd_i/conv1l_top_0/inst/conv_waddr1[3]} {vcnnbd_i/conv1l_top_0/inst/conv_waddr1[4]} {vcnnbd_i/conv1l_top_0/inst/conv_waddr1[5]} {vcnnbd_i/conv1l_top_0/inst/conv_waddr1[6]} {vcnnbd_i/conv1l_top_0/inst/conv_waddr1[7]} {vcnnbd_i/conv1l_top_0/inst/conv_waddr1[8]}]]
connect_debug_port u_ila_0/probe55 [get_nets [list {vcnnbd_i/conv1l_top_1/inst/conv_waddr1[0]} {vcnnbd_i/conv1l_top_1/inst/conv_waddr1[1]} {vcnnbd_i/conv1l_top_1/inst/conv_waddr1[2]} {vcnnbd_i/conv1l_top_1/inst/conv_waddr1[3]} {vcnnbd_i/conv1l_top_1/inst/conv_waddr1[4]} {vcnnbd_i/conv1l_top_1/inst/conv_waddr1[5]} {vcnnbd_i/conv1l_top_1/inst/conv_waddr1[6]} {vcnnbd_i/conv1l_top_1/inst/conv_waddr1[7]} {vcnnbd_i/conv1l_top_1/inst/conv_waddr1[8]} {vcnnbd_i/conv1l_top_1/inst/conv_waddr1[9]}]]
connect_debug_port u_ila_0/probe58 [get_nets [list {vcnnbd_i/conv1l_top_1/inst/conv_waddr2[0]} {vcnnbd_i/conv1l_top_1/inst/conv_waddr2[1]} {vcnnbd_i/conv1l_top_1/inst/conv_waddr2[2]} {vcnnbd_i/conv1l_top_1/inst/conv_waddr2[3]} {vcnnbd_i/conv1l_top_1/inst/conv_waddr2[4]} {vcnnbd_i/conv1l_top_1/inst/conv_waddr2[5]}]]
connect_debug_port u_ila_0/probe61 [get_nets [list {vcnnbd_i/conv1l_top_1/inst/conv_waddr0[0]} {vcnnbd_i/conv1l_top_1/inst/conv_waddr0[1]} {vcnnbd_i/conv1l_top_1/inst/conv_waddr0[2]} {vcnnbd_i/conv1l_top_1/inst/conv_waddr0[3]} {vcnnbd_i/conv1l_top_1/inst/conv_waddr0[4]} {vcnnbd_i/conv1l_top_1/inst/conv_waddr0[5]} {vcnnbd_i/conv1l_top_1/inst/conv_waddr0[6]} {vcnnbd_i/conv1l_top_1/inst/conv_waddr0[7]} {vcnnbd_i/conv1l_top_1/inst/conv_waddr0[8]} {vcnnbd_i/conv1l_top_1/inst/conv_waddr0[9]}]]


connect_debug_port u_ila_0/probe45 [get_nets [list {vcnnbd_i/weight_bram/bram_addr_a[2]} {vcnnbd_i/weight_bram/bram_addr_a[3]} {vcnnbd_i/weight_bram/bram_addr_a[4]} {vcnnbd_i/weight_bram/bram_addr_a[5]} {vcnnbd_i/weight_bram/bram_addr_a[6]} {vcnnbd_i/weight_bram/bram_addr_a[7]} {vcnnbd_i/weight_bram/bram_addr_a[8]} {vcnnbd_i/weight_bram/bram_addr_a[9]} {vcnnbd_i/weight_bram/bram_addr_a[10]} {vcnnbd_i/weight_bram/bram_addr_a[11]} {vcnnbd_i/weight_bram/bram_addr_a[12]}]]
connect_debug_port u_ila_0/probe46 [get_nets [list {vcnnbd_i/weight_bram/bram_we_a[0]} {vcnnbd_i/weight_bram/bram_we_a[1]} {vcnnbd_i/weight_bram/bram_we_a[2]} {vcnnbd_i/weight_bram/bram_we_a[3]}]]
connect_debug_port u_ila_0/probe47 [get_nets [list {vcnnbd_i/weight_bram/bram_wrdata_a[0]} {vcnnbd_i/weight_bram/bram_wrdata_a[1]} {vcnnbd_i/weight_bram/bram_wrdata_a[2]} {vcnnbd_i/weight_bram/bram_wrdata_a[3]} {vcnnbd_i/weight_bram/bram_wrdata_a[4]} {vcnnbd_i/weight_bram/bram_wrdata_a[5]} {vcnnbd_i/weight_bram/bram_wrdata_a[6]} {vcnnbd_i/weight_bram/bram_wrdata_a[7]} {vcnnbd_i/weight_bram/bram_wrdata_a[8]} {vcnnbd_i/weight_bram/bram_wrdata_a[9]} {vcnnbd_i/weight_bram/bram_wrdata_a[10]} {vcnnbd_i/weight_bram/bram_wrdata_a[11]} {vcnnbd_i/weight_bram/bram_wrdata_a[12]} {vcnnbd_i/weight_bram/bram_wrdata_a[13]} {vcnnbd_i/weight_bram/bram_wrdata_a[14]} {vcnnbd_i/weight_bram/bram_wrdata_a[15]} {vcnnbd_i/weight_bram/bram_wrdata_a[16]} {vcnnbd_i/weight_bram/bram_wrdata_a[17]} {vcnnbd_i/weight_bram/bram_wrdata_a[18]} {vcnnbd_i/weight_bram/bram_wrdata_a[19]} {vcnnbd_i/weight_bram/bram_wrdata_a[20]} {vcnnbd_i/weight_bram/bram_wrdata_a[21]} {vcnnbd_i/weight_bram/bram_wrdata_a[22]} {vcnnbd_i/weight_bram/bram_wrdata_a[23]} {vcnnbd_i/weight_bram/bram_wrdata_a[24]} {vcnnbd_i/weight_bram/bram_wrdata_a[25]} {vcnnbd_i/weight_bram/bram_wrdata_a[26]} {vcnnbd_i/weight_bram/bram_wrdata_a[27]} {vcnnbd_i/weight_bram/bram_wrdata_a[28]} {vcnnbd_i/weight_bram/bram_wrdata_a[29]} {vcnnbd_i/weight_bram/bram_wrdata_a[30]} {vcnnbd_i/weight_bram/bram_wrdata_a[31]}]]
connect_debug_port u_ila_0/probe54 [get_nets [list vcnnbd_i/weight_bram/bram_en_a]]
connect_debug_port u_ila_0/probe55 [get_nets [list vcnnbd_i/weight_bram/bram_rst_a]]
connect_debug_port u_ila_0/probe78 [get_nets [list vcnnbd_i/weight_bram/s_axi_aresetn]]
connect_debug_port u_ila_0/probe79 [get_nets [list vcnnbd_i/weight_bram/s_axi_arready]]
connect_debug_port u_ila_0/probe80 [get_nets [list vcnnbd_i/weight_bram/s_axi_arvalid]]
connect_debug_port u_ila_0/probe81 [get_nets [list vcnnbd_i/weight_bram/s_axi_awready]]
connect_debug_port u_ila_0/probe82 [get_nets [list vcnnbd_i/weight_bram/s_axi_awvalid]]
connect_debug_port u_ila_0/probe83 [get_nets [list vcnnbd_i/weight_bram/s_axi_bready]]
connect_debug_port u_ila_0/probe84 [get_nets [list vcnnbd_i/weight_bram/s_axi_bvalid]]
connect_debug_port u_ila_0/probe85 [get_nets [list vcnnbd_i/weight_bram/s_axi_rlast]]
connect_debug_port u_ila_0/probe86 [get_nets [list vcnnbd_i/weight_bram/s_axi_rready]]
connect_debug_port u_ila_0/probe87 [get_nets [list vcnnbd_i/weight_bram/s_axi_rvalid]]
connect_debug_port u_ila_0/probe88 [get_nets [list vcnnbd_i/weight_bram/s_axi_wlast]]
connect_debug_port u_ila_0/probe89 [get_nets [list vcnnbd_i/weight_bram/s_axi_wready]]
connect_debug_port u_ila_0/probe90 [get_nets [list vcnnbd_i/weight_bram/s_axi_wvalid]]


set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets clk]
