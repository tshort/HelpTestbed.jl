====================================
Modelica.Electrical.Digital.Examples
====================================

`Modelica.Electrical.Digital <Modelica_Electrical_Digital.html#Modelica.Electrical.Digital>`_.Examples
------------------------------------------------------------------------------------------------------

**Examples that demonstrate the usage of the Digital electrical
components**

Information
~~~~~~~~~~~

::

This package contains examples that demonstrate the usage of the
components of the Electrical.Digital library.

The examples are simple to understand. They will show a typical behavior
of the components, and they will give hints to users.

::

Extends from
`Modelica.Icons.ExamplesPackage <Modelica_Icons_ExamplesPackage.html#Modelica.Icons.ExamplesPackage>`_
(Icon for packages containing runnable examples).

Package Content
~~~~~~~~~~~~~~~

+----------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------+
| Name                                                                                                                                                                 | Description                                                  |
+======================================================================================================================================================================+==============================================================+
| |image22| `Multiplexer <Modelica_Electrical_Digital_Examples.html#Modelica.Electrical.Digital.Examples.Multiplexer>`_                                                | 4 to 1 Bit Multiplexer Example                               |
+----------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------+
| |image23| `FlipFlop <Modelica_Electrical_Digital_Examples.html#Modelica.Electrical.Digital.Examples.FlipFlop>`_                                                      | Pulse Triggered Master Slave Flip-Flop                       |
+----------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------+
| |image24| `HalfAdder <Modelica_Electrical_Digital_Examples.html#Modelica.Electrical.Digital.Examples.HalfAdder>`_                                                    | Adding circuit for binary numbers without input carry bit    |
+----------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------+
| |image25| `FullAdder <Modelica_Electrical_Digital_Examples.html#Modelica.Electrical.Digital.Examples.FullAdder>`_                                                    | Full 1 Bit Adder Example                                     |
+----------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------+
| |image26| `Adder4 <Modelica_Electrical_Digital_Examples.html#Modelica.Electrical.Digital.Examples.Adder4>`_                                                          | 4 Bit Adder Example                                          |
+----------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------+
| |image27| `Counter3 <Modelica_Electrical_Digital_Examples.html#Modelica.Electrical.Digital.Examples.Counter3>`_                                                      | 3 Bit Counter Example                                        |
+----------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------+
| |image28| `Counter <Modelica_Electrical_Digital_Examples.html#Modelica.Electrical.Digital.Examples.Counter>`_                                                        | Generic N Bit Counter Example                                |
+----------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------+
| |image29| `VectorDelay <Modelica_Electrical_Digital_Examples.html#Modelica.Electrical.Digital.Examples.VectorDelay>`_                                                | Vector delay                                                 |
+----------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------+
| |image30| `DFFREG <Modelica_Electrical_Digital_Examples.html#Modelica.Electrical.Digital.Examples.DFFREG>`_                                                          | Pulse triggered D-Register-Bank, high active reset           |
+----------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------+
| |image31| `DFFREGL <Modelica_Electrical_Digital_Examples.html#Modelica.Electrical.Digital.Examples.DFFREGL>`_                                                        | Pulse triggered D-Register-Bank, low active reset            |
+----------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------+
| |image32| `DFFREGSRH <Modelica_Electrical_Digital_Examples.html#Modelica.Electrical.Digital.Examples.DFFREGSRH>`_                                                    | Pulse triggered D-Register-Bank, high active set and reset   |
+----------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------+
| |image33| `DFFREGSRL <Modelica_Electrical_Digital_Examples.html#Modelica.Electrical.Digital.Examples.DFFREGSRL>`_                                                    | Pulse triggered D-Register-Bank, low active set and reset    |
+----------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------+
| |image34| `DLATREG <Modelica_Electrical_Digital_Examples.html#Modelica.Electrical.Digital.Examples.DLATREG>`_                                                        | Level sensitive D-Register-Bank, high active reset           |
+----------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------+
| |image35| `DLATREGL <Modelica_Electrical_Digital_Examples.html#Modelica.Electrical.Digital.Examples.DLATREGL>`_                                                      | Level sensitive D-Register-Bank, low active reset            |
+----------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------+
| |image36| `DLATREGSRH <Modelica_Electrical_Digital_Examples.html#Modelica.Electrical.Digital.Examples.DLATREGSRH>`_                                                  | Level sensitive D-Register-Bank, high active set and reset   |
+----------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------+
| |image37| `DLATREGSRL <Modelica_Electrical_Digital_Examples.html#Modelica.Electrical.Digital.Examples.DLATREGSRL>`_                                                  | Level sensitive D-Register-Bank, low active set and reset    |
+----------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------+
| |image38| `NXFER <Modelica_Electrical_Digital_Examples.html#Modelica.Electrical.Digital.Examples.NXFER>`_                                                            | Functionality test of NXFERGATE                              |
+----------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------+
| |image39| `NRXFER <Modelica_Electrical_Digital_Examples.html#Modelica.Electrical.Digital.Examples.NRXFER>`_                                                          | Functionality test of NRXFERGATE                             |
+----------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------+
| |image40| `BUF3S <Modelica_Electrical_Digital_Examples.html#Modelica.Electrical.Digital.Examples.BUF3S>`_                                                            | Functionality test of BUF3S                                  |
+----------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------+
| |image41| `INV3S <Modelica_Electrical_Digital_Examples.html#Modelica.Electrical.Digital.Examples.INV3S>`_                                                            | Functionality test of INV3S                                  |
+----------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------+
| |image42| `WiredX <Modelica_Electrical_Digital_Examples.html#Modelica.Electrical.Digital.Examples.WiredX>`_                                                          | Functionality test of WiredX                                 |
+----------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------+
| |image43| `Utilities <Modelica_Electrical_Digital_Examples_Utilities.html#Modelica.Electrical.Digital.Examples.Utilities>`_                                          | Utility components used by package Examples                  |
+----------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------+

--------------

|image44| `Modelica.Electrical.Digital.Examples <Modelica_Electrical_Digital_Examples.html#Modelica.Electrical.Digital.Examples>`_.Multiplexer
----------------------------------------------------------------------------------------------------------------------------------------------

**4 to 1 Bit Multiplexer Example**

.. figure:: Modelica.Electrical.Digital.Examples.MultiplexerD.png
   :align: center
   :alt: Modelica.Electrical.Digital.Examples.Multiplexer

   Modelica.Electrical.Digital.Examples.Multiplexer

Information
~~~~~~~~~~~

::

The multiplexer converts a parallel 4 bit signal in a sequential 1 bit
stream. The multiplexer component is composed by basic gates. It can be
found in the Utilities subpackage. The example is designed to test and
demonstrate the basic gate components.

::

Extends from
`Modelica.Icons.Example <Modelica_Icons.html#Modelica.Icons.Example>`_
(Icon for runnable examples).

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Multiplexer "4 to 1 Bit Multiplexer Example"
      import D = Modelica.Electrical.Digital;
      import L = Modelica.Electrical.Digital.Interfaces.Logic;
      extends Modelica.Icons.Example;

      D.Sources.Clock CLK(period=20);
      D.Sources.Table D0(
        y0=3,
        x={4,3,4,3},
        t={50,100,145,200});
      D.Sources.Table D1(
        y0=3,
        x={4,3,4,3},
        t={22,140,150,180});
      D.Examples.Utilities.MUX4 MUX;
      D.Sources.Table D2(
        y0=3,
        x={4,3,4,3},
        t={22,140,150,180});
      D.Sources.Table D3(
        y0=3,
        x={4,3,4,3},
        t={22,140,150,180});
      D.Examples.Utilities.JKFF FF;
      D.Sources.Set Enable;
    equation 
      connect(CLK.y, FF.clk);
      connect(Enable.y, FF.k);
      connect(Enable.y, FF.j);
      connect(CLK.y, MUX.a0);
      connect(D0.y, MUX.d0);
      connect(D1.y, MUX.d1);
      connect(D2.y, MUX.d2);
      connect(D3.y, MUX.d3);
      connect(FF.q, MUX.a1);
    end Multiplexer;

--------------

|image45| `Modelica.Electrical.Digital.Examples <Modelica_Electrical_Digital_Examples.html#Modelica.Electrical.Digital.Examples>`_.FlipFlop
-------------------------------------------------------------------------------------------------------------------------------------------

**Pulse Triggered Master Slave Flip-Flop**

.. figure:: Modelica.Electrical.Digital.Examples.FlipFlopD.png
   :align: center
   :alt: Modelica.Electrical.Digital.Examples.FlipFlop

   Modelica.Electrical.Digital.Examples.FlipFlop

Information
~~~~~~~~~~~

::

A pulse-triggered master-slave flip-flop is demonstrated. The flipflop
component is composed by basic gates. It can be found in the Utilities
subpackage. The example is designed to test and demonstrate the basic
gate components.

::

Extends from
`Modelica.Icons.Example <Modelica_Icons.html#Modelica.Icons.Example>`_
(Icon for runnable examples).

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model FlipFlop "Pulse Triggered Master Slave Flip-Flop"
      import D = Modelica.Electrical.Digital;
      import L = Modelica.Electrical.Digital.Interfaces.Logic;
      extends Modelica.Icons.Example;

      D.Examples.Utilities.JKFF FF;
      D.Sources.Clock CLK(period=10);
      D.Sources.Table J(
        y0=3,
        x={4,3,4,3},
        t={50,100,145,200});
      D.Sources.Table K(
        y0=3,
        x={4,3,4,3},
        t={22,140,150,180});
    equation 
      connect(J.y, FF.j);
      connect(CLK.y, FF.clk);
      connect(K.y, FF.k);
    end FlipFlop;

--------------

|image46| `Modelica.Electrical.Digital.Examples <Modelica_Electrical_Digital_Examples.html#Modelica.Electrical.Digital.Examples>`_.HalfAdder
--------------------------------------------------------------------------------------------------------------------------------------------

**Adding circuit for binary numbers without input carry bit**

.. figure:: Modelica.Electrical.Digital.Examples.HalfAdderD.png
   :align: center
   :alt: Modelica.Electrical.Digital.Examples.HalfAdder

   Modelica.Electrical.Digital.Examples.HalfAdder

Information
~~~~~~~~~~~

::

This example demonstrates an adding circuit for binary numbers, which
internally realizes the interconnection to And and to Xor in the final
sum.

 1 + 0 = 1
 0 + 1 = 1
 1 + 1 = 10
 0 + 0 = 0
 **a** + **b** = **s**
(The carry of this adding is **c**.)
and
 **a** \* **b** = **s**
 (It is an interconnection to And.)
 **a** \* **b** + **a** \* **b** = **a** Xor **b** = **c**
(It is an interconnection to Xor.)

::

       a     b     c      s     t

       1     0     1      0     1
       0     1     1      0     2
       1     1     0      1     3
       0     0     0      0     4

**t** is the pick-up instant of the next bit(s) in the simulation. The
simulation stop time should be 5 seconds.

::

Extends from
`Modelica.Icons.Example <Modelica_Icons.html#Modelica.Icons.Example>`_
(Icon for runnable examples).

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model HalfAdder 
      "Adding circuit for binary numbers without input carry bit"
      import Modelica.Electrical.Digital;
      extends Modelica.Icons.Example;

      Modelica.Electrical.Digital.Sources.Table a(
        t={1,2,3,4},
        x={4,3,4,3},
        y0=3);
      Modelica.Electrical.Digital.Sources.Table b(
        x={4,3},
        t={2,4},
        y0=3);
      Modelica.Electrical.Digital.Examples.Utilities.HalfAdder Adder(delayTime=0.3);
      Modelica.Electrical.Digital.Converters.LogicToReal s;
      Modelica.Electrical.Digital.Converters.LogicToReal c;
    equation 
      connect(b.y,Adder. b);
      connect(a.y,Adder. a);
      connect(Adder.s, s.x[1]);
      connect(Adder.c, c.x[1]);
    end HalfAdder;

--------------

|image47| `Modelica.Electrical.Digital.Examples <Modelica_Electrical_Digital_Examples.html#Modelica.Electrical.Digital.Examples>`_.FullAdder
--------------------------------------------------------------------------------------------------------------------------------------------

**Full 1 Bit Adder Example**

.. figure:: Modelica.Electrical.Digital.Examples.FullAdderD.png
   :align: center
   :alt: Modelica.Electrical.Digital.Examples.FullAdder

   Modelica.Electrical.Digital.Examples.FullAdder

Information
~~~~~~~~~~~

::

It is an adding circuit for binary numbers with input carry bit, which
consists of two HalfAdders.
 **a**.y, **b**.y and **c**.y are the inputs of the FullAdder.
 **c**out = **Or1**.y and **h**.s are the outputs of the Fulladder.
 **t** is the pick-up instant of the next bit(s) in the simulation.

::

       a.y      b.y      c.y     cout        h.s        t 

::

         1        0        0        0          1        1
         0        1        0        0          1        2
         0        0        1        0          1        3
         1        1        0        1          0        4
         0        1        1        1          0        5
         1        0        1        1          0        6
         1        1        1        1          1        7
         0        0        0        0          0        8

The simulation stop time should be 10 seconds.

::

Extends from
`Modelica.Icons.Example <Modelica_Icons.html#Modelica.Icons.Example>`_
(Icon for runnable examples).

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model FullAdder "Full 1 Bit Adder Example"
      import D = Modelica.Electrical.Digital;
      import L = Modelica.Electrical.Digital.Interfaces.Logic;
      extends Modelica.Icons.Example;

      D.Examples.Utilities.FullAdder Adder1;
      D.Converters.LogicToReal s;
      D.Converters.LogicToReal c_out;
      D.Examples.Utilities.Counter3 Counter;
      D.Sources.Set Enable(x=L.'1');
      D.Sources.Clock CLK;
    equation 
      connect(Adder1.s, s.x[1]);
      connect(Adder1.c_out, c_out.x[1]);
      connect(CLK.y, Counter.count);
      connect(Enable.y, Counter.enable);
      connect(Counter.q2, Adder1.a);
      connect(Counter.q1, Adder1.b);
      connect(Counter.q0, Adder1.c_in);
    end FullAdder;

--------------

|image48| `Modelica.Electrical.Digital.Examples <Modelica_Electrical_Digital_Examples.html#Modelica.Electrical.Digital.Examples>`_.Adder4
-----------------------------------------------------------------------------------------------------------------------------------------

**4 Bit Adder Example**

.. figure:: Modelica.Electrical.Digital.Examples.Adder4D.png
   :align: center
   :alt: Modelica.Electrical.Digital.Examples.Adder4

   Modelica.Electrical.Digital.Examples.Adder4

Information
~~~~~~~~~~~

::

Four Fulladders are combined to built a four bit adder unit.

 In dependence on time five additions are carried out:

::

    at t = 0                            at t = 1
     a       0 0 0 0                       a      1 1 1 0
     b    +  0 0 0 0                       b   +  1 0 1 1
     s     0 0 0 0 0                      s     1 0 0 1 0
    at t = 2                             at t = 3
     a       0 1 1 0                       a      1 1 1 0
     b    +  0 0 1 1                       b   +  1 0 1 0
     s     1 0 1 0 0                      s     0 0 0 1 1

    at t = 4
     a      1 1 0 0
     b   +  1 1 1 0
     s    0 0 1 0 1
     

To show the influence of delay a large delay time of 0.1s is choosen.
Furthermore, all signals are initialized with U, the unitialized value.
Please remember, that the nine logic values are coded by the numbers
1,...,9. The summands a and b can be found at the output signals of the
taba and tabb sources. The result can be seen in the output signals of
the Fulladders according to:

::

          a                       a4.y      a3.y      a2.y      a1.y
          b                       b4.y      b3.y      b2.y      b1.y
          sum   Adder4.c_out  Adder4.s  Adder3.s  Adder2.s  Adder1.s

The simulation stop time has to be 5s.

::

Extends from
`Modelica.Icons.Example <Modelica_Icons.html#Modelica.Icons.Example>`_
(Icon for runnable examples).

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Adder4 "4 Bit Adder Example"
      import Modelica.Electrical.Digital;
      extends Modelica.Icons.Example;

      Modelica.Electrical.Digital.Sources.Table b4(
        y0=3,
        x={4,3},
        t={1,3});
      Modelica.Electrical.Digital.Sources.Table b1(
        x={4,3,4},
        y0=3,
        t={1,2,3});
      Modelica.Electrical.Digital.Sources.Table b2(
        y0=3,
        x={4},
        t={4});
      Modelica.Electrical.Digital.Sources.Table b3(
        y0=3,
        x={4},
        t={1});
      Modelica.Electrical.Digital.Sources.Table a1(
        y0=3,
        x={4,3,4},
        t={1,2,3});
      Modelica.Electrical.Digital.Sources.Table a2(
        y0=3,
        x={4},
        t={1});
      Modelica.Electrical.Digital.Sources.Table a3(
        y0=3,
        x={4,3},
        t={1,4});
      Modelica.Electrical.Digital.Sources.Table a4(
        y0=3,
        x={3},
        t={1});
      Modelica.Electrical.Digital.Sources.Set Set(x=3);
      Modelica.Electrical.Digital.Examples.Utilities.FullAdder Adder1;
      Modelica.Electrical.Digital.Examples.Utilities.FullAdder Adder2;
      Modelica.Electrical.Digital.Examples.Utilities.FullAdder Adder3;
      Modelica.Electrical.Digital.Examples.Utilities.FullAdder Adder4;
    equation 
      connect(b1.y, Adder1.b);
      connect(a1.y, Adder1.a);
      connect(Set.y, Adder1.c_in);
      connect(Adder1.c_out, Adder2.c_in);
      connect(Adder2.c_out, Adder3.c_in);
      connect(Adder3.c_out, Adder4.c_in);
      connect(b2.y, Adder2.b);
      connect(a2.y, Adder2.a);
      connect(b3.y, Adder3.b);
      connect(a3.y, Adder3.a);
      connect(b4.y, Adder4.b);
      connect(a4.y, Adder4.a);
    end Adder4;

--------------

|image49| `Modelica.Electrical.Digital.Examples <Modelica_Electrical_Digital_Examples.html#Modelica.Electrical.Digital.Examples>`_.Counter3
-------------------------------------------------------------------------------------------------------------------------------------------

**3 Bit Counter Example**

.. figure:: Modelica.Electrical.Digital.Examples.Counter3D.png
   :align: center
   :alt: Modelica.Electrical.Digital.Examples.Counter3

   Modelica.Electrical.Digital.Examples.Counter3

Information
~~~~~~~~~~~

::

The three bit counter example is built up by components of the Utilities
package which uses components of the Gates library.

The counter counts the high-low slopes of the clock signal, if the
enable signal is set to be true. Otherwise if it is set to zero the
counter is not counting.

Plot Counter.count (clock signal), and Counter.enable, and the output
bit signals Counter.q0, Counter.q1, and Counter.q2.

::

Extends from
`Modelica.Icons.Example <Modelica_Icons.html#Modelica.Icons.Example>`_
(Icon for runnable examples).

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Counter3 "3 Bit Counter Example"
      import D = Modelica.Electrical.Digital;
      extends Modelica.Icons.Example;

      D.Sources.Step Enable;
      D.Sources.Clock Clock;
      D.Examples.Utilities.Counter3 Counter;
    equation 
      connect(Enable.y, Counter.enable);
      connect(Clock.y, Counter.count);
    end Counter3;

--------------

|image50| `Modelica.Electrical.Digital.Examples <Modelica_Electrical_Digital_Examples.html#Modelica.Electrical.Digital.Examples>`_.Counter
------------------------------------------------------------------------------------------------------------------------------------------

**Generic N Bit Counter Example**

.. figure:: Modelica.Electrical.Digital.Examples.CounterD.png
   :align: center
   :alt: Modelica.Electrical.Digital.Examples.Counter

   Modelica.Electrical.Digital.Examples.Counter

Information
~~~~~~~~~~~

::

The counter example is built up by components of the Utilities package
which uses components of the Gates library. It demonstrates the generic
counter model. The parameter n is the number of counting bits. In this
example it is set to 4.

The counter counts the high-low slopes of the clock signal, if the
enable signal is set to be true. Otherwise if it is set to zero the
counter is not counting.

Plot Counter.count (clock signal), and Counter.enable, and the output
bit signals Counter.q[0], Counter.q[1], Counter.q[2], and Counter.q[3]

::

Extends from
`Modelica.Icons.Example <Modelica_Icons.html#Modelica.Icons.Example>`_
(Icon for runnable examples).

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Counter "Generic N Bit Counter Example"
      import D = Modelica.Electrical.Digital;
      extends Modelica.Icons.Example;

      D.Sources.Step Enable;
      D.Sources.Clock Clock;
      D.Examples.Utilities.Counter Counter(n=4);
      D.Converters.LogicToReal Q0;
      D.Converters.LogicToReal Q1;
      D.Converters.LogicToReal Q2;
      D.Converters.LogicToReal Q3;
    equation 
      connect(Enable.y, Counter.enable);
      connect(Clock.y, Counter.count);
      connect(Q0.x[1], Counter.q[1]);
      connect(Q1.x[1], Counter.q[2]);
      connect(Q2.x[1], Counter.q[3]);
      connect(Q3.x[1], Counter.q[4]);
    end Counter;

--------------

|image51| `Modelica.Electrical.Digital.Examples <Modelica_Electrical_Digital_Examples.html#Modelica.Electrical.Digital.Examples>`_.VectorDelay
----------------------------------------------------------------------------------------------------------------------------------------------

**Vector delay**

.. figure:: Modelica.Electrical.Digital.Examples.VectorDelayD.png
   :align: center
   :alt: Modelica.Electrical.Digital.Examples.VectorDelay

   Modelica.Electrical.Digital.Examples.VectorDelay

Information
~~~~~~~~~~~

::

This example is a simple test of the vector valued sensitive delay
component. The delay times are chosen different from each other. To
examine the rersults plot bothe the input vector x and the output vector
y.

::

Extends from
`Modelica.Icons.Example <Modelica_Icons.html#Modelica.Icons.Example>`_
(Icon for runnable examples).

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model VectorDelay "Vector delay"
      extends Modelica.Icons.Example;

      Modelica.Electrical.Digital.Delay.InertialDelaySensitiveVector delay(
        final tHL=1,
        final tLH=2,
        final n=3);
      Modelica.Electrical.Digital.Sources.Table table(x={3,4,3,4,3}, t={0,1,5,7,8});
      Modelica.Electrical.Digital.Sources.Table table1(x={3,4}, t={0,1});
      Modelica.Electrical.Digital.Sources.Table table2(x={3,4,3}, t={0,1,6});
    equation 
      connect(table.y, delay.x[1]);
      connect(table1.y, delay.x[2]);
      connect(table2.y, delay.x[3]);
    end VectorDelay;

--------------

|image52| `Modelica.Electrical.Digital.Examples <Modelica_Electrical_Digital_Examples.html#Modelica.Electrical.Digital.Examples>`_.DFFREG
-----------------------------------------------------------------------------------------------------------------------------------------

**Pulse triggered D-Register-Bank, high active reset**

.. figure:: Modelica.Electrical.Digital.Examples.DFFREGD.png
   :align: center
   :alt: Modelica.Electrical.Digital.Examples.DFFREG

   Modelica.Electrical.Digital.Examples.DFFREG

Information
~~~~~~~~~~~

::

This example is a simple test of the Registers.DFFREG component. The
data width is set to two. After simulation plot both the dataIn and the
dataOut vectors. To verify the results compare the the truth table which
is documented in the DFFREG component.

::

Extends from
`Modelica.Icons.Example <Modelica_Icons.html#Modelica.Icons.Example>`_
(Icon for runnable examples).

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model DFFREG "Pulse triggered D-Register-Bank, high active reset"
      extends Modelica.Icons.Example;

      Modelica.Electrical.Digital.Sources.Table clock(x={3,4,3,4,3,4,3}, t={0,7,8,10,11,15,16});
      Modelica.Electrical.Digital.Sources.Table data_0(x={4,3}, t={0,12});
      Modelica.Electrical.Digital.Sources.Table reset(x={3,4,3}, t={0,1,2});
      Modelica.Electrical.Digital.Sources.Table data_1(t={0,10}, x={8,2});
      Modelica.Electrical.Digital.Registers.DFFREG dFFREG(
        n=2,
        tHL=5,
        tLH=6);
    equation 
      connect(clock.y, dFFREG.clock);
      connect(reset.y, dFFREG.reset);
      connect(data_0.y, dFFREG.dataIn[1]);
      connect(data_1.y, dFFREG.dataIn[2]);
    end DFFREG;

--------------

|image53| `Modelica.Electrical.Digital.Examples <Modelica_Electrical_Digital_Examples.html#Modelica.Electrical.Digital.Examples>`_.DFFREGL
------------------------------------------------------------------------------------------------------------------------------------------

**Pulse triggered D-Register-Bank, low active reset**

.. figure:: Modelica.Electrical.Digital.Examples.DFFREGLD.png
   :align: center
   :alt: Modelica.Electrical.Digital.Examples.DFFREGL

   Modelica.Electrical.Digital.Examples.DFFREGL

Information
~~~~~~~~~~~

::

This example is a simple test of the Registers.DFFREGL component. The
data width is set to two. After simulation plot both the dataIn and the
dataOut vectors. To verify the results compare the the truth table which
is documented in the DFFREGL component.

::

Extends from
`Modelica.Icons.Example <Modelica_Icons.html#Modelica.Icons.Example>`_
(Icon for runnable examples).

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model DFFREGL "Pulse triggered D-Register-Bank, low active reset"
      extends Modelica.Icons.Example;

      Modelica.Electrical.Digital.Sources.Table clock(x={3,4,3,4,3,4,3}, t={0,7,8,10,11,15,16});
      Modelica.Electrical.Digital.Sources.Table data_0(x={4,3}, t={0,12});
      Modelica.Electrical.Digital.Sources.Table reset(t={0,1,2}, x={4,3,4});
      Modelica.Electrical.Digital.Sources.Table data_1(t={0,10}, x={8,2});
      Modelica.Electrical.Digital.Registers.DFFREGL dFFREGL(
        n=2,
        tHL=5,
        tLH=6);
    equation 
      connect(reset.y, dFFREGL.reset);
      connect(clock.y, dFFREGL.clock);
      connect(data_0.y, dFFREGL.dataIn[1]);
      connect(data_1.y, dFFREGL.dataIn[2]);
    end DFFREGL;

--------------

|image54| `Modelica.Electrical.Digital.Examples <Modelica_Electrical_Digital_Examples.html#Modelica.Electrical.Digital.Examples>`_.DFFREGSRH
--------------------------------------------------------------------------------------------------------------------------------------------

**Pulse triggered D-Register-Bank, high active set and reset**

.. figure:: Modelica.Electrical.Digital.Examples.DFFREGSRHD.png
   :align: center
   :alt: Modelica.Electrical.Digital.Examples.DFFREGSRH

   Modelica.Electrical.Digital.Examples.DFFREGSRH

Information
~~~~~~~~~~~

::

This example is a simple test of the Registers.DFFREGSRH component. The
data width is set to two. After simulation plot both the dataIn and the
dataOut vectors. To verify the results compare the the truth table which
is documented in the DFFREGSRH component.

::

Extends from
`Modelica.Icons.Example <Modelica_Icons.html#Modelica.Icons.Example>`_
(Icon for runnable examples).

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model DFFREGSRH 
      "Pulse triggered D-Register-Bank, high active set and reset"
      extends Modelica.Icons.Example;

      Modelica.Electrical.Digital.Sources.Table clock(x={3,4,3}, t={0,10,11});
      Modelica.Electrical.Digital.Sources.Table data_0(x={6}, t={0});
      Modelica.Electrical.Digital.Sources.Table reset(x={3,4,3}, t={0,1,2});
      Modelica.Electrical.Digital.Sources.Table data_1(x={3}, t={0});
      Modelica.Electrical.Digital.Sources.Table set(x={3,4,3}, t={0,5,6});
      Modelica.Electrical.Digital.Registers.DFFREGSRH dFFREGSRH(
        tHL=2,
        tLH=3,
        n=2);
    equation 
      connect(clock.y, dFFREGSRH.clock);
      connect(set.y, dFFREGSRH.set);
      connect(reset.y, dFFREGSRH.reset);
      connect(data_0.y, dFFREGSRH.dataIn[1]);
      connect(data_1.y, dFFREGSRH.dataIn[2]);
    end DFFREGSRH;

--------------

|image55| `Modelica.Electrical.Digital.Examples <Modelica_Electrical_Digital_Examples.html#Modelica.Electrical.Digital.Examples>`_.DFFREGSRL
--------------------------------------------------------------------------------------------------------------------------------------------

**Pulse triggered D-Register-Bank, low active set and reset**

.. figure:: Modelica.Electrical.Digital.Examples.DFFREGSRLD.png
   :align: center
   :alt: Modelica.Electrical.Digital.Examples.DFFREGSRL

   Modelica.Electrical.Digital.Examples.DFFREGSRL

Information
~~~~~~~~~~~

::

This example is a simple test of the Registers.DFFREGSRL component. The
data width is set to two. After simulation plot both the dataIn and the
dataOut vectors. To verify the results compare the the truth table which
is documented in the DFFREGSRL component.

::

Extends from
`Modelica.Icons.Example <Modelica_Icons.html#Modelica.Icons.Example>`_
(Icon for runnable examples).

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model DFFREGSRL 
      "Pulse triggered D-Register-Bank, low active set and reset"
      extends Modelica.Icons.Example;

      Modelica.Electrical.Digital.Sources.Table clock(x={3,4,3}, t={0,10,11});
      Modelica.Electrical.Digital.Sources.Table data_0(x={6}, t={0});
      Modelica.Electrical.Digital.Sources.Table reset(t={0,1,2}, x={4,3,4});
      Modelica.Electrical.Digital.Sources.Table data_1(x={3}, t={0});
      Modelica.Electrical.Digital.Sources.Table set(t={0,5,6}, x={4,3,4});
      Modelica.Electrical.Digital.Registers.DFFREGSRL dFFREGSRL(
        tHL=2,
        tLH=3,
        n=2);
    equation 
      connect(reset.y, dFFREGSRL.reset);
      connect(clock.y, dFFREGSRL.clock);
      connect(set.y, dFFREGSRL.set);
      connect(data_0.y, dFFREGSRL.dataIn[1]);
      connect(data_1.y, dFFREGSRL.dataIn[2]);
    end DFFREGSRL;

--------------

|image56| `Modelica.Electrical.Digital.Examples <Modelica_Electrical_Digital_Examples.html#Modelica.Electrical.Digital.Examples>`_.DLATREG
------------------------------------------------------------------------------------------------------------------------------------------

**Level sensitive D-Register-Bank, high active reset**

.. figure:: Modelica.Electrical.Digital.Examples.DLATREGD.png
   :align: center
   :alt: Modelica.Electrical.Digital.Examples.DLATREG

   Modelica.Electrical.Digital.Examples.DLATREG

Information
~~~~~~~~~~~

::

This example is a simple test of the Registers.DLATREG component. The
data width is set to two. After simulation plot both the dataIn and the
dataOut vectors. To verify the results compare the the truth table which
is documented in the DLATREG component.

::

Extends from
`Modelica.Icons.Example <Modelica_Icons.html#Modelica.Icons.Example>`_
(Icon for runnable examples).

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model DLATREG "Level sensitive D-Register-Bank, high active reset"
      extends Modelica.Icons.Example;

      Modelica.Electrical.Digital.Sources.Table enable(x={3,4,3}, t={0,10,18});
      Modelica.Electrical.Digital.Sources.Table data_0(x={6,4}, t={0,15});
      Modelica.Electrical.Digital.Sources.Table reset(x={3,4,3,4,3}, t={0,1,2,20,21});
      Modelica.Electrical.Digital.Sources.Table data_1(x={3,4}, t={0,16});
      Modelica.Electrical.Digital.Registers.DLATREG dLATREG(
        n=2,
        tHL=2,
        tLH=3);
    equation 
      connect(reset.y, dLATREG.reset);
      connect(enable.y, dLATREG.enable);
      connect(data_0.y, dLATREG.dataIn[1]);
      connect(data_1.y, dLATREG.dataIn[2]);
    end DLATREG;

--------------

|image57| `Modelica.Electrical.Digital.Examples <Modelica_Electrical_Digital_Examples.html#Modelica.Electrical.Digital.Examples>`_.DLATREGL
-------------------------------------------------------------------------------------------------------------------------------------------

**Level sensitive D-Register-Bank, low active reset**

.. figure:: Modelica.Electrical.Digital.Examples.DLATREGLD.png
   :align: center
   :alt: Modelica.Electrical.Digital.Examples.DLATREGL

   Modelica.Electrical.Digital.Examples.DLATREGL

Information
~~~~~~~~~~~

::

This example is a simple test of the Registers.DLATREGL component. The
data width is set to two. After simulation plot both the dataIn and the
dataOut vectors. To verify the results compare the the truth table which
is documented in the DLATREGL component.

::

Extends from
`Modelica.Icons.Example <Modelica_Icons.html#Modelica.Icons.Example>`_
(Icon for runnable examples).

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model DLATREGL "Level sensitive D-Register-Bank, low active reset"
      extends Modelica.Icons.Example;

      Modelica.Electrical.Digital.Sources.Table enable(x={3,4,3}, t={0,10,18});
      Modelica.Electrical.Digital.Sources.Table data_0(x={6,4}, t={0,15});
      Modelica.Electrical.Digital.Sources.Table reset(t={0,1,2,20,21}, x={4,3,4,3,4});
      Modelica.Electrical.Digital.Sources.Table data_1(x={3,4}, t={0,16});
      Modelica.Electrical.Digital.Registers.DLATREGL dLATREGL(
        tHL=2,
        tLH=3,
        n=2);
    equation 
      connect(reset.y, dLATREGL.reset);
      connect(enable.y, dLATREGL.enable);
      connect(data_0.y, dLATREGL.dataIn[1]);
      connect(data_1.y, dLATREGL.dataIn[2]);
    end DLATREGL;

--------------

|image58| `Modelica.Electrical.Digital.Examples <Modelica_Electrical_Digital_Examples.html#Modelica.Electrical.Digital.Examples>`_.DLATREGSRH
---------------------------------------------------------------------------------------------------------------------------------------------

**Level sensitive D-Register-Bank, high active set and reset**

.. figure:: Modelica.Electrical.Digital.Examples.DLATREGSRHD.png
   :align: center
   :alt: Modelica.Electrical.Digital.Examples.DLATREGSRH

   Modelica.Electrical.Digital.Examples.DLATREGSRH

Information
~~~~~~~~~~~

::

This example is a simple test of the Registers.DLATREGSRH component. The
data width is set to two. After simulation plot both the dataIn and the
dataOut vectors. To verify the results compare the the truth table which
is documented in the DLATREGSRH component.

::

Extends from
`Modelica.Icons.Example <Modelica_Icons.html#Modelica.Icons.Example>`_
(Icon for runnable examples).

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model DLATREGSRH 
      "Level sensitive D-Register-Bank, high active set and reset"
      extends Modelica.Icons.Example;

      Modelica.Electrical.Digital.Sources.Table enable(x={3,4,3}, t={0,10,18});
      Modelica.Electrical.Digital.Sources.Table data_0(x={6,4}, t={0,15});
      Modelica.Electrical.Digital.Sources.Table reset(x={3,4,3,4,3}, t={0,1,2,20,21});
      Modelica.Electrical.Digital.Sources.Table data_1(x={3,4}, t={0,16});
      Modelica.Electrical.Digital.Sources.Table set(x={3,4,3}, t={0,5,6});
      Modelica.Electrical.Digital.Registers.DLATREGSRH dLATREGSRH(
        tHL=2,
        tLH=3,
        n=2);
    equation 
      connect(reset.y, dLATREGSRH.reset);
      connect(enable.y, dLATREGSRH.enable);
      connect(data_0.y, dLATREGSRH.dataIn[1]);
      connect(data_1.y, dLATREGSRH.dataIn[2]);
      connect(set.y, dLATREGSRH.set);

    end DLATREGSRH;

--------------

|image59| `Modelica.Electrical.Digital.Examples <Modelica_Electrical_Digital_Examples.html#Modelica.Electrical.Digital.Examples>`_.DLATREGSRL
---------------------------------------------------------------------------------------------------------------------------------------------

**Level sensitive D-Register-Bank, low active set and reset**

.. figure:: Modelica.Electrical.Digital.Examples.DLATREGSRLD.png
   :align: center
   :alt: Modelica.Electrical.Digital.Examples.DLATREGSRL

   Modelica.Electrical.Digital.Examples.DLATREGSRL

Information
~~~~~~~~~~~

::

This example is a simple test of the Registers.DLATREGSRL component. The
data width is set to two. After simulation plot both the dataIn and the
dataOut vectors. To verify the results compare the the truth table which
is documented in the DLATREGSRL component.

::

Extends from
`Modelica.Icons.Example <Modelica_Icons.html#Modelica.Icons.Example>`_
(Icon for runnable examples).

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model DLATREGSRL 
      "Level sensitive D-Register-Bank, low active set and reset"
      extends Modelica.Icons.Example;

      Modelica.Electrical.Digital.Sources.Table enable(t={0,10,18}, x={3,4,3});
      Modelica.Electrical.Digital.Sources.Table data_0(x={6,4}, t={0,15});
      Modelica.Electrical.Digital.Sources.Table reset(t={0,1,2,20,21}, x={4,3,4,3,4});
      Modelica.Electrical.Digital.Sources.Table data_1(x={3,4}, t={0,16});
      Modelica.Electrical.Digital.Sources.Table set(t={0,5,6}, x={4,3,4});
      Modelica.Electrical.Digital.Registers.DLATREGSRL dLATREGSRL(
        tHL=2,
        tLH=3,
        n=2);
    equation 
      connect(reset.y, dLATREGSRL.reset);
      connect(enable.y, dLATREGSRL.enable);
      connect(data_0.y, dLATREGSRL.dataIn[1]);
      connect(data_1.y, dLATREGSRL.dataIn[2]);
      connect(set.y, dLATREGSRL.set);
    end DLATREGSRL;

--------------

|image60| `Modelica.Electrical.Digital.Examples <Modelica_Electrical_Digital_Examples.html#Modelica.Electrical.Digital.Examples>`_.NXFER
----------------------------------------------------------------------------------------------------------------------------------------

**Functionality test of NXFERGATE**

.. figure:: Modelica.Electrical.Digital.Examples.NXFERD.png
   :align: center
   :alt: Modelica.Electrical.Digital.Examples.NXFER

   Modelica.Electrical.Digital.Examples.NXFER

Information
~~~~~~~~~~~

::

This example is a simple test of the Tristates.NXFERGATE component.

::

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model NXFER "Functionality test of NXFERGATE"

      Modelica.Electrical.Digital.Sources.Table e_table(
    y0=Modelica.Electrical.Digital.Interfaces.Logic.'U',
    x={3,4,5},
    t={0,5,9});
      Modelica.Electrical.Digital.Sources.Table x_table(
    y0=Modelica.Electrical.Digital.Interfaces.Logic.'U',
    x={4,3},
    t={1,7});
      Modelica.Electrical.Digital.Tristates.NXFERGATE nXFERGATE(
                                        tHL=1, tLH=1);
    equation 
      connect(x_table.y, nXFERGATE.x);
      connect(e_table.y, nXFERGATE.enable);
    end NXFER;

--------------

|image61| `Modelica.Electrical.Digital.Examples <Modelica_Electrical_Digital_Examples.html#Modelica.Electrical.Digital.Examples>`_.NRXFER
-----------------------------------------------------------------------------------------------------------------------------------------

**Functionality test of NRXFERGATE**

.. figure:: Modelica.Electrical.Digital.Examples.NRXFERD.png
   :align: center
   :alt: Modelica.Electrical.Digital.Examples.NRXFER

   Modelica.Electrical.Digital.Examples.NRXFER

Information
~~~~~~~~~~~

::

This example is a simple test of the Tristates.NRXFER component. After
simulation until 12 s plot x, enable, and y of the
``nRXFERGATE ``component. To verify the result compare to the truth
table ``NRXferTable``.

::

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model NRXFER "Functionality test of NRXFERGATE"

      Modelica.Electrical.Digital.Sources.Table e_table(
    y0=Modelica.Electrical.Digital.Interfaces.Logic.'U',
    x={3,4,5},
    t={0,5,9});
      Modelica.Electrical.Digital.Sources.Table x_table(
    y0=Modelica.Electrical.Digital.Interfaces.Logic.'U',
    x={4,3},
    t={1,7});
      Modelica.Electrical.Digital.Tristates.NRXFERGATE nRXFERGATE(
                                          tHL=1, tLH=1);
    equation 
      connect(x_table.y, nRXFERGATE.x);
      connect(e_table.y, nRXFERGATE.enable);
    end NRXFER;

--------------

|image62| `Modelica.Electrical.Digital.Examples <Modelica_Electrical_Digital_Examples.html#Modelica.Electrical.Digital.Examples>`_.BUF3S
----------------------------------------------------------------------------------------------------------------------------------------

**Functionality test of BUF3S**

.. figure:: Modelica.Electrical.Digital.Examples.BUF3SD.png
   :align: center
   :alt: Modelica.Electrical.Digital.Examples.BUF3S

   Modelica.Electrical.Digital.Examples.BUF3S

Information
~~~~~~~~~~~

::

This example is a simple test of the Tristates.BUF3S component. After
simulation until 12 s plot x, enable, and y of the bUF3S`` ``component.
To verify the result compare to the truth table Buf3sTable.

::

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model BUF3S "Functionality test of BUF3S"

      Modelica.Electrical.Digital.Sources.Table e_table(
    y0=Modelica.Electrical.Digital.Interfaces.Logic.'U',
    x={3,4,5},
    t={0,5,9});
      Modelica.Electrical.Digital.Sources.Table x_table(
    y0=Modelica.Electrical.Digital.Interfaces.Logic.'U',
    x={4,3},
    t={1,7});
      Modelica.Electrical.Digital.Tristates.BUF3S bUF3S(
        tHL=1,
        tLH=1,
        strength=Modelica.Electrical.Digital.Interfaces.Strength.'S_X01');
    equation 
      connect(x_table.y, bUF3S.x);
      connect(e_table.y, bUF3S.enable);
    end BUF3S;

--------------

|image63| `Modelica.Electrical.Digital.Examples <Modelica_Electrical_Digital_Examples.html#Modelica.Electrical.Digital.Examples>`_.INV3S
----------------------------------------------------------------------------------------------------------------------------------------

**Functionality test of INV3S**

.. figure:: Modelica.Electrical.Digital.Examples.INV3SD.png
   :align: center
   :alt: Modelica.Electrical.Digital.Examples.INV3S

   Modelica.Electrical.Digital.Examples.INV3S

Information
~~~~~~~~~~~

::

This example is a simple test of the Tristates.INV3S component. After
simulation until 12 s plot x, enable, and y of the iNV3S`` ``component.
To verify the result compare to the truth table ``T.UX01Table``.

::

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model INV3S "Functionality test of INV3S"

      Modelica.Electrical.Digital.Sources.Table e_table(
    y0=Modelica.Electrical.Digital.Interfaces.Logic.'U',
    x={3,4,5},
    t={0,5,9});
      Modelica.Electrical.Digital.Sources.Table x_table(
    y0=Modelica.Electrical.Digital.Interfaces.Logic.'U',
    x={4,3},
    t={1,7});
      Modelica.Electrical.Digital.Tristates.INV3S iNV3S;
    equation 
      connect(x_table.y, iNV3S.x);
      connect(e_table.y, iNV3S.enable);
    end INV3S;

--------------

|image64| `Modelica.Electrical.Digital.Examples <Modelica_Electrical_Digital_Examples.html#Modelica.Electrical.Digital.Examples>`_.WiredX
-----------------------------------------------------------------------------------------------------------------------------------------

**Functionality test of WiredX**

.. figure:: Modelica.Electrical.Digital.Examples.WiredXD.png
   :align: center
   :alt: Modelica.Electrical.Digital.Examples.WiredX

   Modelica.Electrical.Digital.Examples.WiredX

Information
~~~~~~~~~~~

::

This example is a simple test of the Tristates.WiredX component. The
input width is set to two. After simulation until 12 s plot x[1], x[2],
and y of the WiredX component. To verify the result compare to the truth
table Tables.ResolutionTable.

::

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model WiredX "Functionality test of WiredX"

      Modelica.Electrical.Digital.Sources.Table e_table2(
    y0=Modelica.Electrical.Digital.Interfaces.Logic.'U',
    x={3,4,3},
    t={0,3,9});
      Modelica.Electrical.Digital.Sources.Table x_table2(
    y0=Modelica.Electrical.Digital.Interfaces.Logic.'U',
    x={4,3},
    t={1,7});
      Modelica.Electrical.Digital.Tristates.BUF3S bUF3S2(
        tHL=1,
        tLH=1,
        strength=Modelica.Electrical.Digital.Interfaces.Strength.'S_X01');
      Modelica.Electrical.Digital.Sources.Table e_table1(
    y0=Modelica.Electrical.Digital.Interfaces.Logic.'U',
    t={0,3,9},
    x={3,4,3});
      Modelica.Electrical.Digital.Sources.Table x_table1(
    y0=Modelica.Electrical.Digital.Interfaces.Logic.'U',
    x={3,4,3},
    t={1,5,7});
      Modelica.Electrical.Digital.Tristates.BUF3S bUF3S1(
        tHL=1,
        tLH=1,
        strength=Modelica.Electrical.Digital.Interfaces.Strength.'S_X01');
      Modelica.Electrical.Digital.Tristates.WiredX wiredX(n=2);
    equation 
      connect(x_table2.y, bUF3S2.x);
      connect(e_table2.y, bUF3S2.enable);
      connect(x_table1.y, bUF3S1.x);
      connect(e_table1.y, bUF3S1.enable);
      connect(bUF3S1.y, wiredX.x[1]);
      connect(bUF3S2.y, wiredX.x[2]);
    end WiredX;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:28:22
2010.

.. |Modelica.Electrical.Digital.Examples.Multiplexer| image:: Modelica.Electrical.Digital.Examples.MultiplexerS.png
.. |Modelica.Electrical.Digital.Examples.FlipFlop| image:: Modelica.Electrical.Digital.Examples.MultiplexerS.png
.. |Modelica.Electrical.Digital.Examples.HalfAdder| image:: Modelica.Electrical.Digital.Examples.MultiplexerS.png
.. |Modelica.Electrical.Digital.Examples.FullAdder| image:: Modelica.Electrical.Digital.Examples.MultiplexerS.png
.. |Modelica.Electrical.Digital.Examples.Adder4| image:: Modelica.Electrical.Digital.Examples.Adder4S.png
.. |Modelica.Electrical.Digital.Examples.Counter3| image:: Modelica.Electrical.Digital.Examples.Counter3S.png
.. |Modelica.Electrical.Digital.Examples.Counter| image:: Modelica.Electrical.Digital.Examples.Counter3S.png
.. |Modelica.Electrical.Digital.Examples.VectorDelay| image:: Modelica.Electrical.Digital.Examples.Counter3S.png
.. |Modelica.Electrical.Digital.Examples.DFFREG| image:: Modelica.Electrical.Digital.Examples.Counter3S.png
.. |Modelica.Electrical.Digital.Examples.DFFREGL| image:: Modelica.Electrical.Digital.Examples.Counter3S.png
.. |Modelica.Electrical.Digital.Examples.DFFREGSRH| image:: Modelica.Electrical.Digital.Examples.Counter3S.png
.. |Modelica.Electrical.Digital.Examples.DFFREGSRL| image:: Modelica.Electrical.Digital.Examples.Counter3S.png
.. |Modelica.Electrical.Digital.Examples.DLATREG| image:: Modelica.Electrical.Digital.Examples.Counter3S.png
.. |Modelica.Electrical.Digital.Examples.DLATREGL| image:: Modelica.Electrical.Digital.Examples.Counter3S.png
.. |Modelica.Electrical.Digital.Examples.DLATREGSRH| image:: Modelica.Electrical.Digital.Examples.Counter3S.png
.. |Modelica.Electrical.Digital.Examples.DLATREGSRL| image:: Modelica.Electrical.Digital.Examples.Counter3S.png
.. |Modelica.Electrical.Digital.Examples.NXFER| image:: Modelica.Electrical.Digital.Examples.Counter3S.png
.. |Modelica.Electrical.Digital.Examples.NRXFER| image:: Modelica.Electrical.Digital.Examples.Counter3S.png
.. |Modelica.Electrical.Digital.Examples.BUF3S| image:: Modelica.Electrical.Digital.Examples.Counter3S.png
.. |Modelica.Electrical.Digital.Examples.INV3S| image:: Modelica.Electrical.Digital.Examples.Counter3S.png
.. |Modelica.Electrical.Digital.Examples.WiredX| image:: Modelica.Electrical.Digital.Examples.Counter3S.png
.. |Modelica.Electrical.Digital.Examples.Utilities| image:: Modelica.Electrical.Digital.Examples.UtilitiesS.png
.. |image22| image:: Modelica.Electrical.Digital.Examples.MultiplexerS.png
.. |image23| image:: Modelica.Electrical.Digital.Examples.MultiplexerS.png
.. |image24| image:: Modelica.Electrical.Digital.Examples.MultiplexerS.png
.. |image25| image:: Modelica.Electrical.Digital.Examples.MultiplexerS.png
.. |image26| image:: Modelica.Electrical.Digital.Examples.Adder4S.png
.. |image27| image:: Modelica.Electrical.Digital.Examples.Counter3S.png
.. |image28| image:: Modelica.Electrical.Digital.Examples.Counter3S.png
.. |image29| image:: Modelica.Electrical.Digital.Examples.Counter3S.png
.. |image30| image:: Modelica.Electrical.Digital.Examples.Counter3S.png
.. |image31| image:: Modelica.Electrical.Digital.Examples.Counter3S.png
.. |image32| image:: Modelica.Electrical.Digital.Examples.Counter3S.png
.. |image33| image:: Modelica.Electrical.Digital.Examples.Counter3S.png
.. |image34| image:: Modelica.Electrical.Digital.Examples.Counter3S.png
.. |image35| image:: Modelica.Electrical.Digital.Examples.Counter3S.png
.. |image36| image:: Modelica.Electrical.Digital.Examples.Counter3S.png
.. |image37| image:: Modelica.Electrical.Digital.Examples.Counter3S.png
.. |image38| image:: Modelica.Electrical.Digital.Examples.Counter3S.png
.. |image39| image:: Modelica.Electrical.Digital.Examples.Counter3S.png
.. |image40| image:: Modelica.Electrical.Digital.Examples.Counter3S.png
.. |image41| image:: Modelica.Electrical.Digital.Examples.Counter3S.png
.. |image42| image:: Modelica.Electrical.Digital.Examples.Counter3S.png
.. |image43| image:: Modelica.Electrical.Digital.Examples.UtilitiesS.png
.. |image44| image:: Modelica.Electrical.Digital.Examples.MultiplexerI.png
.. |image45| image:: Modelica.Electrical.Digital.Examples.MultiplexerI.png
.. |image46| image:: Modelica.Electrical.Digital.Examples.MultiplexerI.png
.. |image47| image:: Modelica.Electrical.Digital.Examples.MultiplexerI.png
.. |image48| image:: Modelica.Electrical.Digital.Examples.Adder4I.png
.. |image49| image:: Modelica.Electrical.Digital.Examples.Counter3I.png
.. |image50| image:: Modelica.Electrical.Digital.Examples.Counter3I.png
.. |image51| image:: Modelica.Electrical.Digital.Examples.Counter3I.png
.. |image52| image:: Modelica.Electrical.Digital.Examples.Counter3I.png
.. |image53| image:: Modelica.Electrical.Digital.Examples.Counter3I.png
.. |image54| image:: Modelica.Electrical.Digital.Examples.Counter3I.png
.. |image55| image:: Modelica.Electrical.Digital.Examples.Counter3I.png
.. |image56| image:: Modelica.Electrical.Digital.Examples.Counter3I.png
.. |image57| image:: Modelica.Electrical.Digital.Examples.Counter3I.png
.. |image58| image:: Modelica.Electrical.Digital.Examples.Counter3I.png
.. |image59| image:: Modelica.Electrical.Digital.Examples.Counter3I.png
.. |image60| image:: Modelica.Electrical.Digital.Examples.Counter3I.png
.. |image61| image:: Modelica.Electrical.Digital.Examples.Counter3I.png
.. |image62| image:: Modelica.Electrical.Digital.Examples.Counter3I.png
.. |image63| image:: Modelica.Electrical.Digital.Examples.Counter3I.png
.. |image64| image:: Modelica.Electrical.Digital.Examples.Counter3I.png
