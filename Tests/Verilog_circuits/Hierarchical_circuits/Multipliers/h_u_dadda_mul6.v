module and_gate(input _a, input _b, output _y0);
  assign _y0 = _a & _b;
endmodule

module xor_gate(input _a, input _b, output _y0);
  assign _y0 = _a ^ _b;
endmodule

module or_gate(input _a, input _b, output _y0);
  assign _y0 = _a | _b;
endmodule

module ha(input a, input b, output ha_y0, output ha_y1);
  xor_gate xor_gate_ha_y0(a, b, ha_y0);
  and_gate and_gate_ha_y1(a, b, ha_y1);
endmodule

module fa(input a, input b, input cin, output fa_y2, output fa_y4);
  wire fa_y0;
  wire fa_y1;
  wire fa_y3;

  xor_gate xor_gate_fa_y0(a, b, fa_y0);
  and_gate and_gate_fa_y1(a, b, fa_y1);
  and_gate and_gate_fa_y3(fa_y0, cin, fa_y3);

  xor_gate xor_gate_fa_y2(fa_y0, cin, fa_y2);
  or_gate or_gate_fa_y4(fa_y1, fa_y3, fa_y4);
endmodule

module u_rca10(input [9:0] a, input [9:0] b, output [10:0] out);
  wire a_0;
  wire a_1;
  wire a_2;
  wire a_3;
  wire a_4;
  wire a_5;
  wire a_6;
  wire a_7;
  wire a_8;
  wire a_9;
  wire b_0;
  wire b_1;
  wire b_2;
  wire b_3;
  wire b_4;
  wire b_5;
  wire b_6;
  wire b_7;
  wire b_8;
  wire b_9;
  wire u_rca10_ha_y0;
  wire u_rca10_ha_y1;
  wire u_rca10_fa1_y2;
  wire u_rca10_fa1_y4;
  wire u_rca10_fa2_y2;
  wire u_rca10_fa2_y4;
  wire u_rca10_fa3_y2;
  wire u_rca10_fa3_y4;
  wire u_rca10_fa4_y2;
  wire u_rca10_fa4_y4;
  wire u_rca10_fa5_y2;
  wire u_rca10_fa5_y4;
  wire u_rca10_fa6_y2;
  wire u_rca10_fa6_y4;
  wire u_rca10_fa7_y2;
  wire u_rca10_fa7_y4;
  wire u_rca10_fa8_y2;
  wire u_rca10_fa8_y4;
  wire u_rca10_fa9_y2;
  wire u_rca10_fa9_y4;

  assign a_0 = a[0];
  assign a_1 = a[1];
  assign a_2 = a[2];
  assign a_3 = a[3];
  assign a_4 = a[4];
  assign a_5 = a[5];
  assign a_6 = a[6];
  assign a_7 = a[7];
  assign a_8 = a[8];
  assign a_9 = a[9];
  assign b_0 = b[0];
  assign b_1 = b[1];
  assign b_2 = b[2];
  assign b_3 = b[3];
  assign b_4 = b[4];
  assign b_5 = b[5];
  assign b_6 = b[6];
  assign b_7 = b[7];
  assign b_8 = b[8];
  assign b_9 = b[9];
  ha ha_u_rca10_ha_y1(a_0, b_0, u_rca10_ha_y0, u_rca10_ha_y1);
  fa fa_u_rca10_fa1_y4(a_1, b_1, u_rca10_ha_y1, u_rca10_fa1_y2, u_rca10_fa1_y4);
  fa fa_u_rca10_fa2_y4(a_2, b_2, u_rca10_fa1_y4, u_rca10_fa2_y2, u_rca10_fa2_y4);
  fa fa_u_rca10_fa3_y4(a_3, b_3, u_rca10_fa2_y4, u_rca10_fa3_y2, u_rca10_fa3_y4);
  fa fa_u_rca10_fa4_y4(a_4, b_4, u_rca10_fa3_y4, u_rca10_fa4_y2, u_rca10_fa4_y4);
  fa fa_u_rca10_fa5_y4(a_5, b_5, u_rca10_fa4_y4, u_rca10_fa5_y2, u_rca10_fa5_y4);
  fa fa_u_rca10_fa6_y4(a_6, b_6, u_rca10_fa5_y4, u_rca10_fa6_y2, u_rca10_fa6_y4);
  fa fa_u_rca10_fa7_y4(a_7, b_7, u_rca10_fa6_y4, u_rca10_fa7_y2, u_rca10_fa7_y4);
  fa fa_u_rca10_fa8_y4(a_8, b_8, u_rca10_fa7_y4, u_rca10_fa8_y2, u_rca10_fa8_y4);
  fa fa_u_rca10_fa9_y4(a_9, b_9, u_rca10_fa8_y4, u_rca10_fa9_y2, u_rca10_fa9_y4);

  assign out[0] = u_rca10_ha_y0;
  assign out[1] = u_rca10_fa1_y2;
  assign out[2] = u_rca10_fa2_y2;
  assign out[3] = u_rca10_fa3_y2;
  assign out[4] = u_rca10_fa4_y2;
  assign out[5] = u_rca10_fa5_y2;
  assign out[6] = u_rca10_fa6_y2;
  assign out[7] = u_rca10_fa7_y2;
  assign out[8] = u_rca10_fa8_y2;
  assign out[9] = u_rca10_fa9_y2;
  assign out[10] = u_rca10_fa9_y4;
endmodule

module h_u_dadda_mul6(input [5:0] a, input [5:0] b, output [11:0] out);
  wire a_0;
  wire a_1;
  wire a_2;
  wire a_3;
  wire a_4;
  wire a_5;
  wire b_0;
  wire b_1;
  wire b_2;
  wire b_3;
  wire b_4;
  wire b_5;
  wire h_u_dadda_mul6_and_4_0_y0;
  wire h_u_dadda_mul6_and_3_1_y0;
  wire h_u_dadda_mul6_ha0_y0;
  wire h_u_dadda_mul6_ha0_y1;
  wire h_u_dadda_mul6_and_5_0_y0;
  wire h_u_dadda_mul6_and_4_1_y0;
  wire h_u_dadda_mul6_fa0_y2;
  wire h_u_dadda_mul6_fa0_y4;
  wire h_u_dadda_mul6_and_3_2_y0;
  wire h_u_dadda_mul6_and_2_3_y0;
  wire h_u_dadda_mul6_ha1_y0;
  wire h_u_dadda_mul6_ha1_y1;
  wire h_u_dadda_mul6_and_5_1_y0;
  wire h_u_dadda_mul6_fa1_y2;
  wire h_u_dadda_mul6_fa1_y4;
  wire h_u_dadda_mul6_and_4_2_y0;
  wire h_u_dadda_mul6_and_3_3_y0;
  wire h_u_dadda_mul6_ha2_y0;
  wire h_u_dadda_mul6_ha2_y1;
  wire h_u_dadda_mul6_and_5_2_y0;
  wire h_u_dadda_mul6_fa2_y2;
  wire h_u_dadda_mul6_fa2_y4;
  wire h_u_dadda_mul6_and_2_0_y0;
  wire h_u_dadda_mul6_and_1_1_y0;
  wire h_u_dadda_mul6_ha3_y0;
  wire h_u_dadda_mul6_ha3_y1;
  wire h_u_dadda_mul6_and_3_0_y0;
  wire h_u_dadda_mul6_and_2_1_y0;
  wire h_u_dadda_mul6_fa3_y2;
  wire h_u_dadda_mul6_fa3_y4;
  wire h_u_dadda_mul6_and_1_2_y0;
  wire h_u_dadda_mul6_and_0_3_y0;
  wire h_u_dadda_mul6_ha4_y0;
  wire h_u_dadda_mul6_ha4_y1;
  wire h_u_dadda_mul6_and_2_2_y0;
  wire h_u_dadda_mul6_fa4_y2;
  wire h_u_dadda_mul6_fa4_y4;
  wire h_u_dadda_mul6_and_1_3_y0;
  wire h_u_dadda_mul6_and_0_4_y0;
  wire h_u_dadda_mul6_fa5_y2;
  wire h_u_dadda_mul6_fa5_y4;
  wire h_u_dadda_mul6_and_1_4_y0;
  wire h_u_dadda_mul6_fa6_y2;
  wire h_u_dadda_mul6_fa6_y4;
  wire h_u_dadda_mul6_and_0_5_y0;
  wire h_u_dadda_mul6_fa7_y2;
  wire h_u_dadda_mul6_fa7_y4;
  wire h_u_dadda_mul6_and_2_4_y0;
  wire h_u_dadda_mul6_fa8_y2;
  wire h_u_dadda_mul6_fa8_y4;
  wire h_u_dadda_mul6_and_1_5_y0;
  wire h_u_dadda_mul6_fa9_y2;
  wire h_u_dadda_mul6_fa9_y4;
  wire h_u_dadda_mul6_and_4_3_y0;
  wire h_u_dadda_mul6_fa10_y2;
  wire h_u_dadda_mul6_fa10_y4;
  wire h_u_dadda_mul6_and_3_4_y0;
  wire h_u_dadda_mul6_and_2_5_y0;
  wire h_u_dadda_mul6_fa11_y2;
  wire h_u_dadda_mul6_fa11_y4;
  wire h_u_dadda_mul6_fa12_y2;
  wire h_u_dadda_mul6_fa12_y4;
  wire h_u_dadda_mul6_and_5_3_y0;
  wire h_u_dadda_mul6_and_4_4_y0;
  wire h_u_dadda_mul6_and_3_5_y0;
  wire h_u_dadda_mul6_fa13_y2;
  wire h_u_dadda_mul6_fa13_y4;
  wire h_u_dadda_mul6_and_5_4_y0;
  wire h_u_dadda_mul6_fa14_y2;
  wire h_u_dadda_mul6_fa14_y4;
  wire h_u_dadda_mul6_and_0_0_y0;
  wire h_u_dadda_mul6_and_1_0_y0;
  wire h_u_dadda_mul6_and_0_2_y0;
  wire h_u_dadda_mul6_and_4_5_y0;
  wire h_u_dadda_mul6_and_0_1_y0;
  wire h_u_dadda_mul6_and_5_5_y0;
  wire [9:0] h_u_dadda_mul6_u_rca10_rca_a;
  wire [9:0] h_u_dadda_mul6_u_rca10_rca_b;
  wire [10:0] h_u_dadda_mul6_u_rca10_out;
  wire h_u_dadda_mul6_u_rca10_ha_y0;
  wire h_u_dadda_mul6_u_rca10_fa1_y2;
  wire h_u_dadda_mul6_u_rca10_fa2_y2;
  wire h_u_dadda_mul6_u_rca10_fa3_y2;
  wire h_u_dadda_mul6_u_rca10_fa4_y2;
  wire h_u_dadda_mul6_u_rca10_fa5_y2;
  wire h_u_dadda_mul6_u_rca10_fa6_y2;
  wire h_u_dadda_mul6_u_rca10_fa7_y2;
  wire h_u_dadda_mul6_u_rca10_fa8_y2;
  wire h_u_dadda_mul6_u_rca10_fa9_y2;
  wire h_u_dadda_mul6_u_rca10_fa9_y4;

  assign a_0 = a[0];
  assign a_1 = a[1];
  assign a_2 = a[2];
  assign a_3 = a[3];
  assign a_4 = a[4];
  assign a_5 = a[5];
  assign b_0 = b[0];
  assign b_1 = b[1];
  assign b_2 = b[2];
  assign b_3 = b[3];
  assign b_4 = b[4];
  assign b_5 = b[5];
  and_gate and_gate_h_u_dadda_mul6_and_4_0_y0(a_4, b_0, h_u_dadda_mul6_and_4_0_y0);
  and_gate and_gate_h_u_dadda_mul6_and_3_1_y0(a_3, b_1, h_u_dadda_mul6_and_3_1_y0);
  ha ha_h_u_dadda_mul6_ha0_y1(h_u_dadda_mul6_and_4_0_y0, h_u_dadda_mul6_and_3_1_y0, h_u_dadda_mul6_ha0_y0, h_u_dadda_mul6_ha0_y1);
  and_gate and_gate_h_u_dadda_mul6_and_5_0_y0(a_5, b_0, h_u_dadda_mul6_and_5_0_y0);
  and_gate and_gate_h_u_dadda_mul6_and_4_1_y0(a_4, b_1, h_u_dadda_mul6_and_4_1_y0);
  fa fa_h_u_dadda_mul6_fa0_y4(h_u_dadda_mul6_ha0_y1, h_u_dadda_mul6_and_5_0_y0, h_u_dadda_mul6_and_4_1_y0, h_u_dadda_mul6_fa0_y2, h_u_dadda_mul6_fa0_y4);
  and_gate and_gate_h_u_dadda_mul6_and_3_2_y0(a_3, b_2, h_u_dadda_mul6_and_3_2_y0);
  and_gate and_gate_h_u_dadda_mul6_and_2_3_y0(a_2, b_3, h_u_dadda_mul6_and_2_3_y0);
  ha ha_h_u_dadda_mul6_ha1_y1(h_u_dadda_mul6_and_3_2_y0, h_u_dadda_mul6_and_2_3_y0, h_u_dadda_mul6_ha1_y0, h_u_dadda_mul6_ha1_y1);
  and_gate and_gate_h_u_dadda_mul6_and_5_1_y0(a_5, b_1, h_u_dadda_mul6_and_5_1_y0);
  fa fa_h_u_dadda_mul6_fa1_y4(h_u_dadda_mul6_ha1_y1, h_u_dadda_mul6_fa0_y4, h_u_dadda_mul6_and_5_1_y0, h_u_dadda_mul6_fa1_y2, h_u_dadda_mul6_fa1_y4);
  and_gate and_gate_h_u_dadda_mul6_and_4_2_y0(a_4, b_2, h_u_dadda_mul6_and_4_2_y0);
  and_gate and_gate_h_u_dadda_mul6_and_3_3_y0(a_3, b_3, h_u_dadda_mul6_and_3_3_y0);
  ha ha_h_u_dadda_mul6_ha2_y1(h_u_dadda_mul6_and_4_2_y0, h_u_dadda_mul6_and_3_3_y0, h_u_dadda_mul6_ha2_y0, h_u_dadda_mul6_ha2_y1);
  and_gate and_gate_h_u_dadda_mul6_and_5_2_y0(a_5, b_2, h_u_dadda_mul6_and_5_2_y0);
  fa fa_h_u_dadda_mul6_fa2_y4(h_u_dadda_mul6_ha2_y1, h_u_dadda_mul6_fa1_y4, h_u_dadda_mul6_and_5_2_y0, h_u_dadda_mul6_fa2_y2, h_u_dadda_mul6_fa2_y4);
  and_gate and_gate_h_u_dadda_mul6_and_2_0_y0(a_2, b_0, h_u_dadda_mul6_and_2_0_y0);
  and_gate and_gate_h_u_dadda_mul6_and_1_1_y0(a_1, b_1, h_u_dadda_mul6_and_1_1_y0);
  ha ha_h_u_dadda_mul6_ha3_y1(h_u_dadda_mul6_and_2_0_y0, h_u_dadda_mul6_and_1_1_y0, h_u_dadda_mul6_ha3_y0, h_u_dadda_mul6_ha3_y1);
  and_gate and_gate_h_u_dadda_mul6_and_3_0_y0(a_3, b_0, h_u_dadda_mul6_and_3_0_y0);
  and_gate and_gate_h_u_dadda_mul6_and_2_1_y0(a_2, b_1, h_u_dadda_mul6_and_2_1_y0);
  fa fa_h_u_dadda_mul6_fa3_y4(h_u_dadda_mul6_ha3_y1, h_u_dadda_mul6_and_3_0_y0, h_u_dadda_mul6_and_2_1_y0, h_u_dadda_mul6_fa3_y2, h_u_dadda_mul6_fa3_y4);
  and_gate and_gate_h_u_dadda_mul6_and_1_2_y0(a_1, b_2, h_u_dadda_mul6_and_1_2_y0);
  and_gate and_gate_h_u_dadda_mul6_and_0_3_y0(a_0, b_3, h_u_dadda_mul6_and_0_3_y0);
  ha ha_h_u_dadda_mul6_ha4_y1(h_u_dadda_mul6_and_1_2_y0, h_u_dadda_mul6_and_0_3_y0, h_u_dadda_mul6_ha4_y0, h_u_dadda_mul6_ha4_y1);
  and_gate and_gate_h_u_dadda_mul6_and_2_2_y0(a_2, b_2, h_u_dadda_mul6_and_2_2_y0);
  fa fa_h_u_dadda_mul6_fa4_y4(h_u_dadda_mul6_ha4_y1, h_u_dadda_mul6_fa3_y4, h_u_dadda_mul6_and_2_2_y0, h_u_dadda_mul6_fa4_y2, h_u_dadda_mul6_fa4_y4);
  and_gate and_gate_h_u_dadda_mul6_and_1_3_y0(a_1, b_3, h_u_dadda_mul6_and_1_3_y0);
  and_gate and_gate_h_u_dadda_mul6_and_0_4_y0(a_0, b_4, h_u_dadda_mul6_and_0_4_y0);
  fa fa_h_u_dadda_mul6_fa5_y4(h_u_dadda_mul6_and_1_3_y0, h_u_dadda_mul6_and_0_4_y0, h_u_dadda_mul6_ha0_y0, h_u_dadda_mul6_fa5_y2, h_u_dadda_mul6_fa5_y4);
  and_gate and_gate_h_u_dadda_mul6_and_1_4_y0(a_1, b_4, h_u_dadda_mul6_and_1_4_y0);
  fa fa_h_u_dadda_mul6_fa6_y4(h_u_dadda_mul6_fa5_y4, h_u_dadda_mul6_fa4_y4, h_u_dadda_mul6_and_1_4_y0, h_u_dadda_mul6_fa6_y2, h_u_dadda_mul6_fa6_y4);
  and_gate and_gate_h_u_dadda_mul6_and_0_5_y0(a_0, b_5, h_u_dadda_mul6_and_0_5_y0);
  fa fa_h_u_dadda_mul6_fa7_y4(h_u_dadda_mul6_and_0_5_y0, h_u_dadda_mul6_fa0_y2, h_u_dadda_mul6_ha1_y0, h_u_dadda_mul6_fa7_y2, h_u_dadda_mul6_fa7_y4);
  and_gate and_gate_h_u_dadda_mul6_and_2_4_y0(a_2, b_4, h_u_dadda_mul6_and_2_4_y0);
  fa fa_h_u_dadda_mul6_fa8_y4(h_u_dadda_mul6_fa7_y4, h_u_dadda_mul6_fa6_y4, h_u_dadda_mul6_and_2_4_y0, h_u_dadda_mul6_fa8_y2, h_u_dadda_mul6_fa8_y4);
  and_gate and_gate_h_u_dadda_mul6_and_1_5_y0(a_1, b_5, h_u_dadda_mul6_and_1_5_y0);
  fa fa_h_u_dadda_mul6_fa9_y4(h_u_dadda_mul6_and_1_5_y0, h_u_dadda_mul6_fa1_y2, h_u_dadda_mul6_ha2_y0, h_u_dadda_mul6_fa9_y2, h_u_dadda_mul6_fa9_y4);
  and_gate and_gate_h_u_dadda_mul6_and_4_3_y0(a_4, b_3, h_u_dadda_mul6_and_4_3_y0);
  fa fa_h_u_dadda_mul6_fa10_y4(h_u_dadda_mul6_fa9_y4, h_u_dadda_mul6_fa8_y4, h_u_dadda_mul6_and_4_3_y0, h_u_dadda_mul6_fa10_y2, h_u_dadda_mul6_fa10_y4);
  and_gate and_gate_h_u_dadda_mul6_and_3_4_y0(a_3, b_4, h_u_dadda_mul6_and_3_4_y0);
  and_gate and_gate_h_u_dadda_mul6_and_2_5_y0(a_2, b_5, h_u_dadda_mul6_and_2_5_y0);
  fa fa_h_u_dadda_mul6_fa11_y4(h_u_dadda_mul6_and_3_4_y0, h_u_dadda_mul6_and_2_5_y0, h_u_dadda_mul6_fa2_y2, h_u_dadda_mul6_fa11_y2, h_u_dadda_mul6_fa11_y4);
  fa fa_h_u_dadda_mul6_fa12_y4(h_u_dadda_mul6_fa11_y4, h_u_dadda_mul6_fa10_y4, h_u_dadda_mul6_fa2_y4, h_u_dadda_mul6_fa12_y2, h_u_dadda_mul6_fa12_y4);
  and_gate and_gate_h_u_dadda_mul6_and_5_3_y0(a_5, b_3, h_u_dadda_mul6_and_5_3_y0);
  and_gate and_gate_h_u_dadda_mul6_and_4_4_y0(a_4, b_4, h_u_dadda_mul6_and_4_4_y0);
  and_gate and_gate_h_u_dadda_mul6_and_3_5_y0(a_3, b_5, h_u_dadda_mul6_and_3_5_y0);
  fa fa_h_u_dadda_mul6_fa13_y4(h_u_dadda_mul6_and_5_3_y0, h_u_dadda_mul6_and_4_4_y0, h_u_dadda_mul6_and_3_5_y0, h_u_dadda_mul6_fa13_y2, h_u_dadda_mul6_fa13_y4);
  and_gate and_gate_h_u_dadda_mul6_and_5_4_y0(a_5, b_4, h_u_dadda_mul6_and_5_4_y0);
  fa fa_h_u_dadda_mul6_fa14_y4(h_u_dadda_mul6_fa13_y4, h_u_dadda_mul6_fa12_y4, h_u_dadda_mul6_and_5_4_y0, h_u_dadda_mul6_fa14_y2, h_u_dadda_mul6_fa14_y4);
  and_gate and_gate_h_u_dadda_mul6_and_0_0_y0(a_0, b_0, h_u_dadda_mul6_and_0_0_y0);
  and_gate and_gate_h_u_dadda_mul6_and_1_0_y0(a_1, b_0, h_u_dadda_mul6_and_1_0_y0);
  and_gate and_gate_h_u_dadda_mul6_and_0_2_y0(a_0, b_2, h_u_dadda_mul6_and_0_2_y0);
  and_gate and_gate_h_u_dadda_mul6_and_4_5_y0(a_4, b_5, h_u_dadda_mul6_and_4_5_y0);
  and_gate and_gate_h_u_dadda_mul6_and_0_1_y0(a_0, b_1, h_u_dadda_mul6_and_0_1_y0);
  and_gate and_gate_h_u_dadda_mul6_and_5_5_y0(a_5, b_5, h_u_dadda_mul6_and_5_5_y0);
  assign h_u_dadda_mul6_u_rca10_rca_a[0] = h_u_dadda_mul6_and_1_0_y0;
  assign h_u_dadda_mul6_u_rca10_rca_a[1] = h_u_dadda_mul6_and_0_2_y0;
  assign h_u_dadda_mul6_u_rca10_rca_a[2] = h_u_dadda_mul6_fa3_y2;
  assign h_u_dadda_mul6_u_rca10_rca_a[3] = h_u_dadda_mul6_fa4_y2;
  assign h_u_dadda_mul6_u_rca10_rca_a[4] = h_u_dadda_mul6_fa6_y2;
  assign h_u_dadda_mul6_u_rca10_rca_a[5] = h_u_dadda_mul6_fa8_y2;
  assign h_u_dadda_mul6_u_rca10_rca_a[6] = h_u_dadda_mul6_fa10_y2;
  assign h_u_dadda_mul6_u_rca10_rca_a[7] = h_u_dadda_mul6_fa12_y2;
  assign h_u_dadda_mul6_u_rca10_rca_a[8] = h_u_dadda_mul6_and_4_5_y0;
  assign h_u_dadda_mul6_u_rca10_rca_a[9] = h_u_dadda_mul6_fa14_y4;
  assign h_u_dadda_mul6_u_rca10_rca_b[0] = h_u_dadda_mul6_and_0_1_y0;
  assign h_u_dadda_mul6_u_rca10_rca_b[1] = h_u_dadda_mul6_ha3_y0;
  assign h_u_dadda_mul6_u_rca10_rca_b[2] = h_u_dadda_mul6_ha4_y0;
  assign h_u_dadda_mul6_u_rca10_rca_b[3] = h_u_dadda_mul6_fa5_y2;
  assign h_u_dadda_mul6_u_rca10_rca_b[4] = h_u_dadda_mul6_fa7_y2;
  assign h_u_dadda_mul6_u_rca10_rca_b[5] = h_u_dadda_mul6_fa9_y2;
  assign h_u_dadda_mul6_u_rca10_rca_b[6] = h_u_dadda_mul6_fa11_y2;
  assign h_u_dadda_mul6_u_rca10_rca_b[7] = h_u_dadda_mul6_fa13_y2;
  assign h_u_dadda_mul6_u_rca10_rca_b[8] = h_u_dadda_mul6_fa14_y2;
  assign h_u_dadda_mul6_u_rca10_rca_b[9] = h_u_dadda_mul6_and_5_5_y0;
  u_rca10 u_rca10_out(h_u_dadda_mul6_u_rca10_rca_a, h_u_dadda_mul6_u_rca10_rca_b, h_u_dadda_mul6_u_rca10_out);
  assign h_u_dadda_mul6_u_rca10_ha_y0 = h_u_dadda_mul6_u_rca10_out[0];
  assign h_u_dadda_mul6_u_rca10_fa1_y2 = h_u_dadda_mul6_u_rca10_out[1];
  assign h_u_dadda_mul6_u_rca10_fa2_y2 = h_u_dadda_mul6_u_rca10_out[2];
  assign h_u_dadda_mul6_u_rca10_fa3_y2 = h_u_dadda_mul6_u_rca10_out[3];
  assign h_u_dadda_mul6_u_rca10_fa4_y2 = h_u_dadda_mul6_u_rca10_out[4];
  assign h_u_dadda_mul6_u_rca10_fa5_y2 = h_u_dadda_mul6_u_rca10_out[5];
  assign h_u_dadda_mul6_u_rca10_fa6_y2 = h_u_dadda_mul6_u_rca10_out[6];
  assign h_u_dadda_mul6_u_rca10_fa7_y2 = h_u_dadda_mul6_u_rca10_out[7];
  assign h_u_dadda_mul6_u_rca10_fa8_y2 = h_u_dadda_mul6_u_rca10_out[8];
  assign h_u_dadda_mul6_u_rca10_fa9_y2 = h_u_dadda_mul6_u_rca10_out[9];
  assign h_u_dadda_mul6_u_rca10_fa9_y4 = h_u_dadda_mul6_u_rca10_out[10];

  assign out[0] = h_u_dadda_mul6_and_0_0_y0;
  assign out[1] = h_u_dadda_mul6_u_rca10_ha_y0;
  assign out[2] = h_u_dadda_mul6_u_rca10_fa1_y2;
  assign out[3] = h_u_dadda_mul6_u_rca10_fa2_y2;
  assign out[4] = h_u_dadda_mul6_u_rca10_fa3_y2;
  assign out[5] = h_u_dadda_mul6_u_rca10_fa4_y2;
  assign out[6] = h_u_dadda_mul6_u_rca10_fa5_y2;
  assign out[7] = h_u_dadda_mul6_u_rca10_fa6_y2;
  assign out[8] = h_u_dadda_mul6_u_rca10_fa7_y2;
  assign out[9] = h_u_dadda_mul6_u_rca10_fa8_y2;
  assign out[10] = h_u_dadda_mul6_u_rca10_fa9_y2;
  assign out[11] = h_u_dadda_mul6_u_rca10_fa9_y4;
endmodule