
from io import StringIO
import os, sys

DIR_PATH = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, os.path.join(DIR_PATH, '..'))

from ariths_gen.core.arithmetic_circuits import GeneralCircuit
from ariths_gen.multi_bit_circuits.adders import SignedRippleCarryAdder, SignedCarryLookaheadAdder, SignedBrentKungAdder, SignedCarryIncrementAdder, SignedCarrySkipAdder, SignedCarrySelectAdder, SignedConditionalSumAdder, SignedHanCarlsonAdder, SignedKnowlesAdder, SignedKoggeStoneAdder, SignedLadnerFischerAdder, SignedPGRippleCarryAdder, SignedSklanskyAdder
from ariths_gen.wire_components import Bus

from ariths_gen.pdk import *
import os

from ctypes import c_int8

# usage
if __name__ == "__main__":

    for adder in [SignedRippleCarryAdder, SignedCarryLookaheadAdder, SignedBrentKungAdder, SignedCarryIncrementAdder, SignedCarrySkipAdder, SignedCarrySelectAdder, SignedConditionalSumAdder, SignedHanCarlsonAdder, SignedKnowlesAdder, SignedKoggeStoneAdder, SignedLadnerFischerAdder, SignedPGRippleCarryAdder, SignedSklanskyAdder]:
        maji = adder(Bus("a", 8), Bus("b", 8), prefix="", name=f"u_adder")

        # try to test maji
        for a in range(256):
            for b in range(256):
                testOut     = c_int8(maji(a, b)).value
                expectedBus = c_int8(c_int8(a).value + c_int8(b).value).value

            if (expectedBus != testOut):
                print(f"Test maji as {adder.__name__} FAIL expexted {a} + {b} = {expectedBus} have {testOut}")
                exit(1)
            
        print(f"Test maji as {adder.__name__} OK")