
module  \$_DFF_N_ (input D, C, output Q); FDRE #(.INIT(|0), .IS_C_INVERTED(|1), .IS_D_INVERTED(|0), .IS_R_INVERTED(|0)) _TECHMAP_REPLACE_ (.D(D), .Q(Q), .C(C), .CE(1'b1), .R(1'b0)); endmodule
module  \$_DFF_P_ (input D, C, output Q); FDRE #(.INIT(|0), .IS_C_INVERTED(|0), .IS_D_INVERTED(|0), .IS_R_INVERTED(|0)) _TECHMAP_REPLACE_ (.D(D), .Q(Q), .C(C), .CE(1'b1), .R(1'b0)); endmodule

module  \$_DFFE_NP_ (input D, C, E, output Q); FDRE #(.INIT(|0), .IS_C_INVERTED(|1), .IS_D_INVERTED(|0), .IS_R_INVERTED(|0)) _TECHMAP_REPLACE_ (.D(D), .Q(Q), .C(C), .CE(E), .R(1'b0)); endmodule
module  \$_DFFE_PP_ (input D, C, E, output Q); FDRE #(.INIT(|0), .IS_C_INVERTED(|0), .IS_D_INVERTED(|0), .IS_R_INVERTED(|0)) _TECHMAP_REPLACE_ (.D(D), .Q(Q), .C(C), .CE(E), .R(1'b0)); endmodule

module  \$_DFF_NN0_ (input D, C, R, output Q); FDCE #(.INIT(|0), .IS_C_INVERTED(|1), .IS_D_INVERTED(|0), .IS_CLR_INVERTED(|1)) _TECHMAP_REPLACE_ (.D(D), .Q(Q), .C(C), .CE(1'b1), .CLR(R)); endmodule
module  \$_DFF_NP0_ (input D, C, R, output Q); FDCE #(.INIT(|0), .IS_C_INVERTED(|1), .IS_D_INVERTED(|0), .IS_CLR_INVERTED(|0)) _TECHMAP_REPLACE_ (.D(D), .Q(Q), .C(C), .CE(1'b1), .CLR(R)); endmodule
module  \$_DFF_PN0_ (input D, C, R, output Q); FDCE #(.INIT(|0), .IS_C_INVERTED(|0), .IS_D_INVERTED(|0), .IS_CLR_INVERTED(|1)) _TECHMAP_REPLACE_ (.D(D), .Q(Q), .C(C), .CE(1'b1), .CLR(R)); endmodule
module  \$_DFF_PP0_ (input D, C, R, output Q); FDCE #(.INIT(|0), .IS_C_INVERTED(|0), .IS_D_INVERTED(|0), .IS_CLR_INVERTED(|0)) _TECHMAP_REPLACE_ (.D(D), .Q(Q), .C(C), .CE(1'b1), .CLR(R)); endmodule

module  \$_DFF_NN1_ (input D, C, R, output Q); FDPE #(.INIT(|0), .IS_C_INVERTED(|1), .IS_D_INVERTED(|0), .IS_PRE_INVERTED(|1)) _TECHMAP_REPLACE_ (.D(D), .Q(Q), .C(C), .CE(1'b1), .PRE(R)); endmodule
module  \$_DFF_NP1_ (input D, C, R, output Q); FDPE #(.INIT(|0), .IS_C_INVERTED(|1), .IS_D_INVERTED(|0), .IS_PRE_INVERTED(|0)) _TECHMAP_REPLACE_ (.D(D), .Q(Q), .C(C), .CE(1'b1), .PRE(R)); endmodule
module  \$_DFF_PN1_ (input D, C, R, output Q); FDPE #(.INIT(|0), .IS_C_INVERTED(|0), .IS_D_INVERTED(|0), .IS_PRE_INVERTED(|1)) _TECHMAP_REPLACE_ (.D(D), .Q(Q), .C(C), .CE(1'b1), .PRE(R)); endmodule
module  \$_DFF_PP1_ (input D, C, R, output Q); FDPE #(.INIT(|0), .IS_C_INVERTED(|0), .IS_D_INVERTED(|0), .IS_PRE_INVERTED(|0)) _TECHMAP_REPLACE_ (.D(D), .Q(Q), .C(C), .CE(1'b1), .PRE(R)); endmodule

`ifndef NO_LUT
module \$lut (A, Y);
  parameter WIDTH = 0;
  parameter LUT = 0;

  input [WIDTH-1:0] A;
  output Y;

  generate
    if (WIDTH == 1) begin
      LUT1 #(.INIT(LUT)) _TECHMAP_REPLACE_ (.O(Y),
        .I0(A[0]));
    end else
    if (WIDTH == 2) begin
      LUT2 #(.INIT(LUT)) _TECHMAP_REPLACE_ (.O(Y),
        .I0(A[0]), .I1(A[1]));
    end else
    if (WIDTH == 3) begin
      LUT3 #(.INIT(LUT)) _TECHMAP_REPLACE_ (.O(Y),
        .I0(A[0]), .I1(A[1]), .I2(A[2]));
    end else
    if (WIDTH == 4) begin
      LUT4 #(.INIT(LUT)) _TECHMAP_REPLACE_ (.O(Y),
        .I0(A[0]), .I1(A[1]), .I2(A[2]),
        .I3(A[3]));
    end else
    if (WIDTH == 5) begin
      LUT5 #(.INIT(LUT)) _TECHMAP_REPLACE_ (.O(Y),
        .I0(A[0]), .I1(A[1]), .I2(A[2]),
        .I3(A[3]), .I4(A[4]));
    end else
    if (WIDTH == 6) begin
      LUT6 #(.INIT(LUT)) _TECHMAP_REPLACE_ (.O(Y),
        .I0(A[0]), .I1(A[1]), .I2(A[2]),
        .I3(A[3]), .I4(A[4]), .I5(A[5]));
    end else
    if (WIDTH == 7) begin
      wire T0, T1;
      LUT6 #(.INIT(LUT[63:0])) fpga_lut_0 (.O(T0),
        .I0(A[0]), .I1(A[1]), .I2(A[2]),
        .I3(A[3]), .I4(A[4]), .I5(A[5]));
      LUT6 #(.INIT(LUT[127:64])) fpga_lut_1 (.O(T1),
        .I0(A[0]), .I1(A[1]), .I2(A[2]),
        .I3(A[3]), .I4(A[4]), .I5(A[5]));
      MUXF7 fpga_mux_0 (.O(Y), .I0(T0), .I1(T1), .S(A[6]));
    end else
    if (WIDTH == 8) begin
      wire T0, T1, T2, T3, T4, T5;
      LUT6 #(.INIT(LUT[63:0])) fpga_lut_0 (.O(T0),
        .I0(A[0]), .I1(A[1]), .I2(A[2]),
        .I3(A[3]), .I4(A[4]), .I5(A[5]));
      LUT6 #(.INIT(LUT[127:64])) fpga_lut_1 (.O(T1),
        .I0(A[0]), .I1(A[1]), .I2(A[2]),
        .I3(A[3]), .I4(A[4]), .I5(A[5]));
      LUT6 #(.INIT(LUT[191:128])) fpga_lut_2 (.O(T2),
        .I0(A[0]), .I1(A[1]), .I2(A[2]),
        .I3(A[3]), .I4(A[4]), .I5(A[5]));
      LUT6 #(.INIT(LUT[255:192])) fpga_lut_3 (.O(T3),
        .I0(A[0]), .I1(A[1]), .I2(A[2]),
        .I3(A[3]), .I4(A[4]), .I5(A[5]));
      MUXF7 fpga_mux_0 (.O(T4), .I0(T0), .I1(T1), .S(A[6]));
      MUXF7 fpga_mux_1 (.O(T5), .I0(T2), .I1(T3), .S(A[6]));
      MUXF8 fpga_mux_2 (.O(Y), .I0(T4), .I1(T5), .S(A[7]));
    end else begin
      wire _TECHMAP_FAIL_ = 1;
    end
  endgenerate
endmodule
`endif

module \$__SHREG_DFF_P_ (input C, input D, output Q);
	parameter DEPTH = 0;
  parameter [DEPTH-1:0] INIT = 0;
  generate
    if (DEPTH == 1) begin
        if (INIT == 0)
            (* init=0 *) \$_DFF_P_ _TECHMAP_REPLACE_ (.C(C), .D(D), .Q(Q));
        else if (INIT == 1)
            (* init=1 *) \$_DFF_P_ _TECHMAP_REPLACE_ (.C(C), .D(D), .Q(Q));
        else
            \$_DFF_P_ _TECHMAP_REPLACE_ (.C(C), .D(D), .Q(Q));
    end else
    if (DEPTH <= 16) begin
      SRL16E #(.INIT(INIT), .IS_CLK_INVERTED(|0)) _TECHMAP_REPLACE_ (.A0(DEPTH[0]), .A1(DEPTH[1]), .A2(DEPTH[2]), .A3(DEPTH[3]), .CE(1'b1), .CLK(C), .D(D), .Q(Q));
    end else
    if (DEPTH == 17) begin
      wire T0;
      \$__SHREG_DFF_P_ #(.DEPTH(DEPTH-1), .INIT(INIT[DEPTH-2:0])) fpga_srl_0 (.C(C), .D(D), .Q(T0));
      \$__SHREG_DFF_P_ #(.DEPTH(1), .INIT(INIT[DEPTH-1])) fpga_srl_1 (.C(C), .D(T0), .Q(Q));
    end else
    if (DEPTH <= 32) begin
      SRLC32E #(.INIT(INIT), .IS_CLK_INVERTED(|0)) _TECHMAP_REPLACE_ (.A(DEPTH), .CE(1'b1), .CLK(C), .D(D), .Q(Q));
    end else
    if (DEPTH == 33 || DEPTH == 49) begin
      wire T0;
      \$__SHREG_DFF_P_ #(.DEPTH(DEPTH-1), .INIT(INIT[DEPTH-2:0])) fpga_srl_0 (.C(C), .D(D), .Q(T0));
      \$__SHREG_DFF_P_ #(.DEPTH(1), .INIT(INIT[DEPTH-1])) fpga_srl_1 (.C(C), .D(T0), .Q(Q));
    end else
    if (DEPTH <= 64) begin
      wire T0, T1, T2;
      SRLC32E #(.INIT(INIT[32-1:0]), .IS_CLK_INVERTED(|0)) fpga_srl_0 (.A(DEPTH), .CE(1'b1), .CLK(C), .D(D), .Q(T0), .Q31(T1));
      \$__SHREG_DFF_P_ #(.DEPTH(DEPTH-32), .INIT(INIT[DEPTH-1:32])) fpga_srl_1 (.C(C), .D(T1), .Q(T2));
      MUXF7 fpga_mux_0 (.O(Q), .I0(T0), .I1(T2), .S(DEPTH[5]));
    end else
    if (DEPTH == 65 || DEPTH == 81) begin
      wire T0;
      \$__SHREG_DFF_P_ #(.DEPTH(DEPTH-1), .INIT(INIT[DEPTH-2:0])) fpga_srl_0 (.C(C), .D(D), .Q(T0));
      \$__SHREG_DFF_P_ #(.DEPTH(1), .INIT(INIT[DEPTH-1])) fpga_srl_1 (.C(C), .D(T0), .Q(Q));
    end else
    if (DEPTH <= 96) begin
      wire T0, T1, T2, T3, T4, T5, T6;
      SRLC32E #(.INIT(INIT[32-1:0]), .IS_CLK_INVERTED(|0)) fpga_srl_0 (.A(DEPTH[4:0]), .CE(1'b1), .CLK(C), .D(D), .Q(T0), .Q31(T1));
      SRLC32E #(.INIT(INIT[64-1:32]), .IS_CLK_INVERTED(|0)) fpga_srl_1 (.A(DEPTH[4:0]), .CE(1'b1), .CLK(C), .D(T1), .Q(T2), .Q31(T3));
      \$__SHREG_DFF_P_ #(.DEPTH(DEPTH-64), .INIT(INIT[DEPTH-1:64])) fpga_srl_2 (.C(C), .D(T3), .Q(T4));
      MUXF7 fpga_mux_0 (.O(T5), .I0(T0), .I1(T2), .S(DEPTH[5]));
      MUXF7 fpga_mux_1 (.O(T6), .I0(T4), .I1(1'b0 /* unused */), .S(DEPTH[5]));
      MUXF8 fpga_mux_2 (.O(Q), .I0(T5), .I1(T6), .S(DEPTH[6]));
    end else
    if (DEPTH == 97 || DEPTH == 113) begin
      wire T0;
      \$__SHREG_DFF_P_ #(.DEPTH(DEPTH-1), .INIT(INIT[DEPTH-2:0])) fpga_srl_0 (.C(C), .D(D), .Q(T0));
      \$__SHREG_DFF_P_ #(.DEPTH(1), .INIT(INIT[DEPTH-1])) fpga_srl_1 (.C(C), .D(T0), .Q(Q));
    end else
    if (DEPTH <= 128) begin
      wire T0, T1, T2, T3, T4, T5, T6, T7, T8;
      SRLC32E #(.INIT(INIT[32-1:0]), .IS_CLK_INVERTED(|0)) fpga_srl_0 (.A(DEPTH[4:0]), .CE(1'b1), .CLK(C), .D(D), .Q(T0), .Q31(T1));
      SRLC32E #(.INIT(INIT[64-1:32]), .IS_CLK_INVERTED(|0)) fpga_srl_1 (.A(DEPTH[4:0]), .CE(1'b1), .CLK(C), .D(T1), .Q(T2), .Q31(T3));
      SRLC32E #(.INIT(INIT[96-1:64]), .IS_CLK_INVERTED(|0)) fpga_srl_2 (.A(DEPTH[4:0]), .CE(1'b1), .CLK(C), .D(T3), .Q(T4), .Q31(T5));
      \$__SHREG_DFF_P_ #(.DEPTH(DEPTH-96), .INIT(INIT[DEPTH-1:96])) fpga_srl_3 (.C(C), .D(T5), .Q(T6));
      MUXF7 fpga_mux_0 (.O(T7), .I0(T0), .I1(T2), .S(DEPTH[5]));
      MUXF7 fpga_mux_1 (.O(T8), .I0(T4), .I1(T6), .S(DEPTH[5]));
      MUXF8 fpga_mux_2 (.O(Q), .I0(T7), .I1(T8), .S(DEPTH[6]));
    end else
    begin
      wire T0, T1;
      \$__SHREG_DFF_P_ #(.DEPTH(128), .INIT(INIT[128-1:0])) fpga_srl_0 (.C(C), .D(D), .Q(T0));
      \$__SHREG_DFF_P_ #(.DEPTH(DEPTH-128), .INIT(INIT[DEPTH-1:128])) fpga_srl_1 (.C(C), .D(T0), .Q(Q));
    end
  endgenerate
endmodule
