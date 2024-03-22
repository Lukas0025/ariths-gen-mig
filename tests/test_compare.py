from ariths_gen.wire_components import (
    Wire,
    ConstantWireValue0,
    ConstantWireValue1,
    Bus
)

from ariths_gen.core.arithmetic_circuits import GeneralCircuit

from ariths_gen.multi_bit_circuits.others import (
    UnsignedCompareLT
)

import numpy as np
import math
from io import StringIO


def test_compare():
    """ Test unsigned comparator """
    N = 8

    a = Bus(N=N, prefix="a")
    b = Bus(N=N, prefix="b")
    av = np.arange(2**N).reshape(1, -1)
    bv = np.arange(2**N).reshape(-1, 1)


    cmp = UnsignedCompareLT(a=a, b=b)
    o = StringIO()
    cmp.get_v_code_hier(open("tmp.verilog", "w"))
    print(o.getvalue())

#    av = 0
 #   bv = 5


    v = cmp(av, bv)
    print("ret = ", v)

    expected = np.array(av < bv).astype(int)

    print("expected = ", expected)
        
    #expected = np.sum(r, axis=1)

    np.testing.assert_array_equal(v, expected)


    