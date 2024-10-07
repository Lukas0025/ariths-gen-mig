from ariths_gen.one_bit_circuits      import Maji
from ariths_gen.wire_components       import Wire, ConstantWireValue0, ConstantWireValue1


# Two-input #
class AndGate(Maji):
    """Class representing two input AND gate.

    ```
        ┌──────┐
    ───►│  &   │
        │      ├─►
    ───►│      │
        └──────┘
    ```

    Description of the __init__ method.

    Args:
        a (Wire): First input wire.
        b (Wire): Second input wire.
        prefix (str, optional): Prefix name of AND gate. Defaults to "".
        outid (int, optional): Index of output wire. Defaults to 0.
        parent_component (object, optional) Object of upper component of which AND gate is a subcomponent. Defaults to None.
    """
    def __init__(self, a: Wire, b: Wire, prefix: str = "", outid: int = 0, parent_component: object = None):
        super().__init__(a, b, ConstantWireValue0(), prefix=prefix, outid=outid, parent_component=parent_component)


class NandGate(Maji):
    """Class representing two input NAND gate.

    ```
        ┌──────┐
    ───►│ &    │
        │      │O──►
    ───►│      │
        └──────┘
    ```

    Description of the __init__ method.

    Args:
        a (Wire): First input wire.
        b (Wire): Second input wire.
        prefix (str, optional): Prefix name of NAND gate. Defaults to "".
        outid (int, optional): Index of output wire. Defaults to 0.
        parent_component (object, optional) Object of upper component of which NAND gate is a subcomponent. Defaults to None.
    """
    def __init__(self, a: Wire, b: Wire, prefix: str = "", outid: int = 0, parent_component: object = None):
        super().__init__(a, b, ConstantWireValue1(), prefix=prefix, inverts=[True, True, False], outid=outid, parent_component=parent_component)

class OrGate(Maji):
    """Class representing two input OR gate.

    ```
        ┌──────┐
    ───►│ ≥1   │
        │      ├─►
    ───►│      │
        └──────┘
    ```

    Description of the __init__ method.

    Args:
        a (Wire): First input wire.
        b (Wire): Second input wire.
        prefix (str, optional): Prefix name of OR gate. Defaults to "".
        outid (int, optional): Index of output wire. Defaults to 0.
        parent_component (object, optional) Object of upper component of which OR gate is a subcomponent. Defaults to None.
    """
    def __init__(self, a: Wire, b: Wire, prefix: str = "", outid: int = 0, parent_component: object = None):
        super().__init__(a, b, ConstantWireValue1(), prefix=prefix, outid=outid, parent_component=parent_component)


class NorGate(Maji):
    """Class representing two input NOR gate.

    ```
        ┌──────┐
    ───►│ ≥1   │
        │      │O──►
    ───►│      │
        └──────┘
    ```

    Description of the __init__ method.

    Args:
        a (Wire): First input wire.
        b (Wire): Second input wire.
        prefix (str, optional): Prefix name of NOR gate. Defaults to "".
        outid (int, optional): Index of output wire. Defaults to 0.
        parent_component (object, optional) Object of upper component of which NOR gate is a subcomponent. Defaults to None.
    """
    def __init__(self, a: Wire, b: Wire, prefix: str = "", outid: int = 0, parent_component: object = None):
        super().__init__(a, b, ConstantWireValue0(), prefix=prefix, inverts=[True, True, False], outid=outid, parent_component=parent_component)

class XorGate(Maji):
    """Class representing two input XOR gate.

    ```
        ┌──────┐
    ───►│ =1   │
        │      ├─►
    ───►│      │
        └──────┘
    ```

    Description of the __init__ method.

    Args:
        a (Wire): First input wire.
        b (Wire): Second input wire.
        prefix (str, optional): Prefix name of XOR gate. Defaults to "".
        outid (int, optional): Index of output wire. Defaults to 0.
        parent_component (object, optional) Object of upper component of which XOR gate is a subcomponent. Defaults to None.
    """
    def __init__(self, a: Wire, b: Wire, prefix: str = "", outid: int = 0, parent_component: object = None):

        super().__init__(a, b, ConstantWireValue0(), prefix=prefix, inverts=[True, True, False], outid=outid, parent_component=parent_component)
        """super().__init__(a, b, prefix=prefix, outid=outid, parent_component=parent_component)

        self.and1  = Maji(a, b, ConstantWireValue0(), prefix=prefix, inverts=[True,  False, False], parent_component = parent_component)
        self.and2  = Maji(a, b, ConstantWireValue0(), prefix=prefix, inverts=[False, True,  False], parent_component = parent_component)
        self.orOut = Maji(self.and1.out, self.and2.out, ConstantWireValue1(), prefix=prefix, parent_component = parent_component)
        self.out  = self.orOut.out"""


class XnorGate(Maji):
    """Class representing two input XNOR gate.

    ```
        ┌──────┐
    ───►│ =1   │
        │      │O──►
    ───►│      │
        └──────┘
    ```

    Description of the __init__ method.

    Args:
        a (Wire): First input wire.
        b (Wire): Second input wire.
        prefix (str, optional): Prefix name of XNOR gate. Defaults to "".
        outid (int, optional): Index of output wire. Defaults to 0.
        parent_component (object, optional) Object of upper component of which XNOR gate is a subcomponent. Defaults to None.
    """
    def __init__(self, a: Wire, b: Wire, prefix: str = "", outid:  int = 0, parent_component: object = None):
        """super().__init__(a, b, prefix=prefix, outid=outid, parent_component=parent_component)

        self.and1  = Maji(a, b, ConstantWireValue0(), prefix=prefix, inverts=[True,  False, False], parent_component = parent_component)
        self.and2  = Maji(a, b, ConstantWireValue0(), prefix=prefix, inverts=[False, True,  False], parent_component = parent_component)
        self.orOut = Maji(self.and1.out, self.and2.out, ConstantWireValue1(), prefix=prefix, parent_component = parent_component)
        self.out  = self.orOut.out"""
        super().__init__(a, b, ConstantWireValue0(), prefix=prefix, inverts=[True, True, False], outid=outid, parent_component=parent_component)


# Single-input #
class NotGate(Maji):
    """Class representing one input NOT gate.

    ```
        ┌──────┐
        │  1   │
    ───►│      │O─►
        │      │
        └──────┘
    ```

    Description of the __init__ method.

    Args:
        a (Wire): Input wire.
        prefix (str, optional): Prefix name of NOT gate. Defaults to "".
        outid (int, optional): Index of output wire. Defaults to 0.
        parent_component (object, optional) Object of upper component of which NOT gate is a subcomponent. Defaults to None.
    """
    def __init__(self, a: Wire, prefix: str = "", outid: int = 0, parent_component: object = None):
        super().__init__(a, a, a, prefix=prefix, inverts=[True, True, True], outid=outid, parent_component=parent_component)
