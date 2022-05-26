#include <stdio.h>
#include <stdint.h>

int64_t s_csamul_cska4(int64_t a, int64_t b){
  int8_t s_csamul_cska4_out = 0;
  uint8_t s_csamul_cska4_and0_0 = 0;
  uint8_t s_csamul_cska4_and1_0 = 0;
  uint8_t s_csamul_cska4_and2_0 = 0;
  uint8_t s_csamul_cska4_nand3_0 = 0;
  uint8_t s_csamul_cska4_and0_1 = 0;
  uint8_t s_csamul_cska4_ha0_1_xor0 = 0;
  uint8_t s_csamul_cska4_ha0_1_and0 = 0;
  uint8_t s_csamul_cska4_and1_1 = 0;
  uint8_t s_csamul_cska4_ha1_1_xor0 = 0;
  uint8_t s_csamul_cska4_ha1_1_and0 = 0;
  uint8_t s_csamul_cska4_and2_1 = 0;
  uint8_t s_csamul_cska4_ha2_1_xor0 = 0;
  uint8_t s_csamul_cska4_ha2_1_and0 = 0;
  uint8_t s_csamul_cska4_nand3_1 = 0;
  uint8_t s_csamul_cska4_ha3_1_xor0 = 0;
  uint8_t s_csamul_cska4_and0_2 = 0;
  uint8_t s_csamul_cska4_fa0_2_xor0 = 0;
  uint8_t s_csamul_cska4_fa0_2_and0 = 0;
  uint8_t s_csamul_cska4_fa0_2_xor1 = 0;
  uint8_t s_csamul_cska4_fa0_2_and1 = 0;
  uint8_t s_csamul_cska4_fa0_2_or0 = 0;
  uint8_t s_csamul_cska4_and1_2 = 0;
  uint8_t s_csamul_cska4_fa1_2_xor0 = 0;
  uint8_t s_csamul_cska4_fa1_2_and0 = 0;
  uint8_t s_csamul_cska4_fa1_2_xor1 = 0;
  uint8_t s_csamul_cska4_fa1_2_and1 = 0;
  uint8_t s_csamul_cska4_fa1_2_or0 = 0;
  uint8_t s_csamul_cska4_and2_2 = 0;
  uint8_t s_csamul_cska4_fa2_2_xor0 = 0;
  uint8_t s_csamul_cska4_fa2_2_and0 = 0;
  uint8_t s_csamul_cska4_fa2_2_xor1 = 0;
  uint8_t s_csamul_cska4_fa2_2_and1 = 0;
  uint8_t s_csamul_cska4_fa2_2_or0 = 0;
  uint8_t s_csamul_cska4_nand3_2 = 0;
  uint8_t s_csamul_cska4_ha3_2_xor0 = 0;
  uint8_t s_csamul_cska4_ha3_2_and0 = 0;
  uint8_t s_csamul_cska4_nand0_3 = 0;
  uint8_t s_csamul_cska4_fa0_3_xor0 = 0;
  uint8_t s_csamul_cska4_fa0_3_and0 = 0;
  uint8_t s_csamul_cska4_fa0_3_xor1 = 0;
  uint8_t s_csamul_cska4_fa0_3_and1 = 0;
  uint8_t s_csamul_cska4_fa0_3_or0 = 0;
  uint8_t s_csamul_cska4_nand1_3 = 0;
  uint8_t s_csamul_cska4_fa1_3_xor0 = 0;
  uint8_t s_csamul_cska4_fa1_3_and0 = 0;
  uint8_t s_csamul_cska4_fa1_3_xor1 = 0;
  uint8_t s_csamul_cska4_fa1_3_and1 = 0;
  uint8_t s_csamul_cska4_fa1_3_or0 = 0;
  uint8_t s_csamul_cska4_nand2_3 = 0;
  uint8_t s_csamul_cska4_fa2_3_xor0 = 0;
  uint8_t s_csamul_cska4_fa2_3_and0 = 0;
  uint8_t s_csamul_cska4_fa2_3_xor1 = 0;
  uint8_t s_csamul_cska4_fa2_3_and1 = 0;
  uint8_t s_csamul_cska4_fa2_3_or0 = 0;
  uint8_t s_csamul_cska4_and3_3 = 0;
  uint8_t s_csamul_cska4_ha3_3_xor0 = 0;
  uint8_t s_csamul_cska4_ha3_3_and0 = 0;
  uint8_t s_csamul_cska4_u_cska4_xor0 = 0;
  uint8_t s_csamul_cska4_u_cska4_ha0_xor0 = 0;
  uint8_t s_csamul_cska4_u_cska4_ha0_and0 = 0;
  uint8_t s_csamul_cska4_u_cska4_xor1 = 0;
  uint8_t s_csamul_cska4_u_cska4_fa0_xor0 = 0;
  uint8_t s_csamul_cska4_u_cska4_fa0_and0 = 0;
  uint8_t s_csamul_cska4_u_cska4_fa0_xor1 = 0;
  uint8_t s_csamul_cska4_u_cska4_fa0_and1 = 0;
  uint8_t s_csamul_cska4_u_cska4_fa0_or0 = 0;
  uint8_t s_csamul_cska4_u_cska4_xor2 = 0;
  uint8_t s_csamul_cska4_u_cska4_fa1_xor0 = 0;
  uint8_t s_csamul_cska4_u_cska4_fa1_and0 = 0;
  uint8_t s_csamul_cska4_u_cska4_fa1_xor1 = 0;
  uint8_t s_csamul_cska4_u_cska4_fa1_and1 = 0;
  uint8_t s_csamul_cska4_u_cska4_fa1_or0 = 0;
  uint8_t s_csamul_cska4_u_cska4_xor3 = 0;
  uint8_t s_csamul_cska4_u_cska4_fa2_xor0 = 0;
  uint8_t s_csamul_cska4_u_cska4_fa2_xor1 = 0;
  uint8_t s_csamul_cska4_u_cska4_fa2_and1 = 0;
  uint8_t s_csamul_cska4_u_cska4_fa2_or0 = 0;
  uint8_t s_csamul_cska4_u_cska4_and_propagate00 = 0;
  uint8_t s_csamul_cska4_u_cska4_and_propagate01 = 0;
  uint8_t s_csamul_cska4_u_cska4_and_propagate02 = 0;
  uint8_t s_csamul_cska4_u_cska4_mux2to10_not0 = 0;
  uint8_t s_csamul_cska4_u_cska4_mux2to10_and1 = 0;

  s_csamul_cska4_and0_0 = ((a >> 0) & 0x01) & ((b >> 0) & 0x01);
  s_csamul_cska4_and1_0 = ((a >> 1) & 0x01) & ((b >> 0) & 0x01);
  s_csamul_cska4_and2_0 = ((a >> 2) & 0x01) & ((b >> 0) & 0x01);
  s_csamul_cska4_nand3_0 = ~(((a >> 3) & 0x01) & ((b >> 0) & 0x01)) & 0x01;
  s_csamul_cska4_and0_1 = ((a >> 0) & 0x01) & ((b >> 1) & 0x01);
  s_csamul_cska4_ha0_1_xor0 = ((s_csamul_cska4_and0_1 >> 0) & 0x01) ^ ((s_csamul_cska4_and1_0 >> 0) & 0x01);
  s_csamul_cska4_ha0_1_and0 = ((s_csamul_cska4_and0_1 >> 0) & 0x01) & ((s_csamul_cska4_and1_0 >> 0) & 0x01);
  s_csamul_cska4_and1_1 = ((a >> 1) & 0x01) & ((b >> 1) & 0x01);
  s_csamul_cska4_ha1_1_xor0 = ((s_csamul_cska4_and1_1 >> 0) & 0x01) ^ ((s_csamul_cska4_and2_0 >> 0) & 0x01);
  s_csamul_cska4_ha1_1_and0 = ((s_csamul_cska4_and1_1 >> 0) & 0x01) & ((s_csamul_cska4_and2_0 >> 0) & 0x01);
  s_csamul_cska4_and2_1 = ((a >> 2) & 0x01) & ((b >> 1) & 0x01);
  s_csamul_cska4_ha2_1_xor0 = ((s_csamul_cska4_and2_1 >> 0) & 0x01) ^ ((s_csamul_cska4_nand3_0 >> 0) & 0x01);
  s_csamul_cska4_ha2_1_and0 = ((s_csamul_cska4_and2_1 >> 0) & 0x01) & ((s_csamul_cska4_nand3_0 >> 0) & 0x01);
  s_csamul_cska4_nand3_1 = ~(((a >> 3) & 0x01) & ((b >> 1) & 0x01)) & 0x01;
  s_csamul_cska4_ha3_1_xor0 = ~(((s_csamul_cska4_nand3_1 >> 0) & 0x01)) & 0x01;
  s_csamul_cska4_and0_2 = ((a >> 0) & 0x01) & ((b >> 2) & 0x01);
  s_csamul_cska4_fa0_2_xor0 = ((s_csamul_cska4_and0_2 >> 0) & 0x01) ^ ((s_csamul_cska4_ha1_1_xor0 >> 0) & 0x01);
  s_csamul_cska4_fa0_2_and0 = ((s_csamul_cska4_and0_2 >> 0) & 0x01) & ((s_csamul_cska4_ha1_1_xor0 >> 0) & 0x01);
  s_csamul_cska4_fa0_2_xor1 = ((s_csamul_cska4_fa0_2_xor0 >> 0) & 0x01) ^ ((s_csamul_cska4_ha0_1_and0 >> 0) & 0x01);
  s_csamul_cska4_fa0_2_and1 = ((s_csamul_cska4_fa0_2_xor0 >> 0) & 0x01) & ((s_csamul_cska4_ha0_1_and0 >> 0) & 0x01);
  s_csamul_cska4_fa0_2_or0 = ((s_csamul_cska4_fa0_2_and0 >> 0) & 0x01) | ((s_csamul_cska4_fa0_2_and1 >> 0) & 0x01);
  s_csamul_cska4_and1_2 = ((a >> 1) & 0x01) & ((b >> 2) & 0x01);
  s_csamul_cska4_fa1_2_xor0 = ((s_csamul_cska4_and1_2 >> 0) & 0x01) ^ ((s_csamul_cska4_ha2_1_xor0 >> 0) & 0x01);
  s_csamul_cska4_fa1_2_and0 = ((s_csamul_cska4_and1_2 >> 0) & 0x01) & ((s_csamul_cska4_ha2_1_xor0 >> 0) & 0x01);
  s_csamul_cska4_fa1_2_xor1 = ((s_csamul_cska4_fa1_2_xor0 >> 0) & 0x01) ^ ((s_csamul_cska4_ha1_1_and0 >> 0) & 0x01);
  s_csamul_cska4_fa1_2_and1 = ((s_csamul_cska4_fa1_2_xor0 >> 0) & 0x01) & ((s_csamul_cska4_ha1_1_and0 >> 0) & 0x01);
  s_csamul_cska4_fa1_2_or0 = ((s_csamul_cska4_fa1_2_and0 >> 0) & 0x01) | ((s_csamul_cska4_fa1_2_and1 >> 0) & 0x01);
  s_csamul_cska4_and2_2 = ((a >> 2) & 0x01) & ((b >> 2) & 0x01);
  s_csamul_cska4_fa2_2_xor0 = ((s_csamul_cska4_and2_2 >> 0) & 0x01) ^ ((s_csamul_cska4_ha3_1_xor0 >> 0) & 0x01);
  s_csamul_cska4_fa2_2_and0 = ((s_csamul_cska4_and2_2 >> 0) & 0x01) & ((s_csamul_cska4_ha3_1_xor0 >> 0) & 0x01);
  s_csamul_cska4_fa2_2_xor1 = ((s_csamul_cska4_fa2_2_xor0 >> 0) & 0x01) ^ ((s_csamul_cska4_ha2_1_and0 >> 0) & 0x01);
  s_csamul_cska4_fa2_2_and1 = ((s_csamul_cska4_fa2_2_xor0 >> 0) & 0x01) & ((s_csamul_cska4_ha2_1_and0 >> 0) & 0x01);
  s_csamul_cska4_fa2_2_or0 = ((s_csamul_cska4_fa2_2_and0 >> 0) & 0x01) | ((s_csamul_cska4_fa2_2_and1 >> 0) & 0x01);
  s_csamul_cska4_nand3_2 = ~(((a >> 3) & 0x01) & ((b >> 2) & 0x01)) & 0x01;
  s_csamul_cska4_ha3_2_xor0 = ((s_csamul_cska4_nand3_2 >> 0) & 0x01) ^ ((s_csamul_cska4_nand3_1 >> 0) & 0x01);
  s_csamul_cska4_ha3_2_and0 = ((s_csamul_cska4_nand3_2 >> 0) & 0x01) & ((s_csamul_cska4_nand3_1 >> 0) & 0x01);
  s_csamul_cska4_nand0_3 = ~(((a >> 0) & 0x01) & ((b >> 3) & 0x01)) & 0x01;
  s_csamul_cska4_fa0_3_xor0 = ((s_csamul_cska4_nand0_3 >> 0) & 0x01) ^ ((s_csamul_cska4_fa1_2_xor1 >> 0) & 0x01);
  s_csamul_cska4_fa0_3_and0 = ((s_csamul_cska4_nand0_3 >> 0) & 0x01) & ((s_csamul_cska4_fa1_2_xor1 >> 0) & 0x01);
  s_csamul_cska4_fa0_3_xor1 = ((s_csamul_cska4_fa0_3_xor0 >> 0) & 0x01) ^ ((s_csamul_cska4_fa0_2_or0 >> 0) & 0x01);
  s_csamul_cska4_fa0_3_and1 = ((s_csamul_cska4_fa0_3_xor0 >> 0) & 0x01) & ((s_csamul_cska4_fa0_2_or0 >> 0) & 0x01);
  s_csamul_cska4_fa0_3_or0 = ((s_csamul_cska4_fa0_3_and0 >> 0) & 0x01) | ((s_csamul_cska4_fa0_3_and1 >> 0) & 0x01);
  s_csamul_cska4_nand1_3 = ~(((a >> 1) & 0x01) & ((b >> 3) & 0x01)) & 0x01;
  s_csamul_cska4_fa1_3_xor0 = ((s_csamul_cska4_nand1_3 >> 0) & 0x01) ^ ((s_csamul_cska4_fa2_2_xor1 >> 0) & 0x01);
  s_csamul_cska4_fa1_3_and0 = ((s_csamul_cska4_nand1_3 >> 0) & 0x01) & ((s_csamul_cska4_fa2_2_xor1 >> 0) & 0x01);
  s_csamul_cska4_fa1_3_xor1 = ((s_csamul_cska4_fa1_3_xor0 >> 0) & 0x01) ^ ((s_csamul_cska4_fa1_2_or0 >> 0) & 0x01);
  s_csamul_cska4_fa1_3_and1 = ((s_csamul_cska4_fa1_3_xor0 >> 0) & 0x01) & ((s_csamul_cska4_fa1_2_or0 >> 0) & 0x01);
  s_csamul_cska4_fa1_3_or0 = ((s_csamul_cska4_fa1_3_and0 >> 0) & 0x01) | ((s_csamul_cska4_fa1_3_and1 >> 0) & 0x01);
  s_csamul_cska4_nand2_3 = ~(((a >> 2) & 0x01) & ((b >> 3) & 0x01)) & 0x01;
  s_csamul_cska4_fa2_3_xor0 = ((s_csamul_cska4_nand2_3 >> 0) & 0x01) ^ ((s_csamul_cska4_ha3_2_xor0 >> 0) & 0x01);
  s_csamul_cska4_fa2_3_and0 = ((s_csamul_cska4_nand2_3 >> 0) & 0x01) & ((s_csamul_cska4_ha3_2_xor0 >> 0) & 0x01);
  s_csamul_cska4_fa2_3_xor1 = ((s_csamul_cska4_fa2_3_xor0 >> 0) & 0x01) ^ ((s_csamul_cska4_fa2_2_or0 >> 0) & 0x01);
  s_csamul_cska4_fa2_3_and1 = ((s_csamul_cska4_fa2_3_xor0 >> 0) & 0x01) & ((s_csamul_cska4_fa2_2_or0 >> 0) & 0x01);
  s_csamul_cska4_fa2_3_or0 = ((s_csamul_cska4_fa2_3_and0 >> 0) & 0x01) | ((s_csamul_cska4_fa2_3_and1 >> 0) & 0x01);
  s_csamul_cska4_and3_3 = ((a >> 3) & 0x01) & ((b >> 3) & 0x01);
  s_csamul_cska4_ha3_3_xor0 = ((s_csamul_cska4_and3_3 >> 0) & 0x01) ^ ((s_csamul_cska4_ha3_2_and0 >> 0) & 0x01);
  s_csamul_cska4_ha3_3_and0 = ((s_csamul_cska4_and3_3 >> 0) & 0x01) & ((s_csamul_cska4_ha3_2_and0 >> 0) & 0x01);
  s_csamul_cska4_u_cska4_xor0 = ((s_csamul_cska4_fa1_3_xor1 >> 0) & 0x01) ^ ((s_csamul_cska4_fa0_3_or0 >> 0) & 0x01);
  s_csamul_cska4_u_cska4_ha0_xor0 = ((s_csamul_cska4_fa1_3_xor1 >> 0) & 0x01) ^ ((s_csamul_cska4_fa0_3_or0 >> 0) & 0x01);
  s_csamul_cska4_u_cska4_ha0_and0 = ((s_csamul_cska4_fa1_3_xor1 >> 0) & 0x01) & ((s_csamul_cska4_fa0_3_or0 >> 0) & 0x01);
  s_csamul_cska4_u_cska4_xor1 = ((s_csamul_cska4_fa2_3_xor1 >> 0) & 0x01) ^ ((s_csamul_cska4_fa1_3_or0 >> 0) & 0x01);
  s_csamul_cska4_u_cska4_fa0_xor0 = ((s_csamul_cska4_fa2_3_xor1 >> 0) & 0x01) ^ ((s_csamul_cska4_fa1_3_or0 >> 0) & 0x01);
  s_csamul_cska4_u_cska4_fa0_and0 = ((s_csamul_cska4_fa2_3_xor1 >> 0) & 0x01) & ((s_csamul_cska4_fa1_3_or0 >> 0) & 0x01);
  s_csamul_cska4_u_cska4_fa0_xor1 = ((s_csamul_cska4_u_cska4_fa0_xor0 >> 0) & 0x01) ^ ((s_csamul_cska4_u_cska4_ha0_and0 >> 0) & 0x01);
  s_csamul_cska4_u_cska4_fa0_and1 = ((s_csamul_cska4_u_cska4_fa0_xor0 >> 0) & 0x01) & ((s_csamul_cska4_u_cska4_ha0_and0 >> 0) & 0x01);
  s_csamul_cska4_u_cska4_fa0_or0 = ((s_csamul_cska4_u_cska4_fa0_and0 >> 0) & 0x01) | ((s_csamul_cska4_u_cska4_fa0_and1 >> 0) & 0x01);
  s_csamul_cska4_u_cska4_xor2 = ((s_csamul_cska4_ha3_3_xor0 >> 0) & 0x01) ^ ((s_csamul_cska4_fa2_3_or0 >> 0) & 0x01);
  s_csamul_cska4_u_cska4_fa1_xor0 = ((s_csamul_cska4_ha3_3_xor0 >> 0) & 0x01) ^ ((s_csamul_cska4_fa2_3_or0 >> 0) & 0x01);
  s_csamul_cska4_u_cska4_fa1_and0 = ((s_csamul_cska4_ha3_3_xor0 >> 0) & 0x01) & ((s_csamul_cska4_fa2_3_or0 >> 0) & 0x01);
  s_csamul_cska4_u_cska4_fa1_xor1 = ((s_csamul_cska4_u_cska4_fa1_xor0 >> 0) & 0x01) ^ ((s_csamul_cska4_u_cska4_fa0_or0 >> 0) & 0x01);
  s_csamul_cska4_u_cska4_fa1_and1 = ((s_csamul_cska4_u_cska4_fa1_xor0 >> 0) & 0x01) & ((s_csamul_cska4_u_cska4_fa0_or0 >> 0) & 0x01);
  s_csamul_cska4_u_cska4_fa1_or0 = ((s_csamul_cska4_u_cska4_fa1_and0 >> 0) & 0x01) | ((s_csamul_cska4_u_cska4_fa1_and1 >> 0) & 0x01);
  s_csamul_cska4_u_cska4_xor3 = ~(((s_csamul_cska4_ha3_3_and0 >> 0) & 0x01)) & 0x01;
  s_csamul_cska4_u_cska4_fa2_xor0 = ~(((s_csamul_cska4_ha3_3_and0 >> 0) & 0x01)) & 0x01;
  s_csamul_cska4_u_cska4_fa2_xor1 = ((s_csamul_cska4_u_cska4_fa2_xor0 >> 0) & 0x01) ^ ((s_csamul_cska4_u_cska4_fa1_or0 >> 0) & 0x01);
  s_csamul_cska4_u_cska4_fa2_and1 = ((s_csamul_cska4_u_cska4_fa2_xor0 >> 0) & 0x01) & ((s_csamul_cska4_u_cska4_fa1_or0 >> 0) & 0x01);
  s_csamul_cska4_u_cska4_fa2_or0 = ((s_csamul_cska4_ha3_3_and0 >> 0) & 0x01) | ((s_csamul_cska4_u_cska4_fa2_and1 >> 0) & 0x01);
  s_csamul_cska4_u_cska4_and_propagate00 = ((s_csamul_cska4_u_cska4_xor0 >> 0) & 0x01) & ((s_csamul_cska4_u_cska4_xor2 >> 0) & 0x01);
  s_csamul_cska4_u_cska4_and_propagate01 = ((s_csamul_cska4_u_cska4_xor1 >> 0) & 0x01) & ((s_csamul_cska4_u_cska4_xor3 >> 0) & 0x01);
  s_csamul_cska4_u_cska4_and_propagate02 = ((s_csamul_cska4_u_cska4_and_propagate00 >> 0) & 0x01) & ((s_csamul_cska4_u_cska4_and_propagate01 >> 0) & 0x01);
  s_csamul_cska4_u_cska4_mux2to10_not0 = ~(((s_csamul_cska4_u_cska4_and_propagate02 >> 0) & 0x01)) & 0x01;
  s_csamul_cska4_u_cska4_mux2to10_and1 = ((s_csamul_cska4_u_cska4_fa2_or0 >> 0) & 0x01) & ((s_csamul_cska4_u_cska4_mux2to10_not0 >> 0) & 0x01);

  s_csamul_cska4_out |= ((s_csamul_cska4_and0_0 >> 0) & 0x01ull) << 0;
  s_csamul_cska4_out |= ((s_csamul_cska4_ha0_1_xor0 >> 0) & 0x01ull) << 1;
  s_csamul_cska4_out |= ((s_csamul_cska4_fa0_2_xor1 >> 0) & 0x01ull) << 2;
  s_csamul_cska4_out |= ((s_csamul_cska4_fa0_3_xor1 >> 0) & 0x01ull) << 3;
  s_csamul_cska4_out |= ((s_csamul_cska4_u_cska4_ha0_xor0 >> 0) & 0x01ull) << 4;
  s_csamul_cska4_out |= ((s_csamul_cska4_u_cska4_fa0_xor1 >> 0) & 0x01ull) << 5;
  s_csamul_cska4_out |= ((s_csamul_cska4_u_cska4_fa1_xor1 >> 0) & 0x01ull) << 6;
  s_csamul_cska4_out |= ((s_csamul_cska4_u_cska4_fa2_xor1 >> 0) & 0x01ull) << 7;
  return s_csamul_cska4_out;
}