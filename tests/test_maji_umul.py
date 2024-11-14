
from io import StringIO
import os, sys

DIR_PATH = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, os.path.join(DIR_PATH, '..'))

from ariths_gen.core.arithmetic_circuits import GeneralCircuit
from ariths_gen.multi_bit_circuits.multipliers import UnsignedArrayMultiplier, UnsignedCarrySaveMultiplier, UnsignedDaddaMultiplier, UnsignedWallaceMultiplier
from ariths_gen.wire_components import Bus
from ctypes import c_uint8, c_uint16

from ariths_gen.pdk import *
import os

# usage
if __name__ == "__main__":

    for multiplayer in [UnsignedArrayMultiplier, UnsignedCarrySaveMultiplier, UnsignedDaddaMultiplier, UnsignedWallaceMultiplier]:
        maji = multiplayer(Bus("a", 8), Bus("b", 8), prefix="", name=f"u_mul")

        # try to test maji
        for a in range(256):
            for b in range(256):
                testOut     = c_uint16(maji(a, b))
                expectedBus = c_uint16(c_uint8(a).value * c_uint8(b).value).value

            if (expectedBus != testOut):
                print(f"Test maji as {multiplayer.__name__} FAIL expexted {a} * {b} = {expectedBus} have {testOut}")
                exit(1)
            
        print(f"Test maji as {multiplayer.__name__} OK")
