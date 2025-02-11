// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.1
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module toe_pkgStitcher (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        txEng_tcpPkgBuffer2_V_dout,
        txEng_tcpPkgBuffer2_V_empty_n,
        txEng_tcpPkgBuffer2_V_read,
        txEng_tcpChecksumFifo_V_V_dout,
        txEng_tcpChecksumFifo_V_V_empty_n,
        txEng_tcpChecksumFifo_V_V_read,
        txEng_ipHeaderBuffer_V_dout,
        txEng_ipHeaderBuffer_V_empty_n,
        txEng_ipHeaderBuffer_V_read,
        ipTxDataOut_V_data_V_din,
        ipTxDataOut_V_data_V_full_n,
        ipTxDataOut_V_data_V_write,
        ipTxDataOut_V_keep_V_din,
        ipTxDataOut_V_keep_V_full_n,
        ipTxDataOut_V_keep_V_write,
        ipTxDataOut_V_last_V_din,
        ipTxDataOut_V_last_V_full_n,
        ipTxDataOut_V_last_V_write
);

parameter    ap_const_logic_1 = 1'b1;
parameter    ap_const_logic_0 = 1'b0;
parameter    ap_ST_pp0_stg0_fsm_0 = 1'b1;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv1_1 = 1'b1;
parameter    ap_const_lv3_4 = 3'b100;
parameter    ap_const_lv1_0 = 1'b0;
parameter    ap_const_lv3_3 = 3'b11;
parameter    ap_const_lv3_2 = 3'b10;
parameter    ap_const_lv3_1 = 3'b1;
parameter    ap_const_lv3_0 = 3'b000;
parameter    ap_const_lv8_FF = 8'b11111111;
parameter    ap_const_lv32_40 = 32'b1000000;
parameter    ap_const_lv32_47 = 32'b1000111;
parameter    ap_const_lv32_48 = 32'b1001000;
parameter    ap_const_lv32_8 = 32'b1000;
parameter    ap_const_lv32_F = 32'b1111;
parameter    ap_const_lv32_20 = 32'b100000;
parameter    ap_const_lv32_2F = 32'b101111;
parameter    ap_const_lv3_5 = 3'b101;
parameter    ap_const_lv32_3F = 32'b111111;
parameter    ap_const_lv2_1 = 2'b1;
parameter    ap_true = 1'b1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [72:0] txEng_tcpPkgBuffer2_V_dout;
input   txEng_tcpPkgBuffer2_V_empty_n;
output   txEng_tcpPkgBuffer2_V_read;
input  [15:0] txEng_tcpChecksumFifo_V_V_dout;
input   txEng_tcpChecksumFifo_V_V_empty_n;
output   txEng_tcpChecksumFifo_V_V_read;
input  [72:0] txEng_ipHeaderBuffer_V_dout;
input   txEng_ipHeaderBuffer_V_empty_n;
output   txEng_ipHeaderBuffer_V_read;
output  [63:0] ipTxDataOut_V_data_V_din;
input   ipTxDataOut_V_data_V_full_n;
output   ipTxDataOut_V_data_V_write;
output  [7:0] ipTxDataOut_V_keep_V_din;
input   ipTxDataOut_V_keep_V_full_n;
output   ipTxDataOut_V_keep_V_write;
output  [0:0] ipTxDataOut_V_last_V_din;
input   ipTxDataOut_V_last_V_full_n;
output   ipTxDataOut_V_last_V_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg txEng_tcpPkgBuffer2_V_read;
reg txEng_tcpChecksumFifo_V_V_read;
reg txEng_ipHeaderBuffer_V_read;
reg[63:0] ipTxDataOut_V_data_V_din;
reg[7:0] ipTxDataOut_V_keep_V_din;
reg[0:0] ipTxDataOut_V_last_V_din;
reg    ap_done_reg = 1'b0;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm = 1'b1;
reg    ap_sig_cseq_ST_pp0_stg0_fsm_0;
reg    ap_sig_bdd_20;
wire    ap_reg_ppiten_pp0_it0;
reg    ap_reg_ppiten_pp0_it1 = 1'b0;
wire   [0:0] grp_nbreadreq_fu_138_p3;
wire   [0:0] tmp_136_nbreadreq_fu_146_p3;
wire   [0:0] grp_nbreadreq_fu_166_p3;
reg    ap_sig_bdd_106;
wire    ipTxDataOut_V_data_V1_status;
reg   [2:0] ps_wordCount_V_1_load_reg_364;
reg   [0:0] tmp_134_reg_368;
reg   [0:0] tmp_136_reg_372;
reg   [0:0] tmp_133_reg_386;
reg   [0:0] tmp_132_reg_400;
reg   [0:0] tmp_135_reg_404;
reg   [0:0] tmp_131_reg_418;
reg   [0:0] tmp_reg_437;
reg    ap_sig_bdd_164;
reg   [2:0] ps_wordCount_V_1 = 3'b000;
reg   [7:0] reg_214;
wire   [0:0] grp_fu_206_p3;
reg   [0:0] sendWord_last_V_2_reg_376;
wire   [63:0] p_Result_20_fu_253_p5;
reg   [63:0] p_Result_20_reg_381;
wire   [63:0] sendWord_data_V_1_fu_279_p1;
reg   [63:0] sendWord_data_V_1_reg_390;
reg   [0:0] sendWord_last_V_1_reg_395;
wire   [31:0] tmp_423_fu_289_p1;
reg   [31:0] tmp_423_reg_408;
reg   [31:0] p_Result_s_reg_413;
wire   [63:0] sendWord_data_V_fu_309_p1;
reg   [63:0] sendWord_data_V_reg_422;
reg   [7:0] sendWord_keep_V_reg_427;
reg   [0:0] sendWord_last_V_reg_432;
wire   [63:0] sendWord_data_V_2_fu_347_p1;
reg   [63:0] sendWord_data_V_2_reg_441;
reg   [0:0] sendWord_last_V_3_reg_446;
reg    ipTxDataOut_V_data_V1_update;
wire   [63:0] p_Result_s_127_fu_357_p3;
wire   [2:0] p_tmp_s_fu_265_p3;
wire   [2:0] tmp_cast_fu_337_p1;
wire   [7:0] tmp_426_fu_241_p1;
wire   [7:0] p_Result_54_fu_231_p4;
wire   [63:0] p_Val2_36_fu_227_p1;
wire   [15:0] tmp_145_fu_245_p3;
wire   [1:0] tmp_416_fu_223_p1;
wire   [1:0] tmp_s_fu_331_p2;
reg   [0:0] ap_NS_fsm;
reg    ap_sig_pprstidle_pp0;
reg    ap_sig_bdd_120;
reg    ap_sig_bdd_126;
reg    ap_sig_bdd_136;
reg    ap_sig_bdd_145;
reg    ap_sig_bdd_159;
reg    ap_sig_bdd_240;
reg    ap_sig_bdd_52;
reg    ap_sig_bdd_62;
reg    ap_sig_bdd_75;
reg    ap_sig_bdd_84;
reg    ap_sig_bdd_258;
reg    ap_sig_bdd_171;




/// the current state (ap_CS_fsm) of the state machine. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_CS_fsm
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_pp0_stg0_fsm_0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

/// ap_done_reg assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_done_reg
    if (ap_rst == 1'b1) begin
        ap_done_reg <= ap_const_logic_0;
    end else begin
        if ((ap_const_logic_1 == ap_continue)) begin
            ap_done_reg <= ap_const_logic_0;
        end else if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_164 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
            ap_done_reg <= ap_const_logic_1;
        end
    end
end

/// ap_reg_ppiten_pp0_it1 assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_reg_ppiten_pp0_it1
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it1 <= ap_const_logic_0;
    end else begin
        if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_164 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
            ap_reg_ppiten_pp0_it1 <= ap_reg_ppiten_pp0_it0;
        end
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (ap_sig_bdd_171) begin
        if (ap_sig_bdd_258) begin
            ps_wordCount_V_1 <= ap_const_lv3_0;
        end else if (ap_sig_bdd_84) begin
            ps_wordCount_V_1 <= tmp_cast_fu_337_p1;
        end else if (ap_sig_bdd_75) begin
            ps_wordCount_V_1 <= ap_const_lv3_3;
        end else if (ap_sig_bdd_62) begin
            ps_wordCount_V_1 <= ap_const_lv3_4;
        end else if (ap_sig_bdd_52) begin
            ps_wordCount_V_1 <= p_tmp_s_fu_265_p3;
        end
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ps_wordCount_V_1 == ap_const_lv3_4) & ~(grp_nbreadreq_fu_138_p3 == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_136_nbreadreq_fu_146_p3) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_164 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        p_Result_20_reg_381 <= p_Result_20_fu_253_p5;
        sendWord_last_V_2_reg_376 <= txEng_tcpPkgBuffer2_V_dout[ap_const_lv32_48];
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~(grp_nbreadreq_fu_138_p3 == ap_const_lv1_0) & (ps_wordCount_V_1 == ap_const_lv3_2) & ~(ap_const_lv1_0 == grp_nbreadreq_fu_166_p3) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_164 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        p_Result_s_reg_413 <= {{txEng_tcpPkgBuffer2_V_dout[ap_const_lv32_3F : ap_const_lv32_20]}};
        tmp_423_reg_408 <= tmp_423_fu_289_p1;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_164 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        ps_wordCount_V_1_load_reg_364 <= ps_wordCount_V_1;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ps_wordCount_V_1 == ap_const_lv3_4) & ~(grp_nbreadreq_fu_138_p3 == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_136_nbreadreq_fu_146_p3) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_164 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))) | ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~(grp_nbreadreq_fu_138_p3 == ap_const_lv1_0) & (ps_wordCount_V_1 == ap_const_lv3_3) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_164 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))) | ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~(grp_nbreadreq_fu_138_p3 == ap_const_lv1_0) & ~(ps_wordCount_V_1 == ap_const_lv3_4) & ~(ps_wordCount_V_1 == ap_const_lv3_3) & ~(ps_wordCount_V_1 == ap_const_lv3_2) & ~(ps_wordCount_V_1 == ap_const_lv3_1) & ~(ps_wordCount_V_1 == ap_const_lv3_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_164 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))))) begin
        reg_214 <= {{txEng_tcpPkgBuffer2_V_dout[ap_const_lv32_47 : ap_const_lv32_40]}};
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~(grp_nbreadreq_fu_138_p3 == ap_const_lv1_0) & (ps_wordCount_V_1 == ap_const_lv3_3) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_164 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        sendWord_data_V_1_reg_390 <= sendWord_data_V_1_fu_279_p1;
        sendWord_last_V_1_reg_395 <= txEng_tcpPkgBuffer2_V_dout[ap_const_lv32_48];
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~(grp_nbreadreq_fu_138_p3 == ap_const_lv1_0) & ~(ps_wordCount_V_1 == ap_const_lv3_4) & ~(ps_wordCount_V_1 == ap_const_lv3_3) & ~(ps_wordCount_V_1 == ap_const_lv3_2) & ~(ps_wordCount_V_1 == ap_const_lv3_1) & ~(ps_wordCount_V_1 == ap_const_lv3_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_164 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        sendWord_data_V_2_reg_441 <= sendWord_data_V_2_fu_347_p1;
        sendWord_last_V_3_reg_446 <= txEng_tcpPkgBuffer2_V_dout[ap_const_lv32_48];
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ((~(ap_const_lv1_0 == grp_nbreadreq_fu_166_p3) & (ps_wordCount_V_1 == ap_const_lv3_1)) | (~(ap_const_lv1_0 == grp_nbreadreq_fu_166_p3) & (ps_wordCount_V_1 == ap_const_lv3_0))) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_164 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        sendWord_data_V_reg_422 <= sendWord_data_V_fu_309_p1;
        sendWord_keep_V_reg_427 <= {{txEng_ipHeaderBuffer_V_dout[ap_const_lv32_47 : ap_const_lv32_40]}};
        sendWord_last_V_reg_432 <= txEng_ipHeaderBuffer_V_dout[ap_const_lv32_48];
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_164 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))) & ((ps_wordCount_V_1 == ap_const_lv3_1) | (ps_wordCount_V_1 == ap_const_lv3_0)))) begin
        tmp_131_reg_418 <= grp_nbreadreq_fu_166_p3;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ps_wordCount_V_1 == ap_const_lv3_2) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_164 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        tmp_132_reg_400 <= grp_nbreadreq_fu_166_p3;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ps_wordCount_V_1 == ap_const_lv3_3) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_164 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        tmp_133_reg_386 <= grp_nbreadreq_fu_138_p3;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ps_wordCount_V_1 == ap_const_lv3_4) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_164 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        tmp_134_reg_368 <= grp_nbreadreq_fu_138_p3;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ps_wordCount_V_1 == ap_const_lv3_2) & ~(ap_const_lv1_0 == grp_nbreadreq_fu_166_p3) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_164 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        tmp_135_reg_404 <= grp_nbreadreq_fu_138_p3;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ps_wordCount_V_1 == ap_const_lv3_4) & ~(grp_nbreadreq_fu_138_p3 == ap_const_lv1_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_164 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        tmp_136_reg_372 <= tmp_136_nbreadreq_fu_146_p3;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~(ps_wordCount_V_1 == ap_const_lv3_4) & ~(ps_wordCount_V_1 == ap_const_lv3_3) & ~(ps_wordCount_V_1 == ap_const_lv3_2) & ~(ps_wordCount_V_1 == ap_const_lv3_1) & ~(ps_wordCount_V_1 == ap_const_lv3_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_164 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        tmp_reg_437 <= grp_nbreadreq_fu_138_p3;
    end
end

/// ap_done assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_sig_bdd_106 or ap_sig_bdd_164)
begin
    if (((ap_const_logic_1 == ap_done_reg) | ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_164 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))))) begin
        ap_done = ap_const_logic_1;
    end else begin
        ap_done = ap_const_logic_0;
    end
end

/// ap_idle assign process. ///
always @ (ap_start or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1)
begin
    if ((~(ap_const_logic_1 == ap_start) & (ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_0 == ap_reg_ppiten_pp0_it0) & (ap_const_logic_0 == ap_reg_ppiten_pp0_it1))) begin
        ap_idle = ap_const_logic_1;
    end else begin
        ap_idle = ap_const_logic_0;
    end
end

/// ap_ready assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_sig_bdd_106 or ap_sig_bdd_164)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_164 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        ap_ready = ap_const_logic_1;
    end else begin
        ap_ready = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_pp0_stg0_fsm_0 assign process. ///
always @ (ap_sig_bdd_20)
begin
    if (ap_sig_bdd_20) begin
        ap_sig_cseq_ST_pp0_stg0_fsm_0 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_pp0_stg0_fsm_0 = ap_const_logic_0;
    end
end

/// ap_sig_pprstidle_pp0 assign process. ///
always @ (ap_start or ap_reg_ppiten_pp0_it0)
begin
    if (((ap_const_logic_0 == ap_reg_ppiten_pp0_it0) & (ap_const_logic_0 == ap_start))) begin
        ap_sig_pprstidle_pp0 = ap_const_logic_1;
    end else begin
        ap_sig_pprstidle_pp0 = ap_const_logic_0;
    end
end

/// ipTxDataOut_V_data_V1_update assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_sig_bdd_106 or ps_wordCount_V_1_load_reg_364 or tmp_134_reg_368 or tmp_136_reg_372 or tmp_133_reg_386 or tmp_132_reg_400 or tmp_135_reg_404 or tmp_131_reg_418 or tmp_reg_437 or ap_sig_bdd_164)
begin
    if ((((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_lv3_4 == ps_wordCount_V_1_load_reg_364) & ~(ap_const_lv1_0 == tmp_134_reg_368) & ~(ap_const_lv1_0 == tmp_136_reg_372) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_164 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))) | ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_lv3_3 == ps_wordCount_V_1_load_reg_364) & ~(ap_const_lv1_0 == tmp_133_reg_386) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_164 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))) | ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_lv3_2 == ps_wordCount_V_1_load_reg_364) & ~(ap_const_lv1_0 == tmp_132_reg_400) & ~(ap_const_lv1_0 == tmp_135_reg_404) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_164 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))) | ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (((ap_const_lv3_1 == ps_wordCount_V_1_load_reg_364) & ~(ap_const_lv1_0 == tmp_131_reg_418)) | (~(ap_const_lv1_0 == tmp_131_reg_418) & (ap_const_lv3_0 == ps_wordCount_V_1_load_reg_364))) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_164 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))) | ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~(ap_const_lv3_4 == ps_wordCount_V_1_load_reg_364) & ~(ap_const_lv3_3 == ps_wordCount_V_1_load_reg_364) & ~(ap_const_lv3_2 == ps_wordCount_V_1_load_reg_364) & ~(ap_const_lv3_1 == ps_wordCount_V_1_load_reg_364) & ~(ap_const_lv3_0 == ps_wordCount_V_1_load_reg_364) & ~(ap_const_lv1_0 == tmp_reg_437) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_164 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))))) begin
        ipTxDataOut_V_data_V1_update = ap_const_logic_1;
    end else begin
        ipTxDataOut_V_data_V1_update = ap_const_logic_0;
    end
end

/// ipTxDataOut_V_data_V_din assign process. ///
always @ (p_Result_20_reg_381 or sendWord_data_V_1_reg_390 or sendWord_data_V_reg_422 or sendWord_data_V_2_reg_441 or p_Result_s_127_fu_357_p3 or ap_sig_bdd_120 or ap_sig_bdd_126 or ap_sig_bdd_136 or ap_sig_bdd_145 or ap_sig_bdd_159 or ap_sig_bdd_240)
begin
    if (ap_sig_bdd_240) begin
        if (ap_sig_bdd_159) begin
            ipTxDataOut_V_data_V_din = sendWord_data_V_2_reg_441;
        end else if (ap_sig_bdd_145) begin
            ipTxDataOut_V_data_V_din = sendWord_data_V_reg_422;
        end else if (ap_sig_bdd_136) begin
            ipTxDataOut_V_data_V_din = p_Result_s_127_fu_357_p3;
        end else if (ap_sig_bdd_126) begin
            ipTxDataOut_V_data_V_din = sendWord_data_V_1_reg_390;
        end else if (ap_sig_bdd_120) begin
            ipTxDataOut_V_data_V_din = p_Result_20_reg_381;
        end else begin
            ipTxDataOut_V_data_V_din = 'bx;
        end
    end else begin
        ipTxDataOut_V_data_V_din = 'bx;
    end
end

/// ipTxDataOut_V_keep_V_din assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_sig_bdd_106 or ps_wordCount_V_1_load_reg_364 or tmp_134_reg_368 or tmp_136_reg_372 or tmp_133_reg_386 or tmp_132_reg_400 or tmp_135_reg_404 or tmp_131_reg_418 or tmp_reg_437 or ap_sig_bdd_164 or reg_214 or sendWord_keep_V_reg_427)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (((ap_const_lv3_1 == ps_wordCount_V_1_load_reg_364) & ~(ap_const_lv1_0 == tmp_131_reg_418)) | (~(ap_const_lv1_0 == tmp_131_reg_418) & (ap_const_lv3_0 == ps_wordCount_V_1_load_reg_364))) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_164 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        ipTxDataOut_V_keep_V_din = sendWord_keep_V_reg_427;
    end else if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_lv3_2 == ps_wordCount_V_1_load_reg_364) & ~(ap_const_lv1_0 == tmp_132_reg_400) & ~(ap_const_lv1_0 == tmp_135_reg_404) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_164 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        ipTxDataOut_V_keep_V_din = ap_const_lv8_FF;
    end else if ((((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_lv3_4 == ps_wordCount_V_1_load_reg_364) & ~(ap_const_lv1_0 == tmp_134_reg_368) & ~(ap_const_lv1_0 == tmp_136_reg_372) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_164 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))) | ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_lv3_3 == ps_wordCount_V_1_load_reg_364) & ~(ap_const_lv1_0 == tmp_133_reg_386) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_164 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))) | ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~(ap_const_lv3_4 == ps_wordCount_V_1_load_reg_364) & ~(ap_const_lv3_3 == ps_wordCount_V_1_load_reg_364) & ~(ap_const_lv3_2 == ps_wordCount_V_1_load_reg_364) & ~(ap_const_lv3_1 == ps_wordCount_V_1_load_reg_364) & ~(ap_const_lv3_0 == ps_wordCount_V_1_load_reg_364) & ~(ap_const_lv1_0 == tmp_reg_437) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_164 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))))) begin
        ipTxDataOut_V_keep_V_din = reg_214;
    end else begin
        ipTxDataOut_V_keep_V_din = 'bx;
    end
end

/// ipTxDataOut_V_last_V_din assign process. ///
always @ (sendWord_last_V_2_reg_376 or sendWord_last_V_1_reg_395 or sendWord_last_V_reg_432 or sendWord_last_V_3_reg_446 or ap_sig_bdd_120 or ap_sig_bdd_126 or ap_sig_bdd_136 or ap_sig_bdd_145 or ap_sig_bdd_159 or ap_sig_bdd_240)
begin
    if (ap_sig_bdd_240) begin
        if (ap_sig_bdd_159) begin
            ipTxDataOut_V_last_V_din = sendWord_last_V_3_reg_446;
        end else if (ap_sig_bdd_145) begin
            ipTxDataOut_V_last_V_din = sendWord_last_V_reg_432;
        end else if (ap_sig_bdd_136) begin
            ipTxDataOut_V_last_V_din = ap_const_lv1_0;
        end else if (ap_sig_bdd_126) begin
            ipTxDataOut_V_last_V_din = sendWord_last_V_1_reg_395;
        end else if (ap_sig_bdd_120) begin
            ipTxDataOut_V_last_V_din = sendWord_last_V_2_reg_376;
        end else begin
            ipTxDataOut_V_last_V_din = 'bx;
        end
    end else begin
        ipTxDataOut_V_last_V_din = 'bx;
    end
end

/// txEng_ipHeaderBuffer_V_read assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or grp_nbreadreq_fu_138_p3 or grp_nbreadreq_fu_166_p3 or ap_sig_bdd_106 or ap_sig_bdd_164 or ps_wordCount_V_1)
begin
    if ((((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~(grp_nbreadreq_fu_138_p3 == ap_const_lv1_0) & (ps_wordCount_V_1 == ap_const_lv3_2) & ~(ap_const_lv1_0 == grp_nbreadreq_fu_166_p3) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_164 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))) | ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ((~(ap_const_lv1_0 == grp_nbreadreq_fu_166_p3) & (ps_wordCount_V_1 == ap_const_lv3_1)) | (~(ap_const_lv1_0 == grp_nbreadreq_fu_166_p3) & (ps_wordCount_V_1 == ap_const_lv3_0))) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_164 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))))) begin
        txEng_ipHeaderBuffer_V_read = ap_const_logic_1;
    end else begin
        txEng_ipHeaderBuffer_V_read = ap_const_logic_0;
    end
end

/// txEng_tcpChecksumFifo_V_V_read assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or grp_nbreadreq_fu_138_p3 or tmp_136_nbreadreq_fu_146_p3 or ap_sig_bdd_106 or ap_sig_bdd_164 or ps_wordCount_V_1)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (ps_wordCount_V_1 == ap_const_lv3_4) & ~(grp_nbreadreq_fu_138_p3 == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_136_nbreadreq_fu_146_p3) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_164 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        txEng_tcpChecksumFifo_V_V_read = ap_const_logic_1;
    end else begin
        txEng_tcpChecksumFifo_V_V_read = ap_const_logic_0;
    end
end

/// txEng_tcpPkgBuffer2_V_read assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or grp_nbreadreq_fu_138_p3 or tmp_136_nbreadreq_fu_146_p3 or grp_nbreadreq_fu_166_p3 or ap_sig_bdd_106 or ap_sig_bdd_164 or ps_wordCount_V_1)
begin
    if ((((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (ps_wordCount_V_1 == ap_const_lv3_4) & ~(grp_nbreadreq_fu_138_p3 == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_136_nbreadreq_fu_146_p3) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_164 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))) | ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~(grp_nbreadreq_fu_138_p3 == ap_const_lv1_0) & (ps_wordCount_V_1 == ap_const_lv3_3) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_164 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))) | ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~(grp_nbreadreq_fu_138_p3 == ap_const_lv1_0) & (ps_wordCount_V_1 == ap_const_lv3_2) & ~(ap_const_lv1_0 == grp_nbreadreq_fu_166_p3) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_164 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))) | ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~(grp_nbreadreq_fu_138_p3 == ap_const_lv1_0) & ~(ps_wordCount_V_1 == ap_const_lv3_4) & ~(ps_wordCount_V_1 == ap_const_lv3_3) & ~(ps_wordCount_V_1 == ap_const_lv3_2) & ~(ps_wordCount_V_1 == ap_const_lv3_1) & ~(ps_wordCount_V_1 == ap_const_lv3_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_164 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))))) begin
        txEng_tcpPkgBuffer2_V_read = ap_const_logic_1;
    end else begin
        txEng_tcpPkgBuffer2_V_read = ap_const_logic_0;
    end
end
/// the next state (ap_NS_fsm) of the state machine. ///
always @ (ap_done_reg or ap_CS_fsm or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_sig_bdd_106 or ap_sig_bdd_164 or ap_sig_pprstidle_pp0)
begin
    case (ap_CS_fsm)
        ap_ST_pp0_stg0_fsm_0 : 
        begin
            ap_NS_fsm = ap_ST_pp0_stg0_fsm_0;
        end
        default : 
        begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_reg_ppiten_pp0_it0 = ap_start;

/// ap_sig_bdd_106 assign process. ///
always @ (ap_start or ap_done_reg or txEng_tcpPkgBuffer2_V_empty_n or grp_nbreadreq_fu_138_p3 or tmp_136_nbreadreq_fu_146_p3 or txEng_tcpChecksumFifo_V_V_empty_n or txEng_ipHeaderBuffer_V_empty_n or grp_nbreadreq_fu_166_p3 or ps_wordCount_V_1)
begin
    ap_sig_bdd_106 = (((txEng_tcpPkgBuffer2_V_empty_n == ap_const_logic_0) & (ps_wordCount_V_1 == ap_const_lv3_4) & ~(grp_nbreadreq_fu_138_p3 == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_136_nbreadreq_fu_146_p3)) | ((ps_wordCount_V_1 == ap_const_lv3_4) & ~(grp_nbreadreq_fu_138_p3 == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_136_nbreadreq_fu_146_p3) & (txEng_tcpChecksumFifo_V_V_empty_n == ap_const_logic_0)) | ((txEng_tcpPkgBuffer2_V_empty_n == ap_const_logic_0) & ~(grp_nbreadreq_fu_138_p3 == ap_const_lv1_0) & (ps_wordCount_V_1 == ap_const_lv3_3)) | (~(grp_nbreadreq_fu_138_p3 == ap_const_lv1_0) & (txEng_ipHeaderBuffer_V_empty_n == ap_const_logic_0) & (ps_wordCount_V_1 == ap_const_lv3_2) & ~(ap_const_lv1_0 == grp_nbreadreq_fu_166_p3)) | ((txEng_tcpPkgBuffer2_V_empty_n == ap_const_logic_0) & ~(grp_nbreadreq_fu_138_p3 == ap_const_lv1_0) & (ps_wordCount_V_1 == ap_const_lv3_2) & ~(ap_const_lv1_0 == grp_nbreadreq_fu_166_p3)) | ((txEng_ipHeaderBuffer_V_empty_n == ap_const_logic_0) & ((~(ap_const_lv1_0 == grp_nbreadreq_fu_166_p3) & (ps_wordCount_V_1 == ap_const_lv3_1)) | (~(ap_const_lv1_0 == grp_nbreadreq_fu_166_p3) & (ps_wordCount_V_1 == ap_const_lv3_0)))) | ((txEng_tcpPkgBuffer2_V_empty_n == ap_const_logic_0) & ~(grp_nbreadreq_fu_138_p3 == ap_const_lv1_0) & ~(ps_wordCount_V_1 == ap_const_lv3_4) & ~(ps_wordCount_V_1 == ap_const_lv3_3) & ~(ps_wordCount_V_1 == ap_const_lv3_2) & ~(ps_wordCount_V_1 == ap_const_lv3_1) & ~(ps_wordCount_V_1 == ap_const_lv3_0)) | (ap_start == ap_const_logic_0) | (ap_done_reg == ap_const_logic_1));
end

/// ap_sig_bdd_120 assign process. ///
always @ (ps_wordCount_V_1_load_reg_364 or tmp_134_reg_368 or tmp_136_reg_372)
begin
    ap_sig_bdd_120 = ((ap_const_lv3_4 == ps_wordCount_V_1_load_reg_364) & ~(ap_const_lv1_0 == tmp_134_reg_368) & ~(ap_const_lv1_0 == tmp_136_reg_372));
end

/// ap_sig_bdd_126 assign process. ///
always @ (ps_wordCount_V_1_load_reg_364 or tmp_133_reg_386)
begin
    ap_sig_bdd_126 = ((ap_const_lv3_3 == ps_wordCount_V_1_load_reg_364) & ~(ap_const_lv1_0 == tmp_133_reg_386));
end

/// ap_sig_bdd_136 assign process. ///
always @ (ps_wordCount_V_1_load_reg_364 or tmp_132_reg_400 or tmp_135_reg_404)
begin
    ap_sig_bdd_136 = ((ap_const_lv3_2 == ps_wordCount_V_1_load_reg_364) & ~(ap_const_lv1_0 == tmp_132_reg_400) & ~(ap_const_lv1_0 == tmp_135_reg_404));
end

/// ap_sig_bdd_145 assign process. ///
always @ (ps_wordCount_V_1_load_reg_364 or tmp_131_reg_418)
begin
    ap_sig_bdd_145 = (((ap_const_lv3_1 == ps_wordCount_V_1_load_reg_364) & ~(ap_const_lv1_0 == tmp_131_reg_418)) | (~(ap_const_lv1_0 == tmp_131_reg_418) & (ap_const_lv3_0 == ps_wordCount_V_1_load_reg_364)));
end

/// ap_sig_bdd_159 assign process. ///
always @ (ps_wordCount_V_1_load_reg_364 or tmp_reg_437)
begin
    ap_sig_bdd_159 = (~(ap_const_lv3_4 == ps_wordCount_V_1_load_reg_364) & ~(ap_const_lv3_3 == ps_wordCount_V_1_load_reg_364) & ~(ap_const_lv3_2 == ps_wordCount_V_1_load_reg_364) & ~(ap_const_lv3_1 == ps_wordCount_V_1_load_reg_364) & ~(ap_const_lv3_0 == ps_wordCount_V_1_load_reg_364) & ~(ap_const_lv1_0 == tmp_reg_437));
end

/// ap_sig_bdd_164 assign process. ///
always @ (ipTxDataOut_V_data_V1_status or ps_wordCount_V_1_load_reg_364 or tmp_134_reg_368 or tmp_136_reg_372 or tmp_133_reg_386 or tmp_132_reg_400 or tmp_135_reg_404 or tmp_131_reg_418 or tmp_reg_437)
begin
    ap_sig_bdd_164 = (((ipTxDataOut_V_data_V1_status == ap_const_logic_0) & (ap_const_lv3_4 == ps_wordCount_V_1_load_reg_364) & ~(ap_const_lv1_0 == tmp_134_reg_368) & ~(ap_const_lv1_0 == tmp_136_reg_372)) | ((ipTxDataOut_V_data_V1_status == ap_const_logic_0) & (ap_const_lv3_3 == ps_wordCount_V_1_load_reg_364) & ~(ap_const_lv1_0 == tmp_133_reg_386)) | ((ipTxDataOut_V_data_V1_status == ap_const_logic_0) & (ap_const_lv3_2 == ps_wordCount_V_1_load_reg_364) & ~(ap_const_lv1_0 == tmp_132_reg_400) & ~(ap_const_lv1_0 == tmp_135_reg_404)) | ((ipTxDataOut_V_data_V1_status == ap_const_logic_0) & (((ap_const_lv3_1 == ps_wordCount_V_1_load_reg_364) & ~(ap_const_lv1_0 == tmp_131_reg_418)) | (~(ap_const_lv1_0 == tmp_131_reg_418) & (ap_const_lv3_0 == ps_wordCount_V_1_load_reg_364)))) | ((ipTxDataOut_V_data_V1_status == ap_const_logic_0) & ~(ap_const_lv3_4 == ps_wordCount_V_1_load_reg_364) & ~(ap_const_lv3_3 == ps_wordCount_V_1_load_reg_364) & ~(ap_const_lv3_2 == ps_wordCount_V_1_load_reg_364) & ~(ap_const_lv3_1 == ps_wordCount_V_1_load_reg_364) & ~(ap_const_lv3_0 == ps_wordCount_V_1_load_reg_364) & ~(ap_const_lv1_0 == tmp_reg_437)));
end

/// ap_sig_bdd_171 assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_sig_bdd_106 or ap_sig_bdd_164)
begin
    ap_sig_bdd_171 = ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_164 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))));
end

/// ap_sig_bdd_20 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_20 = (ap_CS_fsm[ap_const_lv32_0] == ap_const_lv1_1);
end

/// ap_sig_bdd_240 assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_sig_bdd_106 or ap_sig_bdd_164)
begin
    ap_sig_bdd_240 = ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_164 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))));
end

/// ap_sig_bdd_258 assign process. ///
always @ (grp_nbreadreq_fu_138_p3 or ps_wordCount_V_1 or grp_fu_206_p3)
begin
    ap_sig_bdd_258 = (~(grp_nbreadreq_fu_138_p3 == ap_const_lv1_0) & ~(ps_wordCount_V_1 == ap_const_lv3_4) & ~(ps_wordCount_V_1 == ap_const_lv3_3) & ~(ps_wordCount_V_1 == ap_const_lv3_2) & ~(ps_wordCount_V_1 == ap_const_lv3_1) & ~(ps_wordCount_V_1 == ap_const_lv3_0) & ~(ap_const_lv1_0 == grp_fu_206_p3));
end

/// ap_sig_bdd_52 assign process. ///
always @ (grp_nbreadreq_fu_138_p3 or tmp_136_nbreadreq_fu_146_p3 or ps_wordCount_V_1)
begin
    ap_sig_bdd_52 = ((ps_wordCount_V_1 == ap_const_lv3_4) & ~(grp_nbreadreq_fu_138_p3 == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_136_nbreadreq_fu_146_p3));
end

/// ap_sig_bdd_62 assign process. ///
always @ (grp_nbreadreq_fu_138_p3 or ps_wordCount_V_1)
begin
    ap_sig_bdd_62 = (~(grp_nbreadreq_fu_138_p3 == ap_const_lv1_0) & (ps_wordCount_V_1 == ap_const_lv3_3));
end

/// ap_sig_bdd_75 assign process. ///
always @ (grp_nbreadreq_fu_138_p3 or grp_nbreadreq_fu_166_p3 or ps_wordCount_V_1)
begin
    ap_sig_bdd_75 = (~(grp_nbreadreq_fu_138_p3 == ap_const_lv1_0) & (ps_wordCount_V_1 == ap_const_lv3_2) & ~(ap_const_lv1_0 == grp_nbreadreq_fu_166_p3));
end

/// ap_sig_bdd_84 assign process. ///
always @ (grp_nbreadreq_fu_166_p3 or ps_wordCount_V_1)
begin
    ap_sig_bdd_84 = ((~(ap_const_lv1_0 == grp_nbreadreq_fu_166_p3) & (ps_wordCount_V_1 == ap_const_lv3_1)) | (~(ap_const_lv1_0 == grp_nbreadreq_fu_166_p3) & (ps_wordCount_V_1 == ap_const_lv3_0)));
end
assign grp_fu_206_p3 = txEng_tcpPkgBuffer2_V_dout[ap_const_lv32_48];
assign grp_nbreadreq_fu_138_p3 = txEng_tcpPkgBuffer2_V_empty_n;
assign grp_nbreadreq_fu_166_p3 = txEng_ipHeaderBuffer_V_empty_n;
assign ipTxDataOut_V_data_V1_status = (ipTxDataOut_V_data_V_full_n & ipTxDataOut_V_keep_V_full_n & ipTxDataOut_V_last_V_full_n);
assign ipTxDataOut_V_data_V_write = ipTxDataOut_V_data_V1_update;
assign ipTxDataOut_V_keep_V_write = ipTxDataOut_V_data_V1_update;
assign ipTxDataOut_V_last_V_write = ipTxDataOut_V_data_V1_update;
assign p_Result_20_fu_253_p5 = {{p_Val2_36_fu_227_p1[32'd63 : 32'd48]}, {tmp_145_fu_245_p3}, {p_Val2_36_fu_227_p1[32'd31 : 32'd0]}};
assign p_Result_54_fu_231_p4 = {{txEng_tcpChecksumFifo_V_V_dout[ap_const_lv32_F : ap_const_lv32_8]}};
assign p_Result_s_127_fu_357_p3 = {{p_Result_s_reg_413}, {tmp_423_reg_408}};
assign p_Val2_36_fu_227_p1 = txEng_tcpPkgBuffer2_V_dout[63:0];
assign p_tmp_s_fu_265_p3 = ((grp_fu_206_p3[0:0]===1'b1)? ap_const_lv3_0: ap_const_lv3_5);
assign sendWord_data_V_1_fu_279_p1 = txEng_tcpPkgBuffer2_V_dout[63:0];
assign sendWord_data_V_2_fu_347_p1 = txEng_tcpPkgBuffer2_V_dout[63:0];
assign sendWord_data_V_fu_309_p1 = txEng_ipHeaderBuffer_V_dout[63:0];
assign tmp_136_nbreadreq_fu_146_p3 = txEng_tcpChecksumFifo_V_V_empty_n;
assign tmp_145_fu_245_p3 = {{tmp_426_fu_241_p1}, {p_Result_54_fu_231_p4}};
assign tmp_416_fu_223_p1 = ps_wordCount_V_1[1:0];
assign tmp_423_fu_289_p1 = txEng_ipHeaderBuffer_V_dout[31:0];
assign tmp_426_fu_241_p1 = txEng_tcpChecksumFifo_V_V_dout[7:0];
assign tmp_cast_fu_337_p1 = tmp_s_fu_331_p2;
assign tmp_s_fu_331_p2 = (ap_const_lv2_1 + tmp_416_fu_223_p1);


endmodule //toe_pkgStitcher

