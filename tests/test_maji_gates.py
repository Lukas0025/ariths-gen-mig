
import os, sys

DIR_PATH = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, os.path.join(DIR_PATH, '..'))

from ariths_gen.core.arithmetic_circuits import GeneralCircuit
from ariths_gen.one_bit_circuits.logic_gates import AndGate, NandGate, NorGate, NotGate, OrGate
from ariths_gen.wire_components import Bus

from ariths_gen.pdk import *
import os

class MultiMaji(GeneralCircuit):
    def __init__(self, a: Bus, b: Bus, prefix: str = "", name: str = "maji", **kwargs):
        super().__init__(prefix=prefix, name=name, out_N=a.N, inputs=[a, b], **kwargs)

        self.out = Bus("out", a.N * 5)

        assert a.N == b.N

        for i in range(a.N):
            self.orGate   = self.add_component(  OrGate(a.get_wire(i), b.get_wire(i), parent_component=self, prefix="or"))
            self.andGate  = self.add_component( AndGate(a.get_wire(i), b.get_wire(i), parent_component=self, prefix="and"))
            self.norGate  = self.add_component( NorGate(a.get_wire(i), b.get_wire(i), parent_component=self, prefix="nor"))
            self.nandGate = self.add_component(NandGate(a.get_wire(i), b.get_wire(i), parent_component=self, prefix="nand"))
            self.notGate  = self.add_component( NotGate(a.get_wire(i), parent_component=self, prefix="not"))

            self.out.connect(i          , self.orGate.out)
            self.out.connect(a.N     + i, self.andGate.out)
            self.out.connect(a.N * 2 + i, self.norGate.out)
            self.out.connect(a.N * 3 + i, self.nandGate.out)
            self.out.connect(a.N * 4 + i, self.notGate.out)

# usage
if __name__ == "__main__":
    maji = MultiMaji(Bus("a", 1), Bus("b", 1))

    # try to test maji
    for varinat in range(4):
        a =  varinat & 0b01
        b = (varinat & 0b10) >> 1

        testOut = maji(a, b)

        expectedBus = (a | b) | (a & b) << 1 | (~(a | b) & 0b1) << 2 | (~(a & b) & 0b1) << 3 | (~a & 0b1) << 4

        if (expectedBus != testOut):
            print(f"expexted {expectedBus} have {testOut}")
            exit(1)
        
    print("Test maji as logic gates OK")
