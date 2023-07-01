
`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="Restr_axi_Restr_axi,hls_ip_2020_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xczu7ev-ffvc1156-2-i,HLS_INPUT_CLOCK=5.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=3.650000,HLS_SYN_LAT=201002211,HLS_SYN_TPT=none,HLS_SYN_MEM=495,HLS_SYN_DSP=0,HLS_SYN_FF=1768,HLS_SYN_LUT=2207,HLS_VERSION=2020_1}" *)

module Restr_axi (
        ap_clk,
        ap_rst_n,
        m_axi_DATA_IN_AWVALID,
        m_axi_DATA_IN_AWREADY,
        m_axi_DATA_IN_AWADDR,
        m_axi_DATA_IN_AWID,
        m_axi_DATA_IN_AWLEN,
        m_axi_DATA_IN_AWSIZE,
        m_axi_DATA_IN_AWBURST,
        m_axi_DATA_IN_AWLOCK,
        m_axi_DATA_IN_AWCACHE,
        m_axi_DATA_IN_AWPROT,
        m_axi_DATA_IN_AWQOS,
        m_axi_DATA_IN_AWREGION,
        m_axi_DATA_IN_AWUSER,
        m_axi_DATA_IN_WVALID,
        m_axi_DATA_IN_WREADY,
        m_axi_DATA_IN_WDATA,
        m_axi_DATA_IN_WSTRB,
        m_axi_DATA_IN_WLAST,
        m_axi_DATA_IN_WID,
        m_axi_DATA_IN_WUSER,
        m_axi_DATA_IN_ARVALID,
        m_axi_DATA_IN_ARREADY,
        m_axi_DATA_IN_ARADDR,
        m_axi_DATA_IN_ARID,
        m_axi_DATA_IN_ARLEN,
        m_axi_DATA_IN_ARSIZE,
        m_axi_DATA_IN_ARBURST,
        m_axi_DATA_IN_ARLOCK,
        m_axi_DATA_IN_ARCACHE,
        m_axi_DATA_IN_ARPROT,
        m_axi_DATA_IN_ARQOS,
        m_axi_DATA_IN_ARREGION,
        m_axi_DATA_IN_ARUSER,
        m_axi_DATA_IN_RVALID,
        m_axi_DATA_IN_RREADY,
        m_axi_DATA_IN_RDATA,
        m_axi_DATA_IN_RLAST,
        m_axi_DATA_IN_RID,
        m_axi_DATA_IN_RUSER,
        m_axi_DATA_IN_RRESP,
        m_axi_DATA_IN_BVALID,
        m_axi_DATA_IN_BREADY,
        m_axi_DATA_IN_BRESP,
        m_axi_DATA_IN_BID,
        m_axi_DATA_IN_BUSER,
        m_axi_DATA_OUT_AWVALID,
        m_axi_DATA_OUT_AWREADY,
        m_axi_DATA_OUT_AWADDR,
        m_axi_DATA_OUT_AWID,
        m_axi_DATA_OUT_AWLEN,
        m_axi_DATA_OUT_AWSIZE,
        m_axi_DATA_OUT_AWBURST,
        m_axi_DATA_OUT_AWLOCK,
        m_axi_DATA_OUT_AWCACHE,
        m_axi_DATA_OUT_AWPROT,
        m_axi_DATA_OUT_AWQOS,
        m_axi_DATA_OUT_AWREGION,
        m_axi_DATA_OUT_AWUSER,
        m_axi_DATA_OUT_WVALID,
        m_axi_DATA_OUT_WREADY,
        m_axi_DATA_OUT_WDATA,
        m_axi_DATA_OUT_WSTRB,
        m_axi_DATA_OUT_WLAST,
        m_axi_DATA_OUT_WID,
        m_axi_DATA_OUT_WUSER,
        m_axi_DATA_OUT_ARVALID,
        m_axi_DATA_OUT_ARREADY,
        m_axi_DATA_OUT_ARADDR,
        m_axi_DATA_OUT_ARID,
        m_axi_DATA_OUT_ARLEN,
        m_axi_DATA_OUT_ARSIZE,
        m_axi_DATA_OUT_ARBURST,
        m_axi_DATA_OUT_ARLOCK,
        m_axi_DATA_OUT_ARCACHE,
        m_axi_DATA_OUT_ARPROT,
        m_axi_DATA_OUT_ARQOS,
        m_axi_DATA_OUT_ARREGION,
        m_axi_DATA_OUT_ARUSER,
        m_axi_DATA_OUT_RVALID,
        m_axi_DATA_OUT_RREADY,
        m_axi_DATA_OUT_RDATA,
        m_axi_DATA_OUT_RLAST,
        m_axi_DATA_OUT_RID,
        m_axi_DATA_OUT_RUSER,
        m_axi_DATA_OUT_RRESP,
        m_axi_DATA_OUT_BVALID,
        m_axi_DATA_OUT_BREADY,
        m_axi_DATA_OUT_BRESP,
        m_axi_DATA_OUT_BID,
        m_axi_DATA_OUT_BUSER,
        s_axi_control_AWVALID,
        s_axi_control_AWREADY,
        s_axi_control_AWADDR,
        s_axi_control_WVALID,
        s_axi_control_WREADY,
        s_axi_control_WDATA,
        s_axi_control_WSTRB,
        s_axi_control_ARVALID,
        s_axi_control_ARREADY,
        s_axi_control_ARADDR,
        s_axi_control_RVALID,
        s_axi_control_RREADY,
        s_axi_control_RDATA,
        s_axi_control_RRESP,
        s_axi_control_BVALID,
        s_axi_control_BREADY,
        s_axi_control_BRESP,
        interrupt
);

parameter    ap_ST_fsm_state1 = 15'd1;
parameter    ap_ST_fsm_state2 = 15'd2;
parameter    ap_ST_fsm_state3 = 15'd4;
parameter    ap_ST_fsm_state4 = 15'd8;
parameter    ap_ST_fsm_state5 = 15'd16;
parameter    ap_ST_fsm_state6 = 15'd32;
parameter    ap_ST_fsm_state7 = 15'd64;
parameter    ap_ST_fsm_state8 = 15'd128;
parameter    ap_ST_fsm_pp0_stage0 = 15'd256;
parameter    ap_ST_fsm_state12 = 15'd512;
parameter    ap_ST_fsm_state13 = 15'd1024;
parameter    ap_ST_fsm_state14 = 15'd2048;
parameter    ap_ST_fsm_state15 = 15'd4096;
parameter    ap_ST_fsm_pp1_stage0 = 15'd8192;
parameter    ap_ST_fsm_state24 = 15'd16384;
parameter    C_S_AXI_CONTROL_DATA_WIDTH = 32;
parameter    C_S_AXI_CONTROL_ADDR_WIDTH = 6;
parameter    C_S_AXI_DATA_WIDTH = 32;
parameter    C_M_AXI_DATA_IN_ID_WIDTH = 1;
parameter    C_M_AXI_DATA_IN_ADDR_WIDTH = 64;
parameter    C_M_AXI_DATA_IN_DATA_WIDTH = 32;
parameter    C_M_AXI_DATA_IN_AWUSER_WIDTH = 1;
parameter    C_M_AXI_DATA_IN_ARUSER_WIDTH = 1;
parameter    C_M_AXI_DATA_IN_WUSER_WIDTH = 1;
parameter    C_M_AXI_DATA_IN_RUSER_WIDTH = 1;
parameter    C_M_AXI_DATA_IN_BUSER_WIDTH = 1;
parameter    C_M_AXI_DATA_IN_USER_VALUE = 0;
parameter    C_M_AXI_DATA_IN_PROT_VALUE = 0;
parameter    C_M_AXI_DATA_IN_CACHE_VALUE = 3;
parameter    C_M_AXI_DATA_WIDTH = 32;
parameter    C_M_AXI_DATA_OUT_ID_WIDTH = 1;
parameter    C_M_AXI_DATA_OUT_ADDR_WIDTH = 64;
parameter    C_M_AXI_DATA_OUT_DATA_WIDTH = 32;
parameter    C_M_AXI_DATA_OUT_AWUSER_WIDTH = 1;
parameter    C_M_AXI_DATA_OUT_ARUSER_WIDTH = 1;
parameter    C_M_AXI_DATA_OUT_WUSER_WIDTH = 1;
parameter    C_M_AXI_DATA_OUT_RUSER_WIDTH = 1;
parameter    C_M_AXI_DATA_OUT_BUSER_WIDTH = 1;
parameter    C_M_AXI_DATA_OUT_USER_VALUE = 0;
parameter    C_M_AXI_DATA_OUT_PROT_VALUE = 0;
parameter    C_M_AXI_DATA_OUT_CACHE_VALUE = 3;

parameter C_S_AXI_CONTROL_WSTRB_WIDTH = (32 / 8);
parameter C_S_AXI_WSTRB_WIDTH = (32 / 8);
parameter C_M_AXI_DATA_IN_WSTRB_WIDTH = (32 / 8);
parameter C_M_AXI_WSTRB_WIDTH = (32 / 8);
parameter C_M_AXI_DATA_OUT_WSTRB_WIDTH = (32 / 8);

input   ap_clk;
input   ap_rst_n;
output   m_axi_DATA_IN_AWVALID;
input   m_axi_DATA_IN_AWREADY;
output  [C_M_AXI_DATA_IN_ADDR_WIDTH - 1:0] m_axi_DATA_IN_AWADDR;
output  [C_M_AXI_DATA_IN_ID_WIDTH - 1:0] m_axi_DATA_IN_AWID;
output  [7:0] m_axi_DATA_IN_AWLEN;
output  [2:0] m_axi_DATA_IN_AWSIZE;
output  [1:0] m_axi_DATA_IN_AWBURST;
output  [1:0] m_axi_DATA_IN_AWLOCK;
output  [3:0] m_axi_DATA_IN_AWCACHE;
output  [2:0] m_axi_DATA_IN_AWPROT;
output  [3:0] m_axi_DATA_IN_AWQOS;
output  [3:0] m_axi_DATA_IN_AWREGION;
output  [C_M_AXI_DATA_IN_AWUSER_WIDTH - 1:0] m_axi_DATA_IN_AWUSER;
output   m_axi_DATA_IN_WVALID;
input   m_axi_DATA_IN_WREADY;
output  [C_M_AXI_DATA_IN_DATA_WIDTH - 1:0] m_axi_DATA_IN_WDATA;
output  [C_M_AXI_DATA_IN_WSTRB_WIDTH - 1:0] m_axi_DATA_IN_WSTRB;
output   m_axi_DATA_IN_WLAST;
output  [C_M_AXI_DATA_IN_ID_WIDTH - 1:0] m_axi_DATA_IN_WID;
output  [C_M_AXI_DATA_IN_WUSER_WIDTH - 1:0] m_axi_DATA_IN_WUSER;
output   m_axi_DATA_IN_ARVALID;
input   m_axi_DATA_IN_ARREADY;
output  [C_M_AXI_DATA_IN_ADDR_WIDTH - 1:0] m_axi_DATA_IN_ARADDR;
output  [C_M_AXI_DATA_IN_ID_WIDTH - 1:0] m_axi_DATA_IN_ARID;
output  [7:0] m_axi_DATA_IN_ARLEN;
output  [2:0] m_axi_DATA_IN_ARSIZE;
output  [1:0] m_axi_DATA_IN_ARBURST;
output  [1:0] m_axi_DATA_IN_ARLOCK;
output  [3:0] m_axi_DATA_IN_ARCACHE;
output  [2:0] m_axi_DATA_IN_ARPROT;
output  [3:0] m_axi_DATA_IN_ARQOS;
output  [3:0] m_axi_DATA_IN_ARREGION;
output  [C_M_AXI_DATA_IN_ARUSER_WIDTH - 1:0] m_axi_DATA_IN_ARUSER;
input   m_axi_DATA_IN_RVALID;
output   m_axi_DATA_IN_RREADY;
input  [C_M_AXI_DATA_IN_DATA_WIDTH - 1:0] m_axi_DATA_IN_RDATA;
input   m_axi_DATA_IN_RLAST;
input  [C_M_AXI_DATA_IN_ID_WIDTH - 1:0] m_axi_DATA_IN_RID;
input  [C_M_AXI_DATA_IN_RUSER_WIDTH - 1:0] m_axi_DATA_IN_RUSER;
input  [1:0] m_axi_DATA_IN_RRESP;
input   m_axi_DATA_IN_BVALID;
output   m_axi_DATA_IN_BREADY;
input  [1:0] m_axi_DATA_IN_BRESP;
input  [C_M_AXI_DATA_IN_ID_WIDTH - 1:0] m_axi_DATA_IN_BID;
input  [C_M_AXI_DATA_IN_BUSER_WIDTH - 1:0] m_axi_DATA_IN_BUSER;
output   m_axi_DATA_OUT_AWVALID;
input   m_axi_DATA_OUT_AWREADY;
output  [C_M_AXI_DATA_OUT_ADDR_WIDTH - 1:0] m_axi_DATA_OUT_AWADDR;
output  [C_M_AXI_DATA_OUT_ID_WIDTH - 1:0] m_axi_DATA_OUT_AWID;
output  [7:0] m_axi_DATA_OUT_AWLEN;
output  [2:0] m_axi_DATA_OUT_AWSIZE;
output  [1:0] m_axi_DATA_OUT_AWBURST;
output  [1:0] m_axi_DATA_OUT_AWLOCK;
output  [3:0] m_axi_DATA_OUT_AWCACHE;
output  [2:0] m_axi_DATA_OUT_AWPROT;
output  [3:0] m_axi_DATA_OUT_AWQOS;
output  [3:0] m_axi_DATA_OUT_AWREGION;
output  [C_M_AXI_DATA_OUT_AWUSER_WIDTH - 1:0] m_axi_DATA_OUT_AWUSER;
output   m_axi_DATA_OUT_WVALID;
input   m_axi_DATA_OUT_WREADY;
output  [C_M_AXI_DATA_OUT_DATA_WIDTH - 1:0] m_axi_DATA_OUT_WDATA;
output  [C_M_AXI_DATA_OUT_WSTRB_WIDTH - 1:0] m_axi_DATA_OUT_WSTRB;
output   m_axi_DATA_OUT_WLAST;
output  [C_M_AXI_DATA_OUT_ID_WIDTH - 1:0] m_axi_DATA_OUT_WID;
output  [C_M_AXI_DATA_OUT_WUSER_WIDTH - 1:0] m_axi_DATA_OUT_WUSER;
output   m_axi_DATA_OUT_ARVALID;
input   m_axi_DATA_OUT_ARREADY;
output  [C_M_AXI_DATA_OUT_ADDR_WIDTH - 1:0] m_axi_DATA_OUT_ARADDR;
output  [C_M_AXI_DATA_OUT_ID_WIDTH - 1:0] m_axi_DATA_OUT_ARID;
output  [7:0] m_axi_DATA_OUT_ARLEN;
output  [2:0] m_axi_DATA_OUT_ARSIZE;
output  [1:0] m_axi_DATA_OUT_ARBURST;
output  [1:0] m_axi_DATA_OUT_ARLOCK;
output  [3:0] m_axi_DATA_OUT_ARCACHE;
output  [2:0] m_axi_DATA_OUT_ARPROT;
output  [3:0] m_axi_DATA_OUT_ARQOS;
output  [3:0] m_axi_DATA_OUT_ARREGION;
output  [C_M_AXI_DATA_OUT_ARUSER_WIDTH - 1:0] m_axi_DATA_OUT_ARUSER;
input   m_axi_DATA_OUT_RVALID;
output   m_axi_DATA_OUT_RREADY;
input  [C_M_AXI_DATA_OUT_DATA_WIDTH - 1:0] m_axi_DATA_OUT_RDATA;
input   m_axi_DATA_OUT_RLAST;
input  [C_M_AXI_DATA_OUT_ID_WIDTH - 1:0] m_axi_DATA_OUT_RID;
input  [C_M_AXI_DATA_OUT_RUSER_WIDTH - 1:0] m_axi_DATA_OUT_RUSER;
input  [1:0] m_axi_DATA_OUT_RRESP;
input   m_axi_DATA_OUT_BVALID;
output   m_axi_DATA_OUT_BREADY;
input  [1:0] m_axi_DATA_OUT_BRESP;
input  [C_M_AXI_DATA_OUT_ID_WIDTH - 1:0] m_axi_DATA_OUT_BID;
input  [C_M_AXI_DATA_OUT_BUSER_WIDTH - 1:0] m_axi_DATA_OUT_BUSER;
input   s_axi_control_AWVALID;
output   s_axi_control_AWREADY;
input  [C_S_AXI_CONTROL_ADDR_WIDTH - 1:0] s_axi_control_AWADDR;
input   s_axi_control_WVALID;
output   s_axi_control_WREADY;
input  [C_S_AXI_CONTROL_DATA_WIDTH - 1:0] s_axi_control_WDATA;
input  [C_S_AXI_CONTROL_WSTRB_WIDTH - 1:0] s_axi_control_WSTRB;
input   s_axi_control_ARVALID;
output   s_axi_control_ARREADY;
input  [C_S_AXI_CONTROL_ADDR_WIDTH - 1:0] s_axi_control_ARADDR;
output   s_axi_control_RVALID;
input   s_axi_control_RREADY;
output  [C_S_AXI_CONTROL_DATA_WIDTH - 1:0] s_axi_control_RDATA;
output  [1:0] s_axi_control_RRESP;
output   s_axi_control_BVALID;
input   s_axi_control_BREADY;
output  [1:0] s_axi_control_BRESP;
output   interrupt;

 reg    ap_rst_n_inv;
wire    ap_start;
reg    ap_done;
reg    ap_idle;
(* fsm_encoding = "none" *) reg   [14:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_ready;
wire   [63:0] img_in;
wire   [63:0] voxelData_out;
reg   [19:0] img_buffer_address0;
reg    img_buffer_ce0;
reg    img_buffer_we0;
wire   [7:0] img_buffer_q0;
wire   [7:0] offset_map_buffer_0_address0;
reg    offset_map_buffer_0_ce0;
wire   [5:0] offset_map_buffer_0_q0;
reg    DATA_IN_blk_n_AR;
wire    ap_CS_fsm_state2;
reg    DATA_IN_blk_n_R;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage0;
reg   [0:0] icmp_ln16_reg_333;
reg    DATA_OUT_blk_n_AW;
wire    ap_CS_fsm_state15;
reg    DATA_OUT_blk_n_W;
reg    ap_enable_reg_pp1_iter2;
wire    ap_block_pp1_stage0;
reg    DATA_OUT_blk_n_B;
reg    ap_enable_reg_pp1_iter7;
reg   [0:0] ifzero_reg_390;
reg   [0:0] ifzero_reg_390_pp1_iter6_reg;
wire    DATA_IN_AWREADY;
wire    DATA_IN_WREADY;
reg    DATA_IN_ARVALID;
wire    DATA_IN_ARREADY;
wire    DATA_IN_RVALID;
reg    DATA_IN_RREADY;
wire   [7:0] DATA_IN_RDATA;
wire    DATA_IN_RLAST;
wire   [0:0] DATA_IN_RID;
wire   [0:0] DATA_IN_RUSER;
wire   [1:0] DATA_IN_RRESP;
wire    DATA_IN_BVALID;
wire   [1:0] DATA_IN_BRESP;
wire   [0:0] DATA_IN_BID;
wire   [0:0] DATA_IN_BUSER;
reg    DATA_OUT_AWVALID;
wire    DATA_OUT_AWREADY;
reg    DATA_OUT_WVALID;
wire    DATA_OUT_WREADY;
wire    DATA_OUT_ARREADY;
wire    DATA_OUT_RVALID;
wire   [7:0] DATA_OUT_RDATA;
wire    DATA_OUT_RLAST;
wire   [0:0] DATA_OUT_RID;
wire   [0:0] DATA_OUT_RUSER;
wire   [1:0] DATA_OUT_RRESP;
wire    DATA_OUT_BVALID;
reg    DATA_OUT_BREADY;
wire   [1:0] DATA_OUT_BRESP;
wire   [0:0] DATA_OUT_BID;
wire   [0:0] DATA_OUT_BUSER;
reg   [19:0] i_reg_176;
reg   [19:0] i_reg_176_pp0_iter1_reg;
wire    ap_block_state9_pp0_stage0_iter0;
reg    ap_block_state10_pp0_stage0_iter1;
wire    ap_block_state11_pp0_stage0_iter2;
reg    ap_block_pp0_stage0_11001;
reg   [19:0] loop_index_reg_210;
reg   [63:0] voxelData_out_read_reg_322;
reg   [63:0] DATA_IN_addr_reg_327;
wire   [0:0] icmp_ln16_fu_227_p2;
reg   [0:0] icmp_ln16_reg_333_pp0_iter1_reg;
wire   [19:0] add_ln16_fu_233_p2;
reg   [19:0] add_ln16_reg_337;
reg    ap_enable_reg_pp0_iter0;
reg   [7:0] DATA_IN_addr_read_reg_342;
wire   [27:0] add_ln21_fu_244_p2;
reg   [27:0] add_ln21_reg_347;
wire    ap_CS_fsm_state13;
wire   [7:0] z_1_fu_256_p2;
reg   [7:0] z_1_reg_355;
wire   [0:0] icmp_ln21_fu_250_p2;
reg   [21:0] tmp_1_reg_365;
reg   [63:0] DATA_OUT_addr_reg_370;
wire    ap_CS_fsm_state14;
wire   [0:0] exitcond1_fu_299_p2;
reg   [0:0] exitcond1_reg_376;
wire    ap_CS_fsm_pp1_stage0;
wire    ap_block_state16_pp1_stage0_iter0;
wire    ap_block_state17_pp1_stage0_iter1;
wire    ap_block_state18_pp1_stage0_iter2;
wire    ap_block_state19_pp1_stage0_iter3;
wire    ap_block_state20_pp1_stage0_iter4;
wire    ap_block_state21_pp1_stage0_iter5;
wire    ap_block_state22_pp1_stage0_iter6;
reg    ap_block_state23_pp1_stage0_iter7;
reg    ap_block_pp1_stage0_11001;
wire   [19:0] empty_22_fu_305_p2;
reg   [19:0] empty_22_reg_380;
reg    ap_enable_reg_pp1_iter0;
wire   [0:0] ifzero_fu_316_p2;
reg   [0:0] ifzero_reg_390_pp1_iter1_reg;
reg   [0:0] ifzero_reg_390_pp1_iter2_reg;
reg   [0:0] ifzero_reg_390_pp1_iter3_reg;
reg   [0:0] ifzero_reg_390_pp1_iter4_reg;
reg   [0:0] ifzero_reg_390_pp1_iter5_reg;
reg   [7:0] img_buffer_load_reg_394;
reg    ap_enable_reg_pp1_iter1;
wire    ap_CS_fsm_state8;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state9;
reg    ap_enable_reg_pp0_iter2;
reg    ap_block_pp1_stage0_subdone;
reg    ap_condition_pp1_exit_iter0_state16;
reg    ap_enable_reg_pp1_iter3;
reg    ap_enable_reg_pp1_iter4;
reg    ap_enable_reg_pp1_iter5;
reg    ap_enable_reg_pp1_iter6;
reg   [19:0] ap_phi_mux_i_phi_fu_180_p4;
reg   [7:0] z_reg_188;
wire    ap_CS_fsm_state24;
wire    ap_CS_fsm_state12;
reg   [27:0] voxel_z_offset_reg_199;
reg   [19:0] ap_phi_mux_loop_index_phi_fu_214_p4;
wire   [63:0] i_cast_fu_239_p1;
wire   [63:0] zext_ln22_fu_262_p1;
wire   [63:0] loop_index_cast_fu_311_p1;
wire   [63:0] add_ln26_fu_288_p2;
reg    ap_block_pp1_stage0_01001;
wire   [27:0] tmp_fu_277_p3;
wire   [63:0] zext_ln26_fu_284_p1;
reg   [14:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
reg    ap_idle_pp1;
wire    ap_enable_pp1;

// power-on initialization
initial begin
#0 ap_CS_fsm = 15'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp1_iter2 = 1'b0;
#0 ap_enable_reg_pp1_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp1_iter0 = 1'b0;
#0 ap_enable_reg_pp1_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp1_iter3 = 1'b0;
#0 ap_enable_reg_pp1_iter4 = 1'b0;
#0 ap_enable_reg_pp1_iter5 = 1'b0;
#0 ap_enable_reg_pp1_iter6 = 1'b0;
end

Restr_axi_img_buffer #(
    .DataWidth( 8 ),
    .AddressRange( 1000000 ),
    .AddressWidth( 20 ))
img_buffer_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(img_buffer_address0),
    .ce0(img_buffer_ce0),
    .we0(img_buffer_we0),
    .d0(DATA_IN_addr_read_reg_342),
    .q0(img_buffer_q0)
);

Restr_axi_offset_map_buffer_0 #(
    .DataWidth( 6 ),
    .AddressRange( 200 ),
    .AddressWidth( 8 ))
offset_map_buffer_0_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(offset_map_buffer_0_address0),
    .ce0(offset_map_buffer_0_ce0),
    .q0(offset_map_buffer_0_q0)
);

Restr_axi_control_s_axi #(
    .C_S_AXI_ADDR_WIDTH( C_S_AXI_CONTROL_ADDR_WIDTH ),
    .C_S_AXI_DATA_WIDTH( C_S_AXI_CONTROL_DATA_WIDTH ))
control_s_axi_U(
    .AWVALID(s_axi_control_AWVALID),
    .AWREADY(s_axi_control_AWREADY),
    .AWADDR(s_axi_control_AWADDR),
    .WVALID(s_axi_control_WVALID),
    .WREADY(s_axi_control_WREADY),
    .WDATA(s_axi_control_WDATA),
    .WSTRB(s_axi_control_WSTRB),
    .ARVALID(s_axi_control_ARVALID),
    .ARREADY(s_axi_control_ARREADY),
    .ARADDR(s_axi_control_ARADDR),
    .RVALID(s_axi_control_RVALID),
    .RREADY(s_axi_control_RREADY),
    .RDATA(s_axi_control_RDATA),
    .RRESP(s_axi_control_RRESP),
    .BVALID(s_axi_control_BVALID),
    .BREADY(s_axi_control_BREADY),
    .BRESP(s_axi_control_BRESP),
    .ACLK(ap_clk),
    .ARESET(ap_rst_n_inv),
    .ACLK_EN(1'b1),
    .img_in(img_in),
    .voxelData_out(voxelData_out),
    .ap_start(ap_start),
    .interrupt(interrupt),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_idle(ap_idle)
);

Restr_axi_DATA_IN_m_axi #(
    .CONSERVATIVE( 0 ),
    .USER_DW( 8 ),
    .USER_AW( 64 ),
    .USER_MAXREQS( 5 ),
    .NUM_READ_OUTSTANDING( 16 ),
    .NUM_WRITE_OUTSTANDING( 16 ),
    .MAX_READ_BURST_LENGTH( 16 ),
    .MAX_WRITE_BURST_LENGTH( 16 ),
    .C_M_AXI_ID_WIDTH( C_M_AXI_DATA_IN_ID_WIDTH ),
    .C_M_AXI_ADDR_WIDTH( C_M_AXI_DATA_IN_ADDR_WIDTH ),
    .C_M_AXI_DATA_WIDTH( C_M_AXI_DATA_IN_DATA_WIDTH ),
    .C_M_AXI_AWUSER_WIDTH( C_M_AXI_DATA_IN_AWUSER_WIDTH ),
    .C_M_AXI_ARUSER_WIDTH( C_M_AXI_DATA_IN_ARUSER_WIDTH ),
    .C_M_AXI_WUSER_WIDTH( C_M_AXI_DATA_IN_WUSER_WIDTH ),
    .C_M_AXI_RUSER_WIDTH( C_M_AXI_DATA_IN_RUSER_WIDTH ),
    .C_M_AXI_BUSER_WIDTH( C_M_AXI_DATA_IN_BUSER_WIDTH ),
    .C_USER_VALUE( C_M_AXI_DATA_IN_USER_VALUE ),
    .C_PROT_VALUE( C_M_AXI_DATA_IN_PROT_VALUE ),
    .C_CACHE_VALUE( C_M_AXI_DATA_IN_CACHE_VALUE ))
DATA_IN_m_axi_U(
    .AWVALID(m_axi_DATA_IN_AWVALID),
    .AWREADY(m_axi_DATA_IN_AWREADY),
    .AWADDR(m_axi_DATA_IN_AWADDR),
    .AWID(m_axi_DATA_IN_AWID),
    .AWLEN(m_axi_DATA_IN_AWLEN),
    .AWSIZE(m_axi_DATA_IN_AWSIZE),
    .AWBURST(m_axi_DATA_IN_AWBURST),
    .AWLOCK(m_axi_DATA_IN_AWLOCK),
    .AWCACHE(m_axi_DATA_IN_AWCACHE),
    .AWPROT(m_axi_DATA_IN_AWPROT),
    .AWQOS(m_axi_DATA_IN_AWQOS),
    .AWREGION(m_axi_DATA_IN_AWREGION),
    .AWUSER(m_axi_DATA_IN_AWUSER),
    .WVALID(m_axi_DATA_IN_WVALID),
    .WREADY(m_axi_DATA_IN_WREADY),
    .WDATA(m_axi_DATA_IN_WDATA),
    .WSTRB(m_axi_DATA_IN_WSTRB),
    .WLAST(m_axi_DATA_IN_WLAST),
    .WID(m_axi_DATA_IN_WID),
    .WUSER(m_axi_DATA_IN_WUSER),
    .ARVALID(m_axi_DATA_IN_ARVALID),
    .ARREADY(m_axi_DATA_IN_ARREADY),
    .ARADDR(m_axi_DATA_IN_ARADDR),
    .ARID(m_axi_DATA_IN_ARID),
    .ARLEN(m_axi_DATA_IN_ARLEN),
    .ARSIZE(m_axi_DATA_IN_ARSIZE),
    .ARBURST(m_axi_DATA_IN_ARBURST),
    .ARLOCK(m_axi_DATA_IN_ARLOCK),
    .ARCACHE(m_axi_DATA_IN_ARCACHE),
    .ARPROT(m_axi_DATA_IN_ARPROT),
    .ARQOS(m_axi_DATA_IN_ARQOS),
    .ARREGION(m_axi_DATA_IN_ARREGION),
    .ARUSER(m_axi_DATA_IN_ARUSER),
    .RVALID(m_axi_DATA_IN_RVALID),
    .RREADY(m_axi_DATA_IN_RREADY),
    .RDATA(m_axi_DATA_IN_RDATA),
    .RLAST(m_axi_DATA_IN_RLAST),
    .RID(m_axi_DATA_IN_RID),
    .RUSER(m_axi_DATA_IN_RUSER),
    .RRESP(m_axi_DATA_IN_RRESP),
    .BVALID(m_axi_DATA_IN_BVALID),
    .BREADY(m_axi_DATA_IN_BREADY),
    .BRESP(m_axi_DATA_IN_BRESP),
    .BID(m_axi_DATA_IN_BID),
    .BUSER(m_axi_DATA_IN_BUSER),
    .ACLK(ap_clk),
    .ARESET(ap_rst_n_inv),
    .ACLK_EN(1'b1),
    .I_ARVALID(DATA_IN_ARVALID),
    .I_ARREADY(DATA_IN_ARREADY),
    .I_ARADDR(DATA_IN_addr_reg_327),
    .I_ARID(1'd0),
    .I_ARLEN(32'd1000000),
    .I_ARSIZE(3'd0),
    .I_ARLOCK(2'd0),
    .I_ARCACHE(4'd0),
    .I_ARQOS(4'd0),
    .I_ARPROT(3'd0),
    .I_ARUSER(1'd0),
    .I_ARBURST(2'd0),
    .I_ARREGION(4'd0),
    .I_RVALID(DATA_IN_RVALID),
    .I_RREADY(DATA_IN_RREADY),
    .I_RDATA(DATA_IN_RDATA),
    .I_RID(DATA_IN_RID),
    .I_RUSER(DATA_IN_RUSER),
    .I_RRESP(DATA_IN_RRESP),
    .I_RLAST(DATA_IN_RLAST),
    .I_AWVALID(1'b0),
    .I_AWREADY(DATA_IN_AWREADY),
    .I_AWADDR(64'd0),
    .I_AWID(1'd0),
    .I_AWLEN(32'd0),
    .I_AWSIZE(3'd0),
    .I_AWLOCK(2'd0),
    .I_AWCACHE(4'd0),
    .I_AWQOS(4'd0),
    .I_AWPROT(3'd0),
    .I_AWUSER(1'd0),
    .I_AWBURST(2'd0),
    .I_AWREGION(4'd0),
    .I_WVALID(1'b0),
    .I_WREADY(DATA_IN_WREADY),
    .I_WDATA(8'd0),
    .I_WID(1'd0),
    .I_WUSER(1'd0),
    .I_WLAST(1'b0),
    .I_WSTRB(1'd0),
    .I_BVALID(DATA_IN_BVALID),
    .I_BREADY(1'b0),
    .I_BRESP(DATA_IN_BRESP),
    .I_BID(DATA_IN_BID),
    .I_BUSER(DATA_IN_BUSER)
);

Restr_axi_DATA_OUT_m_axi #(
    .CONSERVATIVE( 0 ),
    .USER_DW( 8 ),
    .USER_AW( 64 ),
    .USER_MAXREQS( 5 ),
    .NUM_READ_OUTSTANDING( 16 ),
    .NUM_WRITE_OUTSTANDING( 16 ),
    .MAX_READ_BURST_LENGTH( 16 ),
    .MAX_WRITE_BURST_LENGTH( 16 ),
    .C_M_AXI_ID_WIDTH( C_M_AXI_DATA_OUT_ID_WIDTH ),
    .C_M_AXI_ADDR_WIDTH( C_M_AXI_DATA_OUT_ADDR_WIDTH ),
    .C_M_AXI_DATA_WIDTH( C_M_AXI_DATA_OUT_DATA_WIDTH ),
    .C_M_AXI_AWUSER_WIDTH( C_M_AXI_DATA_OUT_AWUSER_WIDTH ),
    .C_M_AXI_ARUSER_WIDTH( C_M_AXI_DATA_OUT_ARUSER_WIDTH ),
    .C_M_AXI_WUSER_WIDTH( C_M_AXI_DATA_OUT_WUSER_WIDTH ),
    .C_M_AXI_RUSER_WIDTH( C_M_AXI_DATA_OUT_RUSER_WIDTH ),
    .C_M_AXI_BUSER_WIDTH( C_M_AXI_DATA_OUT_BUSER_WIDTH ),
    .C_USER_VALUE( C_M_AXI_DATA_OUT_USER_VALUE ),
    .C_PROT_VALUE( C_M_AXI_DATA_OUT_PROT_VALUE ),
    .C_CACHE_VALUE( C_M_AXI_DATA_OUT_CACHE_VALUE ))
DATA_OUT_m_axi_U(
    .AWVALID(m_axi_DATA_OUT_AWVALID),
    .AWREADY(m_axi_DATA_OUT_AWREADY),
    .AWADDR(m_axi_DATA_OUT_AWADDR),
    .AWID(m_axi_DATA_OUT_AWID),
    .AWLEN(m_axi_DATA_OUT_AWLEN),
    .AWSIZE(m_axi_DATA_OUT_AWSIZE),
    .AWBURST(m_axi_DATA_OUT_AWBURST),
    .AWLOCK(m_axi_DATA_OUT_AWLOCK),
    .AWCACHE(m_axi_DATA_OUT_AWCACHE),
    .AWPROT(m_axi_DATA_OUT_AWPROT),
    .AWQOS(m_axi_DATA_OUT_AWQOS),
    .AWREGION(m_axi_DATA_OUT_AWREGION),
    .AWUSER(m_axi_DATA_OUT_AWUSER),
    .WVALID(m_axi_DATA_OUT_WVALID),
    .WREADY(m_axi_DATA_OUT_WREADY),
    .WDATA(m_axi_DATA_OUT_WDATA),
    .WSTRB(m_axi_DATA_OUT_WSTRB),
    .WLAST(m_axi_DATA_OUT_WLAST),
    .WID(m_axi_DATA_OUT_WID),
    .WUSER(m_axi_DATA_OUT_WUSER),
    .ARVALID(m_axi_DATA_OUT_ARVALID),
    .ARREADY(m_axi_DATA_OUT_ARREADY),
    .ARADDR(m_axi_DATA_OUT_ARADDR),
    .ARID(m_axi_DATA_OUT_ARID),
    .ARLEN(m_axi_DATA_OUT_ARLEN),
    .ARSIZE(m_axi_DATA_OUT_ARSIZE),
    .ARBURST(m_axi_DATA_OUT_ARBURST),
    .ARLOCK(m_axi_DATA_OUT_ARLOCK),
    .ARCACHE(m_axi_DATA_OUT_ARCACHE),
    .ARPROT(m_axi_DATA_OUT_ARPROT),
    .ARQOS(m_axi_DATA_OUT_ARQOS),
    .ARREGION(m_axi_DATA_OUT_ARREGION),
    .ARUSER(m_axi_DATA_OUT_ARUSER),
    .RVALID(m_axi_DATA_OUT_RVALID),
    .RREADY(m_axi_DATA_OUT_RREADY),
    .RDATA(m_axi_DATA_OUT_RDATA),
    .RLAST(m_axi_DATA_OUT_RLAST),
    .RID(m_axi_DATA_OUT_RID),
    .RUSER(m_axi_DATA_OUT_RUSER),
    .RRESP(m_axi_DATA_OUT_RRESP),
    .BVALID(m_axi_DATA_OUT_BVALID),
    .BREADY(m_axi_DATA_OUT_BREADY),
    .BRESP(m_axi_DATA_OUT_BRESP),
    .BID(m_axi_DATA_OUT_BID),
    .BUSER(m_axi_DATA_OUT_BUSER),
    .ACLK(ap_clk),
    .ARESET(ap_rst_n_inv),
    .ACLK_EN(1'b1),
    .I_ARVALID(1'b0),
    .I_ARREADY(DATA_OUT_ARREADY),
    .I_ARADDR(64'd0),
    .I_ARID(1'd0),
    .I_ARLEN(32'd0),
    .I_ARSIZE(3'd0),
    .I_ARLOCK(2'd0),
    .I_ARCACHE(4'd0),
    .I_ARQOS(4'd0),
    .I_ARPROT(3'd0),
    .I_ARUSER(1'd0),
    .I_ARBURST(2'd0),
    .I_ARREGION(4'd0),
    .I_RVALID(DATA_OUT_RVALID),
    .I_RREADY(1'b0),
    .I_RDATA(DATA_OUT_RDATA),
    .I_RID(DATA_OUT_RID),
    .I_RUSER(DATA_OUT_RUSER),
    .I_RRESP(DATA_OUT_RRESP),
    .I_RLAST(DATA_OUT_RLAST),
    .I_AWVALID(DATA_OUT_AWVALID),
    .I_AWREADY(DATA_OUT_AWREADY),
    .I_AWADDR(DATA_OUT_addr_reg_370),
    .I_AWID(1'd0),
    .I_AWLEN(32'd1000000),
    .I_AWSIZE(3'd0),
    .I_AWLOCK(2'd0),
    .I_AWCACHE(4'd0),
    .I_AWQOS(4'd0),
    .I_AWPROT(3'd0),
    .I_AWUSER(1'd0),
    .I_AWBURST(2'd0),
    .I_AWREGION(4'd0),
    .I_WVALID(DATA_OUT_WVALID),
    .I_WREADY(DATA_OUT_WREADY),
    .I_WDATA(img_buffer_load_reg_394),
    .I_WID(1'd0),
    .I_WUSER(1'd0),
    .I_WLAST(1'b0),
    .I_WSTRB(1'd1),
    .I_BVALID(DATA_OUT_BVALID),
    .I_BREADY(DATA_OUT_BREADY),
    .I_BRESP(DATA_OUT_BRESP),
    .I_BID(DATA_OUT_BID),
    .I_BUSER(DATA_OUT_BUSER)
);

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b1 == ap_condition_pp0_exit_iter0_state9) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_state8)) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            if ((1'b1 == ap_condition_pp0_exit_iter0_state9)) begin
                ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state9);
            end else if ((1'b1 == 1'b1)) begin
                ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end else if ((1'b1 == ap_CS_fsm_state8)) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_enable_reg_pp1_iter0 <= 1'b0;
    end else begin
        if (((1'b1 == ap_condition_pp1_exit_iter0_state16) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_subdone))) begin
            ap_enable_reg_pp1_iter0 <= 1'b0;
        end else if (((1'b1 == DATA_OUT_AWREADY) & (1'b1 == ap_CS_fsm_state15))) begin
            ap_enable_reg_pp1_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_enable_reg_pp1_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp1_stage0_subdone)) begin
            if ((1'b1 == ap_condition_pp1_exit_iter0_state16)) begin
                ap_enable_reg_pp1_iter1 <= (1'b1 ^ ap_condition_pp1_exit_iter0_state16);
            end else if ((1'b1 == 1'b1)) begin
                ap_enable_reg_pp1_iter1 <= ap_enable_reg_pp1_iter0;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_enable_reg_pp1_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp1_stage0_subdone)) begin
            ap_enable_reg_pp1_iter2 <= ap_enable_reg_pp1_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_enable_reg_pp1_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp1_stage0_subdone)) begin
            ap_enable_reg_pp1_iter3 <= ap_enable_reg_pp1_iter2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_enable_reg_pp1_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp1_stage0_subdone)) begin
            ap_enable_reg_pp1_iter4 <= ap_enable_reg_pp1_iter3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_enable_reg_pp1_iter5 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp1_stage0_subdone)) begin
            ap_enable_reg_pp1_iter5 <= ap_enable_reg_pp1_iter4;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_enable_reg_pp1_iter6 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp1_stage0_subdone)) begin
            ap_enable_reg_pp1_iter6 <= ap_enable_reg_pp1_iter5;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_enable_reg_pp1_iter7 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp1_stage0_subdone)) begin
            ap_enable_reg_pp1_iter7 <= ap_enable_reg_pp1_iter6;
        end else if (((1'b1 == DATA_OUT_AWREADY) & (1'b1 == ap_CS_fsm_state15))) begin
            ap_enable_reg_pp1_iter7 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        i_reg_176 <= 20'd0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln16_reg_333 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        i_reg_176 <= add_ln16_reg_337;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp1_iter1 == 1'b1) & (exitcond1_reg_376 == 1'd0) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        loop_index_reg_210 <= empty_22_reg_380;
    end else if (((1'b1 == DATA_OUT_AWREADY) & (1'b1 == ap_CS_fsm_state15))) begin
        loop_index_reg_210 <= 20'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        voxel_z_offset_reg_199 <= 28'd0;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        voxel_z_offset_reg_199 <= add_ln21_reg_347;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        z_reg_188 <= 8'd0;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        z_reg_188 <= z_1_reg_355;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln16_reg_333 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        DATA_IN_addr_read_reg_342 <= DATA_IN_RDATA;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        DATA_IN_addr_reg_327 <= img_in;
        voxelData_out_read_reg_322 <= voxelData_out;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        DATA_OUT_addr_reg_370 <= add_ln26_fu_288_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add_ln16_reg_337 <= add_ln16_fu_233_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        add_ln21_reg_347 <= add_ln21_fu_244_p2;
        z_1_reg_355 <= z_1_fu_256_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp1_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        empty_22_reg_380 <= empty_22_fu_305_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        exitcond1_reg_376 <= exitcond1_fu_299_p2;
        ifzero_reg_390_pp1_iter1_reg <= ifzero_reg_390;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        i_reg_176_pp0_iter1_reg <= i_reg_176;
        icmp_ln16_reg_333 <= icmp_ln16_fu_227_p2;
        icmp_ln16_reg_333_pp0_iter1_reg <= icmp_ln16_reg_333;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond1_fu_299_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        ifzero_reg_390 <= ifzero_fu_316_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp1_stage0_11001)) begin
        ifzero_reg_390_pp1_iter2_reg <= ifzero_reg_390_pp1_iter1_reg;
        ifzero_reg_390_pp1_iter3_reg <= ifzero_reg_390_pp1_iter2_reg;
        ifzero_reg_390_pp1_iter4_reg <= ifzero_reg_390_pp1_iter3_reg;
        ifzero_reg_390_pp1_iter5_reg <= ifzero_reg_390_pp1_iter4_reg;
        ifzero_reg_390_pp1_iter6_reg <= ifzero_reg_390_pp1_iter5_reg;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        img_buffer_load_reg_394 <= img_buffer_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln21_fu_250_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state13))) begin
        tmp_1_reg_365 <= {{voxel_z_offset_reg_199[27:6]}};
    end
end

always @ (*) begin
    if (((1'b1 == DATA_IN_ARREADY) & (1'b1 == ap_CS_fsm_state2))) begin
        DATA_IN_ARVALID = 1'b1;
    end else begin
        DATA_IN_ARVALID = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln16_reg_333 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        DATA_IN_RREADY = 1'b1;
    end else begin
        DATA_IN_RREADY = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        DATA_IN_blk_n_AR = m_axi_DATA_IN_ARREADY;
    end else begin
        DATA_IN_blk_n_AR = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln16_reg_333 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        DATA_IN_blk_n_R = m_axi_DATA_IN_RVALID;
    end else begin
        DATA_IN_blk_n_R = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == DATA_OUT_AWREADY) & (1'b1 == ap_CS_fsm_state15))) begin
        DATA_OUT_AWVALID = 1'b1;
    end else begin
        DATA_OUT_AWVALID = 1'b0;
    end
end

always @ (*) begin
    if (((ifzero_reg_390_pp1_iter6_reg == 1'd1) & (ap_enable_reg_pp1_iter7 == 1'b1) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        DATA_OUT_BREADY = 1'b1;
    end else begin
        DATA_OUT_BREADY = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp1_iter2 == 1'b1) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        DATA_OUT_WVALID = 1'b1;
    end else begin
        DATA_OUT_WVALID = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        DATA_OUT_blk_n_AW = m_axi_DATA_OUT_AWREADY;
    end else begin
        DATA_OUT_blk_n_AW = 1'b1;
    end
end

always @ (*) begin
    if (((ifzero_reg_390_pp1_iter6_reg == 1'd1) & (ap_enable_reg_pp1_iter7 == 1'b1) & (1'b0 == ap_block_pp1_stage0))) begin
        DATA_OUT_blk_n_B = m_axi_DATA_OUT_BVALID;
    end else begin
        DATA_OUT_blk_n_B = 1'b1;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp1_iter2 == 1'b1) & (1'b0 == ap_block_pp1_stage0))) begin
        DATA_OUT_blk_n_W = m_axi_DATA_OUT_WREADY;
    end else begin
        DATA_OUT_blk_n_W = 1'b1;
    end
end

always @ (*) begin
    if ((icmp_ln16_fu_227_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state9 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state9 = 1'b0;
    end
end

always @ (*) begin
    if ((exitcond1_fu_299_p2 == 1'd1)) begin
        ap_condition_pp1_exit_iter0_state16 = 1'b1;
    end else begin
        ap_condition_pp1_exit_iter0_state16 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln21_fu_250_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state13))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp1_iter6 == 1'b0) & (ap_enable_reg_pp1_iter5 == 1'b0) & (ap_enable_reg_pp1_iter4 == 1'b0) & (ap_enable_reg_pp1_iter3 == 1'b0) & (ap_enable_reg_pp1_iter1 == 1'b0) & (ap_enable_reg_pp1_iter0 == 1'b0) & (ap_enable_reg_pp1_iter7 == 1'b0) & (ap_enable_reg_pp1_iter2 == 1'b0))) begin
        ap_idle_pp1 = 1'b1;
    end else begin
        ap_idle_pp1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln16_reg_333 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        ap_phi_mux_i_phi_fu_180_p4 = add_ln16_reg_337;
    end else begin
        ap_phi_mux_i_phi_fu_180_p4 = i_reg_176;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp1_iter1 == 1'b1) & (exitcond1_reg_376 == 1'd0) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0))) begin
        ap_phi_mux_loop_index_phi_fu_214_p4 = empty_22_reg_380;
    end else begin
        ap_phi_mux_loop_index_phi_fu_214_p4 = loop_index_reg_210;
    end
end

always @ (*) begin
    if (((icmp_ln21_fu_250_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state13))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp1_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0))) begin
        img_buffer_address0 = loop_index_cast_fu_311_p1;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        img_buffer_address0 = i_cast_fu_239_p1;
    end else begin
        img_buffer_address0 = 'bx;
    end
end

always @ (*) begin
    if ((((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp1_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001)))) begin
        img_buffer_ce0 = 1'b1;
    end else begin
        img_buffer_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln16_reg_333_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        img_buffer_we0 = 1'b1;
    end else begin
        img_buffer_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        offset_map_buffer_0_ce0 = 1'b1;
    end else begin
        offset_map_buffer_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b1 == DATA_IN_ARREADY) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln16_fu_227_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b0)) & ~((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b0)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b0)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln16_fu_227_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b0)))) begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            if (((icmp_ln21_fu_250_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state13))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
            if (((1'b1 == DATA_OUT_AWREADY) & (1'b1 == ap_CS_fsm_state15))) begin
                ap_NS_fsm = ap_ST_fsm_pp1_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state15;
            end
        end
        ap_ST_fsm_pp1_stage0 : begin
            if ((~((ap_enable_reg_pp1_iter1 == 1'b0) & (ap_enable_reg_pp1_iter0 == 1'b1) & (exitcond1_fu_299_p2 == 1'd1) & (1'b0 == ap_block_pp1_stage0_subdone)) & ~((ap_enable_reg_pp1_iter6 == 1'b0) & (ap_enable_reg_pp1_iter7 == 1'b1) & (1'b0 == ap_block_pp1_stage0_subdone)))) begin
                ap_NS_fsm = ap_ST_fsm_pp1_stage0;
            end else if ((((ap_enable_reg_pp1_iter6 == 1'b0) & (ap_enable_reg_pp1_iter7 == 1'b1) & (1'b0 == ap_block_pp1_stage0_subdone)) | ((ap_enable_reg_pp1_iter1 == 1'b0) & (ap_enable_reg_pp1_iter0 == 1'b1) & (exitcond1_fu_299_p2 == 1'd1) & (1'b0 == ap_block_pp1_stage0_subdone)))) begin
                ap_NS_fsm = ap_ST_fsm_state24;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp1_stage0;
            end
        end
        ap_ST_fsm_state24 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln16_fu_233_p2 = (ap_phi_mux_i_phi_fu_180_p4 + 20'd1);

assign add_ln21_fu_244_p2 = (voxel_z_offset_reg_199 + 28'd1000000);

assign add_ln26_fu_288_p2 = (zext_ln26_fu_284_p1 + voxelData_out_read_reg_322);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd8];

assign ap_CS_fsm_pp1_stage0 = ap_CS_fsm[32'd13];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state13 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state14 = ap_CS_fsm[32'd11];

assign ap_CS_fsm_state15 = ap_CS_fsm[32'd12];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state24 = ap_CS_fsm[32'd14];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((1'b0 == DATA_IN_RVALID) & (icmp_ln16_reg_333 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((1'b0 == DATA_IN_RVALID) & (icmp_ln16_reg_333 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

assign ap_block_pp1_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp1_stage0_01001 = ((1'b0 == DATA_OUT_BVALID) & (ifzero_reg_390_pp1_iter6_reg == 1'd1) & (ap_enable_reg_pp1_iter7 == 1'b1));
end

always @ (*) begin
    ap_block_pp1_stage0_11001 = (((1'b0 == DATA_OUT_BVALID) & (ifzero_reg_390_pp1_iter6_reg == 1'd1) & (ap_enable_reg_pp1_iter7 == 1'b1)) | ((1'b0 == DATA_OUT_WREADY) & (ap_enable_reg_pp1_iter2 == 1'b1)));
end

always @ (*) begin
    ap_block_pp1_stage0_subdone = (((1'b0 == DATA_OUT_BVALID) & (ifzero_reg_390_pp1_iter6_reg == 1'd1) & (ap_enable_reg_pp1_iter7 == 1'b1)) | ((1'b0 == DATA_OUT_WREADY) & (ap_enable_reg_pp1_iter2 == 1'b1)));
end

always @ (*) begin
    ap_block_state10_pp0_stage0_iter1 = ((1'b0 == DATA_IN_RVALID) & (icmp_ln16_reg_333 == 1'd0));
end

assign ap_block_state11_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state16_pp1_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state17_pp1_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state18_pp1_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state19_pp1_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state20_pp1_stage0_iter4 = ~(1'b1 == 1'b1);

assign ap_block_state21_pp1_stage0_iter5 = ~(1'b1 == 1'b1);

assign ap_block_state22_pp1_stage0_iter6 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state23_pp1_stage0_iter7 = ((1'b0 == DATA_OUT_BVALID) & (ifzero_reg_390_pp1_iter6_reg == 1'd1));
end

assign ap_block_state9_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_pp1 = (ap_idle_pp1 ^ 1'b1);

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign empty_22_fu_305_p2 = (ap_phi_mux_loop_index_phi_fu_214_p4 + 20'd1);

assign exitcond1_fu_299_p2 = ((ap_phi_mux_loop_index_phi_fu_214_p4 == 20'd1000000) ? 1'b1 : 1'b0);

assign i_cast_fu_239_p1 = i_reg_176_pp0_iter1_reg;

assign icmp_ln16_fu_227_p2 = ((ap_phi_mux_i_phi_fu_180_p4 == 20'd1000000) ? 1'b1 : 1'b0);

assign icmp_ln21_fu_250_p2 = ((z_reg_188 == 8'd200) ? 1'b1 : 1'b0);

assign ifzero_fu_316_p2 = ((empty_22_fu_305_p2 == 20'd1000000) ? 1'b1 : 1'b0);

assign loop_index_cast_fu_311_p1 = ap_phi_mux_loop_index_phi_fu_214_p4;

assign offset_map_buffer_0_address0 = zext_ln22_fu_262_p1;

assign tmp_fu_277_p3 = {{tmp_1_reg_365}, {offset_map_buffer_0_q0}};

assign z_1_fu_256_p2 = (z_reg_188 + 8'd1);

assign zext_ln22_fu_262_p1 = z_reg_188;

assign zext_ln26_fu_284_p1 = tmp_fu_277_p3;

endmodule //Restr_axi
