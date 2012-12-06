================================
Modelica.Electrical.Spice3.Basic
================================

`Modelica.Electrical.Spice3 <Modelica_Electrical_Spice3.html#Modelica.Electrical.Spice3>`_.Basic
------------------------------------------------------------------------------------------------

**Basic electronical components**

Information
~~~~~~~~~~~

::

This Package contains the basic components of the SPICE3 models. The
first letter of the

name of the component shows the SPICE name, e.g., **R**\_Resistor: **R**
is the SPICE-name of the component

resistor which is used in SPICE-Netlists.

::

Extends from
`Modelica.Icons.Package <Modelica_Icons_Package.html#Modelica.Icons.Package>`_
(Icon for standard packages).

Package Content
~~~~~~~~~~~~~~~

+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------+
| Name                                                                                                                                                   | Description                                |
+========================================================================================================================================================+============================================+
| |image8| `Ground <Modelica_Electrical_Spice3_Basic.html#Modelica.Electrical.Spice3.Basic.Ground>`_                                                     | Ground node                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------+
| |image9| `R\_Resistor <Modelica_Electrical_Spice3_Basic.html#Modelica.Electrical.Spice3.Basic.R_Resistor>`_                                            | Ideal linear electrical resistor           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------+
| |image10| `C\_Capacitor <Modelica_Electrical_Spice3_Basic.html#Modelica.Electrical.Spice3.Basic.C_Capacitor>`_                                         | Ideal linear electrical capacitor          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------+
| |image11| `L\_Inductor <Modelica_Electrical_Spice3_Basic.html#Modelica.Electrical.Spice3.Basic.L_Inductor>`_                                           | Ideal linear electrical inductor           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------+
| |image12| `E\_VCV <Modelica_Electrical_Spice3_Basic.html#Modelica.Electrical.Spice3.Basic.E_VCV>`_                                                     | Linear voltage-controlled voltage source   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------+
| |image13| `G\_VCC <Modelica_Electrical_Spice3_Basic.html#Modelica.Electrical.Spice3.Basic.G_VCC>`_                                                     | Linear voltage-controlled current source   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------+
| |image14| `H\_CCV <Modelica_Electrical_Spice3_Basic.html#Modelica.Electrical.Spice3.Basic.H_CCV>`_                                                     | Linear current-controlled voltage source   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------+
| |image15| `F\_CCC <Modelica_Electrical_Spice3_Basic.html#Modelica.Electrical.Spice3.Basic.F_CCC>`_                                                     | Linear current-controlled current source   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------+

--------------

|image16| `Modelica.Electrical.Spice3.Basic <Modelica_Electrical_Spice3_Basic.html#Modelica.Electrical.Spice3.Basic>`_.Ground
-----------------------------------------------------------------------------------------------------------------------------

**Ground node**

.. figure:: Modelica.Electrical.Spice3.Basic.GroundD.png
   :align: center
   :alt: Modelica.Electrical.Spice3.Basic.Ground

   Modelica.Electrical.Spice3.Basic.Ground

Information
~~~~~~~~~~~

::

Ground of an electrical circuit. The potential at the ground node is
zero. Every electrical circuit has to contain at least one ground
object.

SPICE does not have an element for the ground node (mass). In SPICE
netlists the ground is specified by the node number 0. This Modelica
SPICE library demands to describe the ground node by this gound element.

::

Connectors
~~~~~~~~~~

+-------------------------------------------------------------------------------------------------+--------+---------------+
| Type                                                                                            | Name   | Description   |
+=================================================================================================+========+===============+
| `Pin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.Pin>`_   | p      | Ground pin    |
+-------------------------------------------------------------------------------------------------+--------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Ground "Ground node"

      Modelica.Electrical.Analog.Interfaces.Pin p "Ground pin";
    equation 
      p.v = 0;
    end Ground;

--------------

|image17| `Modelica.Electrical.Spice3.Basic <Modelica_Electrical_Spice3_Basic.html#Modelica.Electrical.Spice3.Basic>`_.R\_Resistor
----------------------------------------------------------------------------------------------------------------------------------

**Ideal linear electrical resistor**

.. figure:: Modelica.Electrical.Spice3.Basic.R_ResistorD.png
   :align: center
   :alt: Modelica.Electrical.Spice3.Basic.R\_Resistor

   Modelica.Electrical.Spice3.Basic.R\_Resistor

Information
~~~~~~~~~~~

::

The linear resistor connects the branch voltage *v* with the branch
current *i* by *i\*R = v*. The Resistance *R* is allowed to be positive,
zero, or negative.

::

Extends from
`Modelica.Electrical.Analog.Interfaces.OnePort <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.OnePort>`_
(Component with two electrical pins p and n and current i from p to n).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------+--------+-----------+--------------------+
| Type                                                                | Name   | Default   | Description        |
+=====================================================================+========+===========+====================+
| `Resistance <Modelica_SIunits.html#Modelica.SIunits.Resistance>`_   | R      |           | Resistance [Ohm]   |
+---------------------------------------------------------------------+--------+-----------+--------------------+

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

    model R_Resistor "Ideal linear electrical resistor"
      extends Modelica.Electrical.Analog.Interfaces.OnePort;
      parameter SI.Resistance R(start=1000) "Resistance";
    equation 
      R*i = v;
    end R_Resistor;

--------------

|image18| `Modelica.Electrical.Spice3.Basic <Modelica_Electrical_Spice3_Basic.html#Modelica.Electrical.Spice3.Basic>`_.C\_Capacitor
-----------------------------------------------------------------------------------------------------------------------------------

**Ideal linear electrical capacitor**

.. figure:: Modelica.Electrical.Spice3.Basic.R_ResistorD.png
   :align: center
   :alt: Modelica.Electrical.Spice3.Basic.C\_Capacitor

   Modelica.Electrical.Spice3.Basic.C\_Capacitor

Information
~~~~~~~~~~~

::

The linear capacitor connects the branch voltage *v* with the branch
current *i* by *i = C \* dv/dt*. The Capacitance *C* is allowed to be
positive, zero, or negative.

::

Extends from
`Modelica.Electrical.Analog.Interfaces.OnePort <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.OnePort>`_
(Component with two electrical pins p and n and current i from p to n).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------+--------+-----------+--------------------------------------------------------------+
| Type                                                                  | Name   | Default   | Description                                                  |
+=======================================================================+========+===========+==============================================================+
| `Capacitance <Modelica_SIunits.html#Modelica.SIunits.Capacitance>`_   | C      |           | Capacitance [F]                                              |
+-----------------------------------------------------------------------+--------+-----------+--------------------------------------------------------------+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_           | IC     | 0         | Initial value [V]                                            |
+-----------------------------------------------------------------------+--------+-----------+--------------------------------------------------------------+
| Boolean                                                               | UIC    | false     | Use initial conditions: true, if initial condition is used   |
+-----------------------------------------------------------------------+--------+-----------+--------------------------------------------------------------+

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

    model C_Capacitor "Ideal linear electrical capacitor"
      extends Modelica.Electrical.Analog.Interfaces.OnePort;
      parameter SI.Capacitance C(start=0) "Capacitance";
      parameter SI.Voltage IC=0 "Initial value";
      parameter Boolean UIC=false 
        "Use initial conditions: true, if initial condition is used";
    protected 
      SI.Voltage vinternal(start=IC, fixed=UIC);
    equation 
        vinternal = p.v - n.v;
        i = C*der(vinternal);
    end C_Capacitor;

--------------

|image19| `Modelica.Electrical.Spice3.Basic <Modelica_Electrical_Spice3_Basic.html#Modelica.Electrical.Spice3.Basic>`_.L\_Inductor
----------------------------------------------------------------------------------------------------------------------------------

**Ideal linear electrical inductor**

.. figure:: Modelica.Electrical.Spice3.Basic.R_ResistorD.png
   :align: center
   :alt: Modelica.Electrical.Spice3.Basic.L\_Inductor

   Modelica.Electrical.Spice3.Basic.L\_Inductor

Information
~~~~~~~~~~~

::

The linear inductor connects the branch voltage *v* with the branch
current *i* by *v = L \* di/dt*. The inductance *L* is allowed to be
positive, zero, or negative.

::

Extends from
`Modelica.Electrical.Analog.Interfaces.OnePort <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.OnePort>`_
(Component with two electrical pins p and n and current i from p to n).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------+--------+-----------+--------------------------------------------------------------+
| Type                                                                | Name   | Default   | Description                                                  |
+=====================================================================+========+===========+==============================================================+
| `Inductance <Modelica_SIunits.html#Modelica.SIunits.Inductance>`_   | L      |           | Inductance [H]                                               |
+---------------------------------------------------------------------+--------+-----------+--------------------------------------------------------------+
| `Current <Modelica_SIunits.html#Modelica.SIunits.Current>`_         | IC     | 0         | Initial value [A]                                            |
+---------------------------------------------------------------------+--------+-----------+--------------------------------------------------------------+
| Boolean                                                             | UIC    | false     | Use initial conditions: true, if initial condition is used   |
+---------------------------------------------------------------------+--------+-----------+--------------------------------------------------------------+

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

    model L_Inductor "Ideal linear electrical inductor"
      extends Modelica.Electrical.Analog.Interfaces.OnePort;
      parameter SI.Inductance L(start=0) "Inductance";
      parameter SI.Current IC=0 "Initial value";
      parameter Boolean UIC=false 
        "Use initial conditions: true, if initial condition is used";
      SI.Current iinternal(start=IC, fixed=UIC);
    equation 
      iinternal = p.i;
      L*der(iinternal) = v;
    end L_Inductor;

--------------

|image20| `Modelica.Electrical.Spice3.Basic <Modelica_Electrical_Spice3_Basic.html#Modelica.Electrical.Spice3.Basic>`_.E\_VCV
-----------------------------------------------------------------------------------------------------------------------------

**Linear voltage-controlled voltage source**

.. figure:: Modelica.Electrical.Spice3.Basic.E_VCVD.png
   :align: center
   :alt: Modelica.Electrical.Spice3.Basic.E\_VCV

   Modelica.Electrical.Spice3.Basic.E\_VCV

Information
~~~~~~~~~~~

::

The linear voltage-controlled voltage source is a TwoPort. The right
port voltage at pin p2 (=p2.v) is controlled by the left port voltage at
pin p1 (=p1.v) via

::

        p2.v = p1.v * gain.

The left port current is zero. Any voltage gain can be chosen.

The corresponding SPICE description

::

        Ename N+ N- NC+ NC- VALUE

is translated to Modelica:

::

        Ename -> Spice3.Basic.E_VCV Ename
        (Ename is the name of the Modelica instance)
        N+ -> p2.v
        N- -> n2.v
        NC+ -> p1.v
        NC- -> n1.v
        VALUE -> gain

::

Extends from
`Interfaces.TwoPortControlledSources <Modelica_Electrical_Spice3_Interfaces.html#Modelica.Electrical.Spice3.Interfaces.TwoPortControlledSources>`_
(Component with two electrical ports, including current).

Parameters
~~~~~~~~~~

+--------+--------+-----------+----------------+
| Type   | Name   | Default   | Description    |
+========+========+===========+================+
| Real   | gain   |           | Voltage gain   |
+--------+--------+-----------+----------------+

Connectors
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------+--------+----------------------------------------+
| Type                                                                                                            | Name   | Description                            |
+=================================================================================================================+========+========================================+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_   | p1     | Positive pin of the controlling port   |
+-----------------------------------------------------------------------------------------------------------------+--------+----------------------------------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_   | n1     | Negative pin of the controlling port   |
+-----------------------------------------------------------------------------------------------------------------+--------+----------------------------------------+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_   | p2     | Positive pin of the controlled port    |
+-----------------------------------------------------------------------------------------------------------------+--------+----------------------------------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_   | n2     | Negative pin of the controlled port    |
+-----------------------------------------------------------------------------------------------------------------+--------+----------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model E_VCV "Linear voltage-controlled voltage source"
      extends Interfaces.TwoPortControlledSources;
      parameter Real gain(start=0) "Voltage gain";
    equation 
      v2 = v1*gain;
      i1 = 0;
    end E_VCV;

--------------

|image21| `Modelica.Electrical.Spice3.Basic <Modelica_Electrical_Spice3_Basic.html#Modelica.Electrical.Spice3.Basic>`_.G\_VCC
-----------------------------------------------------------------------------------------------------------------------------

**Linear voltage-controlled current source**

.. figure:: Modelica.Electrical.Spice3.Basic.E_VCVD.png
   :align: center
   :alt: Modelica.Electrical.Spice3.Basic.G\_VCC

   Modelica.Electrical.Spice3.Basic.G\_VCC

Information
~~~~~~~~~~~

::

The linear voltage-controlled current source is a TwoPort. The right
port current at pin p2 (=p2.i) is controlled by the left port voltage at
pin p1 (p1.v) via

::

        p2.i = p1.v * transConductance.

The left port current is zero. Any transConductance can be chosen.

The corresponding SPICE description

::

        Gname N+ N- NC+ NC- VALUE

is translated to Modelica:

::


        Gname -> Spice3.Basic.G_VCC Gname
        (Gname is the name of the Modelica instance)
        N+ -> p2.i
        N- -> n2.i
        NC+ -> p1 .v
        NC- -> n1.v
        VALUE -> transConductance

::

Extends from
`Interfaces.TwoPortControlledSources <Modelica_Electrical_Spice3_Interfaces.html#Modelica.Electrical.Spice3.Interfaces.TwoPortControlledSources>`_
(Component with two electrical ports, including current).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------+--------------------+-----------+------------------------+
| Type                                                                  | Name               | Default   | Description            |
+=======================================================================+====================+===========+========================+
| `Conductance <Modelica_SIunits.html#Modelica.SIunits.Conductance>`_   | transConductance   |           | Transconductance [S]   |
+-----------------------------------------------------------------------+--------------------+-----------+------------------------+

Connectors
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------+--------+----------------------------------------+
| Type                                                                                                            | Name   | Description                            |
+=================================================================================================================+========+========================================+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_   | p1     | Positive pin of the controlling port   |
+-----------------------------------------------------------------------------------------------------------------+--------+----------------------------------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_   | n1     | Negative pin of the controlling port   |
+-----------------------------------------------------------------------------------------------------------------+--------+----------------------------------------+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_   | p2     | Positive pin of the controlled port    |
+-----------------------------------------------------------------------------------------------------------------+--------+----------------------------------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_   | n2     | Negative pin of the controlled port    |
+-----------------------------------------------------------------------------------------------------------------+--------+----------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model G_VCC "Linear voltage-controlled current source"
      extends Interfaces.TwoPortControlledSources;
      parameter SI.Conductance transConductance(start=0) "Transconductance";
    equation 
      i2 = v1*transConductance;
      i1 = 0;
    end G_VCC;

--------------

|image22| `Modelica.Electrical.Spice3.Basic <Modelica_Electrical_Spice3_Basic.html#Modelica.Electrical.Spice3.Basic>`_.H\_CCV
-----------------------------------------------------------------------------------------------------------------------------

**Linear current-controlled voltage source**

.. figure:: Modelica.Electrical.Spice3.Basic.E_VCVD.png
   :align: center
   :alt: Modelica.Electrical.Spice3.Basic.H\_CCV

   Modelica.Electrical.Spice3.Basic.H\_CCV

Information
~~~~~~~~~~~

::

The linear current-controlled voltage source is a TwoPort. The "right"
port voltage at pin 2 (=p2.v) is controlled by the "left" port current
at pin p1(=p1.i) via

::

        p2.v = p1.i * transResistance.

The controlling port voltage is zero. Any transResistance can be chosen.

The corresponding SPICE description

::

        Hname N+ N- VNAM VALUE

is translated to Modelica:

::

        Hname -> Spice3.Basic.H_CCV Hname
        (Hname is the name of the Modelica instance)
        N+ -> p2.v
        N- -> n2.v  

The voltage source VNAM has the two nodes NV+ and NV-:

::

                       VNAM VN+ VN- VALUE_V

The current through VNAM hast to be led through the CCV.

Therefore VNAM has to be disconnected and an additional

node NV\_AD has to be added.

::

        NV_AD -> p1.i
        NV- -> n1.i

On this way the current, that flows through the voltage source VNAM,
flows through the CCV.

::

        VALUE -> transResistance 

::

Extends from
`Interfaces.TwoPortControlledSources <Modelica_Electrical_Spice3_Interfaces.html#Modelica.Electrical.Spice3.Interfaces.TwoPortControlledSources>`_
(Component with two electrical ports, including current).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------+-------------------+-----------+-------------------------+
| Type                                                                | Name              | Default   | Description             |
+=====================================================================+===================+===========+=========================+
| `Resistance <Modelica_SIunits.html#Modelica.SIunits.Resistance>`_   | transResistance   |           | Transresistance [Ohm]   |
+---------------------------------------------------------------------+-------------------+-----------+-------------------------+

Connectors
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------+--------+----------------------------------------+
| Type                                                                                                            | Name   | Description                            |
+=================================================================================================================+========+========================================+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_   | p1     | Positive pin of the controlling port   |
+-----------------------------------------------------------------------------------------------------------------+--------+----------------------------------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_   | n1     | Negative pin of the controlling port   |
+-----------------------------------------------------------------------------------------------------------------+--------+----------------------------------------+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_   | p2     | Positive pin of the controlled port    |
+-----------------------------------------------------------------------------------------------------------------+--------+----------------------------------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_   | n2     | Negative pin of the controlled port    |
+-----------------------------------------------------------------------------------------------------------------+--------+----------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model H_CCV "Linear current-controlled voltage source"
      extends Interfaces.TwoPortControlledSources;

      parameter SI.Resistance transResistance(start=0) "Transresistance";
    equation 
      v2 = i1*transResistance;
      v1 = 0;
    end H_CCV;

--------------

|image23| `Modelica.Electrical.Spice3.Basic <Modelica_Electrical_Spice3_Basic.html#Modelica.Electrical.Spice3.Basic>`_.F\_CCC
-----------------------------------------------------------------------------------------------------------------------------

**Linear current-controlled current source**

.. figure:: Modelica.Electrical.Spice3.Basic.E_VCVD.png
   :align: center
   :alt: Modelica.Electrical.Spice3.Basic.F\_CCC

   Modelica.Electrical.Spice3.Basic.F\_CCC

Information
~~~~~~~~~~~

::

The linear current-controlled current source is a TwoPort. The "right"
port current at pin 2 (=p2.i) is controlled by the "left" port current
at pin p1(=p1.i) via

::

        p2.i = p1.i * gain.

The controlling port voltage is zero. Any current gain can be chosen.

The corresponding SPICE description

::

        Fname N+ N- VNAM VALUE

is translated to Modelica:

::

        Fname -> Spice3.Basic.F_CCC Fname
        (Fname is the name of the Modelica instance)
        N+ -> p2.i
        N- -> n2.i  

The voltage source VNAM has the two nodes NV+ and NV-:

::

                       VNAM NV+ NV- VALUE_V

The current through VNAM hast to be led through the CCC.

Therefore VNAM has to be disconnected and an additional

node NV\_AD has to be added.

::

        NV_AD -> p1.i
        NV- -> n1.i

On this way the current, that flows through the voltage source VNAM,
flows through the CCC.

::

        VALUE -> gain 

::

Extends from
`Interfaces.TwoPortControlledSources <Modelica_Electrical_Spice3_Interfaces.html#Modelica.Electrical.Spice3.Interfaces.TwoPortControlledSources>`_
(Component with two electrical ports, including current).

Parameters
~~~~~~~~~~

+--------+--------+-----------+----------------+
| Type   | Name   | Default   | Description    |
+========+========+===========+================+
| Real   | gain   |           | Current gain   |
+--------+--------+-----------+----------------+

Connectors
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------+--------+----------------------------------------+
| Type                                                                                                            | Name   | Description                            |
+=================================================================================================================+========+========================================+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_   | p1     | Positive pin of the controlling port   |
+-----------------------------------------------------------------------------------------------------------------+--------+----------------------------------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_   | n1     | Negative pin of the controlling port   |
+-----------------------------------------------------------------------------------------------------------------+--------+----------------------------------------+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_   | p2     | Positive pin of the controlled port    |
+-----------------------------------------------------------------------------------------------------------------+--------+----------------------------------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_   | n2     | Negative pin of the controlled port    |
+-----------------------------------------------------------------------------------------------------------------+--------+----------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model F_CCC "Linear current-controlled current source"
      extends Interfaces.TwoPortControlledSources;
      parameter Real gain(start=0) "Current gain";
    equation 
      i2 = i1*gain;
      v1 = 0;
    end F_CCC;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:29:46
2010.

.. |Modelica.Electrical.Spice3.Basic.Ground| image:: Modelica.Electrical.Spice3.Basic.GroundS.png
.. |Modelica.Electrical.Spice3.Basic.R\_Resistor| image:: Modelica.Electrical.Spice3.Basic.R_ResistorS.png
.. |Modelica.Electrical.Spice3.Basic.C\_Capacitor| image:: Modelica.Electrical.Spice3.Basic.C_CapacitorS.png
.. |Modelica.Electrical.Spice3.Basic.L\_Inductor| image:: Modelica.Electrical.Spice3.Basic.L_InductorS.png
.. |Modelica.Electrical.Spice3.Basic.E\_VCV| image:: Modelica.Electrical.Spice3.Basic.E_VCVS.png
.. |Modelica.Electrical.Spice3.Basic.G\_VCC| image:: Modelica.Electrical.Spice3.Basic.G_VCCS.png
.. |Modelica.Electrical.Spice3.Basic.H\_CCV| image:: Modelica.Electrical.Spice3.Basic.H_CCVS.png
.. |Modelica.Electrical.Spice3.Basic.F\_CCC| image:: Modelica.Electrical.Spice3.Basic.F_CCCS.png
.. |image8| image:: Modelica.Electrical.Spice3.Basic.GroundS.png
.. |image9| image:: Modelica.Electrical.Spice3.Basic.R_ResistorS.png
.. |image10| image:: Modelica.Electrical.Spice3.Basic.C_CapacitorS.png
.. |image11| image:: Modelica.Electrical.Spice3.Basic.L_InductorS.png
.. |image12| image:: Modelica.Electrical.Spice3.Basic.E_VCVS.png
.. |image13| image:: Modelica.Electrical.Spice3.Basic.G_VCCS.png
.. |image14| image:: Modelica.Electrical.Spice3.Basic.H_CCVS.png
.. |image15| image:: Modelica.Electrical.Spice3.Basic.F_CCCS.png
.. |image16| image:: Modelica.Electrical.Spice3.Basic.GroundI.png
.. |image17| image:: Modelica.Electrical.Spice3.Basic.R_ResistorI.png
.. |image18| image:: Modelica.Electrical.Spice3.Basic.C_CapacitorI.png
.. |image19| image:: Modelica.Electrical.Spice3.Basic.L_InductorI.png
.. |image20| image:: Modelica.Electrical.Spice3.Basic.E_VCVI.png
.. |image21| image:: Modelica.Electrical.Spice3.Basic.G_VCCI.png
.. |image22| image:: Modelica.Electrical.Spice3.Basic.H_CCVI.png
.. |image23| image:: Modelica.Electrical.Spice3.Basic.F_CCCI.png
