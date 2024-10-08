
from io import StringIO
import os, sys

DIR_PATH = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, os.path.join(DIR_PATH, '..'))

from ariths_gen.core.arithmetic_circuits import GeneralCircuit
from ariths_gen.multi_bit_circuits.adders import UnsignedRippleCarryAdder
from ariths_gen.wire_components import Bus

from ariths_gen.pdk import *
import os

class MultiMaji(GeneralCircuit):
    def __init__(self, a: Bus, b: Bus, prefix: str = "", name: str = "maji", **kwargs):
        super().__init__(prefix=prefix, name=name, out_N=a.N, inputs=[a, b], **kwargs)

        self.out = Bus("out", a.N)

        assert a.N == b.N

        self.add = self.add_component(UnsignedRippleCarryAdder(a, b, prefix=self.prefix, name=f"u_rca{a.N}", inner_component=False))
        self.out.connect_bus(connecting_bus=self.add.out)

# usage
if __name__ == "__main__":
    maji = MultiMaji(Bus("a", 8), Bus("b", 8))

    # try to test maji
    for a in range(256):
        for b in range(256):
            testOut     = maji(a, b)
            expectedBus = (a + b) & 0xFF

        if (expectedBus != testOut):
            print(f"expexted {expectedBus} have {testOut}")
            exit(1)
        
    print("Test maji as Ripple Carry Adder OK")
