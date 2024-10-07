import os, sys

DIR_PATH = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, os.path.join(DIR_PATH, '..'))

import numpy as np
from ariths_gen.core.arithmetic_circuits.general_circuit import GeneralCircuit
from ariths_gen.wire_components import Bus
from ariths_gen.one_bit_circuits import Maji

from ariths_gen.pdk import *

class MultiMaji(GeneralCircuit):
    def __init__(self, a: Bus, b: Bus, c: Bus, prefix: str = "", name: str = "maji", **kwargs):
        super().__init__(prefix=prefix, name=name, out_N=a.N, inputs=[a, b, c], **kwargs)

        self.out = Bus("out", a.N * 4)

        assert a.N == b.N
        assert b.N == c.N

        for i in range(a.N):
            self.maji  = self.add_component(Maji(a.get_wire(i), b.get_wire(i), c.get_wire(i), parent_component=self, prefix="ABC"))
            self.maji1 = self.add_component(Maji(a.get_wire(i), b.get_wire(i), c.get_wire(i), inverts=[True, False, False], parent_component=self, prefix="NABC"))
            self.maji2 = self.add_component(Maji(a.get_wire(i), b.get_wire(i), c.get_wire(i), inverts=[False, True, False], parent_component=self, prefix="ANBC"))
            self.maji3 = self.add_component(Maji(a.get_wire(i), b.get_wire(i), c.get_wire(i), inverts=[False, False, True], parent_component=self, prefix="ABNC"))

            self.out.connect(i, self.maji.out)
            self.out.connect(a.N     + i, self.maji1.out)
            self.out.connect(a.N * 2 + i, self.maji2.out)
            self.out.connect(a.N * 3 + i, self.maji3.out)

# usage
if __name__ == "__main__":
    maji = MultiMaji(Bus("a", 1), Bus("b", 1), Bus("c", 1))

    # try to test maji
    for varinat in range(16):
        a =  varinat & 0b001
        b = (varinat & 0b010) >> 1
        c = (varinat & 0b100) >> 2

        testOut = maji(a, b, c)

        #compute mayority
        expected  = np.bincount([a,        b,       c]).argmax()
        expected1 = np.bincount([~a & 0b1, b,       c]).argmax()
        expected2 = np.bincount([a,       ~b & 0b1, c]).argmax()
        expected3 = np.bincount([a,        b,      ~c & 0b01]).argmax()

        expectedBus = expected | expected1 << 1 | expected2 << 2 | expected3 << 3

        if (expectedBus != testOut):
            print(f"expexted {expectedBus} have {testOut}")
            exit(1)
        
    print("Test maji OK")
