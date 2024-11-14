
from io import StringIO
import os, sys

DIR_PATH = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, os.path.join(DIR_PATH, '..'))

from ariths_gen.core.arithmetic_circuits import GeneralCircuit
from ariths_gen.multi_bit_circuits.multipliers import SignedArrayMultiplier, SignedCarrySaveMultiplier, SignedDaddaMultiplier, SignedWallaceMultiplier
from ariths_gen.wire_components import Bus
from ctypes import c_int8, c_int16

from ariths_gen.pdk import *
import os

# usage
if __name__ == "__main__":

    for multiplayer in [SignedArrayMultiplier, SignedCarrySaveMultiplier, SignedDaddaMultiplier, SignedWallaceMultiplier]:
        maji = multiplayer(Bus("a", 8), Bus("b", 8), prefix="", name=f"u_mul")

        # try to test maji
        for a in range(256):
            for b in range(256):
                testOut     = c_int16(maji(a, b)).value
                expectedBus = c_int16(c_int8(a).value * c_int8(b).value).value

            if (expectedBus != testOut):
                print(f"Test maji as {multiplayer.__name__} FAIL expexted {a} * {b} = {expectedBus} have {testOut}")
                exit(1)
            
        print(f"Test maji as {multiplayer.__name__} OK")
