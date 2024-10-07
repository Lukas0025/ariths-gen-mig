from ariths_gen.wire_components.wires import Wire
from ariths_gen.wire_components.buses import Bus
import math


# Multiple-input #
class MultipleInputLogicGate():
    """Class representing multiple input logic gate internally composed of corresponding two input logic gates.

    Gates are cascaded in a tree like structure to solve fan-in issue concerning multi-input logic gates.
    Tree like structure increases propagation delay logarithmically with number of inputs.

    ```
       ┌──────┐
    ──►│ FUNC │
       │      ├──┐  ┌──────┐
    ──►│      │  ├─►│ FUNC │
       └──────┘  │  │      ├─►
       ┌──────┐  ├─►│      │
    ──►│ FUNC │  │  └──────┘
       │      ├──┘
    ──►│      │
       └──────┘
       ...
    ```

    Description of the __init__ method.

    Args:
        a (Bus): Bus containing input wires to form inner composite two input logic gates.
        two_input_gate_cls (type): Specific two input logic gate class type that specifies what type of multiple input logic gate the instance represents.
        parent_component (object) Object of upper component of which this logic gate is a subcomponent (used for adding composite two input gates into `parent_component`'s list of subcomponents).
        prefix (str, optional): Prefix used to name inner composite logic gates. Defaults to "".
    """
    def __init__(self, a: Bus, two_input_gate_cls, parent_component: object, prefix: str = ""):
        i = 0
        while a.N != 1:
            N = math.floor(a.N/2)
            out_wires = []
            # Creation of composite two input logic gates from bus `a`'s bit pairs and addition of generated blocks outputs for next iteration
            for bus_index in range(0, N):
                gate = two_input_gate_cls(a=a.get_wire(bus_index), b=a.get_wire(bus_index+N), prefix=prefix+ "_" + str(i) + "_" + str(parent_component.get_instance_num(cls=two_input_gate_cls, count_disabled_gates=False)), parent_component=parent_component)
                parent_component.add_component(gate)
                out_wires.append(gate.out)
                i += 1

            # In case bus `a` has odd number of wires
            if a.N % 2 != 0:
                out_wires.append(a.get_wire(-1))
                N += 1

            # Update bus for next iteration until it contains only one output wire
            a = Bus(prefix=a.prefix, N=N, wires_list=out_wires)
        self.out = a.get_wire(0)

# Two-input #
class ThreeInputLogicGate():
    """Class representing tree input logic gates.

    ```
       ┌──────┐
    ──►│ FUNC │
    ──►│      ├─►
    ──►│      │
       └──────┘
    ```

    Description of the __init__ method.

    Args:
        a (Wire): First input wire.
        b (Wire): Second input wire.
        c (Wire): Third input wire.
        prefix (str, optional): Prefix name of logic gate. Defaults to "gate".
        outid (int, optional): Index of output wire. Defaults to 0.
        parent_component (object, optional) Object of upper component of which logic gate is a subcomponent. Defaults to None.
    """
    def __init__(self, a: Wire, b: Wire, c: Wire, prefix: str = "gate", outid: int = 0, parent_component: object = None):
        self.a = a
        self.b = b
        self.prefix = prefix
        self.outid = outid
        # To toggle whether logic gate function ought to be generated or to be replaced
        # by a constant wire for the sake of more optimized circuit generation
        self.disable_generation = False
        # Obtaining the caller object to gain access into its `components` list Used for adding NOT gates as a replacement for two input logic gates with constant input (optimalization)
        # Also used to obtain caller object's `prefix` name for proper wire names generation of flat/hier representations
        self.parent_component = parent_component

    """ C CODE GENERATION """
    # FLAT C #
    @staticmethod
    def get_includes_c():
        """Generates necessary C library includes for output representation.

        Returns:
            str: C code library includes.
        """
        return f"#include <stdio.h>\n#include <stdint.h>\n\n"

    def get_prototype_c_flat(self):
        """Generates flat C code function header to describe corresponding two input logic gate's interface in flat C code.

        Returns:
            str: Function's name and parameters in flat C code.
        """
        return f"uint8_t {self.prefix}(uint8_t {self.a.name}, uint8_t {self.b.name}, uint8_t {self.c.name})" + "{" + "\n"

    def get_function_c(self):
        """Generates C code representing corresponding two input logic gate's Boolean function using bitwise operators between its bitwise shifted inputs.

        Returns:
            str: C code description of logic gate's Boolean function (with bitwise shifted inputs).
        """
        if self.out.is_const():
            return self.out.get_wire_value_c_flat()
        
        return self.function.replace("A", self.a.get_wire_value_c_flat()).replace("B", self.b.get_wire_value_c_flat()).replace("C", self.c.get_wire_value_c_flat())

    def get_declaration_c_flat(self):
        """Generates C code declaration of output wire for flat representation.

        Returns:
            str: C code logic gate's output wire declaration.
        """
        # No gate output wire is generated if one of the inputs is a wire with constant value.
        # I.e. either the constant or the second input wire is propagated to the output for the corresponding logic gate's logic function.
        if self.disable_generation:
            return ""
        else:
            return f"{self.out.get_declaration_c()}"

    def get_assign_c_flat(self):
        """Generates C code for invocation of logical functions and subsequently provides assignment to their output.

        Returns:
            str: C code invocation of logical function and assignment to output.
        """
        # No gate logic is generated if one of the inputs is a wire with constant value.
        # I.e. either the constant or the second input wire is propagated to the output for the corresponding logic gate's logic function.
        if self.disable_generation:
            return ""
        else:
            return f"  {self.out.prefix} = {self.get_function_c()};\n"

    # Generating flat C code representation of the logic gate itself
    # (I.e. not as a component of bigger circuit)
    def get_c_code(self, file_object):
        """Generates flat C code representation of corresponding logic gate itself.

        Args:
            file_object (TextIOWrapper): Destination file object where circuit's representation will be written to.
        """
        file_object.write(self.get_includes_c())
        file_object.write(self.get_prototype_c_flat())
        file_object.write("  return "+(self.get_function_c())+";\n}")

    """ PYTHON CODE GENERATION """
    # FLAT PYTHON #
    def get_assign_python_flat(self):
        """Generates Python code for invocation of logical functions and subsequently provides assignment to their output.

        Returns:
            str: Python code invocation of logical function and assignment to output.
        """
        # No gate logic is generated if one of the inputs is a wire with constant value.
        # I.e. either the constant or the second input wire is propagated to the output for the corresponding logic gate's logic function.
        if self.disable_generation:
            #return f"  {self.out.prefix} = {self.get_function_c()} # DD {self.prefix} \n"
            return ""
        else:
            return f"  {self.out.prefix} = {self.get_function_c()}\n"

    """ VERILOG CODE GENERATION """
    # FLAT VERILOG #
    def get_prototype_v_flat(self):
        """Generates flat Verilog module header to describe corresponding two input logic gate's interface in flat Verilog.

        Returns:
            str: Module's name and parameters in flat Verilog.
        """
        return f"module {self.prefix}(input {self.a.name}, input {self.b.name}" + \
               "".join([f", output {self.out.name}" if self.disable_generation is False else f", output {self.out.name}_out" for _ in range(1)]) + ");\n"

    def get_output_v_flat(self):
        """Generates flat Verilog module's output wire assignment used for self logic gate circuit generation.

        Returns:
            str: Module's output wire assignment in flat Verilog.
        """
        return "".join([f"  assign {self.out.name} = {self.get_function_v()};\n" if self.disable_generation is False else f"  assign {self.out.name}_out = {self.get_function_v()};\n" for _ in range(1)])

    def get_declaration_v_flat(self):
        """Generates Verilog code declaration of output wire for flat representation.

        Returns:
            str: Verilog code logic gate's output wire declaration.
        """
        # No gate output wire is generated if one of the inputs is a wire with constant value.
        # I.e. either the constant or the second input wire is propagated to the output for the corresponding logic gate's logic function.
        if self.disable_generation:
            return ""
        else:
            return f"{self.out.get_declaration_v_flat()}"

    def get_function_v(self):
        """Generates Verilog code representing corresponding two input logic gate's Boolean function using bitwise operators between its inputs.

        Returns:
            str: Verilog description of logic gate's Boolean function.
        """
        return self.function.replace("A", self.a.get_wire_value_c_flat()).replace("B", self.b.get_wire_value_c_flat()).replace("C", self.c.get_wire_value_c_flat())

    def get_assign_v_flat(self):
        """Generates Verilog code for invocation of logical functions and subsequently provides assignment to their output.

        Returns:
            str: Verilog code invocation of logical function and assignment to output.
        """
        # No gate logic is generated if one of the inputs is a wire with constant value.
        # I.e. either the constant or the second input wire is propagated to the output for the corresponding logic gate's logic function.
        if self.disable_generation:
            return ""
        else:
            return f"  assign {self.out.prefix} = {self.get_function_v()};\n"

    # Generating flat Verilog code representation of the logic gate itself
    # (I.e. not as a component of bigger circuit)
    def get_v_code(self, file_object):
        """Generates flat Verilog code representation of corresponding logic gate itself.

        Args:
            file_object (TextIOWrapper): Destination file object where circuit's representation will be written to.
        """
        file_object.write(self.get_prototype_v_flat())
        file_object.write(self.get_output_v_flat())
        file_object.write(f"endmodule")

    """ BLIF CODE GENERATION """
    # FLAT BLIF #
    def get_prototype_blif_flat(self):
        """Generates flat Blif model header to describe corresponding logic gate's interface in flat Blif.

        Returns:
            str: Model's name in flat Blif code.
        """
        return f".model {self.prefix}\n"

    def get_declaration_blif(self):
        """Generates Blif code declaration of two input logic gate's wires.

        Returns:
            str: Blif logic gate's wires declaration.
        """
        return f".inputs {self.a.get_wire_declaration_blif()}{self.b.get_wire_declaration_blif()}\n" + \
               f".outputs" + \
               "".join([f" {self.out.name}\n" if self.disable_generation is False else f" {self.out.name}_out\n" for _ in range(1)]) + \
               f".names vdd\n1\n" + \
               f".names gnd\n0\n"

    def get_function_blif_flat(self, top_modul: bool = False):
        """Generates Blif code representing corresponding two input logic gate's Boolean function between its inputs.

        Invokes corresponding logic gate's `get_function_blif` method for its individual description of logic function.

        Args:
            top_modul (bool, optional): Specifies whether the described circuit has logic gate as its top modul component (used for self logic gate generation). Defaults to False.

        Returns:
            str: Blif description of logic gate's Boolean function.
        """
        if top_modul is True:
            return f"{self.get_function_blif()}"
        # No function block is generated if one of the inputs is a wire with constant value.
        # I.e. either the constant or the second input wire is propagated to the output for the corresponding logic gate's logic function.
        elif self.disable_generation:
            return ""
        else:
            return f"{self.get_function_blif()}"

    # Generating flat BLIF code representation of the logic gate itself
    # (I.e. not as a component of bigger circuit)
    def get_blif_code(self, file_object):
        """Generates flat Blif code representation of corresponding logic gate itself.

        Args:
            file_object (TextIOWrapper): Destination file object where circuit's representation will be written to.
        """
        file_object.write(self.get_prototype_blif_flat())
        file_object.write(self.get_declaration_blif())
        file_object.write(self.get_function_blif_flat(top_modul=True))
        file_object.write(f".end\n")