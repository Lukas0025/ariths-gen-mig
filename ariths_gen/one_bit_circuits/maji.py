from ariths_gen.wire_components import (
    Wire
)

from ariths_gen.core.logic_gate_circuits import (
    ThreeInputLogicGate
)

from typing import List

class Maji(ThreeInputLogicGate):
    """
    Args:
        a (Wire): First input wire.
        b (Wire): Second input wire.
        c (Wire): Second input wire.
        inverts: inversion of input edges [A, B, C], defaults is [False, False, False]
        prefix (str, optional): Prefix name of unsigned bka. Defaults to "".
        name (str, optional): Name of unsigned bka. Defaults to "u_maji".
    """
    def __init__(self, a: Wire, b: Wire, c: Wire, inverts: List[bool] = [False, False, False], prefix: str = "", **kwargs):
        super().__init__(a, b, c, prefix=prefix, **kwargs)

        self.inverts            = inverts
        self.gate_type          = "maji_gate"
        self.cgp_function       = 0
        self.disable_generation = False

        self.a = a
        self.b = b
        self.c = c

        aIn = '~A' if inverts[0] else 'A'
        bIn = '~B' if inverts[1] else 'B'
        cIn = '~C' if inverts[2] else 'C'

        self.function = f"({aIn} & {bIn}) | ({bIn} & {cIn}) | ({aIn} & {cIn})"

        # @todo optimalize by const inputs

        self.out = Wire(name="out_" + prefix)

    """ BLIF CODE GENERATION """
    def get_function_blif(self):
        """Generates Blif code representing AND gate Boolean function using its truth table.

        Returns:
            str: Blif description of MAJI gate's Boolean function.
        """

        tt = ""

        for varinat in range(2**3): ## for all input varinats
            inputs = [
                (varinat & 0b001) > 0,
                (varinat & 0b010) > 0,
                (varinat & 0b100) > 0
            ]

            iinputs = inputs[:] # inverted inputs by self.inverts

            # invert input edge if set
            for i in range(len(iinputs)):
                if self.inverts[i]:
                    iinputs[i] = not(iinputs[i])

            # compute output
            out = iinputs[0] and iinputs[1] or iinputs[1] and iinputs[2] or iinputs[0] and iinputs[2]

            if out:
                inputs[0] = '1' if inputs[0] else '-1'
                inputs[1] = '1' if inputs[1] else '-1'
                inputs[2] = '1' if inputs[2] else '-1'

                tt += f"{input[0]}{input[1]}{input[2]} 1\n"

        return f".names {self.a.get_wire_value_blif()} {self.b.get_wire_value_blif()} {self.c.get_wire_value_blif()} {self.out.get_wire_value_blif()}\n" + \
               out