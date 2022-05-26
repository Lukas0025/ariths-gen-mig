module u_arrmul4(input [3:0] a, input [3:0] b, output [7:0] u_arrmul4_out);
  wire u_arrmul4_and0_0;
  wire u_arrmul4_and1_0;
  wire u_arrmul4_and2_0;
  wire u_arrmul4_and3_0;
  wire u_arrmul4_and0_1;
  wire u_arrmul4_ha0_1_xor0;
  wire u_arrmul4_ha0_1_and0;
  wire u_arrmul4_and1_1;
  wire u_arrmul4_fa1_1_xor0;
  wire u_arrmul4_fa1_1_and0;
  wire u_arrmul4_fa1_1_xor1;
  wire u_arrmul4_fa1_1_and1;
  wire u_arrmul4_fa1_1_or0;
  wire u_arrmul4_and2_1;
  wire u_arrmul4_fa2_1_xor0;
  wire u_arrmul4_fa2_1_and0;
  wire u_arrmul4_fa2_1_xor1;
  wire u_arrmul4_fa2_1_and1;
  wire u_arrmul4_fa2_1_or0;
  wire u_arrmul4_and3_1;
  wire u_arrmul4_ha3_1_xor0;
  wire u_arrmul4_ha3_1_and0;
  wire u_arrmul4_and0_2;
  wire u_arrmul4_ha0_2_xor0;
  wire u_arrmul4_ha0_2_and0;
  wire u_arrmul4_and1_2;
  wire u_arrmul4_fa1_2_xor0;
  wire u_arrmul4_fa1_2_and0;
  wire u_arrmul4_fa1_2_xor1;
  wire u_arrmul4_fa1_2_and1;
  wire u_arrmul4_fa1_2_or0;
  wire u_arrmul4_and2_2;
  wire u_arrmul4_fa2_2_xor0;
  wire u_arrmul4_fa2_2_and0;
  wire u_arrmul4_fa2_2_xor1;
  wire u_arrmul4_fa2_2_and1;
  wire u_arrmul4_fa2_2_or0;
  wire u_arrmul4_and3_2;
  wire u_arrmul4_fa3_2_xor0;
  wire u_arrmul4_fa3_2_and0;
  wire u_arrmul4_fa3_2_xor1;
  wire u_arrmul4_fa3_2_and1;
  wire u_arrmul4_fa3_2_or0;
  wire u_arrmul4_and0_3;
  wire u_arrmul4_ha0_3_xor0;
  wire u_arrmul4_ha0_3_and0;
  wire u_arrmul4_and1_3;
  wire u_arrmul4_fa1_3_xor0;
  wire u_arrmul4_fa1_3_and0;
  wire u_arrmul4_fa1_3_xor1;
  wire u_arrmul4_fa1_3_and1;
  wire u_arrmul4_fa1_3_or0;
  wire u_arrmul4_and2_3;
  wire u_arrmul4_fa2_3_xor0;
  wire u_arrmul4_fa2_3_and0;
  wire u_arrmul4_fa2_3_xor1;
  wire u_arrmul4_fa2_3_and1;
  wire u_arrmul4_fa2_3_or0;
  wire u_arrmul4_and3_3;
  wire u_arrmul4_fa3_3_xor0;
  wire u_arrmul4_fa3_3_and0;
  wire u_arrmul4_fa3_3_xor1;
  wire u_arrmul4_fa3_3_and1;
  wire u_arrmul4_fa3_3_or0;

  assign u_arrmul4_and0_0 = a[0] & b[0];
  assign u_arrmul4_and1_0 = a[1] & b[0];
  assign u_arrmul4_and2_0 = a[2] & b[0];
  assign u_arrmul4_and3_0 = a[3] & b[0];
  assign u_arrmul4_and0_1 = a[0] & b[1];
  assign u_arrmul4_ha0_1_xor0 = u_arrmul4_and0_1 ^ u_arrmul4_and1_0;
  assign u_arrmul4_ha0_1_and0 = u_arrmul4_and0_1 & u_arrmul4_and1_0;
  assign u_arrmul4_and1_1 = a[1] & b[1];
  assign u_arrmul4_fa1_1_xor0 = u_arrmul4_and1_1 ^ u_arrmul4_and2_0;
  assign u_arrmul4_fa1_1_and0 = u_arrmul4_and1_1 & u_arrmul4_and2_0;
  assign u_arrmul4_fa1_1_xor1 = u_arrmul4_fa1_1_xor0 ^ u_arrmul4_ha0_1_and0;
  assign u_arrmul4_fa1_1_and1 = u_arrmul4_fa1_1_xor0 & u_arrmul4_ha0_1_and0;
  assign u_arrmul4_fa1_1_or0 = u_arrmul4_fa1_1_and0 | u_arrmul4_fa1_1_and1;
  assign u_arrmul4_and2_1 = a[2] & b[1];
  assign u_arrmul4_fa2_1_xor0 = u_arrmul4_and2_1 ^ u_arrmul4_and3_0;
  assign u_arrmul4_fa2_1_and0 = u_arrmul4_and2_1 & u_arrmul4_and3_0;
  assign u_arrmul4_fa2_1_xor1 = u_arrmul4_fa2_1_xor0 ^ u_arrmul4_fa1_1_or0;
  assign u_arrmul4_fa2_1_and1 = u_arrmul4_fa2_1_xor0 & u_arrmul4_fa1_1_or0;
  assign u_arrmul4_fa2_1_or0 = u_arrmul4_fa2_1_and0 | u_arrmul4_fa2_1_and1;
  assign u_arrmul4_and3_1 = a[3] & b[1];
  assign u_arrmul4_ha3_1_xor0 = u_arrmul4_and3_1 ^ u_arrmul4_fa2_1_or0;
  assign u_arrmul4_ha3_1_and0 = u_arrmul4_and3_1 & u_arrmul4_fa2_1_or0;
  assign u_arrmul4_and0_2 = a[0] & b[2];
  assign u_arrmul4_ha0_2_xor0 = u_arrmul4_and0_2 ^ u_arrmul4_fa1_1_xor1;
  assign u_arrmul4_ha0_2_and0 = u_arrmul4_and0_2 & u_arrmul4_fa1_1_xor1;
  assign u_arrmul4_and1_2 = a[1] & b[2];
  assign u_arrmul4_fa1_2_xor0 = u_arrmul4_and1_2 ^ u_arrmul4_fa2_1_xor1;
  assign u_arrmul4_fa1_2_and0 = u_arrmul4_and1_2 & u_arrmul4_fa2_1_xor1;
  assign u_arrmul4_fa1_2_xor1 = u_arrmul4_fa1_2_xor0 ^ u_arrmul4_ha0_2_and0;
  assign u_arrmul4_fa1_2_and1 = u_arrmul4_fa1_2_xor0 & u_arrmul4_ha0_2_and0;
  assign u_arrmul4_fa1_2_or0 = u_arrmul4_fa1_2_and0 | u_arrmul4_fa1_2_and1;
  assign u_arrmul4_and2_2 = a[2] & b[2];
  assign u_arrmul4_fa2_2_xor0 = u_arrmul4_and2_2 ^ u_arrmul4_ha3_1_xor0;
  assign u_arrmul4_fa2_2_and0 = u_arrmul4_and2_2 & u_arrmul4_ha3_1_xor0;
  assign u_arrmul4_fa2_2_xor1 = u_arrmul4_fa2_2_xor0 ^ u_arrmul4_fa1_2_or0;
  assign u_arrmul4_fa2_2_and1 = u_arrmul4_fa2_2_xor0 & u_arrmul4_fa1_2_or0;
  assign u_arrmul4_fa2_2_or0 = u_arrmul4_fa2_2_and0 | u_arrmul4_fa2_2_and1;
  assign u_arrmul4_and3_2 = a[3] & b[2];
  assign u_arrmul4_fa3_2_xor0 = u_arrmul4_and3_2 ^ u_arrmul4_ha3_1_and0;
  assign u_arrmul4_fa3_2_and0 = u_arrmul4_and3_2 & u_arrmul4_ha3_1_and0;
  assign u_arrmul4_fa3_2_xor1 = u_arrmul4_fa3_2_xor0 ^ u_arrmul4_fa2_2_or0;
  assign u_arrmul4_fa3_2_and1 = u_arrmul4_fa3_2_xor0 & u_arrmul4_fa2_2_or0;
  assign u_arrmul4_fa3_2_or0 = u_arrmul4_fa3_2_and0 | u_arrmul4_fa3_2_and1;
  assign u_arrmul4_and0_3 = a[0] & b[3];
  assign u_arrmul4_ha0_3_xor0 = u_arrmul4_and0_3 ^ u_arrmul4_fa1_2_xor1;
  assign u_arrmul4_ha0_3_and0 = u_arrmul4_and0_3 & u_arrmul4_fa1_2_xor1;
  assign u_arrmul4_and1_3 = a[1] & b[3];
  assign u_arrmul4_fa1_3_xor0 = u_arrmul4_and1_3 ^ u_arrmul4_fa2_2_xor1;
  assign u_arrmul4_fa1_3_and0 = u_arrmul4_and1_3 & u_arrmul4_fa2_2_xor1;
  assign u_arrmul4_fa1_3_xor1 = u_arrmul4_fa1_3_xor0 ^ u_arrmul4_ha0_3_and0;
  assign u_arrmul4_fa1_3_and1 = u_arrmul4_fa1_3_xor0 & u_arrmul4_ha0_3_and0;
  assign u_arrmul4_fa1_3_or0 = u_arrmul4_fa1_3_and0 | u_arrmul4_fa1_3_and1;
  assign u_arrmul4_and2_3 = a[2] & b[3];
  assign u_arrmul4_fa2_3_xor0 = u_arrmul4_and2_3 ^ u_arrmul4_fa3_2_xor1;
  assign u_arrmul4_fa2_3_and0 = u_arrmul4_and2_3 & u_arrmul4_fa3_2_xor1;
  assign u_arrmul4_fa2_3_xor1 = u_arrmul4_fa2_3_xor0 ^ u_arrmul4_fa1_3_or0;
  assign u_arrmul4_fa2_3_and1 = u_arrmul4_fa2_3_xor0 & u_arrmul4_fa1_3_or0;
  assign u_arrmul4_fa2_3_or0 = u_arrmul4_fa2_3_and0 | u_arrmul4_fa2_3_and1;
  assign u_arrmul4_and3_3 = a[3] & b[3];
  assign u_arrmul4_fa3_3_xor0 = u_arrmul4_and3_3 ^ u_arrmul4_fa3_2_or0;
  assign u_arrmul4_fa3_3_and0 = u_arrmul4_and3_3 & u_arrmul4_fa3_2_or0;
  assign u_arrmul4_fa3_3_xor1 = u_arrmul4_fa3_3_xor0 ^ u_arrmul4_fa2_3_or0;
  assign u_arrmul4_fa3_3_and1 = u_arrmul4_fa3_3_xor0 & u_arrmul4_fa2_3_or0;
  assign u_arrmul4_fa3_3_or0 = u_arrmul4_fa3_3_and0 | u_arrmul4_fa3_3_and1;

  assign u_arrmul4_out[0] = u_arrmul4_and0_0;
  assign u_arrmul4_out[1] = u_arrmul4_ha0_1_xor0;
  assign u_arrmul4_out[2] = u_arrmul4_ha0_2_xor0;
  assign u_arrmul4_out[3] = u_arrmul4_ha0_3_xor0;
  assign u_arrmul4_out[4] = u_arrmul4_fa1_3_xor1;
  assign u_arrmul4_out[5] = u_arrmul4_fa2_3_xor1;
  assign u_arrmul4_out[6] = u_arrmul4_fa3_3_xor1;
  assign u_arrmul4_out[7] = u_arrmul4_fa3_3_or0;
endmodule