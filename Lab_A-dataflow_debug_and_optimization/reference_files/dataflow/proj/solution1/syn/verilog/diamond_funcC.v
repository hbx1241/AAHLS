// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Version: 2022.1
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module diamond_funcC (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        in_r_address0,
        in_r_ce0,
        in_r_q0,
        in_r_address1,
        in_r_ce1,
        in_r_q1,
        out_r_address0,
        out_r_ce0,
        out_r_we0,
        out_r_d0,
        out_r_address1,
        out_r_ce1,
        out_r_we1,
        out_r_d1
);

parameter    ap_ST_fsm_state1 = 2'd1;
parameter    ap_ST_fsm_pp0_stage0 = 2'd2;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [6:0] in_r_address0;
output   in_r_ce0;
input  [5:0] in_r_q0;
output  [6:0] in_r_address1;
output   in_r_ce1;
input  [5:0] in_r_q1;
output  [6:0] out_r_address0;
output   out_r_ce0;
output   out_r_we0;
output  [6:0] out_r_d0;
output  [6:0] out_r_address1;
output   out_r_ce1;
output   out_r_we1;
output  [6:0] out_r_d1;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg in_r_ce0;
reg in_r_ce1;
reg out_r_ce0;
reg out_r_we0;
reg out_r_ce1;
reg out_r_we1;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [0:0] icmp_ln45_fu_120_p2;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
wire    ap_block_state2_pp0_stage0_iter0;
wire    ap_block_state3_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_11001;
reg   [6:0] i1_reg_84;
wire   [63:0] zext_ln45_fu_98_p1;
reg   [63:0] zext_ln45_reg_146;
wire   [63:0] zext_ln49_fu_109_p1;
reg   [63:0] zext_ln49_reg_156;
wire   [6:0] i_fu_114_p2;
reg   [6:0] i_reg_166;
reg   [0:0] icmp_ln45_reg_171;
reg    ap_enable_reg_pp0_iter1;
reg    ap_block_state1;
reg    ap_block_pp0_stage0_subdone;
reg   [6:0] ap_phi_mux_i1_phi_fu_88_p6;
wire    ap_block_pp0_stage0;
wire   [6:0] or_ln45_fu_103_p2;
reg   [1:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_idle_pp0_0to0;
reg    ap_reset_idle_pp0;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
reg    ap_condition_100;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln45_reg_171 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start;
        end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln45_reg_171 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i1_reg_84 <= i_reg_166;
    end else if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln45_reg_171 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0)) | (~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1)))) begin
        i1_reg_84 <= 7'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_reg_166 <= i_fu_114_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln45_reg_171 <= icmp_ln45_fu_120_p2;
        zext_ln45_reg_146[6 : 0] <= zext_ln45_fu_98_p1[6 : 0];
        zext_ln49_reg_156[6 : 1] <= zext_ln49_fu_109_p1[6 : 1];
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) | (ap_done_reg == 1'b1))) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln45_reg_171 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
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
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b0)) begin
        ap_idle_pp0_0to0 = 1'b1;
    end else begin
        ap_idle_pp0_0to0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_100)) begin
        if ((icmp_ln45_reg_171 == 1'd0)) begin
            ap_phi_mux_i1_phi_fu_88_p6 = 7'd0;
        end else if ((icmp_ln45_reg_171 == 1'd1)) begin
            ap_phi_mux_i1_phi_fu_88_p6 = i_reg_166;
        end else begin
            ap_phi_mux_i1_phi_fu_88_p6 = i1_reg_84;
        end
    end else begin
        ap_phi_mux_i1_phi_fu_88_p6 = i1_reg_84;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln45_fu_120_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (ap_idle_pp0_0to0 == 1'b1))) begin
        ap_reset_idle_pp0 = 1'b1;
    end else begin
        ap_reset_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        in_r_ce0 = 1'b1;
    end else begin
        in_r_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        in_r_ce1 = 1'b1;
    end else begin
        in_r_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        out_r_ce0 = 1'b1;
    end else begin
        out_r_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        out_r_ce1 = 1'b1;
    end else begin
        out_r_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        out_r_we0 = 1'b1;
    end else begin
        out_r_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        out_r_we1 = 1'b1;
    end else begin
        out_r_we1 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((ap_reset_idle_pp0 == 1'b0)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_reset_idle_pp0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_11001 = (ap_done_reg == 1'b1);
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (ap_done_reg == 1'b1);
end

always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end

assign ap_block_state2_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_condition_100 = ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start;

assign i_fu_114_p2 = (ap_phi_mux_i1_phi_fu_88_p6 + 7'd2);

assign icmp_ln45_fu_120_p2 = ((i_fu_114_p2 < 7'd100) ? 1'b1 : 1'b0);

assign in_r_address0 = zext_ln49_fu_109_p1;

assign in_r_address1 = zext_ln45_fu_98_p1;

assign or_ln45_fu_103_p2 = (ap_phi_mux_i1_phi_fu_88_p6 | 7'd1);

assign out_r_address0 = zext_ln49_reg_156;

assign out_r_address1 = zext_ln45_reg_146;

assign out_r_d0 = {{in_r_q0}, {1'd0}};

assign out_r_d1 = {{in_r_q1}, {1'd0}};

assign zext_ln45_fu_98_p1 = ap_phi_mux_i1_phi_fu_88_p6;

assign zext_ln49_fu_109_p1 = or_ln45_fu_103_p2;

always @ (posedge ap_clk) begin
    zext_ln45_reg_146[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln49_reg_156[0] <= 1'b1;
    zext_ln49_reg_156[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
end

endmodule //diamond_funcC
