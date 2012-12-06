=================================
Modelica.Electrical.Digital.Gates
=================================

`Modelica.Electrical.Digital <Modelica_Electrical_Digital.html#Modelica.Electrical.Digital>`_.Gates
---------------------------------------------------------------------------------------------------

**Logic gates including delays**

Information
~~~~~~~~~~~

::

Gates contains the basic gates according to standard logic as they are
provided in the Basic package. Additionally they contain an
InertialDelaySensitive component They are composed graphically, not
using any equations.

::

Extends from
`Modelica.Icons.Package <Modelica_Icons_Package.html#Modelica.Icons.Package>`_
(Icon for standard packages).

Package Content
~~~~~~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------+
| Name                                                                                                                                           | Description                                                                 |
+================================================================================================================================================+=============================================================================+
| |image8| `InvGate <Modelica_Electrical_Digital_Gates.html#Modelica.Electrical.Digital.Gates.InvGate>`_                                         | InvGate with 1 input value, composed by Not and sensitive intertial delay   |
+------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------+
| |image9| `AndGate <Modelica_Electrical_Digital_Gates.html#Modelica.Electrical.Digital.Gates.AndGate>`_                                         | AndGate with multiple input                                                 |
+------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------+
| |image10| `NandGate <Modelica_Electrical_Digital_Gates.html#Modelica.Electrical.Digital.Gates.NandGate>`_                                      | NandGate with multiple input                                                |
+------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------+
| |image11| `OrGate <Modelica_Electrical_Digital_Gates.html#Modelica.Electrical.Digital.Gates.OrGate>`_                                          | OrGate with multiple input                                                  |
+------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------+
| |image12| `NorGate <Modelica_Electrical_Digital_Gates.html#Modelica.Electrical.Digital.Gates.NorGate>`_                                        | NorGate with multiple input                                                 |
+------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------+
| |image13| `XorGate <Modelica_Electrical_Digital_Gates.html#Modelica.Electrical.Digital.Gates.XorGate>`_                                        | XorGate with multiple input                                                 |
+------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------+
| |image14| `XnorGate <Modelica_Electrical_Digital_Gates.html#Modelica.Electrical.Digital.Gates.XnorGate>`_                                      | XnorGate with multiple input                                                |
+------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------+
| |image15| `BufGate <Modelica_Electrical_Digital_Gates.html#Modelica.Electrical.Digital.Gates.BufGate>`_                                        | BufGate with 1 input value, composed by Not and sensitive intertial delay   |
+------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------+

--------------

|image16| `Modelica.Electrical.Digital.Gates <Modelica_Electrical_Digital_Gates.html#Modelica.Electrical.Digital.Gates>`_.InvGate
---------------------------------------------------------------------------------------------------------------------------------

**InvGate with 1 input value, composed by Not and sensitive intertial
delay**

.. figure:: Modelica.Electrical.Digital.Gates.InvGateD.png
   :align: center
   :alt: Modelica.Electrical.Digital.Gates.InvGate

   Modelica.Electrical.Digital.Gates.InvGate

Information
~~~~~~~~~~~

::

The InvGate model has a single valued input, and a single valued output.
It is composed by a Basic Not and an InertialDelaySensitive. Its
parameters are the delay parameters (rise and fall intertial delay time,
and intitial value).

::

Extends from
`D.Delay.DelayParams <Modelica_Electrical_Digital_Delay.html#Modelica.Electrical.Digital.Delay.DelayParams>`_
(Definition of delay parameters),
`D.Interfaces.SISO <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.SISO>`_
(Single input, single output).

Parameters
~~~~~~~~~~

+-------------------------------------------------------------------------------------------------------+--------+-----------+---------------------------+
| Type                                                                                                  | Name   | Default   | Description               |
+=======================================================================================================+========+===========+===========================+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_                                                 | tLH    |           | Rise inertial delay [s]   |
+-------------------------------------------------------------------------------------------------------+--------+-----------+---------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_                                                 | tHL    |           | Fall inertial delay [s]   |
+-------------------------------------------------------------------------------------------------------+--------+-----------+---------------------------+
| `Logic <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.Logic>`_   | y0     | L.'U'     | Initial value of output   |
+-------------------------------------------------------------------------------------------------------+--------+-----------+---------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------+--------+--------------------------------------+
| Type                                                                                                                         | Name   | Description                          |
+==============================================================================================================================+========+======================================+
| input `DigitalInput <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.DigitalInput>`_      | x      | Connector of Digital input signal    |
+------------------------------------------------------------------------------------------------------------------------------+--------+--------------------------------------+
| output `DigitalOutput <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.DigitalOutput>`_   | y      | Connector of Digital output signal   |
+------------------------------------------------------------------------------------------------------------------------------+--------+--------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model InvGate 
      "InvGate with 1 input value, composed by Not and sensitive intertial delay"
      import D = Modelica.Electrical.Digital;
      extends D.Delay.DelayParams;
      extends D.Interfaces.SISO;
      D.Basic.Not G1;
      D.Delay.InertialDelaySensitive G2(tLH=tLH, tHL=tHL);
    equation 
      connect(G2.y, y);
      connect(G1.x, x);
      connect(G1.y, G2.x);
    end InvGate;

--------------

|image17| `Modelica.Electrical.Digital.Gates <Modelica_Electrical_Digital_Gates.html#Modelica.Electrical.Digital.Gates>`_.AndGate
---------------------------------------------------------------------------------------------------------------------------------

**AndGate with multiple input**

.. figure:: Modelica.Electrical.Digital.Gates.AndGateD.png
   :align: center
   :alt: Modelica.Electrical.Digital.Gates.AndGate

   Modelica.Electrical.Digital.Gates.AndGate

Information
~~~~~~~~~~~

::

The AndGate model has a multiple valued (n) input vector, and a single
valued output. It is composed by a Basic And and an
InertialDelaySensitive. Its parameters are the delay parameters (rise
and fall intertial delay time, and intitial value).

::

Extends from
`D.Interfaces.MISO <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.MISO>`_
(Multiple input - single output),
`D.Delay.DelayParams <Modelica_Electrical_Digital_Delay.html#Modelica.Electrical.Digital.Delay.DelayParams>`_
(Definition of delay parameters).

Parameters
~~~~~~~~~~

+-------------------------------------------------------------------------------------------------------+--------+-----------+---------------------------+
| Type                                                                                                  | Name   | Default   | Description               |
+=======================================================================================================+========+===========+===========================+
| Integer                                                                                               | n      | 2         | Number of inputs          |
+-------------------------------------------------------------------------------------------------------+--------+-----------+---------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_                                                 | tLH    |           | Rise inertial delay [s]   |
+-------------------------------------------------------------------------------------------------------+--------+-----------+---------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_                                                 | tHL    |           | Fall inertial delay [s]   |
+-------------------------------------------------------------------------------------------------------+--------+-----------+---------------------------+
| `Logic <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.Logic>`_   | y0     | L.'U'     | Initial value of output   |
+-------------------------------------------------------------------------------------------------------+--------+-----------+---------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------+--------+--------------------------------------------+
| Type                                                                                                                         | Name   | Description                                |
+==============================================================================================================================+========+============================================+
| input `DigitalInput <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.DigitalInput>`_      | x[n]   | Connector of Digital input signal vector   |
+------------------------------------------------------------------------------------------------------------------------------+--------+--------------------------------------------+
| output `DigitalOutput <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.DigitalOutput>`_   | y      | Connector of Digital output signal         |
+------------------------------------------------------------------------------------------------------------------------------+--------+--------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model AndGate "AndGate with multiple input"
      import D = Modelica.Electrical.Digital;
      extends D.Interfaces.MISO;
      extends D.Delay.DelayParams;
      D.Basic.And G1(final n=n);
      D.Delay.InertialDelaySensitive G2(
        tLH=tLH,
        tHL=tHL,
        y0=y0);
    equation 
      connect(x, G1.x);
      connect(y, G2.y);
      connect(G1.y, G2.x);
    end AndGate;

--------------

|image18| `Modelica.Electrical.Digital.Gates <Modelica_Electrical_Digital_Gates.html#Modelica.Electrical.Digital.Gates>`_.NandGate
----------------------------------------------------------------------------------------------------------------------------------

**NandGate with multiple input**

.. figure:: Modelica.Electrical.Digital.Gates.NandGateD.png
   :align: center
   :alt: Modelica.Electrical.Digital.Gates.NandGate

   Modelica.Electrical.Digital.Gates.NandGate

Information
~~~~~~~~~~~

::

The NandGate model has a multiple valued (n) input vector, and a single
valued output. It is composed by a Basic Nand and an
InertialDelaySensitive. Its parameters are the delay parameters (rise
and fall intertial delay time, and intitial value).

::

Extends from
`D.Delay.DelayParams <Modelica_Electrical_Digital_Delay.html#Modelica.Electrical.Digital.Delay.DelayParams>`_
(Definition of delay parameters),
`D.Interfaces.MISO <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.MISO>`_
(Multiple input - single output).

Parameters
~~~~~~~~~~

+-------------------------------------------------------------------------------------------------------+--------+-----------+---------------------------+
| Type                                                                                                  | Name   | Default   | Description               |
+=======================================================================================================+========+===========+===========================+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_                                                 | tLH    |           | Rise inertial delay [s]   |
+-------------------------------------------------------------------------------------------------------+--------+-----------+---------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_                                                 | tHL    |           | Fall inertial delay [s]   |
+-------------------------------------------------------------------------------------------------------+--------+-----------+---------------------------+
| `Logic <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.Logic>`_   | y0     | L.'U'     | Initial value of output   |
+-------------------------------------------------------------------------------------------------------+--------+-----------+---------------------------+
| Integer                                                                                               | n      | 2         | Number of inputs          |
+-------------------------------------------------------------------------------------------------------+--------+-----------+---------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------+--------+--------------------------------------------+
| Type                                                                                                                         | Name   | Description                                |
+==============================================================================================================================+========+============================================+
| input `DigitalInput <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.DigitalInput>`_      | x[n]   | Connector of Digital input signal vector   |
+------------------------------------------------------------------------------------------------------------------------------+--------+--------------------------------------------+
| output `DigitalOutput <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.DigitalOutput>`_   | y      | Connector of Digital output signal         |
+------------------------------------------------------------------------------------------------------------------------------+--------+--------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model NandGate "NandGate with multiple input"
      import D = Modelica.Electrical.Digital;
      extends D.Delay.DelayParams;
      extends D.Interfaces.MISO;
      D.Basic.Nand G1(final n=n);
      D.Delay.InertialDelaySensitive G2(
        tLH=tLH,
        tHL=tHL,
        y0=y0);
    equation 
      connect(x, G1.x);
      connect(G1.y, G2.x);
      connect(G2.y, y);
    end NandGate;

--------------

|image19| `Modelica.Electrical.Digital.Gates <Modelica_Electrical_Digital_Gates.html#Modelica.Electrical.Digital.Gates>`_.OrGate
--------------------------------------------------------------------------------------------------------------------------------

**OrGate with multiple input**

.. figure:: Modelica.Electrical.Digital.Gates.OrGateD.png
   :align: center
   :alt: Modelica.Electrical.Digital.Gates.OrGate

   Modelica.Electrical.Digital.Gates.OrGate

Information
~~~~~~~~~~~

::

The OrGate model has a multiple valued (n) input vector, and a single
valued output. It is composed by a Basic Or and an
InertialDelaySensitive. Its parameters are the delay parameters (rise
and fall intertial delay time, and intitial value).

::

Extends from
`D.Delay.DelayParams <Modelica_Electrical_Digital_Delay.html#Modelica.Electrical.Digital.Delay.DelayParams>`_
(Definition of delay parameters),
`D.Interfaces.MISO <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.MISO>`_
(Multiple input - single output).

Parameters
~~~~~~~~~~

+-------------------------------------------------------------------------------------------------------+--------+-----------+---------------------------+
| Type                                                                                                  | Name   | Default   | Description               |
+=======================================================================================================+========+===========+===========================+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_                                                 | tLH    |           | Rise inertial delay [s]   |
+-------------------------------------------------------------------------------------------------------+--------+-----------+---------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_                                                 | tHL    |           | Fall inertial delay [s]   |
+-------------------------------------------------------------------------------------------------------+--------+-----------+---------------------------+
| `Logic <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.Logic>`_   | y0     | L.'U'     | Initial value of output   |
+-------------------------------------------------------------------------------------------------------+--------+-----------+---------------------------+
| Integer                                                                                               | n      | 2         | Number of inputs          |
+-------------------------------------------------------------------------------------------------------+--------+-----------+---------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------+--------+--------------------------------------------+
| Type                                                                                                                         | Name   | Description                                |
+==============================================================================================================================+========+============================================+
| input `DigitalInput <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.DigitalInput>`_      | x[n]   | Connector of Digital input signal vector   |
+------------------------------------------------------------------------------------------------------------------------------+--------+--------------------------------------------+
| output `DigitalOutput <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.DigitalOutput>`_   | y      | Connector of Digital output signal         |
+------------------------------------------------------------------------------------------------------------------------------+--------+--------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model OrGate "OrGate with multiple input"
      import D = Modelica.Electrical.Digital;
      extends D.Delay.DelayParams;
      extends D.Interfaces.MISO;
      D.Basic.Or G1(final n=n);
      D.Delay.InertialDelaySensitive G2(
        tLH=tLH,
        tHL=tHL,
        y0=y0);
    equation 
      connect(G1.y, G2.x);
      connect(x,G1. x);
      connect(y, G2.y);
    end OrGate;

--------------

|image20| `Modelica.Electrical.Digital.Gates <Modelica_Electrical_Digital_Gates.html#Modelica.Electrical.Digital.Gates>`_.NorGate
---------------------------------------------------------------------------------------------------------------------------------

**NorGate with multiple input**

.. figure:: Modelica.Electrical.Digital.Gates.NorGateD.png
   :align: center
   :alt: Modelica.Electrical.Digital.Gates.NorGate

   Modelica.Electrical.Digital.Gates.NorGate

Information
~~~~~~~~~~~

::

The NorGate model has a multiple valued (n) input vector, and a single
valued output. It is composed by a Basic Nor and an
InertialDelaySensitive. Its parameters are the delay parameters (rise
and fall intertial delay time, and intitial value).

::

Extends from
`D.Delay.DelayParams <Modelica_Electrical_Digital_Delay.html#Modelica.Electrical.Digital.Delay.DelayParams>`_
(Definition of delay parameters),
`D.Interfaces.MISO <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.MISO>`_
(Multiple input - single output).

Parameters
~~~~~~~~~~

+-------------------------------------------------------------------------------------------------------+--------+-----------+---------------------------+
| Type                                                                                                  | Name   | Default   | Description               |
+=======================================================================================================+========+===========+===========================+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_                                                 | tLH    |           | Rise inertial delay [s]   |
+-------------------------------------------------------------------------------------------------------+--------+-----------+---------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_                                                 | tHL    |           | Fall inertial delay [s]   |
+-------------------------------------------------------------------------------------------------------+--------+-----------+---------------------------+
| `Logic <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.Logic>`_   | y0     | L.'U'     | Initial value of output   |
+-------------------------------------------------------------------------------------------------------+--------+-----------+---------------------------+
| Integer                                                                                               | n      | 2         | Number of inputs          |
+-------------------------------------------------------------------------------------------------------+--------+-----------+---------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------+--------+--------------------------------------------+
| Type                                                                                                                         | Name   | Description                                |
+==============================================================================================================================+========+============================================+
| input `DigitalInput <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.DigitalInput>`_      | x[n]   | Connector of Digital input signal vector   |
+------------------------------------------------------------------------------------------------------------------------------+--------+--------------------------------------------+
| output `DigitalOutput <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.DigitalOutput>`_   | y      | Connector of Digital output signal         |
+------------------------------------------------------------------------------------------------------------------------------+--------+--------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model NorGate "NorGate with multiple input"
      import D = Modelica.Electrical.Digital;
      extends D.Delay.DelayParams;
      extends D.Interfaces.MISO;
      D.Basic.Nor G1(final n=n);
      D.Delay.InertialDelaySensitive G2(
        tLH=tLH,
        tHL=tHL,
        y0=y0);
    equation 
      connect(G1.y, G2.x);
      connect(x, G1.x);
      connect(y, G2.y);
    end NorGate;

--------------

|image21| `Modelica.Electrical.Digital.Gates <Modelica_Electrical_Digital_Gates.html#Modelica.Electrical.Digital.Gates>`_.XorGate
---------------------------------------------------------------------------------------------------------------------------------

**XorGate with multiple input**

.. figure:: Modelica.Electrical.Digital.Gates.XorGateD.png
   :align: center
   :alt: Modelica.Electrical.Digital.Gates.XorGate

   Modelica.Electrical.Digital.Gates.XorGate

Information
~~~~~~~~~~~

::

The XorGate model has a multiple valued (n) input vector, and a single
valued output. It is composed by a Basic Xor and an
InertialDelaySensitive. Its parameters are the delay parameters (rise
and fall intertial delay time, and intitial value).

::

Extends from
`D.Delay.DelayParams <Modelica_Electrical_Digital_Delay.html#Modelica.Electrical.Digital.Delay.DelayParams>`_
(Definition of delay parameters),
`D.Interfaces.MISO <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.MISO>`_
(Multiple input - single output).

Parameters
~~~~~~~~~~

+-------------------------------------------------------------------------------------------------------+--------+-----------+---------------------------+
| Type                                                                                                  | Name   | Default   | Description               |
+=======================================================================================================+========+===========+===========================+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_                                                 | tLH    |           | Rise inertial delay [s]   |
+-------------------------------------------------------------------------------------------------------+--------+-----------+---------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_                                                 | tHL    |           | Fall inertial delay [s]   |
+-------------------------------------------------------------------------------------------------------+--------+-----------+---------------------------+
| `Logic <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.Logic>`_   | y0     | L.'U'     | Initial value of output   |
+-------------------------------------------------------------------------------------------------------+--------+-----------+---------------------------+
| Integer                                                                                               | n      | 2         | Number of inputs          |
+-------------------------------------------------------------------------------------------------------+--------+-----------+---------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------+--------+--------------------------------------------+
| Type                                                                                                                         | Name   | Description                                |
+==============================================================================================================================+========+============================================+
| input `DigitalInput <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.DigitalInput>`_      | x[n]   | Connector of Digital input signal vector   |
+------------------------------------------------------------------------------------------------------------------------------+--------+--------------------------------------------+
| output `DigitalOutput <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.DigitalOutput>`_   | y      | Connector of Digital output signal         |
+------------------------------------------------------------------------------------------------------------------------------+--------+--------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model XorGate "XorGate with multiple input"
      import D = Modelica.Electrical.Digital;
      extends D.Delay.DelayParams;
      extends D.Interfaces.MISO;
      D.Basic.Xor G1(final n=n);
      D.Delay.InertialDelaySensitive G2(
        tLH=tLH,
        tHL=tHL,
        y0=y0);
    equation 
      connect(x, G1.x);
      connect(G1.y, G2.x);
      connect(G2.y, y);
    end XorGate;

--------------

|image22| `Modelica.Electrical.Digital.Gates <Modelica_Electrical_Digital_Gates.html#Modelica.Electrical.Digital.Gates>`_.XnorGate
----------------------------------------------------------------------------------------------------------------------------------

**XnorGate with multiple input**

.. figure:: Modelica.Electrical.Digital.Gates.XnorGateD.png
   :align: center
   :alt: Modelica.Electrical.Digital.Gates.XnorGate

   Modelica.Electrical.Digital.Gates.XnorGate

Information
~~~~~~~~~~~

::

The XnorGate model has a multiple valued (n) input vector, and a single
valued output. It is composed by a Basic Xnor and an
InertialDelaySensitive. Its parameters are the delay parameters (rise
and fall intertial delay time, and intitial value).

::

Extends from
`D.Delay.DelayParams <Modelica_Electrical_Digital_Delay.html#Modelica.Electrical.Digital.Delay.DelayParams>`_
(Definition of delay parameters),
`D.Interfaces.MISO <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.MISO>`_
(Multiple input - single output).

Parameters
~~~~~~~~~~

+-------------------------------------------------------------------------------------------------------+--------+-----------+---------------------------+
| Type                                                                                                  | Name   | Default   | Description               |
+=======================================================================================================+========+===========+===========================+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_                                                 | tLH    |           | Rise inertial delay [s]   |
+-------------------------------------------------------------------------------------------------------+--------+-----------+---------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_                                                 | tHL    |           | Fall inertial delay [s]   |
+-------------------------------------------------------------------------------------------------------+--------+-----------+---------------------------+
| `Logic <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.Logic>`_   | y0     | L.'U'     | Initial value of output   |
+-------------------------------------------------------------------------------------------------------+--------+-----------+---------------------------+
| Integer                                                                                               | n      | 2         | Number of inputs          |
+-------------------------------------------------------------------------------------------------------+--------+-----------+---------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------+--------+--------------------------------------------+
| Type                                                                                                                         | Name   | Description                                |
+==============================================================================================================================+========+============================================+
| input `DigitalInput <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.DigitalInput>`_      | x[n]   | Connector of Digital input signal vector   |
+------------------------------------------------------------------------------------------------------------------------------+--------+--------------------------------------------+
| output `DigitalOutput <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.DigitalOutput>`_   | y      | Connector of Digital output signal         |
+------------------------------------------------------------------------------------------------------------------------------+--------+--------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model XnorGate "XnorGate with multiple input"
      import D = Modelica.Electrical.Digital;
      extends D.Delay.DelayParams;
      extends D.Interfaces.MISO;
      D.Basic.Xnor G1(final n=n);
      D.Delay.InertialDelaySensitive G2(
        tLH=tLH,
        tHL=tHL,
        y0=y0);
    equation 
      connect(x, G1.x);
      connect(G2.y, y);
      connect(G1.y, G2.x);
    end XnorGate;

--------------

|image23| `Modelica.Electrical.Digital.Gates <Modelica_Electrical_Digital_Gates.html#Modelica.Electrical.Digital.Gates>`_.BufGate
---------------------------------------------------------------------------------------------------------------------------------

**BufGate with 1 input value, composed by Not and sensitive intertial
delay**

.. figure:: Modelica.Electrical.Digital.Gates.BufGateD.png
   :align: center
   :alt: Modelica.Electrical.Digital.Gates.BufGate

   Modelica.Electrical.Digital.Gates.BufGate

Information
~~~~~~~~~~~

::

The BufGate model has a single valued input, and a single valued output.
It consists of an InertialDelaySensitive only. Its parameters are the
delay parameters (rise and fall intertial delay time, and intitial
value).

::

Extends from
`D.Delay.DelayParams <Modelica_Electrical_Digital_Delay.html#Modelica.Electrical.Digital.Delay.DelayParams>`_
(Definition of delay parameters),
`D.Interfaces.SISO <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.SISO>`_
(Single input, single output).

Parameters
~~~~~~~~~~

+-------------------------------------------------------------------------------------------------------+--------+-----------+---------------------------+
| Type                                                                                                  | Name   | Default   | Description               |
+=======================================================================================================+========+===========+===========================+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_                                                 | tLH    |           | Rise inertial delay [s]   |
+-------------------------------------------------------------------------------------------------------+--------+-----------+---------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_                                                 | tHL    |           | Fall inertial delay [s]   |
+-------------------------------------------------------------------------------------------------------+--------+-----------+---------------------------+
| `Logic <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.Logic>`_   | y0     | L.'U'     | Initial value of output   |
+-------------------------------------------------------------------------------------------------------+--------+-----------+---------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------+--------+--------------------------------------+
| Type                                                                                                                         | Name   | Description                          |
+==============================================================================================================================+========+======================================+
| input `DigitalInput <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.DigitalInput>`_      | x      | Connector of Digital input signal    |
+------------------------------------------------------------------------------------------------------------------------------+--------+--------------------------------------+
| output `DigitalOutput <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.DigitalOutput>`_   | y      | Connector of Digital output signal   |
+------------------------------------------------------------------------------------------------------------------------------+--------+--------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model BufGate 
      "BufGate with 1 input value, composed by Not and sensitive intertial delay"
      import D = Modelica.Electrical.Digital;
      extends D.Delay.DelayParams;
      extends D.Interfaces.SISO;
      D.Delay.InertialDelaySensitive G1(tLH=tLH, tHL=tHL);
    equation 
      connect(G1.y, y);
      connect(G1.x, x);
    end BufGate;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:28:29
2010.

.. |Modelica.Electrical.Digital.Gates.InvGate| image:: Modelica.Electrical.Digital.Gates.InvGateS.png
.. |Modelica.Electrical.Digital.Gates.AndGate| image:: Modelica.Electrical.Digital.Gates.AndGateS.png
.. |Modelica.Electrical.Digital.Gates.NandGate| image:: Modelica.Electrical.Digital.Gates.NandGateS.png
.. |Modelica.Electrical.Digital.Gates.OrGate| image:: Modelica.Electrical.Digital.Gates.OrGateS.png
.. |Modelica.Electrical.Digital.Gates.NorGate| image:: Modelica.Electrical.Digital.Gates.NorGateS.png
.. |Modelica.Electrical.Digital.Gates.XorGate| image:: Modelica.Electrical.Digital.Gates.XorGateS.png
.. |Modelica.Electrical.Digital.Gates.XnorGate| image:: Modelica.Electrical.Digital.Gates.XnorGateS.png
.. |Modelica.Electrical.Digital.Gates.BufGate| image:: Modelica.Electrical.Digital.Gates.BufGateS.png
.. |image8| image:: Modelica.Electrical.Digital.Gates.InvGateS.png
.. |image9| image:: Modelica.Electrical.Digital.Gates.AndGateS.png
.. |image10| image:: Modelica.Electrical.Digital.Gates.NandGateS.png
.. |image11| image:: Modelica.Electrical.Digital.Gates.OrGateS.png
.. |image12| image:: Modelica.Electrical.Digital.Gates.NorGateS.png
.. |image13| image:: Modelica.Electrical.Digital.Gates.XorGateS.png
.. |image14| image:: Modelica.Electrical.Digital.Gates.XnorGateS.png
.. |image15| image:: Modelica.Electrical.Digital.Gates.BufGateS.png
.. |image16| image:: Modelica.Electrical.Digital.Gates.InvGateI.png
.. |image17| image:: Modelica.Electrical.Digital.Gates.AndGateI.png
.. |image18| image:: Modelica.Electrical.Digital.Gates.NandGateI.png
.. |image19| image:: Modelica.Electrical.Digital.Gates.OrGateI.png
.. |image20| image:: Modelica.Electrical.Digital.Gates.NorGateI.png
.. |image21| image:: Modelica.Electrical.Digital.Gates.XorGateI.png
.. |image22| image:: Modelica.Electrical.Digital.Gates.XnorGateI.png
.. |image23| image:: Modelica.Electrical.Digital.Gates.BufGateI.png
