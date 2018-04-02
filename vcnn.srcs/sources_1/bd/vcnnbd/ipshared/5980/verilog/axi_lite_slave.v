//Copyrights at the end

`timescale 1ns/1ps

module axi_lite_slave #
(
    ////////////////////////////////////////////////////////////////////////////
    // Width of S_AXI data bus. The slave accepts write data and issues read data
    // of width C_S_AXI_DATA_WIDTH
    parameter   C_S_AXI_DATA_WIDTH = 32,
                C_S_AXI_ADDR_WIDTH = 5
)
(
  ////////////////////////////////////////////////////////////////////////////
  // System Signals

  ////////////////////////////////////////////////////////////////////////////
  // AXI clock signal
  input wire S_AXI_ACLK,
  ////////////////////////////////////////////////////////////////////////////
  // AXI active low reset signal
  input wire S_AXI_ARESETN,

  ////////////////////////////////////////////////////////////////////////////
  // Slave Interface Write Address channel Ports

  ////////////////////////////////////////////////////////////////////////////
  // Master Interface Write Address Channel ports
  // Write address (issued by master, acceped by Slave)
  input  wire [C_S_AXI_ADDR_WIDTH - 1:0] S_AXI_AWADDR,
  ////////////////////////////////////////////////////////////////////////////
  // Write address valid. This signal indicates that the master signaling
  // valid write address and control information.
  input  wire                          S_AXI_AWVALID,
  ////////////////////////////////////////////////////////////////////////////
  // Write address ready. This signal indicates that the slave is ready
  // to accept an address and associated control signals.
  output wire                          S_AXI_AWREADY,

  ////////////////////////////////////////////////////////////////////////////
  // Slave Interface Write Data channel Ports
  // Write data (issued by master, acceped by Slave)
  input  wire [C_S_AXI_DATA_WIDTH-1:0] S_AXI_WDATA,
  ////////////////////////////////////////////////////////////////////////////
  // Write strobes. This signal indicates which byte lanes hold
  // valid data. There is one write strobe bit for each eight
  // bits of the write data bus.
  input  wire [C_S_AXI_DATA_WIDTH/8-1:0] S_AXI_WSTRB,
  ////////////////////////////////////////////////////////////////////////////
  //Write valid. This signal indicates that valid write
  // data and strobes are available.
  input  wire                          S_AXI_WVALID,
  ////////////////////////////////////////////////////////////////////////////
  // Write ready. This signal indicates that the slave
  // can accept the write data.
  output wire                          S_AXI_WREADY,

  ////////////////////////////////////////////////////////////////////////////
  // Slave Interface Write Response channel Ports

  ////////////////////////////////////////////////////////////////////////////
  // Write response. This signal indicates the status
  // of the write transaction.
  output wire [1:0]                    S_AXI_BRESP,
  ////////////////////////////////////////////////////////////////////////////
  // Write response valid. This signal indicates that the channel
  // is signaling a valid write response.
  output wire                          S_AXI_BVALID,
  ////////////////////////////////////////////////////////////////////////////
  // Response ready. This signal indicates that the master
  // can accept a write response.
  input  wire                          S_AXI_BREADY,

  ////////////////////////////////////////////////////////////////////////////
  // Slave Interface Read Address channel Ports
  // Read address (issued by master, acceped by Slave)
  input  wire [C_S_AXI_ADDR_WIDTH - 1:0] S_AXI_ARADDR,
  ////////////////////////////////////////////////////////////////////////////
  // Read address valid. This signal indicates that the channel
  // is signaling valid read address and control information.
  input  wire                          S_AXI_ARVALID,
  ////////////////////////////////////////////////////////////////////////////
  // Read address ready. This signal indicates that the slave is
  // ready to accept an address and associated control signals.
  output wire                          S_AXI_ARREADY,

  ////////////////////////////////////////////////////////////////////////////
  // Slave Interface Read Data channel Ports
  // Read data (issued by slave)
  output wire [C_S_AXI_DATA_WIDTH-1:0] S_AXI_RDATA,
  ////////////////////////////////////////////////////////////////////////////
  // Read response. This signal indicates the status of the
  // read transfer.
  output wire [1:0]                    S_AXI_RRESP,
  ////////////////////////////////////////////////////////////////////////////
  // Read valid. This signal indicates that the channel is
  // signaling the required read data.
  output wire                          S_AXI_RVALID,
  ////////////////////////////////////////////////////////////////////////////
  // Read ready. This signal indicates that the master can
  // accept the read data and response information.
  input  wire                          S_AXI_RREADY,
  ////////////////////////////////////////////////////////////////////////////
  output wire                          ap_start,
  input wire                           ap_ready,
  input wire                           ap_done
  
);

////////////////////////////////////////////////////////////////////////////
// local parameter for addressing 32 bit / 64 bit C_S_AXI_DATA_WIDTH
// ADDR_LSB is used for addressing 32/64 bit registers/memories
// ADDR_LSB = 2 for 32 bits (n downto 2)
// ADDR_LSB = 3 for 64 bits (n downto 3)

////////////////////////////////////////////////////////////////////////////
// function called clogb2 that returns an integer which has the
// value of the ceiling of the log base 2.
function integer clogb2 (input integer bd);
integer bit_depth;
begin
  bit_depth = bd;
  for(clogb2=0; bit_depth>0; clogb2=clogb2+1)
    bit_depth = bit_depth >> 1;
  end
endfunction

localparam integer ADDR_LSB = clogb2(C_S_AXI_DATA_WIDTH/8)-1;
localparam integer ADDR_MSB = C_S_AXI_ADDR_WIDTH;

//------------------Address Info (All data accesses are 32bits)---------------
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 31  - ap_done (Read/COR)
//        bit x  - ap_idle (Read)
//        bit x  - ap_ready (Read)
//        bit x  - auto_restart (Read/Write)
//        others - reserved
// 0x04 : Data signal of ap_return
//        bit 31~0 - ap_return[31:0] (Read)
// 0x08 : Data signal of scalar_in
//        bit 31~0 - scalar_in[31:0] (Read/Write)
// 0x0c : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

//------------------------Parameter----------------------
localparam
    ADDR_AP_CTRL          = 5'h00,
    ADDR_AP_RETURN_0      = 5'h04,
    ADDR_SCALAR_IN_DATA_0 = 5'h08,
    ADDR_RESERVED         = 5'h0C;
    
////////////////////////////////////////////////////////////////////////////
// AXI4 Lite internal signals

////////////////////////////////////////////////////////////////////////////
// read response
reg [1 :0]                   axi_rresp;
////////////////////////////////////////////////////////////////////////////
// write response
reg [1 :0]                   axi_bresp;
////////////////////////////////////////////////////////////////////////////
// write address acceptance
reg                          axi_awready;
////////////////////////////////////////////////////////////////////////////
// write data acceptance
reg                          axi_wready;
////////////////////////////////////////////////////////////////////////////
// write response valid
reg                          axi_bvalid;
////////////////////////////////////////////////////////////////////////////
// read data valid
reg                          axi_rvalid;
////////////////////////////////////////////////////////////////////////////
// write address
reg [ADDR_MSB-1:0] axi_awaddr;
////////////////////////////////////////////////////////////////////////////
// read address valid
reg [ADDR_MSB-1:0] axi_araddr;
////////////////////////////////////////////////////////////////////////////
// read data
reg [C_S_AXI_DATA_WIDTH-1:0] axi_rdata;
////////////////////////////////////////////////////////////////////////////
// read address acceptance
reg                          axi_arready;

////////////////////////////////////////////////////////////////////////////
// Example-specific design signals


////////////////////////////////////////////////////////////////////////////
// Signals for user logic chip select generation

////////////////////////////////////////////////////////////////////////////
// Signals for user logic register space example
// Four slave register

////////////////////////////////////////////////////////////////////////////
// Slave register 0
reg [C_S_AXI_DATA_WIDTH-1:0]    slv_reg0;
////////////////////////////////////////////////////////////////////////////
// Slave register 1
reg [C_S_AXI_DATA_WIDTH-1:0]    slv_reg1;
////////////////////////////////////////////////////////////////////////////
// Slave register 2
reg [C_S_AXI_DATA_WIDTH-1:0]    slv_reg2;
////////////////////////////////////////////////////////////////////////////
// Slave register 3
reg [C_S_AXI_DATA_WIDTH-1:0]    slv_reg3;
////////////////////////////////////////////////////////////////////////////
// Slave register read enable
wire                            slv_reg_rden;
////////////////////////////////////////////////////////////////////////////
// Slave register write enable
wire                            slv_reg_wren;
////////////////////////////////////////////////////////////////////////////
// register read data
reg [C_S_AXI_DATA_WIDTH-1:0]    reg_data_out;

integer                         byte_index;

////////////////////////////////////////////////////////////////////////////
//I/O Connections assignments

////////////////////////////////////////////////////////////////////////////
//Write Address Ready (AWREADY)
assign S_AXI_AWREADY = axi_awready;

////////////////////////////////////////////////////////////////////////////
//Write Data Ready(WREADY)
assign S_AXI_WREADY  = axi_wready;

////////////////////////////////////////////////////////////////////////////
//Write Response (BResp)and response valid (BVALID)
assign S_AXI_BRESP  = axi_bresp;
assign S_AXI_BVALID = axi_bvalid;

////////////////////////////////////////////////////////////////////////////
//Read Address Ready(AREADY)
assign S_AXI_ARREADY = axi_arready;

////////////////////////////////////////////////////////////////////////////
//Read and Read Data (RDATA), Read Valid (RVALID) and Response (RRESP)
assign S_AXI_RDATA  = axi_rdata;
assign S_AXI_RVALID = axi_rvalid;
assign S_AXI_RRESP  = axi_rresp;

//------------------------------------------------
////////////////////////////////////////////////////////////////////////////
// Implement axi_awready generation
//
//  axi_awready is asserted for one S_AXI_ACLK clock cycle when both
//  S_AXI_AWVALID and S_AXI_WVALID are asserted. axi_awready is
//  de-asserted when reset is low.

  always @( posedge S_AXI_ACLK )
  begin
    if ( S_AXI_ARESETN == 1'b0 )
      begin
        axi_awready <= 1'b0;
      end
    else
      begin
        if (~axi_awready && S_AXI_AWVALID && S_AXI_WVALID)
          begin
            ////////////////////////////////////////////////////////////////////////////
            // slave is ready to accept write address when
            // there is a valid write address and write data
            // on the write address and data bus. This design
            // expects no outstanding transactions.
            axi_awready <= 1'b1;
          end
        else
          begin
            axi_awready <= 1'b0;
          end
      end
  end

////////////////////////////////////////////////////////////////////////////
// Implement axi_awaddr latching
//
//  This process is used to latch the address when both
//  S_AXI_AWVALID and S_AXI_WVALID are valid.

  always @( posedge S_AXI_ACLK )
  begin
    if ( S_AXI_ARESETN == 1'b0 )
      begin
        axi_awaddr <= 0;
      end
    else
      begin
        if (~axi_awready && S_AXI_AWVALID && S_AXI_WVALID)
          begin
            ////////////////////////////////////////////////////////////////////////////
            // address latching
            axi_awaddr <= S_AXI_AWADDR;
          end
      end
  end

////////////////////////////////////////////////////////////////////////////
// Implement axi_wready generation
//
//  axi_wready is asserted for one S_AXI_ACLK clock cycle when both
//  S_AXI_AWVALID and S_AXI_WVALID are asserted. axi_wready is
//  de-asserted when reset is low.

  always @( posedge S_AXI_ACLK )
  begin
    if ( S_AXI_ARESETN == 1'b0 )
      begin
        axi_wready <= 1'b0;
      end
    else
      begin
        if (~axi_wready && S_AXI_WVALID && S_AXI_AWVALID)
          begin
            ////////////////////////////////////////////////////////////////////////////
            // slave is ready to accept write data when
            // there is a valid write address and write data
            // on the write address and data bus. This design
            // expects no outstanding transactions.
            axi_wready <= 1'b1;
          end
        else
          begin
            axi_wready <= 1'b0;
          end
      end
  end

////////////////////////////////////////////////////////////////////////////
// Implement memory mapped register select and write logic generation
// 
// The write data is accepted and written to memory mapped
// registers (slv_reg0, slv_reg1, slv_reg2, slv_reg3) when axi_wready,
// S_AXI_WVALID, axi_wready and S_AXI_WVALID are asserted. Write strobes are used to
// select byte enables of slave registers while writing.
// These registers are cleared when reset (active low) is applied.
// 
// Slave register write enable is asserted when valid address and data are available
// and the slave is ready to accept the write address and write data.
  assign slv_reg_wren = axi_wready && S_AXI_WVALID && axi_awready && S_AXI_AWVALID;

  always @( posedge S_AXI_ACLK )
  begin
    if ( S_AXI_ARESETN == 1'b0 )
      begin
        slv_reg0 <= {C_S_AXI_DATA_WIDTH{1'b0}};
        slv_reg1 <= {C_S_AXI_DATA_WIDTH{1'b0}};
        slv_reg2 <= {C_S_AXI_DATA_WIDTH{1'b0}};
        slv_reg3 <= {C_S_AXI_DATA_WIDTH{1'b0}};
      end
    else begin
      if (slv_reg_wren)
        begin
          case ( axi_awaddr[ADDR_MSB-1:ADDR_LSB] )
            ADDR_AP_CTRL[ADDR_MSB-1:ADDR_LSB] :
              for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-2; byte_index = byte_index+1 ) //last byte is read only, so (C_S_AXI_DATA_WIDTH/8)-2
                if ( S_AXI_WSTRB[byte_index] == 1 ) begin
                  // Respective byte enables are asserted as per write strobes
                  slv_reg0[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                end
            ADDR_AP_RETURN_0[ADDR_MSB-1:ADDR_LSB] :
              for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-2; byte_index = byte_index+1 ) //last byte is read only, so (C_S_AXI_DATA_WIDTH/8)-2
                if ( S_AXI_WSTRB[byte_index] == 1 ) begin
                   // Respective byte enables are asserted as per write strobes
                   slv_reg1[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                end
            ADDR_SCALAR_IN_DATA_0[ADDR_MSB-1:ADDR_LSB] :
              for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-2; byte_index = byte_index+1 ) //last byte is read only, so (C_S_AXI_DATA_WIDTH/8)-2
                if ( S_AXI_WSTRB[byte_index] == 1 ) begin
                  // Respective byte enables are asserted as per write strobes
                  slv_reg2[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                end
            ADDR_RESERVED[ADDR_MSB-1:ADDR_LSB] :
              for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-2; byte_index = byte_index+1 ) //last byte is read only, so (C_S_AXI_DATA_WIDTH/8)-2
                if ( S_AXI_WSTRB[byte_index] == 1 ) begin
                  // Respective byte enables are asserted as per write strobes
                  slv_reg3[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                end
            default : begin
                        slv_reg0 <= slv_reg0;
                        slv_reg1 <= slv_reg1;
                        slv_reg2 <= slv_reg2;
                        slv_reg3 <= slv_reg3;
                      end
          endcase
        end
    end
  end

////////////////////////////////////////////////////////////////////////////
// Implement write response logic generation
//
//  The write response and response valid signals are asserted by the slave
//  when axi_wready, S_AXI_WVALID, axi_wready and S_AXI_WVALID are asserted.
//  This marks the acceptance of address and indicates the status of
//  write transaction.

  always @( posedge S_AXI_ACLK )
  begin
    if ( S_AXI_ARESETN == 1'b0 )
      begin
        axi_bvalid  <= 0;
        axi_bresp   <= 2'b0;
      end
    else
      begin
        if (axi_awready && S_AXI_AWVALID && ~axi_bvalid && axi_wready && S_AXI_WVALID)
          begin
            // indicates a valid write response is available
            axi_bvalid <= 1'b1;
            axi_bresp  <= 2'b0; // 'OKAY' response
          end                   // work error responses in future
        else
          begin
            if (S_AXI_BREADY && axi_bvalid)
              //check if bready is asserted while bvalid is high)
              //(there is a possibility that bready is always asserted high)
              begin
                axi_bvalid <= 1'b0;
              end
          end
      end
  end


////////////////////////////////////////////////////////////////////////////
// Implement axi_arready generation
//
//  axi_arready is asserted for one S_AXI_ACLK clock cycle when
//  S_AXI_ARVALID is asserted. axi_awready is
//  de-asserted when reset (active low) is asserted.
//  The read address is also latched when S_AXI_ARVALID is
//  asserted. axi_araddr is reset to zero on reset assertion.

  always @( posedge S_AXI_ACLK )
  begin
    if ( S_AXI_ARESETN == 1'b0 )
      begin
        axi_arready <= 1'b0;
        axi_araddr  <= {ADDR_MSB{1'b0}};
      end
    else
      begin
        if (~axi_arready && S_AXI_ARVALID)
          begin
            // indicates that the slave has acceped the valid read address
            axi_arready <= 1'b1;
            axi_araddr  <= S_AXI_ARADDR;
          end
        else
          begin
            axi_arready <= 1'b0;
          end
      end
  end

////////////////////////////////////////////////////////////////////////////
// Implement memory mapped register select and read logic generation
//
//  axi_rvalid is asserted for one S_AXI_ACLK clock cycle when both
//  S_AXI_ARVALID and axi_arready are asserted. The slave registers
//  data are available on the axi_rdata bus at this instance. The
//  assertion of axi_rvalid marks the validity of read data on the
//  bus and axi_rresp indicates the status of read transaction.axi_rvalid
//  is deasserted on reset (active low). axi_rresp and axi_rdata are
//  cleared to zero on reset (active low).

  always @( posedge S_AXI_ACLK )
  begin
    if ( S_AXI_ARESETN == 1'b0 )
      begin
        axi_rvalid <= 0;
        axi_rresp  <= 0;
      end
    else
      begin
        if (axi_arready && S_AXI_ARVALID && ~axi_rvalid)
          begin
            // Valid read data is available at the read data bus
            axi_rvalid <= 1'b1;
            axi_rresp  <= 2'b0; // 'OKAY' response
          end
        else if (axi_rvalid && S_AXI_RREADY)
          begin
            // Read data is accepted by the master
            axi_rvalid <= 1'b0;
          end
      end
  end


////////////////////////////////////////////////////////////////////////////
// Slave register read enable is asserted when valid address is available
// and the slave is ready to accept the read address.
  assign slv_reg_rden = axi_arready & S_AXI_ARVALID & ~axi_rvalid;

  always @( slv_reg0, slv_reg1, slv_reg2, slv_reg3, S_AXI_ARESETN, slv_reg_rden, axi_araddr)
  begin
    if ( S_AXI_ARESETN == 1'b0 )
      begin
        reg_data_out <= {C_S_AXI_DATA_WIDTH{1'b0}};
      end
    else
      begin
        // Read address mux
        case ( axi_araddr)
          ADDR_AP_CTRL          : reg_data_out <= {6'd0, ap_done, ap_ready, slv_reg0[23:0]};
          ADDR_AP_RETURN_0      : reg_data_out <= slv_reg1;
          ADDR_SCALAR_IN_DATA_0 : reg_data_out <= slv_reg2;
          ADDR_RESERVED         : reg_data_out <= slv_reg3;
          default : reg_data_out <= {C_S_AXI_DATA_WIDTH{1'b0}};
        endcase
        //end
      end
  end

  always @( posedge S_AXI_ACLK )
  begin
    if ( S_AXI_ARESETN == 1'b0 )
      begin
        axi_rdata  <= 0;
      end
    else
      begin
        ////////////////////////////////////////////////////////////////////////////
        // When there is a valid read address (S_AXI_ARVALID) with
        // acceptance of read address by the slave (axi_arready),
        // output the read dada
        if (axi_arready && S_AXI_ARVALID && ~axi_rvalid)
          begin
            axi_rdata <= reg_data_out;     // register read data
          end
      end
  end

  ////////////////////////////////////////////////////////////////////////////
  //Register logic
  //assign ap_start     = ap_start_r;
  //assign ap_idle_w  = ap_idle;
  //assign int_ap_ready = ap_ready;
  //assign scalar_in    = int_scalar_in;
  
  assign ap_start = slv_reg0[0];

endmodule

////////////////////////////////////////////////////////////////////////////
//-- (c) Copyright 2012 - 2013 Xilinx, Inc. All rights reserved.
//--
//-- This file contains confidential and proprietary information
//-- of Xilinx, Inc. and is protected under U.S. and
//-- international copyright and other intellectual property
//-- laws.
//--
//-- DISCLAIMER
//-- This disclaimer is not a license and does not grant any
//-- rights to the materials distributed herewith. Except as
//-- otherwise provided in a valid license issued to you by
//-- Xilinx, and to the maximum extent permitted by applicable
//-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
//-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
//-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
//-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
//-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
//-- (2) Xilinx shall not be liable (whether in contract or tort,
//-- including negligence, or under any other theory of
//-- liability) for any loss or damage of any kind or nature
//-- related to, arising under or in connection with these
//-- materials, including for any direct, or any indirect,
//-- special, incidental, or consequential loss or damage
//-- (including loss of data, profits, goodwill, or any type of
//-- loss or damage suffered as a result of any action brought
//-- by a third party) even if such damage or loss was
//-- reasonably foreseeable or Xilinx had been advised of the
//-- possibility of the same.
//--
//-- CRITICAL APPLICATIONS
//-- Xilinx products are not designed or intended to be fail-
//-- safe, or for use in any application requiring fail-safe
//-- performance, such as life-support or safety devices or
//-- systems, Class III medical devices, nuclear facilities,
//-- applications related to the deployment of airbags, or any
//-- other applications that could lead to death, personal
//-- injury, or severe property or environmental damage
//-- (individually and collectively, "Critical
//-- Applications"). Customer assumes the sole risk and
//-- liability of any use of Xilinx products in Critical
//-- Applications, subject only to applicable laws and
//-- regulations governing limitations on product liability.
//--
//-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
//-- PART OF THIS FILE AT ALL TIMES.
////////////////////////////////////////////////////////////////////////////
//
// AXI4-Lite Slave interface example
//
// The purpose of this design is to provide a simple AXI4-Lite Slave interface.
//
// The AXI4-Lite interface is a subset of the AXI4 interface intended for
// communication with control registers in components.
// The key features of the AXI4-Lite interface are:
//         >> all transactions are burst length of 1
//         >> all data accesses are the same size as the width of the data bus
//         >> support for data bus width of 32-bit or 64-bit
//
// This design implements four 32-bit memory mapped registers. These registers
// can be read and written by a AXI4-Lite master.
//
////////////////////////////////////////////////////////////////////////////