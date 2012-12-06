=============================================
Modelica.Electrical.Analog.Examples.Utilities
=============================================

`Modelica.Electrical.Analog.Examples <Modelica_Electrical_Analog_Examples.html#Modelica.Electrical.Analog.Examples>`_.Utilities
-------------------------------------------------------------------------------------------------------------------------------

**Utility components used by package Examples**

Information
~~~~~~~~~~~

::

This package contains some utility components used by package examples.
These components are auxiliary components that should not be used like
true MLS components since they are designed the purpose of the examples
only, not for common use.

::

Extends from
`Modelica.Icons.Package <Modelica_Icons_Package.html#Modelica.Icons.Package>`_
(Icon for standard packages).

Package Content
~~~~~~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------+
| Name                                                                                                                                                                                                          | Description                                    |
+===============================================================================================================================================================================================================+================================================+
| |image4| `Nand <Modelica_Electrical_Analog_Examples_Utilities.html#Modelica.Electrical.Analog.Examples.Utilities.Nand>`_                                                                                      | CMOS NAND Gate (see Tietze/Schenk, page 157)   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------+
| |image5| `NonlinearResistor <Modelica_Electrical_Analog_Examples_Utilities.html#Modelica.Electrical.Analog.Examples.Utilities.NonlinearResistor>`_                                                            | Chua's resistor                                |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------+
| |image6| `RealSwitch <Modelica_Electrical_Analog_Examples_Utilities.html#Modelica.Electrical.Analog.Examples.Utilities.RealSwitch>`_                                                                          | Ideal switch with resistance                   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------+
| |image7| `Transistor <Modelica_Electrical_Analog_Examples_Utilities.html#Modelica.Electrical.Analog.Examples.Utilities.Transistor>`_                                                                          | Transistor with resistance an capacitance      |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------+

--------------

|image8| `Modelica.Electrical.Analog.Examples.Utilities <Modelica_Electrical_Analog_Examples_Utilities.html#Modelica.Electrical.Analog.Examples.Utilities>`_.Nand
-----------------------------------------------------------------------------------------------------------------------------------------------------------------

**CMOS NAND Gate (see Tietze/Schenk, page 157)**

.. figure:: Modelica.Electrical.Analog.Examples.Utilities.NandD.png
   :align: center
   :alt: Modelica.Electrical.Analog.Examples.Utilities.Nand

   Modelica.Electrical.Analog.Examples.Utilities.Nand

Information
~~~~~~~~~~~

::

The nand gate is a basic CMOS building block. It consists of four CMOS
transistors.

**Reference:**

Tietze, U.; Schenk, Ch.: Halbleiter-Schaltungstechnik. Springer-Verlag
Berlin Heidelberg NewYork 1980, p. 157

::

Connectors
~~~~~~~~~~

+-------------------------------------------------------------------------------------------------+--------+---------------+
| Type                                                                                            | Name   | Description   |
+=================================================================================================+========+===============+
| `Pin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.Pin>`_   | x1     |               |
+-------------------------------------------------------------------------------------------------+--------+---------------+
| `Pin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.Pin>`_   | x2     |               |
+-------------------------------------------------------------------------------------------------+--------+---------------+
| `Pin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.Pin>`_   | Vdd    |               |
+-------------------------------------------------------------------------------------------------+--------+---------------+
| `Pin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.Pin>`_   | y      |               |
+-------------------------------------------------------------------------------------------------+--------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Nand "CMOS NAND Gate (see Tietze/Schenk, page 157)"

      Semiconductors.PMOS TP1(
        W=6.5e-6,
        L=3.1e-6,
        Beta=1.05e-5,
        Vt=-1,
        K2=0.41,
        K5=0.8385,
        dW=-2.5e-6,
        dL=-2.1e-6);
      Semiconductors.PMOS TP2(
        W=6.5e-6,
        L=3.1e-6,
        Beta=1.05e-5,
        Vt=-1,
        K2=0.41,
        K5=0.8385,
        dW=-2.5e-6,
        dL=-2.1e-6);
      Semiconductors.NMOS TN1(
        W=6.5e-6,
        L=3.1e-6,
        Beta=4.1e-5,
        Vt=0.8,
        K2=1.144,
        K5=0.7311,
        dW=-2.5e-6,
        dL=-1.5e-6);
      Semiconductors.NMOS TN2(
        W=6.5e-6,
        L=3.1e-6,
        Beta=4.1e-5,
        Vt=0.8,
        K2=1.144,
        K5=0.7311,
        dW=-2.5e-6,
        dL=-1.5e-6);
      Basic.Capacitor C4(C=0.4e-13);
      Basic.Capacitor C7(C=0.4e-13);
      Basic.Ground Gnd;
      Basic.Ground Gnd2;
      Basic.Ground Gnd3;
      Basic.Ground Gnd6;
      Basic.Ground Gnd7;
      Basic.Ground Gnd8;
      Interfaces.Pin x1;
      Interfaces.Pin x2;
      Interfaces.Pin Vdd;
      Interfaces.Pin y;
    equation 
      connect(TN1.S, TN2.D);
      connect(TN2.B, Gnd.p);
      connect(TN2.D, C7.p);
      connect(TN2.S, Gnd.p);
      connect(TP1.S, TN1.D);
      connect(TP1.G, TN1.G);
      connect(C4.n, Gnd2.p);
      connect(C7.n, Gnd3.p);
      connect(TP2.B, Gnd6.p);
      connect(TN1.B, Gnd7.p);
      connect(TP1.B, Gnd8.p);
      connect(TP2.G, x1);
      connect(TP2.G, TN2.G);
      connect(TN1.G, x2);
      connect(TP2.S, TN1.D);
      connect(TN1.D, C4.p);
      connect(Vdd, TP1.D);
      connect(TP2.D, Vdd);
      connect(C4.p, y);
    end Nand;

--------------

|image9| `Modelica.Electrical.Analog.Examples.Utilities <Modelica_Electrical_Analog_Examples_Utilities.html#Modelica.Electrical.Analog.Examples.Utilities>`_.NonlinearResistor
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Chua's resistor**

.. figure:: Modelica.Electrical.Analog.Examples.Utilities.NonlinearResistorD.png
   :align: center
   :alt: Modelica.Electrical.Analog.Examples.Utilities.NonlinearResistor

   Modelica.Electrical.Analog.Examples.Utilities.NonlinearResistor

Information
~~~~~~~~~~~

::

This is the only nonlinear component for Chua';s circuit. It is a
piecewise linear resistor with both an inner and an outer range, which
includes the inner one. The slopes of both ranges are given by
parameters. The resistance caracteristic is continuous. For Chua';s
circuit both slopes have to be chosen to be negative.

::

Extends from
`Interfaces.OnePort <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.OnePort>`_
(Component with two electrical pins p and n and current i from p to n).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------+--------+-----------+------------------------------------------+
| Type                                                                  | Name   | Default   | Description                              |
+=======================================================================+========+===========+==========================================+
| `Conductance <Modelica_SIunits.html#Modelica.SIunits.Conductance>`_   | Ga     |           | Conductance in inner voltage range [S]   |
+-----------------------------------------------------------------------+--------+-----------+------------------------------------------+
| `Conductance <Modelica_SIunits.html#Modelica.SIunits.Conductance>`_   | Gb     |           | Conductance in outer voltage range [S]   |
+-----------------------------------------------------------------------+--------+-----------+------------------------------------------+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_           | Ve     |           | Inner voltage range limit [V]            |
+-----------------------------------------------------------------------+--------+-----------+------------------------------------------+

Connectors
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------+--------+------------------------------------------------------------------+
| Type                                                                                                            | Name   | Description                                                      |
+=================================================================================================================+========+==================================================================+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_   | p      | Positive pin (potential p.v > n.v for positive voltage drop v)   |
+-----------------------------------------------------------------------------------------------------------------+--------+------------------------------------------------------------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_   | n      | Negative pin                                                     |
+-----------------------------------------------------------------------------------------------------------------+--------+------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model NonlinearResistor "Chua's resistor"
      extends Interfaces.OnePort;

      parameter SI.Conductance Ga "Conductance in inner voltage range";
      parameter SI.Conductance Gb "Conductance in outer voltage range";
      parameter SI.Voltage Ve "Inner voltage range limit";
    equation 
      i = if (v < -Ve) then Gb*(v + Ve) - Ga*Ve else if (v > Ve) then Gb*(v - Ve)
         + Ga*Ve else Ga*v;
    end NonlinearResistor;

--------------

|image10| `Modelica.Electrical.Analog.Examples.Utilities <Modelica_Electrical_Analog_Examples_Utilities.html#Modelica.Electrical.Analog.Examples.Utilities>`_.RealSwitch
------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Ideal switch with resistance**

.. figure:: Modelica.Electrical.Analog.Examples.Utilities.RealSwitchD.png
   :align: center
   :alt: Modelica.Electrical.Analog.Examples.Utilities.RealSwitch

   Modelica.Electrical.Analog.Examples.Utilities.RealSwitch

Information
~~~~~~~~~~~

::

This component is a special kind of a commuting switch which possesses
an additional constant resistance. This resistance was necessary in an
example. It is not designed for common use.

::

Connectors
~~~~~~~~~~

+-------------------------------------------------------------------------------------------------+-----------+---------------+
| Type                                                                                            | Name      | Description   |
+=================================================================================================+===========+===============+
| `Pin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.Pin>`_   | p         |               |
+-------------------------------------------------------------------------------------------------+-----------+---------------+
| `Pin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.Pin>`_   | n1        |               |
+-------------------------------------------------------------------------------------------------+-----------+---------------+
| `Pin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.Pin>`_   | n2        |               |
+-------------------------------------------------------------------------------------------------+-----------+---------------+
| `Pin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.Pin>`_   | control   |               |
+-------------------------------------------------------------------------------------------------+-----------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model RealSwitch "Ideal switch with resistance"

      Ideal.ControlledIdealCommutingSwitch S(level=2.5);
      Basic.Resistor R(R=0.01);
      Interfaces.Pin p;
      Interfaces.Pin n1;
      Interfaces.Pin n2;
      Interfaces.Pin control;
    equation 
      connect(p, R.p);
      connect(R.n, S.p);
      connect(n1, S.n1);
      connect(n2, S.n2);
      connect(control, S.control);
    end RealSwitch;

--------------

|image11| `Modelica.Electrical.Analog.Examples.Utilities <Modelica_Electrical_Analog_Examples_Utilities.html#Modelica.Electrical.Analog.Examples.Utilities>`_.Transistor
------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Transistor with resistance an capacitance**

.. figure:: Modelica.Electrical.Analog.Examples.Utilities.TransistorD.png
   :align: center
   :alt: Modelica.Electrical.Analog.Examples.Utilities.Transistor

   Modelica.Electrical.Analog.Examples.Utilities.Transistor

Information
~~~~~~~~~~~

::

Since the simple bipolar transistor model does not have base or
collector resistances both are added in this component. Additionally, a
capacity is added to the base pin. See the schematic for more detailes.
In such a way the transistor model can be enhanced to become more
common.

::

Connectors
~~~~~~~~~~

+-------------------------------------------------------------------------------------------------+--------+---------------+
| Type                                                                                            | Name   | Description   |
+=================================================================================================+========+===============+
| `Pin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.Pin>`_   | c      |               |
+-------------------------------------------------------------------------------------------------+--------+---------------+
| `Pin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.Pin>`_   | b      |               |
+-------------------------------------------------------------------------------------------------+--------+---------------+
| `Pin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.Pin>`_   | e      |               |
+-------------------------------------------------------------------------------------------------+--------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Transistor "Transistor with resistance an capacitance"

      Basic.Resistor rtb(R=0.05);
      Basic.Resistor rtc(R=0.1);
      Basic.Capacitor ct(C=1e-10);
      Semiconductors.NPN Tr(
        Bf=50,
        Br=0.1,
        Is=1e-16,
        Vak=0.02,
        Tauf=0.12e-9,
        Taur=5e-9,
        Ccs=1e-12,
        Cje=0.4e-12,
        Cjc=0.5e-12,
        Phie=0.8,
        Me=0.4,
        Phic=0.8,
        Mc=0.333,
        Gbc=1e-15,
        Gbe=1e-15,
        Vt=0.02585);
      Basic.Ground Ground1;
      Interfaces.Pin c;
      Interfaces.Pin b;
      Interfaces.Pin e;
    equation 
      connect(rtb.n, Tr.B);
      connect(rtb.n, ct.p);
      connect(ct.n, Ground1.p);
      connect(Tr.C, rtc.p);
      connect(rtc.n, c);
      connect(b, rtb.p);
      connect(Tr.E, e);
    end Transistor;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:28:06
2010.

.. |Modelica.Electrical.Analog.Examples.Utilities.Nand| image:: Modelica.Electrical.Analog.Examples.Utilities.NandS.png
.. |Modelica.Electrical.Analog.Examples.Utilities.NonlinearResistor| image:: Modelica.Electrical.Analog.Examples.Utilities.NonlinearResistorS.png
.. |Modelica.Electrical.Analog.Examples.Utilities.RealSwitch| image:: Modelica.Electrical.Analog.Examples.Utilities.RealSwitchS.png
.. |Modelica.Electrical.Analog.Examples.Utilities.Transistor| image:: Modelica.Electrical.Analog.Examples.Utilities.TransistorS.png
.. |image4| image:: Modelica.Electrical.Analog.Examples.Utilities.NandS.png
.. |image5| image:: Modelica.Electrical.Analog.Examples.Utilities.NonlinearResistorS.png
.. |image6| image:: Modelica.Electrical.Analog.Examples.Utilities.RealSwitchS.png
.. |image7| image:: Modelica.Electrical.Analog.Examples.Utilities.TransistorS.png
.. |image8| image:: Modelica.Electrical.Analog.Examples.Utilities.NandI.png
.. |image9| image:: Modelica.Electrical.Analog.Examples.Utilities.NonlinearResistorI.png
.. |image10| image:: Modelica.Electrical.Analog.Examples.Utilities.RealSwitchI.png
.. |image11| image:: Modelica.Electrical.Analog.Examples.Utilities.TransistorI.png
