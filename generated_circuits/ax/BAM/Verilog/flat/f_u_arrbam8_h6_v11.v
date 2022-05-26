module f_u_arrbam8_h6_v11(input [7:0] a, input [7:0] b, output [15:0] f_u_arrbam8_h6_v11_out);
  wire f_u_arrbam8_h6_v11_and5_6;
  wire f_u_arrbam8_h6_v11_and6_6;
  wire f_u_arrbam8_h6_v11_and7_6;
  wire f_u_arrbam8_h6_v11_and4_7;
  wire f_u_arrbam8_h6_v11_ha4_7_xor0;
  wire f_u_arrbam8_h6_v11_ha4_7_and0;
  wire f_u_arrbam8_h6_v11_and5_7;
  wire f_u_arrbam8_h6_v11_fa5_7_xor0;
  wire f_u_arrbam8_h6_v11_fa5_7_and0;
  wire f_u_arrbam8_h6_v11_fa5_7_xor1;
  wire f_u_arrbam8_h6_v11_fa5_7_and1;
  wire f_u_arrbam8_h6_v11_fa5_7_or0;
  wire f_u_arrbam8_h6_v11_and6_7;
  wire f_u_arrbam8_h6_v11_fa6_7_xor0;
  wire f_u_arrbam8_h6_v11_fa6_7_and0;
  wire f_u_arrbam8_h6_v11_fa6_7_xor1;
  wire f_u_arrbam8_h6_v11_fa6_7_and1;
  wire f_u_arrbam8_h6_v11_fa6_7_or0;
  wire f_u_arrbam8_h6_v11_and7_7;
  wire f_u_arrbam8_h6_v11_ha7_7_xor0;
  wire f_u_arrbam8_h6_v11_ha7_7_and0;

  assign f_u_arrbam8_h6_v11_and5_6 = a[5] & b[6];
  assign f_u_arrbam8_h6_v11_and6_6 = a[6] & b[6];
  assign f_u_arrbam8_h6_v11_and7_6 = a[7] & b[6];
  assign f_u_arrbam8_h6_v11_and4_7 = a[4] & b[7];
  assign f_u_arrbam8_h6_v11_ha4_7_xor0 = f_u_arrbam8_h6_v11_and4_7 ^ f_u_arrbam8_h6_v11_and5_6;
  assign f_u_arrbam8_h6_v11_ha4_7_and0 = f_u_arrbam8_h6_v11_and4_7 & f_u_arrbam8_h6_v11_and5_6;
  assign f_u_arrbam8_h6_v11_and5_7 = a[5] & b[7];
  assign f_u_arrbam8_h6_v11_fa5_7_xor0 = f_u_arrbam8_h6_v11_and5_7 ^ f_u_arrbam8_h6_v11_and6_6;
  assign f_u_arrbam8_h6_v11_fa5_7_and0 = f_u_arrbam8_h6_v11_and5_7 & f_u_arrbam8_h6_v11_and6_6;
  assign f_u_arrbam8_h6_v11_fa5_7_xor1 = f_u_arrbam8_h6_v11_fa5_7_xor0 ^ f_u_arrbam8_h6_v11_ha4_7_and0;
  assign f_u_arrbam8_h6_v11_fa5_7_and1 = f_u_arrbam8_h6_v11_fa5_7_xor0 & f_u_arrbam8_h6_v11_ha4_7_and0;
  assign f_u_arrbam8_h6_v11_fa5_7_or0 = f_u_arrbam8_h6_v11_fa5_7_and0 | f_u_arrbam8_h6_v11_fa5_7_and1;
  assign f_u_arrbam8_h6_v11_and6_7 = a[6] & b[7];
  assign f_u_arrbam8_h6_v11_fa6_7_xor0 = f_u_arrbam8_h6_v11_and6_7 ^ f_u_arrbam8_h6_v11_and7_6;
  assign f_u_arrbam8_h6_v11_fa6_7_and0 = f_u_arrbam8_h6_v11_and6_7 & f_u_arrbam8_h6_v11_and7_6;
  assign f_u_arrbam8_h6_v11_fa6_7_xor1 = f_u_arrbam8_h6_v11_fa6_7_xor0 ^ f_u_arrbam8_h6_v11_fa5_7_or0;
  assign f_u_arrbam8_h6_v11_fa6_7_and1 = f_u_arrbam8_h6_v11_fa6_7_xor0 & f_u_arrbam8_h6_v11_fa5_7_or0;
  assign f_u_arrbam8_h6_v11_fa6_7_or0 = f_u_arrbam8_h6_v11_fa6_7_and0 | f_u_arrbam8_h6_v11_fa6_7_and1;
  assign f_u_arrbam8_h6_v11_and7_7 = a[7] & b[7];
  assign f_u_arrbam8_h6_v11_ha7_7_xor0 = f_u_arrbam8_h6_v11_and7_7 ^ f_u_arrbam8_h6_v11_fa6_7_or0;
  assign f_u_arrbam8_h6_v11_ha7_7_and0 = f_u_arrbam8_h6_v11_and7_7 & f_u_arrbam8_h6_v11_fa6_7_or0;

  assign f_u_arrbam8_h6_v11_out[0] = 1'b0;
  assign f_u_arrbam8_h6_v11_out[1] = 1'b0;
  assign f_u_arrbam8_h6_v11_out[2] = 1'b0;
  assign f_u_arrbam8_h6_v11_out[3] = 1'b0;
  assign f_u_arrbam8_h6_v11_out[4] = 1'b0;
  assign f_u_arrbam8_h6_v11_out[5] = 1'b0;
  assign f_u_arrbam8_h6_v11_out[6] = 1'b0;
  assign f_u_arrbam8_h6_v11_out[7] = 1'b0;
  assign f_u_arrbam8_h6_v11_out[8] = 1'b0;
  assign f_u_arrbam8_h6_v11_out[9] = 1'b0;
  assign f_u_arrbam8_h6_v11_out[10] = 1'b0;
  assign f_u_arrbam8_h6_v11_out[11] = f_u_arrbam8_h6_v11_ha4_7_xor0;
  assign f_u_arrbam8_h6_v11_out[12] = f_u_arrbam8_h6_v11_fa5_7_xor1;
  assign f_u_arrbam8_h6_v11_out[13] = f_u_arrbam8_h6_v11_fa6_7_xor1;
  assign f_u_arrbam8_h6_v11_out[14] = f_u_arrbam8_h6_v11_ha7_7_xor0;
  assign f_u_arrbam8_h6_v11_out[15] = f_u_arrbam8_h6_v11_ha7_7_and0;
endmodule