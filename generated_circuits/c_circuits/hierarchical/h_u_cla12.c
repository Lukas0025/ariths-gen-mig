#include <stdio.h>
#include <stdint.h>

uint8_t or_gate(uint8_t a, uint8_t b){
  return ((a >> 0) & 0x01) | ((b >> 0) & 0x01);
}

uint8_t and_gate(uint8_t a, uint8_t b){
  return ((a >> 0) & 0x01) & ((b >> 0) & 0x01);
}

uint8_t xor_gate(uint8_t a, uint8_t b){
  return ((a >> 0) & 0x01) ^ ((b >> 0) & 0x01);
}

uint8_t pg_logic(uint8_t a, uint8_t b){
  uint8_t pg_logic_out = 0;
  uint8_t pg_logic_or0 = 0;
  uint8_t pg_logic_and0 = 0;
  uint8_t pg_logic_xor0 = 0;

  pg_logic_or0 = or_gate(((a >> 0) & 0x01), ((b >> 0) & 0x01));
  pg_logic_and0 = and_gate(((a >> 0) & 0x01), ((b >> 0) & 0x01));
  pg_logic_xor0 = xor_gate(((a >> 0) & 0x01), ((b >> 0) & 0x01));

  pg_logic_out |= ((pg_logic_or0 >> 0) & 0x01) << 0;
  pg_logic_out |= ((pg_logic_and0 >> 0) & 0x01) << 1;
  pg_logic_out |= ((pg_logic_xor0 >> 0) & 0x01) << 2;
  return pg_logic_out;
}

uint64_t h_u_cla12(uint64_t a, uint64_t b){
  uint64_t h_u_cla12_out = 0;
  uint8_t h_u_cla12_pg_logic0_or0 = 0;
  uint8_t h_u_cla12_pg_logic0_and0 = 0;
  uint8_t h_u_cla12_pg_logic0_xor0 = 0;
  uint8_t h_u_cla12_pg_logic1_or0 = 0;
  uint8_t h_u_cla12_pg_logic1_and0 = 0;
  uint8_t h_u_cla12_pg_logic1_xor0 = 0;
  uint8_t h_u_cla12_xor1 = 0;
  uint8_t h_u_cla12_and0 = 0;
  uint8_t h_u_cla12_or0 = 0;
  uint8_t h_u_cla12_pg_logic2_or0 = 0;
  uint8_t h_u_cla12_pg_logic2_and0 = 0;
  uint8_t h_u_cla12_pg_logic2_xor0 = 0;
  uint8_t h_u_cla12_xor2 = 0;
  uint8_t h_u_cla12_and1 = 0;
  uint8_t h_u_cla12_and2 = 0;
  uint8_t h_u_cla12_and3 = 0;
  uint8_t h_u_cla12_and4 = 0;
  uint8_t h_u_cla12_or1 = 0;
  uint8_t h_u_cla12_or2 = 0;
  uint8_t h_u_cla12_pg_logic3_or0 = 0;
  uint8_t h_u_cla12_pg_logic3_and0 = 0;
  uint8_t h_u_cla12_pg_logic3_xor0 = 0;
  uint8_t h_u_cla12_xor3 = 0;
  uint8_t h_u_cla12_and5 = 0;
  uint8_t h_u_cla12_and6 = 0;
  uint8_t h_u_cla12_and7 = 0;
  uint8_t h_u_cla12_and8 = 0;
  uint8_t h_u_cla12_and9 = 0;
  uint8_t h_u_cla12_and10 = 0;
  uint8_t h_u_cla12_and11 = 0;
  uint8_t h_u_cla12_or3 = 0;
  uint8_t h_u_cla12_or4 = 0;
  uint8_t h_u_cla12_or5 = 0;
  uint8_t h_u_cla12_pg_logic4_or0 = 0;
  uint8_t h_u_cla12_pg_logic4_and0 = 0;
  uint8_t h_u_cla12_pg_logic4_xor0 = 0;
  uint8_t h_u_cla12_xor4 = 0;
  uint8_t h_u_cla12_and12 = 0;
  uint8_t h_u_cla12_or6 = 0;
  uint8_t h_u_cla12_pg_logic5_or0 = 0;
  uint8_t h_u_cla12_pg_logic5_and0 = 0;
  uint8_t h_u_cla12_pg_logic5_xor0 = 0;
  uint8_t h_u_cla12_xor5 = 0;
  uint8_t h_u_cla12_and13 = 0;
  uint8_t h_u_cla12_and14 = 0;
  uint8_t h_u_cla12_and15 = 0;
  uint8_t h_u_cla12_or7 = 0;
  uint8_t h_u_cla12_or8 = 0;
  uint8_t h_u_cla12_pg_logic6_or0 = 0;
  uint8_t h_u_cla12_pg_logic6_and0 = 0;
  uint8_t h_u_cla12_pg_logic6_xor0 = 0;
  uint8_t h_u_cla12_xor6 = 0;
  uint8_t h_u_cla12_and16 = 0;
  uint8_t h_u_cla12_and17 = 0;
  uint8_t h_u_cla12_and18 = 0;
  uint8_t h_u_cla12_and19 = 0;
  uint8_t h_u_cla12_and20 = 0;
  uint8_t h_u_cla12_and21 = 0;
  uint8_t h_u_cla12_or9 = 0;
  uint8_t h_u_cla12_or10 = 0;
  uint8_t h_u_cla12_or11 = 0;
  uint8_t h_u_cla12_pg_logic7_or0 = 0;
  uint8_t h_u_cla12_pg_logic7_and0 = 0;
  uint8_t h_u_cla12_pg_logic7_xor0 = 0;
  uint8_t h_u_cla12_xor7 = 0;
  uint8_t h_u_cla12_and22 = 0;
  uint8_t h_u_cla12_and23 = 0;
  uint8_t h_u_cla12_and24 = 0;
  uint8_t h_u_cla12_and25 = 0;
  uint8_t h_u_cla12_and26 = 0;
  uint8_t h_u_cla12_and27 = 0;
  uint8_t h_u_cla12_and28 = 0;
  uint8_t h_u_cla12_and29 = 0;
  uint8_t h_u_cla12_and30 = 0;
  uint8_t h_u_cla12_and31 = 0;
  uint8_t h_u_cla12_or12 = 0;
  uint8_t h_u_cla12_or13 = 0;
  uint8_t h_u_cla12_or14 = 0;
  uint8_t h_u_cla12_or15 = 0;
  uint8_t h_u_cla12_pg_logic8_or0 = 0;
  uint8_t h_u_cla12_pg_logic8_and0 = 0;
  uint8_t h_u_cla12_pg_logic8_xor0 = 0;
  uint8_t h_u_cla12_xor8 = 0;
  uint8_t h_u_cla12_and32 = 0;
  uint8_t h_u_cla12_or16 = 0;
  uint8_t h_u_cla12_pg_logic9_or0 = 0;
  uint8_t h_u_cla12_pg_logic9_and0 = 0;
  uint8_t h_u_cla12_pg_logic9_xor0 = 0;
  uint8_t h_u_cla12_xor9 = 0;
  uint8_t h_u_cla12_and33 = 0;
  uint8_t h_u_cla12_and34 = 0;
  uint8_t h_u_cla12_and35 = 0;
  uint8_t h_u_cla12_or17 = 0;
  uint8_t h_u_cla12_or18 = 0;
  uint8_t h_u_cla12_pg_logic10_or0 = 0;
  uint8_t h_u_cla12_pg_logic10_and0 = 0;
  uint8_t h_u_cla12_pg_logic10_xor0 = 0;
  uint8_t h_u_cla12_xor10 = 0;
  uint8_t h_u_cla12_and36 = 0;
  uint8_t h_u_cla12_and37 = 0;
  uint8_t h_u_cla12_and38 = 0;
  uint8_t h_u_cla12_and39 = 0;
  uint8_t h_u_cla12_and40 = 0;
  uint8_t h_u_cla12_and41 = 0;
  uint8_t h_u_cla12_or19 = 0;
  uint8_t h_u_cla12_or20 = 0;
  uint8_t h_u_cla12_or21 = 0;
  uint8_t h_u_cla12_pg_logic11_or0 = 0;
  uint8_t h_u_cla12_pg_logic11_and0 = 0;
  uint8_t h_u_cla12_pg_logic11_xor0 = 0;
  uint8_t h_u_cla12_xor11 = 0;
  uint8_t h_u_cla12_and42 = 0;
  uint8_t h_u_cla12_and43 = 0;
  uint8_t h_u_cla12_and44 = 0;
  uint8_t h_u_cla12_and45 = 0;
  uint8_t h_u_cla12_and46 = 0;
  uint8_t h_u_cla12_and47 = 0;
  uint8_t h_u_cla12_and48 = 0;
  uint8_t h_u_cla12_and49 = 0;
  uint8_t h_u_cla12_and50 = 0;
  uint8_t h_u_cla12_and51 = 0;
  uint8_t h_u_cla12_or22 = 0;
  uint8_t h_u_cla12_or23 = 0;
  uint8_t h_u_cla12_or24 = 0;
  uint8_t h_u_cla12_or25 = 0;

  h_u_cla12_pg_logic0_or0 = (pg_logic(((a >> 0) & 0x01), ((b >> 0) & 0x01)) >> 0) & 0x01;
  h_u_cla12_pg_logic0_and0 = (pg_logic(((a >> 0) & 0x01), ((b >> 0) & 0x01)) >> 1) & 0x01;
  h_u_cla12_pg_logic0_xor0 = (pg_logic(((a >> 0) & 0x01), ((b >> 0) & 0x01)) >> 2) & 0x01;
  h_u_cla12_pg_logic1_or0 = (pg_logic(((a >> 1) & 0x01), ((b >> 1) & 0x01)) >> 0) & 0x01;
  h_u_cla12_pg_logic1_and0 = (pg_logic(((a >> 1) & 0x01), ((b >> 1) & 0x01)) >> 1) & 0x01;
  h_u_cla12_pg_logic1_xor0 = (pg_logic(((a >> 1) & 0x01), ((b >> 1) & 0x01)) >> 2) & 0x01;
  h_u_cla12_xor1 = xor_gate(((h_u_cla12_pg_logic1_xor0 >> 0) & 0x01), ((h_u_cla12_pg_logic0_and0 >> 0) & 0x01));
  h_u_cla12_and0 = and_gate(((h_u_cla12_pg_logic0_and0 >> 0) & 0x01), ((h_u_cla12_pg_logic1_or0 >> 0) & 0x01));
  h_u_cla12_or0 = or_gate(((h_u_cla12_pg_logic1_and0 >> 0) & 0x01), ((h_u_cla12_and0 >> 0) & 0x01));
  h_u_cla12_pg_logic2_or0 = (pg_logic(((a >> 2) & 0x01), ((b >> 2) & 0x01)) >> 0) & 0x01;
  h_u_cla12_pg_logic2_and0 = (pg_logic(((a >> 2) & 0x01), ((b >> 2) & 0x01)) >> 1) & 0x01;
  h_u_cla12_pg_logic2_xor0 = (pg_logic(((a >> 2) & 0x01), ((b >> 2) & 0x01)) >> 2) & 0x01;
  h_u_cla12_xor2 = xor_gate(((h_u_cla12_pg_logic2_xor0 >> 0) & 0x01), ((h_u_cla12_or0 >> 0) & 0x01));
  h_u_cla12_and1 = and_gate(((h_u_cla12_pg_logic2_or0 >> 0) & 0x01), ((h_u_cla12_pg_logic0_or0 >> 0) & 0x01));
  h_u_cla12_and2 = and_gate(((h_u_cla12_pg_logic0_and0 >> 0) & 0x01), ((h_u_cla12_pg_logic2_or0 >> 0) & 0x01));
  h_u_cla12_and3 = and_gate(((h_u_cla12_and2 >> 0) & 0x01), ((h_u_cla12_pg_logic1_or0 >> 0) & 0x01));
  h_u_cla12_and4 = and_gate(((h_u_cla12_pg_logic1_and0 >> 0) & 0x01), ((h_u_cla12_pg_logic2_or0 >> 0) & 0x01));
  h_u_cla12_or1 = or_gate(((h_u_cla12_and3 >> 0) & 0x01), ((h_u_cla12_and4 >> 0) & 0x01));
  h_u_cla12_or2 = or_gate(((h_u_cla12_pg_logic2_and0 >> 0) & 0x01), ((h_u_cla12_or1 >> 0) & 0x01));
  h_u_cla12_pg_logic3_or0 = (pg_logic(((a >> 3) & 0x01), ((b >> 3) & 0x01)) >> 0) & 0x01;
  h_u_cla12_pg_logic3_and0 = (pg_logic(((a >> 3) & 0x01), ((b >> 3) & 0x01)) >> 1) & 0x01;
  h_u_cla12_pg_logic3_xor0 = (pg_logic(((a >> 3) & 0x01), ((b >> 3) & 0x01)) >> 2) & 0x01;
  h_u_cla12_xor3 = xor_gate(((h_u_cla12_pg_logic3_xor0 >> 0) & 0x01), ((h_u_cla12_or2 >> 0) & 0x01));
  h_u_cla12_and5 = and_gate(((h_u_cla12_pg_logic3_or0 >> 0) & 0x01), ((h_u_cla12_pg_logic1_or0 >> 0) & 0x01));
  h_u_cla12_and6 = and_gate(((h_u_cla12_pg_logic0_and0 >> 0) & 0x01), ((h_u_cla12_pg_logic2_or0 >> 0) & 0x01));
  h_u_cla12_and7 = and_gate(((h_u_cla12_pg_logic3_or0 >> 0) & 0x01), ((h_u_cla12_pg_logic1_or0 >> 0) & 0x01));
  h_u_cla12_and8 = and_gate(((h_u_cla12_and6 >> 0) & 0x01), ((h_u_cla12_and7 >> 0) & 0x01));
  h_u_cla12_and9 = and_gate(((h_u_cla12_pg_logic1_and0 >> 0) & 0x01), ((h_u_cla12_pg_logic3_or0 >> 0) & 0x01));
  h_u_cla12_and10 = and_gate(((h_u_cla12_and9 >> 0) & 0x01), ((h_u_cla12_pg_logic2_or0 >> 0) & 0x01));
  h_u_cla12_and11 = and_gate(((h_u_cla12_pg_logic2_and0 >> 0) & 0x01), ((h_u_cla12_pg_logic3_or0 >> 0) & 0x01));
  h_u_cla12_or3 = or_gate(((h_u_cla12_and8 >> 0) & 0x01), ((h_u_cla12_and11 >> 0) & 0x01));
  h_u_cla12_or4 = or_gate(((h_u_cla12_and10 >> 0) & 0x01), ((h_u_cla12_or3 >> 0) & 0x01));
  h_u_cla12_or5 = or_gate(((h_u_cla12_pg_logic3_and0 >> 0) & 0x01), ((h_u_cla12_or4 >> 0) & 0x01));
  h_u_cla12_pg_logic4_or0 = (pg_logic(((a >> 4) & 0x01), ((b >> 4) & 0x01)) >> 0) & 0x01;
  h_u_cla12_pg_logic4_and0 = (pg_logic(((a >> 4) & 0x01), ((b >> 4) & 0x01)) >> 1) & 0x01;
  h_u_cla12_pg_logic4_xor0 = (pg_logic(((a >> 4) & 0x01), ((b >> 4) & 0x01)) >> 2) & 0x01;
  h_u_cla12_xor4 = xor_gate(((h_u_cla12_pg_logic4_xor0 >> 0) & 0x01), ((h_u_cla12_or5 >> 0) & 0x01));
  h_u_cla12_and12 = and_gate(((h_u_cla12_or5 >> 0) & 0x01), ((h_u_cla12_pg_logic4_or0 >> 0) & 0x01));
  h_u_cla12_or6 = or_gate(((h_u_cla12_pg_logic4_and0 >> 0) & 0x01), ((h_u_cla12_and12 >> 0) & 0x01));
  h_u_cla12_pg_logic5_or0 = (pg_logic(((a >> 5) & 0x01), ((b >> 5) & 0x01)) >> 0) & 0x01;
  h_u_cla12_pg_logic5_and0 = (pg_logic(((a >> 5) & 0x01), ((b >> 5) & 0x01)) >> 1) & 0x01;
  h_u_cla12_pg_logic5_xor0 = (pg_logic(((a >> 5) & 0x01), ((b >> 5) & 0x01)) >> 2) & 0x01;
  h_u_cla12_xor5 = xor_gate(((h_u_cla12_pg_logic5_xor0 >> 0) & 0x01), ((h_u_cla12_or6 >> 0) & 0x01));
  h_u_cla12_and13 = and_gate(((h_u_cla12_or5 >> 0) & 0x01), ((h_u_cla12_pg_logic5_or0 >> 0) & 0x01));
  h_u_cla12_and14 = and_gate(((h_u_cla12_and13 >> 0) & 0x01), ((h_u_cla12_pg_logic4_or0 >> 0) & 0x01));
  h_u_cla12_and15 = and_gate(((h_u_cla12_pg_logic4_and0 >> 0) & 0x01), ((h_u_cla12_pg_logic5_or0 >> 0) & 0x01));
  h_u_cla12_or7 = or_gate(((h_u_cla12_and14 >> 0) & 0x01), ((h_u_cla12_and15 >> 0) & 0x01));
  h_u_cla12_or8 = or_gate(((h_u_cla12_pg_logic5_and0 >> 0) & 0x01), ((h_u_cla12_or7 >> 0) & 0x01));
  h_u_cla12_pg_logic6_or0 = (pg_logic(((a >> 6) & 0x01), ((b >> 6) & 0x01)) >> 0) & 0x01;
  h_u_cla12_pg_logic6_and0 = (pg_logic(((a >> 6) & 0x01), ((b >> 6) & 0x01)) >> 1) & 0x01;
  h_u_cla12_pg_logic6_xor0 = (pg_logic(((a >> 6) & 0x01), ((b >> 6) & 0x01)) >> 2) & 0x01;
  h_u_cla12_xor6 = xor_gate(((h_u_cla12_pg_logic6_xor0 >> 0) & 0x01), ((h_u_cla12_or8 >> 0) & 0x01));
  h_u_cla12_and16 = and_gate(((h_u_cla12_or5 >> 0) & 0x01), ((h_u_cla12_pg_logic5_or0 >> 0) & 0x01));
  h_u_cla12_and17 = and_gate(((h_u_cla12_pg_logic6_or0 >> 0) & 0x01), ((h_u_cla12_pg_logic4_or0 >> 0) & 0x01));
  h_u_cla12_and18 = and_gate(((h_u_cla12_and16 >> 0) & 0x01), ((h_u_cla12_and17 >> 0) & 0x01));
  h_u_cla12_and19 = and_gate(((h_u_cla12_pg_logic4_and0 >> 0) & 0x01), ((h_u_cla12_pg_logic6_or0 >> 0) & 0x01));
  h_u_cla12_and20 = and_gate(((h_u_cla12_and19 >> 0) & 0x01), ((h_u_cla12_pg_logic5_or0 >> 0) & 0x01));
  h_u_cla12_and21 = and_gate(((h_u_cla12_pg_logic5_and0 >> 0) & 0x01), ((h_u_cla12_pg_logic6_or0 >> 0) & 0x01));
  h_u_cla12_or9 = or_gate(((h_u_cla12_and18 >> 0) & 0x01), ((h_u_cla12_and20 >> 0) & 0x01));
  h_u_cla12_or10 = or_gate(((h_u_cla12_or9 >> 0) & 0x01), ((h_u_cla12_and21 >> 0) & 0x01));
  h_u_cla12_or11 = or_gate(((h_u_cla12_pg_logic6_and0 >> 0) & 0x01), ((h_u_cla12_or10 >> 0) & 0x01));
  h_u_cla12_pg_logic7_or0 = (pg_logic(((a >> 7) & 0x01), ((b >> 7) & 0x01)) >> 0) & 0x01;
  h_u_cla12_pg_logic7_and0 = (pg_logic(((a >> 7) & 0x01), ((b >> 7) & 0x01)) >> 1) & 0x01;
  h_u_cla12_pg_logic7_xor0 = (pg_logic(((a >> 7) & 0x01), ((b >> 7) & 0x01)) >> 2) & 0x01;
  h_u_cla12_xor7 = xor_gate(((h_u_cla12_pg_logic7_xor0 >> 0) & 0x01), ((h_u_cla12_or11 >> 0) & 0x01));
  h_u_cla12_and22 = and_gate(((h_u_cla12_or5 >> 0) & 0x01), ((h_u_cla12_pg_logic6_or0 >> 0) & 0x01));
  h_u_cla12_and23 = and_gate(((h_u_cla12_pg_logic7_or0 >> 0) & 0x01), ((h_u_cla12_pg_logic5_or0 >> 0) & 0x01));
  h_u_cla12_and24 = and_gate(((h_u_cla12_and22 >> 0) & 0x01), ((h_u_cla12_and23 >> 0) & 0x01));
  h_u_cla12_and25 = and_gate(((h_u_cla12_and24 >> 0) & 0x01), ((h_u_cla12_pg_logic4_or0 >> 0) & 0x01));
  h_u_cla12_and26 = and_gate(((h_u_cla12_pg_logic4_and0 >> 0) & 0x01), ((h_u_cla12_pg_logic6_or0 >> 0) & 0x01));
  h_u_cla12_and27 = and_gate(((h_u_cla12_pg_logic7_or0 >> 0) & 0x01), ((h_u_cla12_pg_logic5_or0 >> 0) & 0x01));
  h_u_cla12_and28 = and_gate(((h_u_cla12_and26 >> 0) & 0x01), ((h_u_cla12_and27 >> 0) & 0x01));
  h_u_cla12_and29 = and_gate(((h_u_cla12_pg_logic5_and0 >> 0) & 0x01), ((h_u_cla12_pg_logic7_or0 >> 0) & 0x01));
  h_u_cla12_and30 = and_gate(((h_u_cla12_and29 >> 0) & 0x01), ((h_u_cla12_pg_logic6_or0 >> 0) & 0x01));
  h_u_cla12_and31 = and_gate(((h_u_cla12_pg_logic6_and0 >> 0) & 0x01), ((h_u_cla12_pg_logic7_or0 >> 0) & 0x01));
  h_u_cla12_or12 = or_gate(((h_u_cla12_and25 >> 0) & 0x01), ((h_u_cla12_and30 >> 0) & 0x01));
  h_u_cla12_or13 = or_gate(((h_u_cla12_and28 >> 0) & 0x01), ((h_u_cla12_and31 >> 0) & 0x01));
  h_u_cla12_or14 = or_gate(((h_u_cla12_or12 >> 0) & 0x01), ((h_u_cla12_or13 >> 0) & 0x01));
  h_u_cla12_or15 = or_gate(((h_u_cla12_pg_logic7_and0 >> 0) & 0x01), ((h_u_cla12_or14 >> 0) & 0x01));
  h_u_cla12_pg_logic8_or0 = (pg_logic(((a >> 8) & 0x01), ((b >> 8) & 0x01)) >> 0) & 0x01;
  h_u_cla12_pg_logic8_and0 = (pg_logic(((a >> 8) & 0x01), ((b >> 8) & 0x01)) >> 1) & 0x01;
  h_u_cla12_pg_logic8_xor0 = (pg_logic(((a >> 8) & 0x01), ((b >> 8) & 0x01)) >> 2) & 0x01;
  h_u_cla12_xor8 = xor_gate(((h_u_cla12_pg_logic8_xor0 >> 0) & 0x01), ((h_u_cla12_or15 >> 0) & 0x01));
  h_u_cla12_and32 = and_gate(((h_u_cla12_or15 >> 0) & 0x01), ((h_u_cla12_pg_logic8_or0 >> 0) & 0x01));
  h_u_cla12_or16 = or_gate(((h_u_cla12_pg_logic8_and0 >> 0) & 0x01), ((h_u_cla12_and32 >> 0) & 0x01));
  h_u_cla12_pg_logic9_or0 = (pg_logic(((a >> 9) & 0x01), ((b >> 9) & 0x01)) >> 0) & 0x01;
  h_u_cla12_pg_logic9_and0 = (pg_logic(((a >> 9) & 0x01), ((b >> 9) & 0x01)) >> 1) & 0x01;
  h_u_cla12_pg_logic9_xor0 = (pg_logic(((a >> 9) & 0x01), ((b >> 9) & 0x01)) >> 2) & 0x01;
  h_u_cla12_xor9 = xor_gate(((h_u_cla12_pg_logic9_xor0 >> 0) & 0x01), ((h_u_cla12_or16 >> 0) & 0x01));
  h_u_cla12_and33 = and_gate(((h_u_cla12_or15 >> 0) & 0x01), ((h_u_cla12_pg_logic9_or0 >> 0) & 0x01));
  h_u_cla12_and34 = and_gate(((h_u_cla12_and33 >> 0) & 0x01), ((h_u_cla12_pg_logic8_or0 >> 0) & 0x01));
  h_u_cla12_and35 = and_gate(((h_u_cla12_pg_logic8_and0 >> 0) & 0x01), ((h_u_cla12_pg_logic9_or0 >> 0) & 0x01));
  h_u_cla12_or17 = or_gate(((h_u_cla12_and34 >> 0) & 0x01), ((h_u_cla12_and35 >> 0) & 0x01));
  h_u_cla12_or18 = or_gate(((h_u_cla12_pg_logic9_and0 >> 0) & 0x01), ((h_u_cla12_or17 >> 0) & 0x01));
  h_u_cla12_pg_logic10_or0 = (pg_logic(((a >> 10) & 0x01), ((b >> 10) & 0x01)) >> 0) & 0x01;
  h_u_cla12_pg_logic10_and0 = (pg_logic(((a >> 10) & 0x01), ((b >> 10) & 0x01)) >> 1) & 0x01;
  h_u_cla12_pg_logic10_xor0 = (pg_logic(((a >> 10) & 0x01), ((b >> 10) & 0x01)) >> 2) & 0x01;
  h_u_cla12_xor10 = xor_gate(((h_u_cla12_pg_logic10_xor0 >> 0) & 0x01), ((h_u_cla12_or18 >> 0) & 0x01));
  h_u_cla12_and36 = and_gate(((h_u_cla12_or15 >> 0) & 0x01), ((h_u_cla12_pg_logic9_or0 >> 0) & 0x01));
  h_u_cla12_and37 = and_gate(((h_u_cla12_pg_logic10_or0 >> 0) & 0x01), ((h_u_cla12_pg_logic8_or0 >> 0) & 0x01));
  h_u_cla12_and38 = and_gate(((h_u_cla12_and36 >> 0) & 0x01), ((h_u_cla12_and37 >> 0) & 0x01));
  h_u_cla12_and39 = and_gate(((h_u_cla12_pg_logic8_and0 >> 0) & 0x01), ((h_u_cla12_pg_logic10_or0 >> 0) & 0x01));
  h_u_cla12_and40 = and_gate(((h_u_cla12_and39 >> 0) & 0x01), ((h_u_cla12_pg_logic9_or0 >> 0) & 0x01));
  h_u_cla12_and41 = and_gate(((h_u_cla12_pg_logic9_and0 >> 0) & 0x01), ((h_u_cla12_pg_logic10_or0 >> 0) & 0x01));
  h_u_cla12_or19 = or_gate(((h_u_cla12_and38 >> 0) & 0x01), ((h_u_cla12_and40 >> 0) & 0x01));
  h_u_cla12_or20 = or_gate(((h_u_cla12_or19 >> 0) & 0x01), ((h_u_cla12_and41 >> 0) & 0x01));
  h_u_cla12_or21 = or_gate(((h_u_cla12_pg_logic10_and0 >> 0) & 0x01), ((h_u_cla12_or20 >> 0) & 0x01));
  h_u_cla12_pg_logic11_or0 = (pg_logic(((a >> 11) & 0x01), ((b >> 11) & 0x01)) >> 0) & 0x01;
  h_u_cla12_pg_logic11_and0 = (pg_logic(((a >> 11) & 0x01), ((b >> 11) & 0x01)) >> 1) & 0x01;
  h_u_cla12_pg_logic11_xor0 = (pg_logic(((a >> 11) & 0x01), ((b >> 11) & 0x01)) >> 2) & 0x01;
  h_u_cla12_xor11 = xor_gate(((h_u_cla12_pg_logic11_xor0 >> 0) & 0x01), ((h_u_cla12_or21 >> 0) & 0x01));
  h_u_cla12_and42 = and_gate(((h_u_cla12_or15 >> 0) & 0x01), ((h_u_cla12_pg_logic10_or0 >> 0) & 0x01));
  h_u_cla12_and43 = and_gate(((h_u_cla12_pg_logic11_or0 >> 0) & 0x01), ((h_u_cla12_pg_logic9_or0 >> 0) & 0x01));
  h_u_cla12_and44 = and_gate(((h_u_cla12_and42 >> 0) & 0x01), ((h_u_cla12_and43 >> 0) & 0x01));
  h_u_cla12_and45 = and_gate(((h_u_cla12_and44 >> 0) & 0x01), ((h_u_cla12_pg_logic8_or0 >> 0) & 0x01));
  h_u_cla12_and46 = and_gate(((h_u_cla12_pg_logic8_and0 >> 0) & 0x01), ((h_u_cla12_pg_logic10_or0 >> 0) & 0x01));
  h_u_cla12_and47 = and_gate(((h_u_cla12_pg_logic11_or0 >> 0) & 0x01), ((h_u_cla12_pg_logic9_or0 >> 0) & 0x01));
  h_u_cla12_and48 = and_gate(((h_u_cla12_and46 >> 0) & 0x01), ((h_u_cla12_and47 >> 0) & 0x01));
  h_u_cla12_and49 = and_gate(((h_u_cla12_pg_logic9_and0 >> 0) & 0x01), ((h_u_cla12_pg_logic11_or0 >> 0) & 0x01));
  h_u_cla12_and50 = and_gate(((h_u_cla12_and49 >> 0) & 0x01), ((h_u_cla12_pg_logic10_or0 >> 0) & 0x01));
  h_u_cla12_and51 = and_gate(((h_u_cla12_pg_logic10_and0 >> 0) & 0x01), ((h_u_cla12_pg_logic11_or0 >> 0) & 0x01));
  h_u_cla12_or22 = or_gate(((h_u_cla12_and45 >> 0) & 0x01), ((h_u_cla12_and50 >> 0) & 0x01));
  h_u_cla12_or23 = or_gate(((h_u_cla12_and48 >> 0) & 0x01), ((h_u_cla12_and51 >> 0) & 0x01));
  h_u_cla12_or24 = or_gate(((h_u_cla12_or22 >> 0) & 0x01), ((h_u_cla12_or23 >> 0) & 0x01));
  h_u_cla12_or25 = or_gate(((h_u_cla12_pg_logic11_and0 >> 0) & 0x01), ((h_u_cla12_or24 >> 0) & 0x01));

  h_u_cla12_out |= ((h_u_cla12_pg_logic0_xor0 >> 0) & 0x01) << 0;
  h_u_cla12_out |= ((h_u_cla12_xor1 >> 0) & 0x01) << 1;
  h_u_cla12_out |= ((h_u_cla12_xor2 >> 0) & 0x01) << 2;
  h_u_cla12_out |= ((h_u_cla12_xor3 >> 0) & 0x01) << 3;
  h_u_cla12_out |= ((h_u_cla12_xor4 >> 0) & 0x01) << 4;
  h_u_cla12_out |= ((h_u_cla12_xor5 >> 0) & 0x01) << 5;
  h_u_cla12_out |= ((h_u_cla12_xor6 >> 0) & 0x01) << 6;
  h_u_cla12_out |= ((h_u_cla12_xor7 >> 0) & 0x01) << 7;
  h_u_cla12_out |= ((h_u_cla12_xor8 >> 0) & 0x01) << 8;
  h_u_cla12_out |= ((h_u_cla12_xor9 >> 0) & 0x01) << 9;
  h_u_cla12_out |= ((h_u_cla12_xor10 >> 0) & 0x01) << 10;
  h_u_cla12_out |= ((h_u_cla12_xor11 >> 0) & 0x01) << 11;
  h_u_cla12_out |= ((h_u_cla12_or25 >> 0) & 0x01) << 12;
  return h_u_cla12_out;
}