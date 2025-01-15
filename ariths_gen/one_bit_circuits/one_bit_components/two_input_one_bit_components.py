from ariths_gen.core.one_bit_circuits import TwoInputOneBitCircuit
from .three_input_one_bit_components import FullAdder
from ariths_gen.one_bit_circuits.logic_gates import AndGate, NandGate, OrGate, NorGate, NotGate
from ariths_gen.one_bit_circuits import Maji
from ariths_gen.wire_components import Wire, Bus
from ariths_gen.wire_components.wires import ConstantWireValue0, ConstantWireValue1


class XorGateComponent(TwoInputOneBitCircuit):
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
        super().__init__(a, b, prefix=prefix, name=prefix)
        
        self.out = Bus(self.prefix+"_out", 1)
        self.disable_generation = False

        obj_and1 = Maji(a, b, ConstantWireValue1(), inverts=[True, True, False],  prefix=self.prefix+"_maji"+str(self.get_instance_num(cls=Maji)), parent_component = parent_component)
        self.add_component(obj_and1)
        
        obj_and2 = Maji(a, b, ConstantWireValue1(), inverts=[False, False, False], prefix=self.prefix+"_maji"+str(self.get_instance_num(cls=Maji)), parent_component = parent_component)
        self.add_component(obj_and2)

        # sum
        obj_and3 = Maji(obj_and1.out, obj_and2.out, ConstantWireValue0(), [False, False, False], prefix=self.prefix+"_maji"+str(self.get_instance_num(cls=Maji)), outid=outid, parent_component=parent_component)
        self.add_component(obj_and3)
        self.out.connect(0, obj_and3.out)

class XnorGateComponent(TwoInputOneBitCircuit):
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
        super().__init__(a, b, prefix=prefix, name=prefix)
        
        self.out = Bus(self.prefix+"_out", 1)
        self.disable_generation = True

        obj_and1 = Maji(a, b, ConstantWireValue1(), inverts=[True, True, False],  prefix=self.prefix+"_maji"+str(self.get_instance_num(cls=Maji)), parent_component = parent_component)
        self.add_component(obj_and1)
        
        obj_and2 = Maji(a, b, ConstantWireValue1(), inverts=[False, False, False], prefix=self.prefix+"_maji"+str(self.get_instance_num(cls=Maji)), parent_component = parent_component)
        self.add_component(obj_and2)

        # sum
        obj_and3 = Maji(obj_and1.out, obj_and2.out, ConstantWireValue1(), [True, True, False], prefix=self.prefix+"_maji"+str(self.get_instance_num(cls=Maji)), outid=outid, parent_component=parent_component)
        self.add_component(obj_and3)
        self.out.connect(0, obj_and3.out)


class HalfAdder(TwoInputOneBitCircuit):
    """Class representing two input one bit half adder.

    ```
        ┌──────┐
    ───►│      ├─► Sum
        │      │
    ───►│      ├─► Cout
        └──────┘
    ```

    Description of the __init__ method.

    Args:
        a (Wire, optional): First input wire. Defaults to Wire(name="a").
        b (Wire, optional): Second input wire. Defaults to Wire(name="b").
        prefix (str, optional): Prefix name of half adder. Defaults to "".
        name (str, optional): Name of half adder. Defaults to "ha".
    """
    use_verilog_instance = False

    def __init__(self, a: Wire = Wire(name="a"), b: Wire = Wire(name="b"), prefix: str = "", name: str = "ha"):
        super().__init__(a, b, prefix=prefix, name=name)
        # 2 wires for component's bus output (sum, cout)
        self.out = Bus(self.prefix+"_out", 2)

        obj_or   = OrGate (a, b, prefix=self.prefix+"_or" +str(self.get_instance_num(cls=OrGate)), outid=0, parent_component=self)
        self.add_component(obj_or)
        
        # cout
        obj_and  = AndGate(a, b, prefix=self.prefix+"_and"+str(self.get_instance_num(cls=AndGate)), outid=1, parent_component=self)
        self.add_component(obj_and)
        self.out.connect(1, obj_and.out)

        # sum
        obj_maji = Maji(obj_or.out, obj_and.out, ConstantWireValue0(), [False, True, False], prefix=self.prefix+"_maji"+str(self.get_instance_num(cls=Maji)), outid=0, parent_component=self)
        self.add_component(obj_maji)
        self.out.connect(0, obj_maji.out)

    def get_sum_wire(self):
        """Get output wire carrying sum value.

        Returns:
           Wire: Return sum wire.
        """
        return self.out.get_wire(0)

    def get_carry_wire(self):
        """Get output wire carrying carry out value.

        Returns:
           Wire: Return carry out wire.
        """
        return self.out.get_wire(1)

    def get_init_v_flat(self):
        """ support of custom PDK """
        if not self.use_verilog_instance:
            return super().get_init_v_flat()

        return "  " + self.use_verilog_instance.format(
            **{
                "unit": self.prefix,
                "wirea": f"1'b{self.a.value}" if self.a.is_const() else self.a.name,
                "wireb": f"1'b{self.b.value}" if self.b.is_const() else self.b.name,
                "wireys": self.get_sum_wire().prefix,
                "wireyc": self.get_carry_wire().prefix,
            }) + ";\n"

    def get_self_init_v_hier(self):
        """ support of custom PDK """
        if not self.use_verilog_instance:
            return super().get_self_init_v_hier()

        unique_out_wires = []
        for o in self.out.bus:
            unique_out_wires.append(o.name+"_outid"+str(self.out.bus.index(o))) if o.is_const() or o.name in [self.a.name, self.b.name] else unique_out_wires.append(o.name)

        return "  " + self.use_verilog_instance.format(
            **{
                "unit": self.prefix,
                "wirea": self.a.name,
                "wireb": self.b.name,
                "wireys": unique_out_wires[0],
                "wireyc": unique_out_wires[1],
            }) + ";\n"

    def get_circuit_v(self):
        """ support of custom PDK """
        if not self.use_verilog_instance:
            return super().get_circuit_v()

        return f"{self.get_prototype_v_hier()}" + \
               f"{self.get_self_init_v_hier()}" + \
               f"endmodule"


class partialAdder(TwoInputOneBitCircuit):
    """Class representing two input one bit propagate/generate logic block.

    ```
            ┌──────┐
    A   ───►│      ├─► P
    B   ───►│      ├─► G
    Cin ───►│      ├─► S
            └──────┘
    ```

    Description of the __init__ method.

    Args:
        a (Wire, optional): First input wire. Defaults to Wire(name="a").
        b (Wire, optional): Second input wire. Defaults to Wire(name="b").
        prefix (str, optional): Prefix name of pg logic block. Defaults to "".
        name (str, optional): Name of pg logic block. Defaults to "pg_logic".
    """
    def __init__(self, a: Wire = Wire(name="a"), b: Wire = Wire(name="b"), cin: Wire = Wire(name="cin"), prefix: str = "", name: str = "pg_logic"):
        super().__init__(a, b, prefix=prefix, name=name)
        # 3 wires for component's bus output (propagate, generate, sum)
        self.out = Bus(self.prefix+"_out", 3)

        # PG logic
        propagate_or = OrGate (a, b, prefix=self.prefix+"_or" +str(self.get_instance_num(cls=OrGate)), outid=0, parent_component=self)
        self.add_component(propagate_or)
        
        generate_and = AndGate(a, b, prefix=self.prefix+"_and"+str(self.get_instance_num(cls=AndGate)), outid=1, parent_component=self)
        self.add_component(generate_and)

        fa = FullAdder(a, b, cin, prefix=self.prefix+"_fa" +str(self.get_instance_num(cls=FullAdder)))
        self.add_component(fa)

        self.out.connect(0, propagate_or.out)
        self.out.connect(1, generate_and.out)
        self.out.connect(2, fa.get_sum_wire())

    def get_propagate_wire(self):
        """Get output wire carrying propagate signal value.

        Returns:
           Wire: Return propagate wire.
        """
        return self.out.get_wire(0)

    def get_generate_wire(self):
        """Get output wire carrying generate signal value.

        Returns:
           Wire: Return generate wire.
        """
        return self.out.get_wire(1)

    def get_sum_wire(self):
        """Get output wire carrying sum value.

        Returns:
           Wire: Return sum wire.
        """
        return self.out.get_wire(2)


class HalfSubtractor(TwoInputOneBitCircuit):
    """Class representing two input one bit half subtractor.

    ```
        ┌──────┐
    ───►│      ├─► Difference
        │      │
    ───►│      ├─► Bout
        └──────┘
    ```

    Description of the __init__ method.

    Args:
        a (Wire, optional): First input wire. Defaults to Wire(name="a").
        b (Wire, optional): Second input wire. Defaults to Wire(name="b").
        prefix (str, optional): Prefix name of half subtractor adder. Defaults to "".
        name (str, optional): Name of half subtractor adder. Defaults to "hs".
    """
    def __init__(self, a: Wire = Wire(name="a"), b: Wire = Wire(name="b"), prefix: str = "", name: str = "hs"):
        super().__init__(a, b, prefix=prefix, name=name)
        # 2 wires for component's bus output (difference, bout)
        self.out = Bus(self.prefix+"_out", 2)

        # Difference
        # XOR gate for calculation of 1-bit difference
        propagate_or = OrGate (a, b, prefix=self.prefix+"_or" +str(self.get_instance_num(cls=OrGate)), outid=0, parent_component=self)
        self.add_component(propagate_or)
        
        generate_and = AndGate(a, b, prefix=self.prefix+"_and"+str(self.get_instance_num(cls=AndGate)), outid=1, parent_component=self)
        self.add_component(generate_and)
        
        difference_xor = Maji(propagate_or.out, generate_and.out, ConstantWireValue0(), [False, True, False], prefix=self.prefix+"_maji"+str(self.get_instance_num(cls=Maji)), outid=0, parent_component=self)
        self.add_component(difference_xor)
        self.out.connect(0, difference_xor.out.get_wire(0))

        # Bout
        # NOT and AND gates for calculation of 1-bit borrow out
        not_obj = NotGate(a=self.a, prefix=self.prefix+"_not"+str(self.get_instance_num(cls=NotGate)), parent_component=self)
        self.add_component(not_obj)

        borrow_and = AndGate(a=not_obj.out, b=self.b, prefix=self.prefix+"_and"+str(self.get_instance_num(cls=AndGate)), outid=1, parent_component=self)
        self.add_component(borrow_and)
        self.out.connect(1, borrow_and.out)

    def get_difference_wire(self):
        """Get output wire carrying difference value.

        Returns:
           Wire: Return difference wire.
        """
        return self.out.get_wire(0)

    def get_borrow_wire(self):
        """Get output wire carrying borrow out value.

        Returns:
           Wire: Return borrow out wire.
        """
        return self.out.get_wire(1)
