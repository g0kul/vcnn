`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/09/2018 03:29:37 PM
// Design Name: 
// Module Name: conv1l_top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

// function called clogb2 that returns an integer which has the
// value of the ceiling of the log base 2.
// function integer clogb2 (input integer bd);
// integer bit_depth;
// begin
//     bit_depth = bd;
//     for(clogb2=0; bit_depth>0; clogb2=clogb2+1)
//         bit_depth = bit_depth >> 1;
//  end
// endfunction

module conv1l_top #
(
parameter   INPUT_ADDR_WIDTH = 12,
            INPUT_DATA_WIDTH = 16,
            INPUT_ROWS_COUNT = 32,
            INPUT_COLS_COUNT = 32,
            INPUT_CHNLS_COUNT = 3,
            
            WEIGHT_ADDR_WIDTH = 9,
            WEIGHT_DATA_WIDTH = 16,
            WEIGHT_ROWS_COUNT = 3,
            WEIGHT_COLS_COUNT = 3,
            WEIGHT_CHNLS_COUNT = 3,
            WEIGHT_FLTRS_COUNT = 16,
            
            OUTPUT_ADDR_WIDTH = 14,
            OUTPUT_DATA_WIDTH = 16,
            OUTPUT_ROWS_COUNT = 32,
            OUTPUT_COLS_COUNT = 32,
            OUTPUT_CHNLS_COUNT = 16,

            CONV_IROWS_WIDTH = 6,       //5b+1 for inc out of bound
            CONV_ICOLS_WIDTH = 6,       //5b+1
            CONV_ICHNLS_WIDTH = 3,      //2b+1
            CONV_WROWS_WIDTH = 3,       //2b+1
            CONV_WCOLS_WIDTH = 3,       //2b+1
            CONV_WFLTRS_WIDTH = 5       //4b+1

)
(
    input clk,
    input rstn,
    
    input wire ap_start,
    output wire ap_ready,
    output wire ap_done,
       
    
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 input_bram_rd CLK" *)
    output wire input_bram_rd_clk,
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 input_bram_rd RST" *)
    output wire input_bram_rd_rst,
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 input_bram_rd EN" *)
    output reg input_bram_rd_en,
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 input_bram_rd WE" *)
    output wire input_bram_rd_wen,
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 input_bram_rd ADDR" *)
    output reg [INPUT_ADDR_WIDTH-1 : 0] input_bram_rd_adddr,
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 input_bram_rd DIN" *)
    output wire [INPUT_DATA_WIDTH-1 : 0] input_bram_rd_dout,                     //TODO: check if interface is correctly connected
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 input_bram_rd DOUT" *)
    input wire [INPUT_DATA_WIDTH-1 : 0] input_bram_rd_din,                      //TODO: check if interface is correctly connected
    
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 weight_bram_rd CLK" *)
    output wire weight_bram_rd_clk,
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 weight_bram_rd RST" *)
    output wire weight_bram_rd_rst,
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 weight_bram_rd EN" *)
    output reg weight_bram_rd_en,
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 weight_bram_rd WE" *)
    output wire weight_bram_rd_wen,
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 weight_bram_rd ADDR" *)
    output reg [WEIGHT_ADDR_WIDTH-1 : 0] weight_bram_rd_adddr,
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 weight_bram_rd DIN" *)
    output wire [WEIGHT_DATA_WIDTH-1 : 0] weight_bram_rd_dout,
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 weight_bram_rd DOUT" *)
    input wire [WEIGHT_DATA_WIDTH-1 : 0] weight_bram_rd_din,
    
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 output_bram_wr CLK" *)
    output wire output_bram_wr_clk,
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 output_bram_wr RST" *)
    output wire output_bram_wr_rst,
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 output_bram_wr EN" *)
    output wire output_bram_wr_en,
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 output_bram_wr WE" *)
    output reg output_bram_wr_wen,
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 output_bram_wr ADDR" *)
    output reg [OUTPUT_ADDR_WIDTH-1 : 0] output_bram_wr_addr,
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 output_bram_wr DIN" *)
    output reg [OUTPUT_DATA_WIDTH-1 : 0] output_bram_wr_dout,
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 output_bram_wr DOUT" *)
    input wire [OUTPUT_DATA_WIDTH-1 : 0] output_bram_wr_in

);

    //--------------------------------------//
    
    //Global reset
    wire rst;
    assign rst = !rstn;
    
    //Mult Add
    reg [INPUT_DATA_WIDTH-1:0]  mult_a;
    reg [WEIGHT_DATA_WIDTH-1:0] mult_b;
    wire [OUTPUT_DATA_WIDTH-1:0] add_c;
    wire [OUTPUT_DATA_WIDTH-1:0] mac_o;
    reg [OUTPUT_DATA_WIDTH-1:0] mac_o_last;
    reg [OUTPUT_DATA_WIDTH-1:0] mac_o_last_relu;

    wire multadd_ce;
    reg multadd_en;
    //reg [3:0] multadd_en_r;
    wire multadd_op_valid;
    
    //AXI Slave Status Handshakes
    reg ap_start_r, ap_start_rr;
    reg ap_done_r, ap_ready_r;
    reg n_ap_done;
    wire ap_start_pulse;

    reg input_read_req, n_input_read_req;
    reg [1:0] input_read_req_r;
    reg [1:0] conv_ip_zeros_r;
    reg weight_read_req;
    wire input_read_valid, conv_ip_zeros_valid;


    // reg multadd_op_valid_r;
    // reg [OUTPUT_DATA_WIDTH-1:0] mac_o_r;

    //AXIS for FP Op
    wire mult_a_rdy, mult_b_rdy, mult_c_rdy, mac_rdy;
        
    //--------------------------------------//
    //Conv FSM

    reg [3:0] conv_state, n_conv_state;

    (* mark_debug = "true" *) reg [CONV_IROWS_WIDTH-1:0] conv_irows;
    (* mark_debug = "true" *) reg [CONV_ICOLS_WIDTH-1:0] conv_icols;
    (* mark_debug = "true" *) reg [CONV_ICHNLS_WIDTH-1:0] conv_ichnls;
    (* mark_debug = "true" *) reg [CONV_WROWS_WIDTH-1:0] conv_wrows;
    (* mark_debug = "true" *) reg [CONV_WCOLS_WIDTH-1:0] conv_wcols;
    (* mark_debug = "true" *) reg [CONV_WFLTRS_WIDTH-1:0] conv_wfltrs;

    reg [CONV_IROWS_WIDTH-1:0] n_conv_irows;
    reg [CONV_ICOLS_WIDTH-1:0] n_conv_icols;
    reg [CONV_ICHNLS_WIDTH-1:0] n_conv_ichnls;
    reg [CONV_WROWS_WIDTH-1:0] n_conv_wrows;
    reg [CONV_WCOLS_WIDTH-1:0] n_conv_wcols;
    reg [CONV_WFLTRS_WIDTH-1:0] n_conv_wfltrs;

    (* mark_debug = "true" *) reg [CONV_IROWS_WIDTH-1:0] current_row;
    (* mark_debug = "true" *) reg [CONV_ICOLS_WIDTH-1:0] current_col;
    reg [CONV_IROWS_WIDTH-1:0] n_current_row;
    reg [CONV_ICOLS_WIDTH-1:0] n_current_col;

    reg n_conv_ip_zeros, conv_ip_zeros;
    (* mark_debug = "true" *) wire conv_zero_pad_en;
    (* mark_debug = "true" *) wire [INPUT_ADDR_WIDTH-1:0] conv_iaddr;
    (* mark_debug = "true" *) wire [WEIGHT_ADDR_WIDTH-1:0] conv_waddr;

    reg [INPUT_ADDR_WIDTH-1:0] n_input_bram_rd_adddr;
    reg [WEIGHT_ADDR_WIDTH-1:0] n_weight_bram_rd_adddr;

    reg [OUTPUT_DATA_WIDTH-1:0]     n_output_bram_wr_dout;
    reg [OUTPUT_ADDR_WIDTH-1 : 0]   n_output_bram_wr_addr;
    reg                             n_output_bram_wr_wen;

    (* mark_debug = "true" *) wire [CONV_IROWS_WIDTH-1:0] sum_row_addr;
    (* mark_debug = "true" *) wire [CONV_ICOLS_WIDTH-1:0] sum_col_addr;
    (* mark_debug = "true" *) wire [CONV_IROWS_WIDTH-1:0] calc_row_addr;
    (* mark_debug = "true" *) wire [CONV_ICOLS_WIDTH-1:0] calc_col_addr;

    (* mark_debug = "true" *) wire row_addr_underflow;
    (* mark_debug = "true" *) wire col_addr_underflow;
    (* mark_debug = "true" *) wire row_addr_overflow;
    (* mark_debug = "true" *) wire col_addr_overflow;

    //--------------------------------------//
    //Parameter

    localparam
    CONV_IDLE               = 4'h0,
    CONV_WFEATURE           = 4'h1,
    CONV_IROW               = 4'h2,
    CONV_ICOL               = 4'h3,
    CONV_WROW               = 4'h4,
    CONV_WCOL               = 4'h5,
    CONV_IDEPTH             = 4'h6;

    //--------------------------------------//
    //AXI Slave Handling Logic
    
    //Start
    always @(posedge clk)
    begin
        ap_start_r <= ap_start;
        ap_start_rr <= ap_start_r;
    end
    assign ap_start_pulse = ((ap_start_r) & (~ap_start_rr));
    
    //Ready
    always @(posedge clk or posedge rst)
    begin
        if(rst)
        begin
            ap_ready_r <= 1'b1;
        end
        else if(ap_start_pulse)
        begin
            ap_ready_r <= 1'b0;
        end
        else if(ap_done)
        begin
            ap_ready_r <= 1'b1;
        end
        else
        begin
            ap_ready_r <= ap_ready_r;
        end
    end
    assign ap_ready = ap_ready_r;
    
    //Done
    /*
    always @(posedge clk or posedge rst)
    begin
        if(rst)
        begin
            ap_done_r <= 1'b0;
        end
        else if(ap_running_r) //TODO: change this logic idiot
        begin
            ap_done_r <= 1'b1;
        end
        else
        begin
            ap_done_r <= ap_done_r;
        end
    end
    assign ap_done = ap_done_r;
    */
    
    //--------------------------------------//
    //* Conv FSM *

    always @(*)
    begin
        n_conv_state = conv_state;

        n_conv_irows = conv_irows;
        n_conv_icols = conv_icols;
        n_conv_ichnls = conv_ichnls;
        n_conv_wrows = conv_wrows;
        n_conv_wcols = conv_wcols;
        n_conv_wfltrs = conv_wfltrs;

        n_current_row = current_row;        //for handling temp weight movement
        n_current_col = current_col;        //for handling temp weight movement
        
        n_input_bram_rd_adddr = input_bram_rd_adddr;
        n_weight_bram_rd_adddr = weight_bram_rd_adddr;

        n_ap_done = ap_done_r;  //making it sticky, will clear upone next start pulse
        n_input_read_req = 1'b0;
        n_conv_ip_zeros = 1'b0;               //for handling zero pad

        n_output_bram_wr_wen = 1'b0;
        n_output_bram_wr_dout = {OUTPUT_DATA_WIDTH{1'b0}};
        n_output_bram_wr_addr = output_bram_wr_addr;
        

        case (conv_state)
            CONV_IDLE:  //Idle
            begin
                n_conv_wfltrs = {CONV_WFLTRS_WIDTH{1'b0}};
                n_conv_irows = {CONV_IROWS_WIDTH{1'b0}};
                n_conv_icols = {CONV_ICOLS_WIDTH{1'b0}};
                n_conv_wrows = {CONV_WROWS_WIDTH{1'b0}};
                n_conv_wcols = {CONV_WCOLS_WIDTH{1'b0}};
                n_conv_ichnls = {CONV_ICHNLS_WIDTH{1'b0}};

                n_current_row = {CONV_IROWS_WIDTH{1'b0}};
                n_current_col = {CONV_ICOLS_WIDTH{1'b0}};

                n_input_bram_rd_adddr = {INPUT_ADDR_WIDTH{1'b1}};   //Reset to last addr
                n_weight_bram_rd_adddr = {WEIGHT_ADDR_WIDTH{1'b1}};   //Reset to last addr
                n_output_bram_wr_addr = {OUTPUT_ADDR_WIDTH{1'b1}};   //Reset to last addr
                
                if (ap_start_pulse)
                begin
                    n_ap_done = 1'b0;
                    n_conv_state = CONV_WFEATURE;    //TODO: Zero Padding handle
                end
            end

            CONV_WFEATURE:
            begin
                if (conv_wfltrs < (WEIGHT_FLTRS_COUNT))   //not count-1 as comb path
                begin
                    n_conv_irows = {CONV_IROWS_WIDTH{1'b0}};
                    n_conv_state = CONV_IROW;
                end
                else    //All filters are done
                begin
                    n_ap_done = 1'b1;
                    n_conv_state = CONV_IDLE;
                end
            end

            CONV_IROW:
            begin
                if (conv_irows < (INPUT_ROWS_COUNT))   //not count-1 as comb path
                begin
                    n_conv_icols = {CONV_ICOLS_WIDTH{1'b0}};
                    //n_start_row  = (row_addr_underflow) ? (conv_irows - (WEIGHT_ROWS_COUNT/2)) : {CONV_IROWS_WIDTH{1'b0}}; //zero pad if -ve; //startx = x-size/2;
                    n_conv_state = CONV_ICOL;
                end
                else    //All rows are done, write back the result for this feature
                begin
                    //TODO: Set the input is no longer needed in the BRAM
                    n_output_bram_wr_wen = 1'b1;
                    n_output_bram_wr_addr = output_bram_wr_addr + {{(OUTPUT_ADDR_WIDTH-1){1'b0}}, {1'b1}};   //TODO: output address done check
                    n_output_bram_wr_dout = mac_o_last_relu;

                    n_conv_wfltrs = conv_wfltrs + {{(CONV_WFLTRS_WIDTH-1){1'b0}},1'b1}; //inc to next filter
                    
                    n_conv_state = CONV_WFEATURE;
                end
            end

            CONV_ICOL:
            begin
                if (conv_icols < (INPUT_COLS_COUNT))   //not count-1 as comb path
                begin
                    n_conv_wrows = {CONV_WROWS_WIDTH{1'b0}};
                    //n_start_col  = (col_addr_underflow) ? (conv_icols - (WEIGHT_COLS_COUNT/2)) : {CONV_ICOLS_WIDTH{1'b0}};  //zero pad if -ve; //starty = y-size/2;
                    n_conv_state = CONV_WROW;
                end
                else    //All cols are done
                begin
                    n_conv_irows = conv_irows + {{(CONV_IROWS_WIDTH-1){1'b0}},1'b1}; //inc to next
                    n_conv_state = CONV_IROW;
                end
            end

            CONV_WROW:
            begin
                if (conv_wrows < (WEIGHT_ROWS_COUNT))   //not count-1 as comb path
                begin
                    n_conv_wcols = {CONV_WCOLS_WIDTH{1'b0}};
                    n_current_row = (row_addr_overflow | row_addr_underflow) ? {CONV_IROWS_WIDTH{1'b0}} : calc_row_addr;     //x_pos = x + x_iterator - size/2;
                    n_conv_state = CONV_WCOL;
                end
                else    //All wrows are done
                begin
                    n_conv_icols = conv_icols + {{(CONV_ICOLS_WIDTH-1){1'b0}},1'b1}; //inc to next
                    n_conv_state = CONV_ICOL;
                end
            end

            CONV_WCOL:
            begin
                if (conv_wcols < (WEIGHT_COLS_COUNT))   //not count-1 as comb path
                begin
                    n_conv_ichnls = {CONV_ICHNLS_WIDTH{1'b0}};
                    n_current_col = (col_addr_overflow | col_addr_underflow) ? {CONV_ICOLS_WIDTH{1'b0}} : calc_col_addr;     //y_pos = starty + y_iterator;
                    n_conv_state = CONV_IDEPTH;
                end
                else    //All wrows are done
                begin
                    n_conv_wrows = conv_wrows + {{(CONV_WROWS_WIDTH-1){1'b0}},1'b1}; //inc to next
                    n_conv_state = CONV_WROW;
                end
            end

            CONV_IDEPTH:
            begin
                if (conv_ichnls < (INPUT_CHNLS_COUNT))   //less than as it starts with zero
                begin
                    //TODO: Perform FP Mult
                    n_input_read_req = 1'b1;
                    //Next
                    n_conv_ichnls = conv_ichnls + {{(CONV_ICHNLS_WIDTH-1){1'b0}},1'b1}; //pre-inc, expects FF at start
                    n_conv_state = CONV_IDEPTH;

                    //(x_pos < 0 || x_pos == conv->input_width || y_pos < 0 || y_pos == conv->input_height)
                    if (conv_zero_pad_en == 1'b1)
                    begin
                        n_conv_ip_zeros = 1'b1;   //send zeros instead of data to FP Mult
                        //n_input_bram_rd_adddr = input_bram_rd_adddr; //not needed due to start condt
                        //n_weight_bram_rd_adddr = weight_bram_rd_adddr; //not needed due to start condt
                    end
                    else
                    begin
                        n_input_bram_rd_adddr = conv_iaddr;     //depends on registered values only
                        n_weight_bram_rd_adddr = conv_waddr;    //depends on registered values only
                    end
                end
                else    //All idepths are done
                begin
                    n_conv_wcols = conv_wcols + {{(CONV_WCOLS_WIDTH-1){1'b0}},1'b1}; //inc to next
                    n_conv_state = CONV_WCOL;
                end
            end

        endcase
    end

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            conv_state <= CONV_IDLE;
            conv_irows <= {CONV_IROWS_WIDTH{1'b0}};
            conv_icols <= {CONV_ICOLS_WIDTH{1'b0}};
            conv_ichnls <= {CONV_ICHNLS_WIDTH{1'b0}};
            conv_wrows <= {CONV_WROWS_WIDTH{1'b0}};
            conv_wcols <= {CONV_WCOLS_WIDTH{1'b0}};
            conv_wfltrs <= {CONV_WFLTRS_WIDTH{1'b0}};

            current_row <= {CONV_IROWS_WIDTH{1'b0}};
            current_col <= {CONV_ICOLS_WIDTH{1'b0}};
        end
        else
        begin
            conv_state <= n_conv_state;
            conv_irows <= n_conv_irows;
            conv_icols <= n_conv_icols;
            conv_ichnls <= n_conv_ichnls;
            conv_wrows <= n_conv_wrows;
            conv_wcols <= n_conv_wcols;
            conv_wfltrs <= n_conv_wfltrs;

            current_row <= n_current_row;
            current_col <= n_current_col;
        end
    end

    //Zero Pad row col check

    assign sum_row_addr  = conv_irows + conv_wrows;
    assign sum_col_addr = conv_icols + conv_wcols;
    assign calc_row_addr = (sum_row_addr - (WEIGHT_ROWS_COUNT/2));
    assign calc_col_addr = (sum_col_addr - (WEIGHT_COLS_COUNT/2));

    assign row_addr_underflow = (sum_row_addr < (WEIGHT_ROWS_COUNT/2)) ? 1'b1 : 1'b0;
    assign col_addr_underflow = (sum_col_addr < (WEIGHT_COLS_COUNT/2)) ? 1'b1 : 1'b0;
    assign row_addr_overflow  = (sum_row_addr < (INPUT_ROWS_COUNT+(WEIGHT_ROWS_COUNT/2))) ? 1'b0 : 1'b1;
    assign col_addr_overflow  = (sum_col_addr < (INPUT_COLS_COUNT+(WEIGHT_COLS_COUNT/2))) ? 1'b0 : 1'b1;

    //Zero pad en
    assign conv_zero_pad_en = ((row_addr_underflow) | (col_addr_underflow) | (row_addr_overflow) | (col_addr_overflow));
    //get_image_address = depth + y*max_depth + max_column*max_depth*x;
    assign conv_iaddr = ((conv_ichnls) + (current_col*INPUT_CHNLS_COUNT) + (current_row*INPUT_CHNLS_COUNT*INPUT_COLS_COUNT));
    //get_filter_address = filter_num + depth*max_filter_num + max_filter_num*max_depth*x + max_filter_num*max_column*max_depth*y;
    assign conv_waddr = ((conv_ichnls) + (conv_wcols*WEIGHT_CHNLS_COUNT) + (conv_wrows*WEIGHT_CHNLS_COUNT*WEIGHT_COLS_COUNT) + (conv_wfltrs*WEIGHT_CHNLS_COUNT*WEIGHT_COLS_COUNT*WEIGHT_ROWS_COUNT));

    //--------------------------------------//
    //* BRAM Handling *
    
    //Address Input BRAM State Machine
    // always @(*)
    // begin
    //     n_ap_done = ap_done_r;  //making it sticky, will clear upone next start pulse
    //     n_input_read_req = 1'b0;
    //     n_input_bram_rd_adddr = input_bram_rd_adddr;

    //     if(ap_running_r)
    //     begin
    //        if(input_bram_rd_adddr < (INPUT_ROWS_COUNT*INPUT_COLS_COUNT*INPUT_CHNLS_COUNT-1))  //Size of flatten input size) 
    //        begin
    //             n_input_read_req = 1'b1;
    //             n_input_bram_rd_adddr = input_bram_rd_adddr + {{(INPUT_ADDR_WIDTH-1){1'b0}},1'b1};    //Inc by 1
    //        end
    //        else     //Done with all input. TODO: Assert done based on all the filter map
    //        begin
    //             n_input_read_req = 1'b0;
    //             n_ap_done = 1'b1;
    //             n_input_bram_rd_adddr = {INPUT_ADDR_WIDTH{1'b1}};   //Reset to last addr
    //        end
    //     end
    //     else
    //     begin
    //         n_input_bram_rd_adddr = {INPUT_ADDR_WIDTH{1'b1}};   //Reset to last addr, when not running
    //     end
    // end

    //Address input bram
    always @(posedge clk or posedge rst)
    begin
        if(rst)
        begin
            ap_done_r <= 1'b0;
            input_read_req <= 1'b0;
            conv_ip_zeros <= 1'b0;
            input_bram_rd_adddr <= {INPUT_ADDR_WIDTH{1'b1}}; //Resetting the addrs to last addr, so that inc by 1 will come to 0th addr
            weight_read_req <= 1'b0;
            weight_bram_rd_adddr <= {WEIGHT_ADDR_WIDTH{1'b1}}; //Resetting the addrs to last addr, so that inc by 1 will come to 0th addr

            output_bram_wr_wen <= 1'b0;
            output_bram_wr_addr <= {OUTPUT_ADDR_WIDTH{1'b1}};   //Reset to last addr so that inc will point to 0th addr
            output_bram_wr_dout <= {OUTPUT_DATA_WIDTH{1'b0}};
        end
        // else if(ap_start_pulse)     //Reset on start pulse
        // begin
        //     ap_done_r <= 1'b0;
        //     input_read_req <= 1'b1;                         //Start reading from BRAM from here on
        //     conv_ip_zeros <= 1'b0;
        //     input_bram_rd_adddr <= {INPUT_ADDR_WIDTH{1'b0}};
        // end
        else
        begin
            ap_done_r <= n_ap_done;
            conv_ip_zeros <= n_conv_ip_zeros;
            input_read_req <= n_input_read_req;
            input_bram_rd_adddr <= n_input_bram_rd_adddr;
            weight_read_req <= n_input_read_req;             //TODO: Change the logic idiot
            weight_bram_rd_adddr <= n_weight_bram_rd_adddr;

            output_bram_wr_wen <= n_output_bram_wr_wen;
            output_bram_wr_addr <= n_output_bram_wr_addr;   //Reset to last addr so that inc will point to 0th addr
            output_bram_wr_dout <= n_output_bram_wr_dout;
        end
    end

    //Address weight bram 
    // always @(posedge clk or posedge rst)
    // begin
    //     if(rst)
    //     begin
    //         weight_read_req <= 1'b0;
    //         weight_bram_rd_adddr <= {WEIGHT_ADDR_WIDTH{1'b1}}; //Resetting the addrs to last addr, so that inc by 1 will come to 0th addr
    //     end
    //     else if(ap_start_pulse)     //Reset on start pulse
    //     begin
    //         weight_read_req <= 1'b1;                            //Start reading from BRAM from here on
    //         weight_bram_rd_adddr <= {WEIGHT_ADDR_WIDTH{1'b0}};
    //     end
    //     else
    //     begin
    //         weight_read_req <= n_input_read_req;             //TODO: Change the logic idiot
    //         weight_bram_rd_adddr <= n_weight_bram_rd_adddr;
    //     end
    // end

    //Enable BRAM - not used
    always @(posedge clk or posedge rst)
    begin
        if(rst)
        begin
            input_bram_rd_en <= 1'b0;
            weight_bram_rd_en <= 1'b0;
        end
        else
        begin
            input_bram_rd_en <='b1; 
            weight_bram_rd_en <= 1'b1;
        end
    end

    //Assuming data from BRAM is valid on one clock after address set
    always @(posedge clk)
    begin
        input_read_req_r <= {input_read_req_r[0], input_read_req};
        conv_ip_zeros_r  <= {conv_ip_zeros_r[0], conv_ip_zeros};
    end
    assign input_read_valid = input_read_req_r[1];
    assign conv_ip_zeros_valid = conv_ip_zeros_r[1];
    
    //To multadd - mult
    always @(posedge clk or posedge rst)
    begin
        if(rst)
        begin
            multadd_en <= 1'b0;
            mult_a  <= {INPUT_DATA_WIDTH{1'b0}};
            mult_b  <= {WEIGHT_DATA_WIDTH{1'b0}};
        end
        else if(conv_ip_zeros_valid & mac_rdy)  //sending zeros for zero pad. TODO: change it to save power
        begin
            multadd_en <= 1'b1;
            mult_a  <= {INPUT_DATA_WIDTH{1'b0}};
            mult_b  <= {WEIGHT_DATA_WIDTH{1'b0}};
        end
        else if(input_read_valid & mac_rdy)
        begin
            multadd_en <= 1'b1;
            mult_a <= input_bram_rd_din;
            mult_b <= weight_bram_rd_din;
        end
        else    //TODO: handle bias FP add before this!!
        begin
            multadd_en <= 1'b0;
            mult_a  <= {INPUT_DATA_WIDTH{1'b0}};
            mult_b  <= {WEIGHT_DATA_WIDTH{1'b0}};
        end
    end

    //Delay for DSP to complete
    // always @(posedge clk or posedge rst)
    // begin
    //     if (rst)
    //     begin
    //         multadd_en_r <= 4'd0;
    //     end
    //     else
    //     begin
    //         multadd_en_r <= {multadd_en_r[2:0], multadd_en};
    //     end
    // end
    //Assuming 3 clk for DSP MAC operation
    //assign multadd_ce = (multadd_en_r[2] | ap_running_r);   //TODO: validate ap_running_r will be
                                                            //high for entire period before multadd_en_r[2] starts
    //assign multadd_op_valid = multadd_en_r[2];

    assign output_bram_wr_en = 1'b1; //not used; //(multadd_op_valid);

    //To multadd - accumulation
    always @(posedge clk or posedge rst)
    begin
        if(rst)
        begin
            mac_o_last   <= {OUTPUT_DATA_WIDTH{1'b0}};
        end
        else if(conv_state == CONV_WFEATURE)    //reset last output for every change of feature
        begin
            mac_o_last   <= {OUTPUT_DATA_WIDTH{1'b0}}; 
        end
        else if (multadd_op_valid)
        begin
            mac_o_last <= mac_o;
        end
        else
        begin
            mac_o_last <= mac_o_last;
        end
    end

    assign add_c = (multadd_op_valid) ? (mac_o) : (mac_o_last); //FPOp has 1 clk latency

    //ReLU
    always @(posedge clk or posedge rst) begin
        if (rst)
        begin
            mac_o_last_relu <= {OUTPUT_DATA_WIDTH{1'b0}};
        end
        else
        begin
            mac_o_last_relu <= (mac_o_last[OUTPUT_DATA_WIDTH-1] == 1'b1) ? ({OUTPUT_DATA_WIDTH{1'b0}}) : (mac_o_last);    //ReLU - check sign bit, if -ve set to zero
        end
    end

    //Enable output BRAM for entire operation //TODO: assign bram_wr_en to multadd_ce directly
    // always @(posedge clk or posedge rst)
    // begin
    //     if(rst)
    //     begin
    //         output_bram_wr_en <= 1'b0;
    //     end
    //     else if(multadd_ce)
    //     begin
    //         output_bram_wr_en <= 1'b1;
    //     end
    //     else
    //     begin
    //         output_bram_wr_en <= 1'b0;
    //     end
    // end

    //registering
    // always @(posedge clk or posedge rst) begin
    //     if (rst)
    //     begin
    //         mac_o_r <= {OUTPUT_DATA_WIDTH{1'b0}};
    //         multadd_op_valid_r <= 1'b0;
    //     end
    //     else
    //     begin
    //         mac_o_r <= mac_o;
    //         multadd_op_valid_r <= multadd_op_valid;
    //     end
    // end

    //writing back the MAC data
    // always @(posedge clk or posedge rst) begin
    //     if (rst)
    //     begin
    //         output_bram_wr_wen <= 1'b0;
    //         output_bram_wr_addr <= {OUTPUT_ADDR_WIDTH{1'b1}};   //Reset to last addr so that inc will point to 0th addr
    //         output_bram_wr_dout <= {OUTPUT_DATA_WIDTH{1'b0}};
    //     end
    //     else if(multadd_op_valid_r)
    //     begin
    //         output_bram_wr_wen <= 1'b1;
    //         output_bram_wr_addr <= output_bram_wr_addr + {{(OUTPUT_ADDR_WIDTH-1){1'b0}}, {1'b1}};   //TODO: output address done check
    //         output_bram_wr_dout <= (mac_o_r[OUTPUT_DATA_WIDTH-1] == 1'b1) ? ({OUTPUT_DATA_WIDTH{1'b0}}) : (mac_o_r);    //ReLU - check sign bit, if -ve set to zero
    //     end
    //     else if(ap_start_pulse)
    //     begin
    //         output_bram_wr_wen <= 1'b0;
    //         output_bram_wr_addr <= {OUTPUT_ADDR_WIDTH{1'b1}};   //Reset to last addr so that inc will point to 0th addr
    //         output_bram_wr_dout <= {OUTPUT_DATA_WIDTH{1'b0}};
    //     end
    //     else
    //     begin
    //         output_bram_wr_wen <= 1'b0;
    //         output_bram_wr_addr <= output_bram_wr_addr;
    //         output_bram_wr_dout <= {OUTPUT_DATA_WIDTH{1'b0}};
    //     end
    // end
    
    
    //--------------------------------------//
        
    //** Multiply Add **
    

    // xbip_multadd_0 multadd_l1_inst0 (
    //   .CLK(clk),            // input wire CLK
    //   .CE(multadd_ce),              // input wire CE
    //   .SCLR(rst),          // input wire SCLR
    //   .A(mult_a),                // input wire [15 : 0] A
    //   .B(mult_b),                // input wire [15 : 0] B
    //   .C(add_c),                // input wire [15 : 0] C
    //   .SUBTRACT(1'b0),  // input wire SUBTRACT
    //   .P(mac_o),                // output wire [15 : 0] P
    //   .PCOUT()        // output wire [47 : 0] PCOUT
    // );

    fp_mult_add_16bit macinst0 (
      .aclk                 (clk),                          // input wire aclk
      .s_axis_a_tvalid      (multadd_en),              // input wire s_axis_a_tvalid
      .s_axis_a_tready      (mult_a_rdy),              // output wire s_axis_a_tready
      .s_axis_a_tdata       (mult_a),                       // input wire [15 : 0] s_axis_a_tdata
      .s_axis_b_tvalid      (multadd_en),              // input wire s_axis_b_tvalid
      .s_axis_b_tready      (mult_b_rdy),              // output wire s_axis_b_tready
      .s_axis_b_tdata       (mult_b),                       // input wire [15 : 0] s_axis_b_tdata
      .s_axis_c_tvalid      (multadd_en),              // input wire s_axis_c_tvalid
      .s_axis_c_tready      (mult_c_rdy),              // output wire s_axis_c_tready
      .s_axis_c_tdata       (add_c),                        // input wire [15 : 0] s_axis_c_tdata
      .m_axis_result_tvalid (multadd_op_valid),         // output wire m_axis_result_tvalid
      .m_axis_result_tdata  (mac_o),            // output wire [15 : 0] m_axis_result_tdata
      .m_axis_result_tuser  ()                  // output wire [1 : 0] m_axis_result_tuser
    );
    
    //--------------------------------------//
    
    //assigns
    
    assign input_bram_rd_clk = clk;
    assign input_bram_rd_rst = rst;
    assign weight_bram_rd_clk = clk;
    assign weight_bram_rd_rst = rst;
    assign output_bram_wr_clk = clk;
    assign output_bram_wr_rst = rst;
    
    assign input_bram_rd_wen = 1'b0;
    assign weight_bram_rd_wen = 1'b0;
    
    assign input_bram_rd_dout = {INPUT_DATA_WIDTH{1'b0}};
    assign weight_bram_rd_dout = {WEIGHT_DATA_WIDTH{1'b0}};

    assign ap_done = ap_done_r;

    assign mac_rdy = mult_a_rdy & mult_b_rdy & mult_c_rdy;
    
    //--------------------------------------//
    
    
    
endmodule
