from io import StringIO
import os, sys

DIR_PATH = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, os.path.join(DIR_PATH, '..'))

from ariths_gen.core.arithmetic_circuits import GeneralCircuit
from ariths_gen.multi_bit_circuits.adders import UnsignedRippleCarryAdder, UnsignedCarryLookaheadAdder, UnsignedBrentKungAdder, UnsignedCarryIncrementAdder, UnsignedCarrySkipAdder, UnsignedCarrySelectAdder, UnsignedConditionalSumAdder, UnsignedHanCarlsonAdder, UnsignedKnowlesAdder, UnsignedKoggeStoneAdder, UnsignedLadnerFischerAdder, UnsignedPGRippleCarryAdder, UnsignedSklanskyAdder
from ariths_gen.wire_components import Bus

from ariths_gen.pdk import *
import os

from ctypes import c_uint8

# usage
if __name__ == "__main__":

    for adder in [UnsignedRippleCarryAdder, UnsignedCarryLookaheadAdder, UnsignedBrentKungAdder, UnsignedCarryIncrementAdder, UnsignedCarrySkipAdder, UnsignedCarrySelectAdder, UnsignedConditionalSumAdder, UnsignedHanCarlsonAdder, UnsignedKnowlesAdder, UnsignedKoggeStoneAdder, UnsignedLadnerFischerAdder, UnsignedPGRippleCarryAdder, UnsignedSklanskyAdder]:
        maji = adder(Bus("a", 8), Bus("b", 8), prefix="", name=f"uut")

        maji.get_v_code_flat(open(f"{adder.__name__}.v", "w"))