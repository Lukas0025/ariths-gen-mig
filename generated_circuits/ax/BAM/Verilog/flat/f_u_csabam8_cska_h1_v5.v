module f_u_csabam8_cska_h1_v5(input [7:0] a, input [7:0] b, output [15:0] f_u_csabam8_cska_h1_v5_out);
  wire f_u_csabam8_cska_h1_v5_and4_1;
  wire f_u_csabam8_cska_h1_v5_and5_1;
  wire f_u_csabam8_cska_h1_v5_and6_1;
  wire f_u_csabam8_cska_h1_v5_and7_1;
  wire f_u_csabam8_cska_h1_v5_and3_2;
  wire f_u_csabam8_cska_h1_v5_ha3_2_xor0;
  wire f_u_csabam8_cska_h1_v5_ha3_2_and0;
  wire f_u_csabam8_cska_h1_v5_and4_2;
  wire f_u_csabam8_cska_h1_v5_ha4_2_xor0;
  wire f_u_csabam8_cska_h1_v5_ha4_2_and0;
  wire f_u_csabam8_cska_h1_v5_and5_2;
  wire f_u_csabam8_cska_h1_v5_ha5_2_xor0;
  wire f_u_csabam8_cska_h1_v5_ha5_2_and0;
  wire f_u_csabam8_cska_h1_v5_and6_2;
  wire f_u_csabam8_cska_h1_v5_ha6_2_xor0;
  wire f_u_csabam8_cska_h1_v5_ha6_2_and0;
  wire f_u_csabam8_cska_h1_v5_and7_2;
  wire f_u_csabam8_cska_h1_v5_and2_3;
  wire f_u_csabam8_cska_h1_v5_ha2_3_xor0;
  wire f_u_csabam8_cska_h1_v5_ha2_3_and0;
  wire f_u_csabam8_cska_h1_v5_and3_3;
  wire f_u_csabam8_cska_h1_v5_fa3_3_xor0;
  wire f_u_csabam8_cska_h1_v5_fa3_3_and0;
  wire f_u_csabam8_cska_h1_v5_fa3_3_xor1;
  wire f_u_csabam8_cska_h1_v5_fa3_3_and1;
  wire f_u_csabam8_cska_h1_v5_fa3_3_or0;
  wire f_u_csabam8_cska_h1_v5_and4_3;
  wire f_u_csabam8_cska_h1_v5_fa4_3_xor0;
  wire f_u_csabam8_cska_h1_v5_fa4_3_and0;
  wire f_u_csabam8_cska_h1_v5_fa4_3_xor1;
  wire f_u_csabam8_cska_h1_v5_fa4_3_and1;
  wire f_u_csabam8_cska_h1_v5_fa4_3_or0;
  wire f_u_csabam8_cska_h1_v5_and5_3;
  wire f_u_csabam8_cska_h1_v5_fa5_3_xor0;
  wire f_u_csabam8_cska_h1_v5_fa5_3_and0;
  wire f_u_csabam8_cska_h1_v5_fa5_3_xor1;
  wire f_u_csabam8_cska_h1_v5_fa5_3_and1;
  wire f_u_csabam8_cska_h1_v5_fa5_3_or0;
  wire f_u_csabam8_cska_h1_v5_and6_3;
  wire f_u_csabam8_cska_h1_v5_fa6_3_xor0;
  wire f_u_csabam8_cska_h1_v5_fa6_3_and0;
  wire f_u_csabam8_cska_h1_v5_fa6_3_xor1;
  wire f_u_csabam8_cska_h1_v5_fa6_3_and1;
  wire f_u_csabam8_cska_h1_v5_fa6_3_or0;
  wire f_u_csabam8_cska_h1_v5_and7_3;
  wire f_u_csabam8_cska_h1_v5_and1_4;
  wire f_u_csabam8_cska_h1_v5_ha1_4_xor0;
  wire f_u_csabam8_cska_h1_v5_ha1_4_and0;
  wire f_u_csabam8_cska_h1_v5_and2_4;
  wire f_u_csabam8_cska_h1_v5_fa2_4_xor0;
  wire f_u_csabam8_cska_h1_v5_fa2_4_and0;
  wire f_u_csabam8_cska_h1_v5_fa2_4_xor1;
  wire f_u_csabam8_cska_h1_v5_fa2_4_and1;
  wire f_u_csabam8_cska_h1_v5_fa2_4_or0;
  wire f_u_csabam8_cska_h1_v5_and3_4;
  wire f_u_csabam8_cska_h1_v5_fa3_4_xor0;
  wire f_u_csabam8_cska_h1_v5_fa3_4_and0;
  wire f_u_csabam8_cska_h1_v5_fa3_4_xor1;
  wire f_u_csabam8_cska_h1_v5_fa3_4_and1;
  wire f_u_csabam8_cska_h1_v5_fa3_4_or0;
  wire f_u_csabam8_cska_h1_v5_and4_4;
  wire f_u_csabam8_cska_h1_v5_fa4_4_xor0;
  wire f_u_csabam8_cska_h1_v5_fa4_4_and0;
  wire f_u_csabam8_cska_h1_v5_fa4_4_xor1;
  wire f_u_csabam8_cska_h1_v5_fa4_4_and1;
  wire f_u_csabam8_cska_h1_v5_fa4_4_or0;
  wire f_u_csabam8_cska_h1_v5_and5_4;
  wire f_u_csabam8_cska_h1_v5_fa5_4_xor0;
  wire f_u_csabam8_cska_h1_v5_fa5_4_and0;
  wire f_u_csabam8_cska_h1_v5_fa5_4_xor1;
  wire f_u_csabam8_cska_h1_v5_fa5_4_and1;
  wire f_u_csabam8_cska_h1_v5_fa5_4_or0;
  wire f_u_csabam8_cska_h1_v5_and6_4;
  wire f_u_csabam8_cska_h1_v5_fa6_4_xor0;
  wire f_u_csabam8_cska_h1_v5_fa6_4_and0;
  wire f_u_csabam8_cska_h1_v5_fa6_4_xor1;
  wire f_u_csabam8_cska_h1_v5_fa6_4_and1;
  wire f_u_csabam8_cska_h1_v5_fa6_4_or0;
  wire f_u_csabam8_cska_h1_v5_and7_4;
  wire f_u_csabam8_cska_h1_v5_and0_5;
  wire f_u_csabam8_cska_h1_v5_ha0_5_xor0;
  wire f_u_csabam8_cska_h1_v5_ha0_5_and0;
  wire f_u_csabam8_cska_h1_v5_and1_5;
  wire f_u_csabam8_cska_h1_v5_fa1_5_xor0;
  wire f_u_csabam8_cska_h1_v5_fa1_5_and0;
  wire f_u_csabam8_cska_h1_v5_fa1_5_xor1;
  wire f_u_csabam8_cska_h1_v5_fa1_5_and1;
  wire f_u_csabam8_cska_h1_v5_fa1_5_or0;
  wire f_u_csabam8_cska_h1_v5_and2_5;
  wire f_u_csabam8_cska_h1_v5_fa2_5_xor0;
  wire f_u_csabam8_cska_h1_v5_fa2_5_and0;
  wire f_u_csabam8_cska_h1_v5_fa2_5_xor1;
  wire f_u_csabam8_cska_h1_v5_fa2_5_and1;
  wire f_u_csabam8_cska_h1_v5_fa2_5_or0;
  wire f_u_csabam8_cska_h1_v5_and3_5;
  wire f_u_csabam8_cska_h1_v5_fa3_5_xor0;
  wire f_u_csabam8_cska_h1_v5_fa3_5_and0;
  wire f_u_csabam8_cska_h1_v5_fa3_5_xor1;
  wire f_u_csabam8_cska_h1_v5_fa3_5_and1;
  wire f_u_csabam8_cska_h1_v5_fa3_5_or0;
  wire f_u_csabam8_cska_h1_v5_and4_5;
  wire f_u_csabam8_cska_h1_v5_fa4_5_xor0;
  wire f_u_csabam8_cska_h1_v5_fa4_5_and0;
  wire f_u_csabam8_cska_h1_v5_fa4_5_xor1;
  wire f_u_csabam8_cska_h1_v5_fa4_5_and1;
  wire f_u_csabam8_cska_h1_v5_fa4_5_or0;
  wire f_u_csabam8_cska_h1_v5_and5_5;
  wire f_u_csabam8_cska_h1_v5_fa5_5_xor0;
  wire f_u_csabam8_cska_h1_v5_fa5_5_and0;
  wire f_u_csabam8_cska_h1_v5_fa5_5_xor1;
  wire f_u_csabam8_cska_h1_v5_fa5_5_and1;
  wire f_u_csabam8_cska_h1_v5_fa5_5_or0;
  wire f_u_csabam8_cska_h1_v5_and6_5;
  wire f_u_csabam8_cska_h1_v5_fa6_5_xor0;
  wire f_u_csabam8_cska_h1_v5_fa6_5_and0;
  wire f_u_csabam8_cska_h1_v5_fa6_5_xor1;
  wire f_u_csabam8_cska_h1_v5_fa6_5_and1;
  wire f_u_csabam8_cska_h1_v5_fa6_5_or0;
  wire f_u_csabam8_cska_h1_v5_and7_5;
  wire f_u_csabam8_cska_h1_v5_and0_6;
  wire f_u_csabam8_cska_h1_v5_fa0_6_xor0;
  wire f_u_csabam8_cska_h1_v5_fa0_6_and0;
  wire f_u_csabam8_cska_h1_v5_fa0_6_xor1;
  wire f_u_csabam8_cska_h1_v5_fa0_6_and1;
  wire f_u_csabam8_cska_h1_v5_fa0_6_or0;
  wire f_u_csabam8_cska_h1_v5_and1_6;
  wire f_u_csabam8_cska_h1_v5_fa1_6_xor0;
  wire f_u_csabam8_cska_h1_v5_fa1_6_and0;
  wire f_u_csabam8_cska_h1_v5_fa1_6_xor1;
  wire f_u_csabam8_cska_h1_v5_fa1_6_and1;
  wire f_u_csabam8_cska_h1_v5_fa1_6_or0;
  wire f_u_csabam8_cska_h1_v5_and2_6;
  wire f_u_csabam8_cska_h1_v5_fa2_6_xor0;
  wire f_u_csabam8_cska_h1_v5_fa2_6_and0;
  wire f_u_csabam8_cska_h1_v5_fa2_6_xor1;
  wire f_u_csabam8_cska_h1_v5_fa2_6_and1;
  wire f_u_csabam8_cska_h1_v5_fa2_6_or0;
  wire f_u_csabam8_cska_h1_v5_and3_6;
  wire f_u_csabam8_cska_h1_v5_fa3_6_xor0;
  wire f_u_csabam8_cska_h1_v5_fa3_6_and0;
  wire f_u_csabam8_cska_h1_v5_fa3_6_xor1;
  wire f_u_csabam8_cska_h1_v5_fa3_6_and1;
  wire f_u_csabam8_cska_h1_v5_fa3_6_or0;
  wire f_u_csabam8_cska_h1_v5_and4_6;
  wire f_u_csabam8_cska_h1_v5_fa4_6_xor0;
  wire f_u_csabam8_cska_h1_v5_fa4_6_and0;
  wire f_u_csabam8_cska_h1_v5_fa4_6_xor1;
  wire f_u_csabam8_cska_h1_v5_fa4_6_and1;
  wire f_u_csabam8_cska_h1_v5_fa4_6_or0;
  wire f_u_csabam8_cska_h1_v5_and5_6;
  wire f_u_csabam8_cska_h1_v5_fa5_6_xor0;
  wire f_u_csabam8_cska_h1_v5_fa5_6_and0;
  wire f_u_csabam8_cska_h1_v5_fa5_6_xor1;
  wire f_u_csabam8_cska_h1_v5_fa5_6_and1;
  wire f_u_csabam8_cska_h1_v5_fa5_6_or0;
  wire f_u_csabam8_cska_h1_v5_and6_6;
  wire f_u_csabam8_cska_h1_v5_fa6_6_xor0;
  wire f_u_csabam8_cska_h1_v5_fa6_6_and0;
  wire f_u_csabam8_cska_h1_v5_fa6_6_xor1;
  wire f_u_csabam8_cska_h1_v5_fa6_6_and1;
  wire f_u_csabam8_cska_h1_v5_fa6_6_or0;
  wire f_u_csabam8_cska_h1_v5_and7_6;
  wire f_u_csabam8_cska_h1_v5_and0_7;
  wire f_u_csabam8_cska_h1_v5_fa0_7_xor0;
  wire f_u_csabam8_cska_h1_v5_fa0_7_and0;
  wire f_u_csabam8_cska_h1_v5_fa0_7_xor1;
  wire f_u_csabam8_cska_h1_v5_fa0_7_and1;
  wire f_u_csabam8_cska_h1_v5_fa0_7_or0;
  wire f_u_csabam8_cska_h1_v5_and1_7;
  wire f_u_csabam8_cska_h1_v5_fa1_7_xor0;
  wire f_u_csabam8_cska_h1_v5_fa1_7_and0;
  wire f_u_csabam8_cska_h1_v5_fa1_7_xor1;
  wire f_u_csabam8_cska_h1_v5_fa1_7_and1;
  wire f_u_csabam8_cska_h1_v5_fa1_7_or0;
  wire f_u_csabam8_cska_h1_v5_and2_7;
  wire f_u_csabam8_cska_h1_v5_fa2_7_xor0;
  wire f_u_csabam8_cska_h1_v5_fa2_7_and0;
  wire f_u_csabam8_cska_h1_v5_fa2_7_xor1;
  wire f_u_csabam8_cska_h1_v5_fa2_7_and1;
  wire f_u_csabam8_cska_h1_v5_fa2_7_or0;
  wire f_u_csabam8_cska_h1_v5_and3_7;
  wire f_u_csabam8_cska_h1_v5_fa3_7_xor0;
  wire f_u_csabam8_cska_h1_v5_fa3_7_and0;
  wire f_u_csabam8_cska_h1_v5_fa3_7_xor1;
  wire f_u_csabam8_cska_h1_v5_fa3_7_and1;
  wire f_u_csabam8_cska_h1_v5_fa3_7_or0;
  wire f_u_csabam8_cska_h1_v5_and4_7;
  wire f_u_csabam8_cska_h1_v5_fa4_7_xor0;
  wire f_u_csabam8_cska_h1_v5_fa4_7_and0;
  wire f_u_csabam8_cska_h1_v5_fa4_7_xor1;
  wire f_u_csabam8_cska_h1_v5_fa4_7_and1;
  wire f_u_csabam8_cska_h1_v5_fa4_7_or0;
  wire f_u_csabam8_cska_h1_v5_and5_7;
  wire f_u_csabam8_cska_h1_v5_fa5_7_xor0;
  wire f_u_csabam8_cska_h1_v5_fa5_7_and0;
  wire f_u_csabam8_cska_h1_v5_fa5_7_xor1;
  wire f_u_csabam8_cska_h1_v5_fa5_7_and1;
  wire f_u_csabam8_cska_h1_v5_fa5_7_or0;
  wire f_u_csabam8_cska_h1_v5_and6_7;
  wire f_u_csabam8_cska_h1_v5_fa6_7_xor0;
  wire f_u_csabam8_cska_h1_v5_fa6_7_and0;
  wire f_u_csabam8_cska_h1_v5_fa6_7_xor1;
  wire f_u_csabam8_cska_h1_v5_fa6_7_and1;
  wire f_u_csabam8_cska_h1_v5_fa6_7_or0;
  wire f_u_csabam8_cska_h1_v5_and7_7;
  wire f_u_csabam8_cska_h1_v5_u_cska8_xor0;
  wire f_u_csabam8_cska_h1_v5_u_cska8_ha0_xor0;
  wire f_u_csabam8_cska_h1_v5_u_cska8_ha0_and0;
  wire f_u_csabam8_cska_h1_v5_u_cska8_xor1;
  wire f_u_csabam8_cska_h1_v5_u_cska8_fa0_xor0;
  wire f_u_csabam8_cska_h1_v5_u_cska8_fa0_and0;
  wire f_u_csabam8_cska_h1_v5_u_cska8_fa0_xor1;
  wire f_u_csabam8_cska_h1_v5_u_cska8_fa0_and1;
  wire f_u_csabam8_cska_h1_v5_u_cska8_fa0_or0;
  wire f_u_csabam8_cska_h1_v5_u_cska8_xor2;
  wire f_u_csabam8_cska_h1_v5_u_cska8_fa1_xor0;
  wire f_u_csabam8_cska_h1_v5_u_cska8_fa1_and0;
  wire f_u_csabam8_cska_h1_v5_u_cska8_fa1_xor1;
  wire f_u_csabam8_cska_h1_v5_u_cska8_fa1_and1;
  wire f_u_csabam8_cska_h1_v5_u_cska8_fa1_or0;
  wire f_u_csabam8_cska_h1_v5_u_cska8_xor3;
  wire f_u_csabam8_cska_h1_v5_u_cska8_fa2_xor0;
  wire f_u_csabam8_cska_h1_v5_u_cska8_fa2_and0;
  wire f_u_csabam8_cska_h1_v5_u_cska8_fa2_xor1;
  wire f_u_csabam8_cska_h1_v5_u_cska8_fa2_and1;
  wire f_u_csabam8_cska_h1_v5_u_cska8_fa2_or0;
  wire f_u_csabam8_cska_h1_v5_u_cska8_and_propagate00;
  wire f_u_csabam8_cska_h1_v5_u_cska8_and_propagate01;
  wire f_u_csabam8_cska_h1_v5_u_cska8_and_propagate02;
  wire f_u_csabam8_cska_h1_v5_u_cska8_mux2to10_not0;
  wire f_u_csabam8_cska_h1_v5_u_cska8_mux2to10_and1;
  wire f_u_csabam8_cska_h1_v5_u_cska8_xor4;
  wire f_u_csabam8_cska_h1_v5_u_cska8_fa3_xor0;
  wire f_u_csabam8_cska_h1_v5_u_cska8_fa3_and0;
  wire f_u_csabam8_cska_h1_v5_u_cska8_fa3_xor1;
  wire f_u_csabam8_cska_h1_v5_u_cska8_fa3_and1;
  wire f_u_csabam8_cska_h1_v5_u_cska8_fa3_or0;
  wire f_u_csabam8_cska_h1_v5_u_cska8_xor5;
  wire f_u_csabam8_cska_h1_v5_u_cska8_fa4_xor0;
  wire f_u_csabam8_cska_h1_v5_u_cska8_fa4_and0;
  wire f_u_csabam8_cska_h1_v5_u_cska8_fa4_xor1;
  wire f_u_csabam8_cska_h1_v5_u_cska8_fa4_and1;
  wire f_u_csabam8_cska_h1_v5_u_cska8_fa4_or0;
  wire f_u_csabam8_cska_h1_v5_u_cska8_xor6;
  wire f_u_csabam8_cska_h1_v5_u_cska8_fa5_xor0;
  wire f_u_csabam8_cska_h1_v5_u_cska8_fa5_and0;
  wire f_u_csabam8_cska_h1_v5_u_cska8_fa5_xor1;
  wire f_u_csabam8_cska_h1_v5_u_cska8_fa5_and1;
  wire f_u_csabam8_cska_h1_v5_u_cska8_fa5_or0;
  wire f_u_csabam8_cska_h1_v5_u_cska8_and_propagate13;

  assign f_u_csabam8_cska_h1_v5_and4_1 = a[4] & b[1];
  assign f_u_csabam8_cska_h1_v5_and5_1 = a[5] & b[1];
  assign f_u_csabam8_cska_h1_v5_and6_1 = a[6] & b[1];
  assign f_u_csabam8_cska_h1_v5_and7_1 = a[7] & b[1];
  assign f_u_csabam8_cska_h1_v5_and3_2 = a[3] & b[2];
  assign f_u_csabam8_cska_h1_v5_ha3_2_xor0 = f_u_csabam8_cska_h1_v5_and3_2 ^ f_u_csabam8_cska_h1_v5_and4_1;
  assign f_u_csabam8_cska_h1_v5_ha3_2_and0 = f_u_csabam8_cska_h1_v5_and3_2 & f_u_csabam8_cska_h1_v5_and4_1;
  assign f_u_csabam8_cska_h1_v5_and4_2 = a[4] & b[2];
  assign f_u_csabam8_cska_h1_v5_ha4_2_xor0 = f_u_csabam8_cska_h1_v5_and4_2 ^ f_u_csabam8_cska_h1_v5_and5_1;
  assign f_u_csabam8_cska_h1_v5_ha4_2_and0 = f_u_csabam8_cska_h1_v5_and4_2 & f_u_csabam8_cska_h1_v5_and5_1;
  assign f_u_csabam8_cska_h1_v5_and5_2 = a[5] & b[2];
  assign f_u_csabam8_cska_h1_v5_ha5_2_xor0 = f_u_csabam8_cska_h1_v5_and5_2 ^ f_u_csabam8_cska_h1_v5_and6_1;
  assign f_u_csabam8_cska_h1_v5_ha5_2_and0 = f_u_csabam8_cska_h1_v5_and5_2 & f_u_csabam8_cska_h1_v5_and6_1;
  assign f_u_csabam8_cska_h1_v5_and6_2 = a[6] & b[2];
  assign f_u_csabam8_cska_h1_v5_ha6_2_xor0 = f_u_csabam8_cska_h1_v5_and6_2 ^ f_u_csabam8_cska_h1_v5_and7_1;
  assign f_u_csabam8_cska_h1_v5_ha6_2_and0 = f_u_csabam8_cska_h1_v5_and6_2 & f_u_csabam8_cska_h1_v5_and7_1;
  assign f_u_csabam8_cska_h1_v5_and7_2 = a[7] & b[2];
  assign f_u_csabam8_cska_h1_v5_and2_3 = a[2] & b[3];
  assign f_u_csabam8_cska_h1_v5_ha2_3_xor0 = f_u_csabam8_cska_h1_v5_and2_3 ^ f_u_csabam8_cska_h1_v5_ha3_2_xor0;
  assign f_u_csabam8_cska_h1_v5_ha2_3_and0 = f_u_csabam8_cska_h1_v5_and2_3 & f_u_csabam8_cska_h1_v5_ha3_2_xor0;
  assign f_u_csabam8_cska_h1_v5_and3_3 = a[3] & b[3];
  assign f_u_csabam8_cska_h1_v5_fa3_3_xor0 = f_u_csabam8_cska_h1_v5_and3_3 ^ f_u_csabam8_cska_h1_v5_ha4_2_xor0;
  assign f_u_csabam8_cska_h1_v5_fa3_3_and0 = f_u_csabam8_cska_h1_v5_and3_3 & f_u_csabam8_cska_h1_v5_ha4_2_xor0;
  assign f_u_csabam8_cska_h1_v5_fa3_3_xor1 = f_u_csabam8_cska_h1_v5_fa3_3_xor0 ^ f_u_csabam8_cska_h1_v5_ha3_2_and0;
  assign f_u_csabam8_cska_h1_v5_fa3_3_and1 = f_u_csabam8_cska_h1_v5_fa3_3_xor0 & f_u_csabam8_cska_h1_v5_ha3_2_and0;
  assign f_u_csabam8_cska_h1_v5_fa3_3_or0 = f_u_csabam8_cska_h1_v5_fa3_3_and0 | f_u_csabam8_cska_h1_v5_fa3_3_and1;
  assign f_u_csabam8_cska_h1_v5_and4_3 = a[4] & b[3];
  assign f_u_csabam8_cska_h1_v5_fa4_3_xor0 = f_u_csabam8_cska_h1_v5_and4_3 ^ f_u_csabam8_cska_h1_v5_ha5_2_xor0;
  assign f_u_csabam8_cska_h1_v5_fa4_3_and0 = f_u_csabam8_cska_h1_v5_and4_3 & f_u_csabam8_cska_h1_v5_ha5_2_xor0;
  assign f_u_csabam8_cska_h1_v5_fa4_3_xor1 = f_u_csabam8_cska_h1_v5_fa4_3_xor0 ^ f_u_csabam8_cska_h1_v5_ha4_2_and0;
  assign f_u_csabam8_cska_h1_v5_fa4_3_and1 = f_u_csabam8_cska_h1_v5_fa4_3_xor0 & f_u_csabam8_cska_h1_v5_ha4_2_and0;
  assign f_u_csabam8_cska_h1_v5_fa4_3_or0 = f_u_csabam8_cska_h1_v5_fa4_3_and0 | f_u_csabam8_cska_h1_v5_fa4_3_and1;
  assign f_u_csabam8_cska_h1_v5_and5_3 = a[5] & b[3];
  assign f_u_csabam8_cska_h1_v5_fa5_3_xor0 = f_u_csabam8_cska_h1_v5_and5_3 ^ f_u_csabam8_cska_h1_v5_ha6_2_xor0;
  assign f_u_csabam8_cska_h1_v5_fa5_3_and0 = f_u_csabam8_cska_h1_v5_and5_3 & f_u_csabam8_cska_h1_v5_ha6_2_xor0;
  assign f_u_csabam8_cska_h1_v5_fa5_3_xor1 = f_u_csabam8_cska_h1_v5_fa5_3_xor0 ^ f_u_csabam8_cska_h1_v5_ha5_2_and0;
  assign f_u_csabam8_cska_h1_v5_fa5_3_and1 = f_u_csabam8_cska_h1_v5_fa5_3_xor0 & f_u_csabam8_cska_h1_v5_ha5_2_and0;
  assign f_u_csabam8_cska_h1_v5_fa5_3_or0 = f_u_csabam8_cska_h1_v5_fa5_3_and0 | f_u_csabam8_cska_h1_v5_fa5_3_and1;
  assign f_u_csabam8_cska_h1_v5_and6_3 = a[6] & b[3];
  assign f_u_csabam8_cska_h1_v5_fa6_3_xor0 = f_u_csabam8_cska_h1_v5_and6_3 ^ f_u_csabam8_cska_h1_v5_and7_2;
  assign f_u_csabam8_cska_h1_v5_fa6_3_and0 = f_u_csabam8_cska_h1_v5_and6_3 & f_u_csabam8_cska_h1_v5_and7_2;
  assign f_u_csabam8_cska_h1_v5_fa6_3_xor1 = f_u_csabam8_cska_h1_v5_fa6_3_xor0 ^ f_u_csabam8_cska_h1_v5_ha6_2_and0;
  assign f_u_csabam8_cska_h1_v5_fa6_3_and1 = f_u_csabam8_cska_h1_v5_fa6_3_xor0 & f_u_csabam8_cska_h1_v5_ha6_2_and0;
  assign f_u_csabam8_cska_h1_v5_fa6_3_or0 = f_u_csabam8_cska_h1_v5_fa6_3_and0 | f_u_csabam8_cska_h1_v5_fa6_3_and1;
  assign f_u_csabam8_cska_h1_v5_and7_3 = a[7] & b[3];
  assign f_u_csabam8_cska_h1_v5_and1_4 = a[1] & b[4];
  assign f_u_csabam8_cska_h1_v5_ha1_4_xor0 = f_u_csabam8_cska_h1_v5_and1_4 ^ f_u_csabam8_cska_h1_v5_ha2_3_xor0;
  assign f_u_csabam8_cska_h1_v5_ha1_4_and0 = f_u_csabam8_cska_h1_v5_and1_4 & f_u_csabam8_cska_h1_v5_ha2_3_xor0;
  assign f_u_csabam8_cska_h1_v5_and2_4 = a[2] & b[4];
  assign f_u_csabam8_cska_h1_v5_fa2_4_xor0 = f_u_csabam8_cska_h1_v5_and2_4 ^ f_u_csabam8_cska_h1_v5_fa3_3_xor1;
  assign f_u_csabam8_cska_h1_v5_fa2_4_and0 = f_u_csabam8_cska_h1_v5_and2_4 & f_u_csabam8_cska_h1_v5_fa3_3_xor1;
  assign f_u_csabam8_cska_h1_v5_fa2_4_xor1 = f_u_csabam8_cska_h1_v5_fa2_4_xor0 ^ f_u_csabam8_cska_h1_v5_ha2_3_and0;
  assign f_u_csabam8_cska_h1_v5_fa2_4_and1 = f_u_csabam8_cska_h1_v5_fa2_4_xor0 & f_u_csabam8_cska_h1_v5_ha2_3_and0;
  assign f_u_csabam8_cska_h1_v5_fa2_4_or0 = f_u_csabam8_cska_h1_v5_fa2_4_and0 | f_u_csabam8_cska_h1_v5_fa2_4_and1;
  assign f_u_csabam8_cska_h1_v5_and3_4 = a[3] & b[4];
  assign f_u_csabam8_cska_h1_v5_fa3_4_xor0 = f_u_csabam8_cska_h1_v5_and3_4 ^ f_u_csabam8_cska_h1_v5_fa4_3_xor1;
  assign f_u_csabam8_cska_h1_v5_fa3_4_and0 = f_u_csabam8_cska_h1_v5_and3_4 & f_u_csabam8_cska_h1_v5_fa4_3_xor1;
  assign f_u_csabam8_cska_h1_v5_fa3_4_xor1 = f_u_csabam8_cska_h1_v5_fa3_4_xor0 ^ f_u_csabam8_cska_h1_v5_fa3_3_or0;
  assign f_u_csabam8_cska_h1_v5_fa3_4_and1 = f_u_csabam8_cska_h1_v5_fa3_4_xor0 & f_u_csabam8_cska_h1_v5_fa3_3_or0;
  assign f_u_csabam8_cska_h1_v5_fa3_4_or0 = f_u_csabam8_cska_h1_v5_fa3_4_and0 | f_u_csabam8_cska_h1_v5_fa3_4_and1;
  assign f_u_csabam8_cska_h1_v5_and4_4 = a[4] & b[4];
  assign f_u_csabam8_cska_h1_v5_fa4_4_xor0 = f_u_csabam8_cska_h1_v5_and4_4 ^ f_u_csabam8_cska_h1_v5_fa5_3_xor1;
  assign f_u_csabam8_cska_h1_v5_fa4_4_and0 = f_u_csabam8_cska_h1_v5_and4_4 & f_u_csabam8_cska_h1_v5_fa5_3_xor1;
  assign f_u_csabam8_cska_h1_v5_fa4_4_xor1 = f_u_csabam8_cska_h1_v5_fa4_4_xor0 ^ f_u_csabam8_cska_h1_v5_fa4_3_or0;
  assign f_u_csabam8_cska_h1_v5_fa4_4_and1 = f_u_csabam8_cska_h1_v5_fa4_4_xor0 & f_u_csabam8_cska_h1_v5_fa4_3_or0;
  assign f_u_csabam8_cska_h1_v5_fa4_4_or0 = f_u_csabam8_cska_h1_v5_fa4_4_and0 | f_u_csabam8_cska_h1_v5_fa4_4_and1;
  assign f_u_csabam8_cska_h1_v5_and5_4 = a[5] & b[4];
  assign f_u_csabam8_cska_h1_v5_fa5_4_xor0 = f_u_csabam8_cska_h1_v5_and5_4 ^ f_u_csabam8_cska_h1_v5_fa6_3_xor1;
  assign f_u_csabam8_cska_h1_v5_fa5_4_and0 = f_u_csabam8_cska_h1_v5_and5_4 & f_u_csabam8_cska_h1_v5_fa6_3_xor1;
  assign f_u_csabam8_cska_h1_v5_fa5_4_xor1 = f_u_csabam8_cska_h1_v5_fa5_4_xor0 ^ f_u_csabam8_cska_h1_v5_fa5_3_or0;
  assign f_u_csabam8_cska_h1_v5_fa5_4_and1 = f_u_csabam8_cska_h1_v5_fa5_4_xor0 & f_u_csabam8_cska_h1_v5_fa5_3_or0;
  assign f_u_csabam8_cska_h1_v5_fa5_4_or0 = f_u_csabam8_cska_h1_v5_fa5_4_and0 | f_u_csabam8_cska_h1_v5_fa5_4_and1;
  assign f_u_csabam8_cska_h1_v5_and6_4 = a[6] & b[4];
  assign f_u_csabam8_cska_h1_v5_fa6_4_xor0 = f_u_csabam8_cska_h1_v5_and6_4 ^ f_u_csabam8_cska_h1_v5_and7_3;
  assign f_u_csabam8_cska_h1_v5_fa6_4_and0 = f_u_csabam8_cska_h1_v5_and6_4 & f_u_csabam8_cska_h1_v5_and7_3;
  assign f_u_csabam8_cska_h1_v5_fa6_4_xor1 = f_u_csabam8_cska_h1_v5_fa6_4_xor0 ^ f_u_csabam8_cska_h1_v5_fa6_3_or0;
  assign f_u_csabam8_cska_h1_v5_fa6_4_and1 = f_u_csabam8_cska_h1_v5_fa6_4_xor0 & f_u_csabam8_cska_h1_v5_fa6_3_or0;
  assign f_u_csabam8_cska_h1_v5_fa6_4_or0 = f_u_csabam8_cska_h1_v5_fa6_4_and0 | f_u_csabam8_cska_h1_v5_fa6_4_and1;
  assign f_u_csabam8_cska_h1_v5_and7_4 = a[7] & b[4];
  assign f_u_csabam8_cska_h1_v5_and0_5 = a[0] & b[5];
  assign f_u_csabam8_cska_h1_v5_ha0_5_xor0 = f_u_csabam8_cska_h1_v5_and0_5 ^ f_u_csabam8_cska_h1_v5_ha1_4_xor0;
  assign f_u_csabam8_cska_h1_v5_ha0_5_and0 = f_u_csabam8_cska_h1_v5_and0_5 & f_u_csabam8_cska_h1_v5_ha1_4_xor0;
  assign f_u_csabam8_cska_h1_v5_and1_5 = a[1] & b[5];
  assign f_u_csabam8_cska_h1_v5_fa1_5_xor0 = f_u_csabam8_cska_h1_v5_and1_5 ^ f_u_csabam8_cska_h1_v5_fa2_4_xor1;
  assign f_u_csabam8_cska_h1_v5_fa1_5_and0 = f_u_csabam8_cska_h1_v5_and1_5 & f_u_csabam8_cska_h1_v5_fa2_4_xor1;
  assign f_u_csabam8_cska_h1_v5_fa1_5_xor1 = f_u_csabam8_cska_h1_v5_fa1_5_xor0 ^ f_u_csabam8_cska_h1_v5_ha1_4_and0;
  assign f_u_csabam8_cska_h1_v5_fa1_5_and1 = f_u_csabam8_cska_h1_v5_fa1_5_xor0 & f_u_csabam8_cska_h1_v5_ha1_4_and0;
  assign f_u_csabam8_cska_h1_v5_fa1_5_or0 = f_u_csabam8_cska_h1_v5_fa1_5_and0 | f_u_csabam8_cska_h1_v5_fa1_5_and1;
  assign f_u_csabam8_cska_h1_v5_and2_5 = a[2] & b[5];
  assign f_u_csabam8_cska_h1_v5_fa2_5_xor0 = f_u_csabam8_cska_h1_v5_and2_5 ^ f_u_csabam8_cska_h1_v5_fa3_4_xor1;
  assign f_u_csabam8_cska_h1_v5_fa2_5_and0 = f_u_csabam8_cska_h1_v5_and2_5 & f_u_csabam8_cska_h1_v5_fa3_4_xor1;
  assign f_u_csabam8_cska_h1_v5_fa2_5_xor1 = f_u_csabam8_cska_h1_v5_fa2_5_xor0 ^ f_u_csabam8_cska_h1_v5_fa2_4_or0;
  assign f_u_csabam8_cska_h1_v5_fa2_5_and1 = f_u_csabam8_cska_h1_v5_fa2_5_xor0 & f_u_csabam8_cska_h1_v5_fa2_4_or0;
  assign f_u_csabam8_cska_h1_v5_fa2_5_or0 = f_u_csabam8_cska_h1_v5_fa2_5_and0 | f_u_csabam8_cska_h1_v5_fa2_5_and1;
  assign f_u_csabam8_cska_h1_v5_and3_5 = a[3] & b[5];
  assign f_u_csabam8_cska_h1_v5_fa3_5_xor0 = f_u_csabam8_cska_h1_v5_and3_5 ^ f_u_csabam8_cska_h1_v5_fa4_4_xor1;
  assign f_u_csabam8_cska_h1_v5_fa3_5_and0 = f_u_csabam8_cska_h1_v5_and3_5 & f_u_csabam8_cska_h1_v5_fa4_4_xor1;
  assign f_u_csabam8_cska_h1_v5_fa3_5_xor1 = f_u_csabam8_cska_h1_v5_fa3_5_xor0 ^ f_u_csabam8_cska_h1_v5_fa3_4_or0;
  assign f_u_csabam8_cska_h1_v5_fa3_5_and1 = f_u_csabam8_cska_h1_v5_fa3_5_xor0 & f_u_csabam8_cska_h1_v5_fa3_4_or0;
  assign f_u_csabam8_cska_h1_v5_fa3_5_or0 = f_u_csabam8_cska_h1_v5_fa3_5_and0 | f_u_csabam8_cska_h1_v5_fa3_5_and1;
  assign f_u_csabam8_cska_h1_v5_and4_5 = a[4] & b[5];
  assign f_u_csabam8_cska_h1_v5_fa4_5_xor0 = f_u_csabam8_cska_h1_v5_and4_5 ^ f_u_csabam8_cska_h1_v5_fa5_4_xor1;
  assign f_u_csabam8_cska_h1_v5_fa4_5_and0 = f_u_csabam8_cska_h1_v5_and4_5 & f_u_csabam8_cska_h1_v5_fa5_4_xor1;
  assign f_u_csabam8_cska_h1_v5_fa4_5_xor1 = f_u_csabam8_cska_h1_v5_fa4_5_xor0 ^ f_u_csabam8_cska_h1_v5_fa4_4_or0;
  assign f_u_csabam8_cska_h1_v5_fa4_5_and1 = f_u_csabam8_cska_h1_v5_fa4_5_xor0 & f_u_csabam8_cska_h1_v5_fa4_4_or0;
  assign f_u_csabam8_cska_h1_v5_fa4_5_or0 = f_u_csabam8_cska_h1_v5_fa4_5_and0 | f_u_csabam8_cska_h1_v5_fa4_5_and1;
  assign f_u_csabam8_cska_h1_v5_and5_5 = a[5] & b[5];
  assign f_u_csabam8_cska_h1_v5_fa5_5_xor0 = f_u_csabam8_cska_h1_v5_and5_5 ^ f_u_csabam8_cska_h1_v5_fa6_4_xor1;
  assign f_u_csabam8_cska_h1_v5_fa5_5_and0 = f_u_csabam8_cska_h1_v5_and5_5 & f_u_csabam8_cska_h1_v5_fa6_4_xor1;
  assign f_u_csabam8_cska_h1_v5_fa5_5_xor1 = f_u_csabam8_cska_h1_v5_fa5_5_xor0 ^ f_u_csabam8_cska_h1_v5_fa5_4_or0;
  assign f_u_csabam8_cska_h1_v5_fa5_5_and1 = f_u_csabam8_cska_h1_v5_fa5_5_xor0 & f_u_csabam8_cska_h1_v5_fa5_4_or0;
  assign f_u_csabam8_cska_h1_v5_fa5_5_or0 = f_u_csabam8_cska_h1_v5_fa5_5_and0 | f_u_csabam8_cska_h1_v5_fa5_5_and1;
  assign f_u_csabam8_cska_h1_v5_and6_5 = a[6] & b[5];
  assign f_u_csabam8_cska_h1_v5_fa6_5_xor0 = f_u_csabam8_cska_h1_v5_and6_5 ^ f_u_csabam8_cska_h1_v5_and7_4;
  assign f_u_csabam8_cska_h1_v5_fa6_5_and0 = f_u_csabam8_cska_h1_v5_and6_5 & f_u_csabam8_cska_h1_v5_and7_4;
  assign f_u_csabam8_cska_h1_v5_fa6_5_xor1 = f_u_csabam8_cska_h1_v5_fa6_5_xor0 ^ f_u_csabam8_cska_h1_v5_fa6_4_or0;
  assign f_u_csabam8_cska_h1_v5_fa6_5_and1 = f_u_csabam8_cska_h1_v5_fa6_5_xor0 & f_u_csabam8_cska_h1_v5_fa6_4_or0;
  assign f_u_csabam8_cska_h1_v5_fa6_5_or0 = f_u_csabam8_cska_h1_v5_fa6_5_and0 | f_u_csabam8_cska_h1_v5_fa6_5_and1;
  assign f_u_csabam8_cska_h1_v5_and7_5 = a[7] & b[5];
  assign f_u_csabam8_cska_h1_v5_and0_6 = a[0] & b[6];
  assign f_u_csabam8_cska_h1_v5_fa0_6_xor0 = f_u_csabam8_cska_h1_v5_and0_6 ^ f_u_csabam8_cska_h1_v5_fa1_5_xor1;
  assign f_u_csabam8_cska_h1_v5_fa0_6_and0 = f_u_csabam8_cska_h1_v5_and0_6 & f_u_csabam8_cska_h1_v5_fa1_5_xor1;
  assign f_u_csabam8_cska_h1_v5_fa0_6_xor1 = f_u_csabam8_cska_h1_v5_fa0_6_xor0 ^ f_u_csabam8_cska_h1_v5_ha0_5_and0;
  assign f_u_csabam8_cska_h1_v5_fa0_6_and1 = f_u_csabam8_cska_h1_v5_fa0_6_xor0 & f_u_csabam8_cska_h1_v5_ha0_5_and0;
  assign f_u_csabam8_cska_h1_v5_fa0_6_or0 = f_u_csabam8_cska_h1_v5_fa0_6_and0 | f_u_csabam8_cska_h1_v5_fa0_6_and1;
  assign f_u_csabam8_cska_h1_v5_and1_6 = a[1] & b[6];
  assign f_u_csabam8_cska_h1_v5_fa1_6_xor0 = f_u_csabam8_cska_h1_v5_and1_6 ^ f_u_csabam8_cska_h1_v5_fa2_5_xor1;
  assign f_u_csabam8_cska_h1_v5_fa1_6_and0 = f_u_csabam8_cska_h1_v5_and1_6 & f_u_csabam8_cska_h1_v5_fa2_5_xor1;
  assign f_u_csabam8_cska_h1_v5_fa1_6_xor1 = f_u_csabam8_cska_h1_v5_fa1_6_xor0 ^ f_u_csabam8_cska_h1_v5_fa1_5_or0;
  assign f_u_csabam8_cska_h1_v5_fa1_6_and1 = f_u_csabam8_cska_h1_v5_fa1_6_xor0 & f_u_csabam8_cska_h1_v5_fa1_5_or0;
  assign f_u_csabam8_cska_h1_v5_fa1_6_or0 = f_u_csabam8_cska_h1_v5_fa1_6_and0 | f_u_csabam8_cska_h1_v5_fa1_6_and1;
  assign f_u_csabam8_cska_h1_v5_and2_6 = a[2] & b[6];
  assign f_u_csabam8_cska_h1_v5_fa2_6_xor0 = f_u_csabam8_cska_h1_v5_and2_6 ^ f_u_csabam8_cska_h1_v5_fa3_5_xor1;
  assign f_u_csabam8_cska_h1_v5_fa2_6_and0 = f_u_csabam8_cska_h1_v5_and2_6 & f_u_csabam8_cska_h1_v5_fa3_5_xor1;
  assign f_u_csabam8_cska_h1_v5_fa2_6_xor1 = f_u_csabam8_cska_h1_v5_fa2_6_xor0 ^ f_u_csabam8_cska_h1_v5_fa2_5_or0;
  assign f_u_csabam8_cska_h1_v5_fa2_6_and1 = f_u_csabam8_cska_h1_v5_fa2_6_xor0 & f_u_csabam8_cska_h1_v5_fa2_5_or0;
  assign f_u_csabam8_cska_h1_v5_fa2_6_or0 = f_u_csabam8_cska_h1_v5_fa2_6_and0 | f_u_csabam8_cska_h1_v5_fa2_6_and1;
  assign f_u_csabam8_cska_h1_v5_and3_6 = a[3] & b[6];
  assign f_u_csabam8_cska_h1_v5_fa3_6_xor0 = f_u_csabam8_cska_h1_v5_and3_6 ^ f_u_csabam8_cska_h1_v5_fa4_5_xor1;
  assign f_u_csabam8_cska_h1_v5_fa3_6_and0 = f_u_csabam8_cska_h1_v5_and3_6 & f_u_csabam8_cska_h1_v5_fa4_5_xor1;
  assign f_u_csabam8_cska_h1_v5_fa3_6_xor1 = f_u_csabam8_cska_h1_v5_fa3_6_xor0 ^ f_u_csabam8_cska_h1_v5_fa3_5_or0;
  assign f_u_csabam8_cska_h1_v5_fa3_6_and1 = f_u_csabam8_cska_h1_v5_fa3_6_xor0 & f_u_csabam8_cska_h1_v5_fa3_5_or0;
  assign f_u_csabam8_cska_h1_v5_fa3_6_or0 = f_u_csabam8_cska_h1_v5_fa3_6_and0 | f_u_csabam8_cska_h1_v5_fa3_6_and1;
  assign f_u_csabam8_cska_h1_v5_and4_6 = a[4] & b[6];
  assign f_u_csabam8_cska_h1_v5_fa4_6_xor0 = f_u_csabam8_cska_h1_v5_and4_6 ^ f_u_csabam8_cska_h1_v5_fa5_5_xor1;
  assign f_u_csabam8_cska_h1_v5_fa4_6_and0 = f_u_csabam8_cska_h1_v5_and4_6 & f_u_csabam8_cska_h1_v5_fa5_5_xor1;
  assign f_u_csabam8_cska_h1_v5_fa4_6_xor1 = f_u_csabam8_cska_h1_v5_fa4_6_xor0 ^ f_u_csabam8_cska_h1_v5_fa4_5_or0;
  assign f_u_csabam8_cska_h1_v5_fa4_6_and1 = f_u_csabam8_cska_h1_v5_fa4_6_xor0 & f_u_csabam8_cska_h1_v5_fa4_5_or0;
  assign f_u_csabam8_cska_h1_v5_fa4_6_or0 = f_u_csabam8_cska_h1_v5_fa4_6_and0 | f_u_csabam8_cska_h1_v5_fa4_6_and1;
  assign f_u_csabam8_cska_h1_v5_and5_6 = a[5] & b[6];
  assign f_u_csabam8_cska_h1_v5_fa5_6_xor0 = f_u_csabam8_cska_h1_v5_and5_6 ^ f_u_csabam8_cska_h1_v5_fa6_5_xor1;
  assign f_u_csabam8_cska_h1_v5_fa5_6_and0 = f_u_csabam8_cska_h1_v5_and5_6 & f_u_csabam8_cska_h1_v5_fa6_5_xor1;
  assign f_u_csabam8_cska_h1_v5_fa5_6_xor1 = f_u_csabam8_cska_h1_v5_fa5_6_xor0 ^ f_u_csabam8_cska_h1_v5_fa5_5_or0;
  assign f_u_csabam8_cska_h1_v5_fa5_6_and1 = f_u_csabam8_cska_h1_v5_fa5_6_xor0 & f_u_csabam8_cska_h1_v5_fa5_5_or0;
  assign f_u_csabam8_cska_h1_v5_fa5_6_or0 = f_u_csabam8_cska_h1_v5_fa5_6_and0 | f_u_csabam8_cska_h1_v5_fa5_6_and1;
  assign f_u_csabam8_cska_h1_v5_and6_6 = a[6] & b[6];
  assign f_u_csabam8_cska_h1_v5_fa6_6_xor0 = f_u_csabam8_cska_h1_v5_and6_6 ^ f_u_csabam8_cska_h1_v5_and7_5;
  assign f_u_csabam8_cska_h1_v5_fa6_6_and0 = f_u_csabam8_cska_h1_v5_and6_6 & f_u_csabam8_cska_h1_v5_and7_5;
  assign f_u_csabam8_cska_h1_v5_fa6_6_xor1 = f_u_csabam8_cska_h1_v5_fa6_6_xor0 ^ f_u_csabam8_cska_h1_v5_fa6_5_or0;
  assign f_u_csabam8_cska_h1_v5_fa6_6_and1 = f_u_csabam8_cska_h1_v5_fa6_6_xor0 & f_u_csabam8_cska_h1_v5_fa6_5_or0;
  assign f_u_csabam8_cska_h1_v5_fa6_6_or0 = f_u_csabam8_cska_h1_v5_fa6_6_and0 | f_u_csabam8_cska_h1_v5_fa6_6_and1;
  assign f_u_csabam8_cska_h1_v5_and7_6 = a[7] & b[6];
  assign f_u_csabam8_cska_h1_v5_and0_7 = a[0] & b[7];
  assign f_u_csabam8_cska_h1_v5_fa0_7_xor0 = f_u_csabam8_cska_h1_v5_and0_7 ^ f_u_csabam8_cska_h1_v5_fa1_6_xor1;
  assign f_u_csabam8_cska_h1_v5_fa0_7_and0 = f_u_csabam8_cska_h1_v5_and0_7 & f_u_csabam8_cska_h1_v5_fa1_6_xor1;
  assign f_u_csabam8_cska_h1_v5_fa0_7_xor1 = f_u_csabam8_cska_h1_v5_fa0_7_xor0 ^ f_u_csabam8_cska_h1_v5_fa0_6_or0;
  assign f_u_csabam8_cska_h1_v5_fa0_7_and1 = f_u_csabam8_cska_h1_v5_fa0_7_xor0 & f_u_csabam8_cska_h1_v5_fa0_6_or0;
  assign f_u_csabam8_cska_h1_v5_fa0_7_or0 = f_u_csabam8_cska_h1_v5_fa0_7_and0 | f_u_csabam8_cska_h1_v5_fa0_7_and1;
  assign f_u_csabam8_cska_h1_v5_and1_7 = a[1] & b[7];
  assign f_u_csabam8_cska_h1_v5_fa1_7_xor0 = f_u_csabam8_cska_h1_v5_and1_7 ^ f_u_csabam8_cska_h1_v5_fa2_6_xor1;
  assign f_u_csabam8_cska_h1_v5_fa1_7_and0 = f_u_csabam8_cska_h1_v5_and1_7 & f_u_csabam8_cska_h1_v5_fa2_6_xor1;
  assign f_u_csabam8_cska_h1_v5_fa1_7_xor1 = f_u_csabam8_cska_h1_v5_fa1_7_xor0 ^ f_u_csabam8_cska_h1_v5_fa1_6_or0;
  assign f_u_csabam8_cska_h1_v5_fa1_7_and1 = f_u_csabam8_cska_h1_v5_fa1_7_xor0 & f_u_csabam8_cska_h1_v5_fa1_6_or0;
  assign f_u_csabam8_cska_h1_v5_fa1_7_or0 = f_u_csabam8_cska_h1_v5_fa1_7_and0 | f_u_csabam8_cska_h1_v5_fa1_7_and1;
  assign f_u_csabam8_cska_h1_v5_and2_7 = a[2] & b[7];
  assign f_u_csabam8_cska_h1_v5_fa2_7_xor0 = f_u_csabam8_cska_h1_v5_and2_7 ^ f_u_csabam8_cska_h1_v5_fa3_6_xor1;
  assign f_u_csabam8_cska_h1_v5_fa2_7_and0 = f_u_csabam8_cska_h1_v5_and2_7 & f_u_csabam8_cska_h1_v5_fa3_6_xor1;
  assign f_u_csabam8_cska_h1_v5_fa2_7_xor1 = f_u_csabam8_cska_h1_v5_fa2_7_xor0 ^ f_u_csabam8_cska_h1_v5_fa2_6_or0;
  assign f_u_csabam8_cska_h1_v5_fa2_7_and1 = f_u_csabam8_cska_h1_v5_fa2_7_xor0 & f_u_csabam8_cska_h1_v5_fa2_6_or0;
  assign f_u_csabam8_cska_h1_v5_fa2_7_or0 = f_u_csabam8_cska_h1_v5_fa2_7_and0 | f_u_csabam8_cska_h1_v5_fa2_7_and1;
  assign f_u_csabam8_cska_h1_v5_and3_7 = a[3] & b[7];
  assign f_u_csabam8_cska_h1_v5_fa3_7_xor0 = f_u_csabam8_cska_h1_v5_and3_7 ^ f_u_csabam8_cska_h1_v5_fa4_6_xor1;
  assign f_u_csabam8_cska_h1_v5_fa3_7_and0 = f_u_csabam8_cska_h1_v5_and3_7 & f_u_csabam8_cska_h1_v5_fa4_6_xor1;
  assign f_u_csabam8_cska_h1_v5_fa3_7_xor1 = f_u_csabam8_cska_h1_v5_fa3_7_xor0 ^ f_u_csabam8_cska_h1_v5_fa3_6_or0;
  assign f_u_csabam8_cska_h1_v5_fa3_7_and1 = f_u_csabam8_cska_h1_v5_fa3_7_xor0 & f_u_csabam8_cska_h1_v5_fa3_6_or0;
  assign f_u_csabam8_cska_h1_v5_fa3_7_or0 = f_u_csabam8_cska_h1_v5_fa3_7_and0 | f_u_csabam8_cska_h1_v5_fa3_7_and1;
  assign f_u_csabam8_cska_h1_v5_and4_7 = a[4] & b[7];
  assign f_u_csabam8_cska_h1_v5_fa4_7_xor0 = f_u_csabam8_cska_h1_v5_and4_7 ^ f_u_csabam8_cska_h1_v5_fa5_6_xor1;
  assign f_u_csabam8_cska_h1_v5_fa4_7_and0 = f_u_csabam8_cska_h1_v5_and4_7 & f_u_csabam8_cska_h1_v5_fa5_6_xor1;
  assign f_u_csabam8_cska_h1_v5_fa4_7_xor1 = f_u_csabam8_cska_h1_v5_fa4_7_xor0 ^ f_u_csabam8_cska_h1_v5_fa4_6_or0;
  assign f_u_csabam8_cska_h1_v5_fa4_7_and1 = f_u_csabam8_cska_h1_v5_fa4_7_xor0 & f_u_csabam8_cska_h1_v5_fa4_6_or0;
  assign f_u_csabam8_cska_h1_v5_fa4_7_or0 = f_u_csabam8_cska_h1_v5_fa4_7_and0 | f_u_csabam8_cska_h1_v5_fa4_7_and1;
  assign f_u_csabam8_cska_h1_v5_and5_7 = a[5] & b[7];
  assign f_u_csabam8_cska_h1_v5_fa5_7_xor0 = f_u_csabam8_cska_h1_v5_and5_7 ^ f_u_csabam8_cska_h1_v5_fa6_6_xor1;
  assign f_u_csabam8_cska_h1_v5_fa5_7_and0 = f_u_csabam8_cska_h1_v5_and5_7 & f_u_csabam8_cska_h1_v5_fa6_6_xor1;
  assign f_u_csabam8_cska_h1_v5_fa5_7_xor1 = f_u_csabam8_cska_h1_v5_fa5_7_xor0 ^ f_u_csabam8_cska_h1_v5_fa5_6_or0;
  assign f_u_csabam8_cska_h1_v5_fa5_7_and1 = f_u_csabam8_cska_h1_v5_fa5_7_xor0 & f_u_csabam8_cska_h1_v5_fa5_6_or0;
  assign f_u_csabam8_cska_h1_v5_fa5_7_or0 = f_u_csabam8_cska_h1_v5_fa5_7_and0 | f_u_csabam8_cska_h1_v5_fa5_7_and1;
  assign f_u_csabam8_cska_h1_v5_and6_7 = a[6] & b[7];
  assign f_u_csabam8_cska_h1_v5_fa6_7_xor0 = f_u_csabam8_cska_h1_v5_and6_7 ^ f_u_csabam8_cska_h1_v5_and7_6;
  assign f_u_csabam8_cska_h1_v5_fa6_7_and0 = f_u_csabam8_cska_h1_v5_and6_7 & f_u_csabam8_cska_h1_v5_and7_6;
  assign f_u_csabam8_cska_h1_v5_fa6_7_xor1 = f_u_csabam8_cska_h1_v5_fa6_7_xor0 ^ f_u_csabam8_cska_h1_v5_fa6_6_or0;
  assign f_u_csabam8_cska_h1_v5_fa6_7_and1 = f_u_csabam8_cska_h1_v5_fa6_7_xor0 & f_u_csabam8_cska_h1_v5_fa6_6_or0;
  assign f_u_csabam8_cska_h1_v5_fa6_7_or0 = f_u_csabam8_cska_h1_v5_fa6_7_and0 | f_u_csabam8_cska_h1_v5_fa6_7_and1;
  assign f_u_csabam8_cska_h1_v5_and7_7 = a[7] & b[7];
  assign f_u_csabam8_cska_h1_v5_u_cska8_xor0 = f_u_csabam8_cska_h1_v5_fa1_7_xor1 ^ f_u_csabam8_cska_h1_v5_fa0_7_or0;
  assign f_u_csabam8_cska_h1_v5_u_cska8_ha0_xor0 = f_u_csabam8_cska_h1_v5_fa1_7_xor1 ^ f_u_csabam8_cska_h1_v5_fa0_7_or0;
  assign f_u_csabam8_cska_h1_v5_u_cska8_ha0_and0 = f_u_csabam8_cska_h1_v5_fa1_7_xor1 & f_u_csabam8_cska_h1_v5_fa0_7_or0;
  assign f_u_csabam8_cska_h1_v5_u_cska8_xor1 = f_u_csabam8_cska_h1_v5_fa2_7_xor1 ^ f_u_csabam8_cska_h1_v5_fa1_7_or0;
  assign f_u_csabam8_cska_h1_v5_u_cska8_fa0_xor0 = f_u_csabam8_cska_h1_v5_fa2_7_xor1 ^ f_u_csabam8_cska_h1_v5_fa1_7_or0;
  assign f_u_csabam8_cska_h1_v5_u_cska8_fa0_and0 = f_u_csabam8_cska_h1_v5_fa2_7_xor1 & f_u_csabam8_cska_h1_v5_fa1_7_or0;
  assign f_u_csabam8_cska_h1_v5_u_cska8_fa0_xor1 = f_u_csabam8_cska_h1_v5_u_cska8_fa0_xor0 ^ f_u_csabam8_cska_h1_v5_u_cska8_ha0_and0;
  assign f_u_csabam8_cska_h1_v5_u_cska8_fa0_and1 = f_u_csabam8_cska_h1_v5_u_cska8_fa0_xor0 & f_u_csabam8_cska_h1_v5_u_cska8_ha0_and0;
  assign f_u_csabam8_cska_h1_v5_u_cska8_fa0_or0 = f_u_csabam8_cska_h1_v5_u_cska8_fa0_and0 | f_u_csabam8_cska_h1_v5_u_cska8_fa0_and1;
  assign f_u_csabam8_cska_h1_v5_u_cska8_xor2 = f_u_csabam8_cska_h1_v5_fa3_7_xor1 ^ f_u_csabam8_cska_h1_v5_fa2_7_or0;
  assign f_u_csabam8_cska_h1_v5_u_cska8_fa1_xor0 = f_u_csabam8_cska_h1_v5_fa3_7_xor1 ^ f_u_csabam8_cska_h1_v5_fa2_7_or0;
  assign f_u_csabam8_cska_h1_v5_u_cska8_fa1_and0 = f_u_csabam8_cska_h1_v5_fa3_7_xor1 & f_u_csabam8_cska_h1_v5_fa2_7_or0;
  assign f_u_csabam8_cska_h1_v5_u_cska8_fa1_xor1 = f_u_csabam8_cska_h1_v5_u_cska8_fa1_xor0 ^ f_u_csabam8_cska_h1_v5_u_cska8_fa0_or0;
  assign f_u_csabam8_cska_h1_v5_u_cska8_fa1_and1 = f_u_csabam8_cska_h1_v5_u_cska8_fa1_xor0 & f_u_csabam8_cska_h1_v5_u_cska8_fa0_or0;
  assign f_u_csabam8_cska_h1_v5_u_cska8_fa1_or0 = f_u_csabam8_cska_h1_v5_u_cska8_fa1_and0 | f_u_csabam8_cska_h1_v5_u_cska8_fa1_and1;
  assign f_u_csabam8_cska_h1_v5_u_cska8_xor3 = f_u_csabam8_cska_h1_v5_fa4_7_xor1 ^ f_u_csabam8_cska_h1_v5_fa3_7_or0;
  assign f_u_csabam8_cska_h1_v5_u_cska8_fa2_xor0 = f_u_csabam8_cska_h1_v5_fa4_7_xor1 ^ f_u_csabam8_cska_h1_v5_fa3_7_or0;
  assign f_u_csabam8_cska_h1_v5_u_cska8_fa2_and0 = f_u_csabam8_cska_h1_v5_fa4_7_xor1 & f_u_csabam8_cska_h1_v5_fa3_7_or0;
  assign f_u_csabam8_cska_h1_v5_u_cska8_fa2_xor1 = f_u_csabam8_cska_h1_v5_u_cska8_fa2_xor0 ^ f_u_csabam8_cska_h1_v5_u_cska8_fa1_or0;
  assign f_u_csabam8_cska_h1_v5_u_cska8_fa2_and1 = f_u_csabam8_cska_h1_v5_u_cska8_fa2_xor0 & f_u_csabam8_cska_h1_v5_u_cska8_fa1_or0;
  assign f_u_csabam8_cska_h1_v5_u_cska8_fa2_or0 = f_u_csabam8_cska_h1_v5_u_cska8_fa2_and0 | f_u_csabam8_cska_h1_v5_u_cska8_fa2_and1;
  assign f_u_csabam8_cska_h1_v5_u_cska8_and_propagate00 = f_u_csabam8_cska_h1_v5_u_cska8_xor0 & f_u_csabam8_cska_h1_v5_u_cska8_xor2;
  assign f_u_csabam8_cska_h1_v5_u_cska8_and_propagate01 = f_u_csabam8_cska_h1_v5_u_cska8_xor1 & f_u_csabam8_cska_h1_v5_u_cska8_xor3;
  assign f_u_csabam8_cska_h1_v5_u_cska8_and_propagate02 = f_u_csabam8_cska_h1_v5_u_cska8_and_propagate00 & f_u_csabam8_cska_h1_v5_u_cska8_and_propagate01;
  assign f_u_csabam8_cska_h1_v5_u_cska8_mux2to10_not0 = ~f_u_csabam8_cska_h1_v5_u_cska8_and_propagate02;
  assign f_u_csabam8_cska_h1_v5_u_cska8_mux2to10_and1 = f_u_csabam8_cska_h1_v5_u_cska8_fa2_or0 & f_u_csabam8_cska_h1_v5_u_cska8_mux2to10_not0;
  assign f_u_csabam8_cska_h1_v5_u_cska8_xor4 = f_u_csabam8_cska_h1_v5_fa5_7_xor1 ^ f_u_csabam8_cska_h1_v5_fa4_7_or0;
  assign f_u_csabam8_cska_h1_v5_u_cska8_fa3_xor0 = f_u_csabam8_cska_h1_v5_fa5_7_xor1 ^ f_u_csabam8_cska_h1_v5_fa4_7_or0;
  assign f_u_csabam8_cska_h1_v5_u_cska8_fa3_and0 = f_u_csabam8_cska_h1_v5_fa5_7_xor1 & f_u_csabam8_cska_h1_v5_fa4_7_or0;
  assign f_u_csabam8_cska_h1_v5_u_cska8_fa3_xor1 = f_u_csabam8_cska_h1_v5_u_cska8_fa3_xor0 ^ f_u_csabam8_cska_h1_v5_u_cska8_mux2to10_and1;
  assign f_u_csabam8_cska_h1_v5_u_cska8_fa3_and1 = f_u_csabam8_cska_h1_v5_u_cska8_fa3_xor0 & f_u_csabam8_cska_h1_v5_u_cska8_mux2to10_and1;
  assign f_u_csabam8_cska_h1_v5_u_cska8_fa3_or0 = f_u_csabam8_cska_h1_v5_u_cska8_fa3_and0 | f_u_csabam8_cska_h1_v5_u_cska8_fa3_and1;
  assign f_u_csabam8_cska_h1_v5_u_cska8_xor5 = f_u_csabam8_cska_h1_v5_fa6_7_xor1 ^ f_u_csabam8_cska_h1_v5_fa5_7_or0;
  assign f_u_csabam8_cska_h1_v5_u_cska8_fa4_xor0 = f_u_csabam8_cska_h1_v5_fa6_7_xor1 ^ f_u_csabam8_cska_h1_v5_fa5_7_or0;
  assign f_u_csabam8_cska_h1_v5_u_cska8_fa4_and0 = f_u_csabam8_cska_h1_v5_fa6_7_xor1 & f_u_csabam8_cska_h1_v5_fa5_7_or0;
  assign f_u_csabam8_cska_h1_v5_u_cska8_fa4_xor1 = f_u_csabam8_cska_h1_v5_u_cska8_fa4_xor0 ^ f_u_csabam8_cska_h1_v5_u_cska8_fa3_or0;
  assign f_u_csabam8_cska_h1_v5_u_cska8_fa4_and1 = f_u_csabam8_cska_h1_v5_u_cska8_fa4_xor0 & f_u_csabam8_cska_h1_v5_u_cska8_fa3_or0;
  assign f_u_csabam8_cska_h1_v5_u_cska8_fa4_or0 = f_u_csabam8_cska_h1_v5_u_cska8_fa4_and0 | f_u_csabam8_cska_h1_v5_u_cska8_fa4_and1;
  assign f_u_csabam8_cska_h1_v5_u_cska8_xor6 = f_u_csabam8_cska_h1_v5_and7_7 ^ f_u_csabam8_cska_h1_v5_fa6_7_or0;
  assign f_u_csabam8_cska_h1_v5_u_cska8_fa5_xor0 = f_u_csabam8_cska_h1_v5_and7_7 ^ f_u_csabam8_cska_h1_v5_fa6_7_or0;
  assign f_u_csabam8_cska_h1_v5_u_cska8_fa5_and0 = f_u_csabam8_cska_h1_v5_and7_7 & f_u_csabam8_cska_h1_v5_fa6_7_or0;
  assign f_u_csabam8_cska_h1_v5_u_cska8_fa5_xor1 = f_u_csabam8_cska_h1_v5_u_cska8_fa5_xor0 ^ f_u_csabam8_cska_h1_v5_u_cska8_fa4_or0;
  assign f_u_csabam8_cska_h1_v5_u_cska8_fa5_and1 = f_u_csabam8_cska_h1_v5_u_cska8_fa5_xor0 & f_u_csabam8_cska_h1_v5_u_cska8_fa4_or0;
  assign f_u_csabam8_cska_h1_v5_u_cska8_fa5_or0 = f_u_csabam8_cska_h1_v5_u_cska8_fa5_and0 | f_u_csabam8_cska_h1_v5_u_cska8_fa5_and1;
  assign f_u_csabam8_cska_h1_v5_u_cska8_and_propagate13 = f_u_csabam8_cska_h1_v5_u_cska8_xor4 & f_u_csabam8_cska_h1_v5_u_cska8_xor6;

  assign f_u_csabam8_cska_h1_v5_out[0] = 1'b0;
  assign f_u_csabam8_cska_h1_v5_out[1] = 1'b0;
  assign f_u_csabam8_cska_h1_v5_out[2] = 1'b0;
  assign f_u_csabam8_cska_h1_v5_out[3] = 1'b0;
  assign f_u_csabam8_cska_h1_v5_out[4] = 1'b0;
  assign f_u_csabam8_cska_h1_v5_out[5] = f_u_csabam8_cska_h1_v5_ha0_5_xor0;
  assign f_u_csabam8_cska_h1_v5_out[6] = f_u_csabam8_cska_h1_v5_fa0_6_xor1;
  assign f_u_csabam8_cska_h1_v5_out[7] = f_u_csabam8_cska_h1_v5_fa0_7_xor1;
  assign f_u_csabam8_cska_h1_v5_out[8] = f_u_csabam8_cska_h1_v5_u_cska8_ha0_xor0;
  assign f_u_csabam8_cska_h1_v5_out[9] = f_u_csabam8_cska_h1_v5_u_cska8_fa0_xor1;
  assign f_u_csabam8_cska_h1_v5_out[10] = f_u_csabam8_cska_h1_v5_u_cska8_fa1_xor1;
  assign f_u_csabam8_cska_h1_v5_out[11] = f_u_csabam8_cska_h1_v5_u_cska8_fa2_xor1;
  assign f_u_csabam8_cska_h1_v5_out[12] = f_u_csabam8_cska_h1_v5_u_cska8_fa3_xor1;
  assign f_u_csabam8_cska_h1_v5_out[13] = f_u_csabam8_cska_h1_v5_u_cska8_fa4_xor1;
  assign f_u_csabam8_cska_h1_v5_out[14] = f_u_csabam8_cska_h1_v5_u_cska8_fa5_xor1;
  assign f_u_csabam8_cska_h1_v5_out[15] = f_u_csabam8_cska_h1_v5_u_cska8_fa5_or0;
endmodule