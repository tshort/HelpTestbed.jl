====================================
Modelica.Electrical.MultiPhase.Basic
====================================

`Modelica.Electrical.MultiPhase <Modelica_Electrical_MultiPhase.html#Modelica.Electrical.MultiPhase>`_.Basic
------------------------------------------------------------------------------------------------------------

**Basic components for electrical multiphase models**

Information
~~~~~~~~~~~

::

This package contains basic analog electrical multiphase components.

::

Extends from
`Modelica.Icons.Package <Modelica_Icons_Package.html#Modelica.Icons.Package>`_
(Icon for standard packages).

Package Content
~~~~~~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------+
| Name                                                                                                                                                                                  | Description                                                    |
+=======================================================================================================================================================================================+================================================================+
| |image18| `Star <Modelica_Electrical_MultiPhase_Basic.html#Modelica.Electrical.MultiPhase.Basic.Star>`_                                                                               | Star-connection                                                |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------+
| |image19| `Delta <Modelica_Electrical_MultiPhase_Basic.html#Modelica.Electrical.MultiPhase.Basic.Delta>`_                                                                             | Delta (polygon) connection                                     |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------+
| |image20| `PlugToPin\_p <Modelica_Electrical_MultiPhase_Basic.html#Modelica.Electrical.MultiPhase.Basic.PlugToPin_p>`_                                                                | Connect one (positive) Pin                                     |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------+
| |image21| `PlugToPin\_n <Modelica_Electrical_MultiPhase_Basic.html#Modelica.Electrical.MultiPhase.Basic.PlugToPin_n>`_                                                                | Connect one (negative) Pin                                     |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------+
| |image22| `PlugToPins\_p <Modelica_Electrical_MultiPhase_Basic.html#Modelica.Electrical.MultiPhase.Basic.PlugToPins_p>`_                                                              | Connect all (positive) Pins                                    |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------+
| |image23| `PlugToPins\_n <Modelica_Electrical_MultiPhase_Basic.html#Modelica.Electrical.MultiPhase.Basic.PlugToPins_n>`_                                                              | Connect all (negative) Pins                                    |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------+
| |image24| `Resistor <Modelica_Electrical_MultiPhase_Basic.html#Modelica.Electrical.MultiPhase.Basic.Resistor>`_                                                                       | Ideal linear electrical resistors                              |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------+
| |image25| `Conductor <Modelica_Electrical_MultiPhase_Basic.html#Modelica.Electrical.MultiPhase.Basic.Conductor>`_                                                                     | Ideal linear electrical conductors                             |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------+
| |image26| `Capacitor <Modelica_Electrical_MultiPhase_Basic.html#Modelica.Electrical.MultiPhase.Basic.Capacitor>`_                                                                     | Ideal linear electrical capacitors                             |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------+
| |image27| `Inductor <Modelica_Electrical_MultiPhase_Basic.html#Modelica.Electrical.MultiPhase.Basic.Inductor>`_                                                                       | Ideal linear electrical inductors                              |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------+
| |image28| `SaturatingInductor <Modelica_Electrical_MultiPhase_Basic.html#Modelica.Electrical.MultiPhase.Basic.SaturatingInductor>`_                                                   | Simple model of inductors with saturation                      |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------+
| |image29| `MutualInductor <Modelica_Electrical_MultiPhase_Basic.html#Modelica.Electrical.MultiPhase.Basic.MutualInductor>`_                                                           | Linear mutual inductor                                         |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------+
| |image30| `ZeroInductor <Modelica_Electrical_MultiPhase_Basic.html#Modelica.Electrical.MultiPhase.Basic.ZeroInductor>`_                                                               | Linear zero sequence inductor                                  |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------+
| |image31| `Transformer <Modelica_Electrical_MultiPhase_Basic.html#Modelica.Electrical.MultiPhase.Basic.Transformer>`_                                                                 | Multiphase Transformer                                         |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------+
| |image32| `VariableResistor <Modelica_Electrical_MultiPhase_Basic.html#Modelica.Electrical.MultiPhase.Basic.VariableResistor>`_                                                       | Ideal linear electrical resistors with variable resistance     |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------+
| |image33| `VariableConductor <Modelica_Electrical_MultiPhase_Basic.html#Modelica.Electrical.MultiPhase.Basic.VariableConductor>`_                                                     | Ideal linear electrical conductors with variable conductance   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------+
| |image34| `VariableCapacitor <Modelica_Electrical_MultiPhase_Basic.html#Modelica.Electrical.MultiPhase.Basic.VariableCapacitor>`_                                                     | Ideal linear electrical capacitors with variable capacitance   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------+
| |image35| `VariableInductor <Modelica_Electrical_MultiPhase_Basic.html#Modelica.Electrical.MultiPhase.Basic.VariableInductor>`_                                                       | Ideal linear electrical inductors with variable inductance     |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------+

--------------

|image36| `Modelica.Electrical.MultiPhase.Basic <Modelica_Electrical_MultiPhase_Basic.html#Modelica.Electrical.MultiPhase.Basic>`_.Star
---------------------------------------------------------------------------------------------------------------------------------------

**Star-connection**

.. figure:: Modelica.Electrical.MultiPhase.Basic.StarD.png
   :align: center
   :alt: Modelica.Electrical.MultiPhase.Basic.Star

   Modelica.Electrical.MultiPhase.Basic.Star

Information
~~~~~~~~~~~

::

Connects all pins of plug\_p to pin\_n, thus establishing a so-called
star-connection.

::

Parameters
~~~~~~~~~~

+-----------+--------+-----------+--------------------+
| Type      | Name   | Default   | Description        |
+===========+========+===========+====================+
| Integer   | m      | 3         | Number of phases   |
+-----------+--------+-----------+--------------------+

Connectors
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------+-----------+---------------+
| Type                                                                                                                      | Name      | Description   |
+===========================================================================================================================+===========+===============+
| `PositivePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.PositivePlug>`_   | plug\_p   |               |
+---------------------------------------------------------------------------------------------------------------------------+-----------+---------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_             | pin\_n    |               |
+---------------------------------------------------------------------------------------------------------------------------+-----------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Star "Star-connection"
      parameter Integer m(final min=1) = 3 "Number of phases";
      Interfaces.PositivePlug plug_p(final m=m);
      Modelica.Electrical.Analog.Interfaces.NegativePin pin_n;

    equation 
      for j in 1:m loop
        plug_p.pin[j].v = pin_n.v;
      end for;
      sum(plug_p.pin.i) + pin_n.i = 0;
    end Star;

--------------

|image37| `Modelica.Electrical.MultiPhase.Basic <Modelica_Electrical_MultiPhase_Basic.html#Modelica.Electrical.MultiPhase.Basic>`_.Delta
----------------------------------------------------------------------------------------------------------------------------------------

**Delta (polygon) connection**

.. figure:: Modelica.Electrical.MultiPhase.Basic.DeltaD.png
   :align: center
   :alt: Modelica.Electrical.MultiPhase.Basic.Delta

   Modelica.Electrical.MultiPhase.Basic.Delta

Information
~~~~~~~~~~~

::

Connects in a cyclic way plug\_n.pin[j] to plug\_p.pin[j+1], thus
establishing a so-called delta (or polygon) connection when used in
parallel to another component.

::

Parameters
~~~~~~~~~~

+-----------+--------+-----------+--------------------+
| Type      | Name   | Default   | Description        |
+===========+========+===========+====================+
| Integer   | m      | 3         | Number of phases   |
+-----------+--------+-----------+--------------------+

Connectors
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------+-----------+---------------+
| Type                                                                                                                      | Name      | Description   |
+===========================================================================================================================+===========+===============+
| `PositivePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.PositivePlug>`_   | plug\_p   |               |
+---------------------------------------------------------------------------------------------------------------------------+-----------+---------------+
| `NegativePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.NegativePlug>`_   | plug\_n   |               |
+---------------------------------------------------------------------------------------------------------------------------+-----------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Delta "Delta (polygon) connection"
      parameter Integer m(final min=2) = 3 "Number of phases";
      Interfaces.PositivePlug plug_p(final m=m);
      Interfaces.NegativePlug plug_n(final m=m);

    equation 
      for j in 1:m loop
        if j<m then
          plug_n.pin[j].v = plug_p.pin[j+1].v;
          plug_n.pin[j].i + plug_p.pin[j+1].i = 0;
        else
          plug_n.pin[j].v = plug_p.pin[1].v;
          plug_n.pin[j].i + plug_p.pin[1].i = 0;
        end if;
      end for;
    end Delta;

--------------

|image38| `Modelica.Electrical.MultiPhase.Basic <Modelica_Electrical_MultiPhase_Basic.html#Modelica.Electrical.MultiPhase.Basic>`_.PlugToPin\_p
-----------------------------------------------------------------------------------------------------------------------------------------------

**Connect one (positive) Pin**

.. figure:: Modelica.Electrical.MultiPhase.Basic.PlugToPin_pD.png
   :align: center
   :alt: Modelica.Electrical.MultiPhase.Basic.PlugToPin\_p

   Modelica.Electrical.MultiPhase.Basic.PlugToPin\_p

Information
~~~~~~~~~~~

::

Connects pin *k* of plug\_p to pin\_p, leaving the other pins of plug\_p
unconnected.

::

Parameters
~~~~~~~~~~

+-----------+--------+-----------+--------------------+
| Type      | Name   | Default   | Description        |
+===========+========+===========+====================+
| Integer   | m      | 3         | Number of phases   |
+-----------+--------+-----------+--------------------+
| Integer   | k      |           | Phase index        |
+-----------+--------+-----------+--------------------+

Connectors
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------+-----------+---------------+
| Type                                                                                                                      | Name      | Description   |
+===========================================================================================================================+===========+===============+
| `PositivePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.PositivePlug>`_   | plug\_p   |               |
+---------------------------------------------------------------------------------------------------------------------------+-----------+---------------+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_             | pin\_p    |               |
+---------------------------------------------------------------------------------------------------------------------------+-----------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model PlugToPin_p "Connect one (positive) Pin"
      parameter Integer m(final min=1) = 3 "Number of phases";
      parameter Integer k(final min=1, final max=m, start = 1) "Phase index";
      Interfaces.PositivePlug plug_p(final m=m);
      Modelica.Electrical.Analog.Interfaces.PositivePin pin_p;
    equation 
      pin_p.v = plug_p.pin[k].v;
      for j in 1:m loop
        plug_p.pin[j].i = if j == k then -pin_p.i else 0;
      end for;
    end PlugToPin_p;

--------------

|image39| `Modelica.Electrical.MultiPhase.Basic <Modelica_Electrical_MultiPhase_Basic.html#Modelica.Electrical.MultiPhase.Basic>`_.PlugToPin\_n
-----------------------------------------------------------------------------------------------------------------------------------------------

**Connect one (negative) Pin**

.. figure:: Modelica.Electrical.MultiPhase.Basic.PlugToPin_nD.png
   :align: center
   :alt: Modelica.Electrical.MultiPhase.Basic.PlugToPin\_n

   Modelica.Electrical.MultiPhase.Basic.PlugToPin\_n

Information
~~~~~~~~~~~

::

Connects pin *k* of plug\_n to pin\_n, leaving the other pins of plug\_n
unconnected.

::

Parameters
~~~~~~~~~~

+-----------+--------+-----------+--------------------+
| Type      | Name   | Default   | Description        |
+===========+========+===========+====================+
| Integer   | m      | 3         | Number of phases   |
+-----------+--------+-----------+--------------------+
| Integer   | k      |           | Phase index        |
+-----------+--------+-----------+--------------------+

Connectors
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------+-----------+---------------+
| Type                                                                                                                      | Name      | Description   |
+===========================================================================================================================+===========+===============+
| `NegativePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.NegativePlug>`_   | plug\_n   |               |
+---------------------------------------------------------------------------------------------------------------------------+-----------+---------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_             | pin\_n    |               |
+---------------------------------------------------------------------------------------------------------------------------+-----------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model PlugToPin_n "Connect one (negative) Pin"
      parameter Integer m(final min=1) = 3 "Number of phases";
      parameter Integer k(final min=1, final max=m, start = 1) "Phase index";
      Interfaces.NegativePlug plug_n(final m=m);
      Modelica.Electrical.Analog.Interfaces.NegativePin pin_n;
    equation 
      pin_n.v = plug_n.pin[k].v;
      for j in 1:m loop
        plug_n.pin[j].i = if j == k then -pin_n.i else 0;
      end for;
    end PlugToPin_n;

--------------

|image40| `Modelica.Electrical.MultiPhase.Basic <Modelica_Electrical_MultiPhase_Basic.html#Modelica.Electrical.MultiPhase.Basic>`_.PlugToPins\_p
------------------------------------------------------------------------------------------------------------------------------------------------

**Connect all (positive) Pins**

.. figure:: Modelica.Electrical.MultiPhase.Basic.PlugToPins_pD.png
   :align: center
   :alt: Modelica.Electrical.MultiPhase.Basic.PlugToPins\_p

   Modelica.Electrical.MultiPhase.Basic.PlugToPins\_p

Information
~~~~~~~~~~~

::

Connects all pins of plug\_p to the pin array pin\_p.

::

Parameters
~~~~~~~~~~

+-----------+--------+-----------+--------------------+
| Type      | Name   | Default   | Description        |
+===========+========+===========+====================+
| Integer   | m      | 3         | Number of phases   |
+-----------+--------+-----------+--------------------+

Connectors
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------+-------------+---------------+
| Type                                                                                                                      | Name        | Description   |
+===========================================================================================================================+=============+===============+
| `PositivePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.PositivePlug>`_   | plug\_p     |               |
+---------------------------------------------------------------------------------------------------------------------------+-------------+---------------+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_             | pin\_p[m]   |               |
+---------------------------------------------------------------------------------------------------------------------------+-------------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model PlugToPins_p "Connect all (positive) Pins"
      parameter Integer m(final min=1) = 3 "Number of phases";
      Interfaces.PositivePlug plug_p(final m=m);
      Modelica.Electrical.Analog.Interfaces.PositivePin pin_p[m];
    equation 
      pin_p.v = plug_p.pin.v;
      plug_p.pin.i = -pin_p.i;
    end PlugToPins_p;

--------------

|image41| `Modelica.Electrical.MultiPhase.Basic <Modelica_Electrical_MultiPhase_Basic.html#Modelica.Electrical.MultiPhase.Basic>`_.PlugToPins\_n
------------------------------------------------------------------------------------------------------------------------------------------------

**Connect all (negative) Pins**

.. figure:: Modelica.Electrical.MultiPhase.Basic.PlugToPins_nD.png
   :align: center
   :alt: Modelica.Electrical.MultiPhase.Basic.PlugToPins\_n

   Modelica.Electrical.MultiPhase.Basic.PlugToPins\_n

Information
~~~~~~~~~~~

::

Connects all pins of plug\_n to the pin array pin\_n.

::

Parameters
~~~~~~~~~~

+-----------+--------+-----------+--------------------+
| Type      | Name   | Default   | Description        |
+===========+========+===========+====================+
| Integer   | m      | 3         | Number of phases   |
+-----------+--------+-----------+--------------------+

Connectors
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------+-------------+---------------+
| Type                                                                                                                      | Name        | Description   |
+===========================================================================================================================+=============+===============+
| `NegativePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.NegativePlug>`_   | plug\_n     |               |
+---------------------------------------------------------------------------------------------------------------------------+-------------+---------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_             | pin\_n[m]   |               |
+---------------------------------------------------------------------------------------------------------------------------+-------------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model PlugToPins_n "Connect all (negative) Pins"
      parameter Integer m(final min=1) = 3 "Number of phases";
      Interfaces.NegativePlug plug_n(final m=m);
      Modelica.Electrical.Analog.Interfaces.NegativePin pin_n[m];
    equation 
      pin_n.v = plug_n.pin.v;
      plug_n.pin.i = -pin_n.i;
    end PlugToPins_n;

--------------

|image42| `Modelica.Electrical.MultiPhase.Basic <Modelica_Electrical_MultiPhase_Basic.html#Modelica.Electrical.MultiPhase.Basic>`_.Resistor
-------------------------------------------------------------------------------------------------------------------------------------------

**Ideal linear electrical resistors**

.. figure:: Modelica.Electrical.MultiPhase.Basic.ResistorD.png
   :align: center
   :alt: Modelica.Electrical.MultiPhase.Basic.Resistor

   Modelica.Electrical.MultiPhase.Basic.Resistor

Information
~~~~~~~~~~~

::

Contains m resistors (Modelica.Electrical.Analog.Basic.Resistor)

::

Extends from
`Interfaces.TwoPlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.TwoPlug>`_
(Component with one m-phase electric port),
`Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPort <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPort>`_
(Partial model to include conditional HeatPorts in order to describe the
power loss via a thermal network).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------+---------------+-------------------+---------------------------------------------------------------------------+
| Type                                                                                                    | Name          | Default           | Description                                                               |
+=========================================================================================================+===============+===================+===========================================================================+
| Integer                                                                                                 | m             | 3                 | Number of phases                                                          |
+---------------------------------------------------------------------------------------------------------+---------------+-------------------+---------------------------------------------------------------------------+
| `Resistance <Modelica_SIunits.html#Modelica.SIunits.Resistance>`_                                       | R[m]          |                   | Resistances R\_ref at temperatures T\_ref [Ohm]                           |
+---------------------------------------------------------------------------------------------------------+---------------+-------------------+---------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                     | T\_ref[m]     | fill(300.15, m)   | Reference temperatures [K]                                                |
+---------------------------------------------------------------------------------------------------------+---------------+-------------------+---------------------------------------------------------------------------+
| `LinearTemperatureCoefficient <Modelica_SIunits.html#Modelica.SIunits.LinearTemperatureCoefficient>`_   | alpha[m]      | zeros(m)          | Temperature coefficients of resistances at reference temperatures [1/K]   |
+---------------------------------------------------------------------------------------------------------+---------------+-------------------+---------------------------------------------------------------------------+
| Integer                                                                                                 | mh            | m                 | Number of heatPorts=number of phases                                      |
+---------------------------------------------------------------------------------------------------------+---------------+-------------------+---------------------------------------------------------------------------+
| Boolean                                                                                                 | useHeatPort   | false             | =true, if all HeatPorts are enabled                                       |
+---------------------------------------------------------------------------------------------------------+---------------+-------------------+---------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                     | T[mh]         | T\_ref            | Fixed device temperatures if useHeatPort = false [K]                      |
+---------------------------------------------------------------------------------------------------------+---------------+-------------------+---------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------+----------------+---------------+
| Type                                                                                                                      | Name           | Description   |
+===========================================================================================================================+================+===============+
| `PositivePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.PositivePlug>`_   | plug\_p        |               |
+---------------------------------------------------------------------------------------------------------------------------+----------------+---------------+
| `NegativePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.NegativePlug>`_   | plug\_n        |               |
+---------------------------------------------------------------------------------------------------------------------------+----------------+---------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_        | heatPort[mh]   |               |
+---------------------------------------------------------------------------------------------------------------------------+----------------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Resistor "Ideal linear electrical resistors"
      extends Interfaces.TwoPlug;
        parameter Modelica.SIunits.Resistance R[m](start=fill(1,m)) 
        "Resistances R_ref at temperatures T_ref";
      parameter Modelica.SIunits.Temperature T_ref[m]=fill(300.15,m) 
        "Reference temperatures";
      parameter Modelica.SIunits.LinearTemperatureCoefficient alpha[m]=zeros(m) 
        "Temperature coefficients of resistances at reference temperatures";
      extends Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPort(final mh=m, T = T_ref);
      Modelica.Electrical.Analog.Basic.Resistor resistor[m](
        final R=R,
        final T_ref=T_ref,
        final alpha=alpha,
        each final useHeatPort = useHeatPort,
        final T=T);
    equation 
      connect(resistor.p, plug_p.pin);
      connect(resistor.n, plug_n.pin);
      connect(resistor.heatPort, heatPort);
    end Resistor;

--------------

|image43| `Modelica.Electrical.MultiPhase.Basic <Modelica_Electrical_MultiPhase_Basic.html#Modelica.Electrical.MultiPhase.Basic>`_.Conductor
--------------------------------------------------------------------------------------------------------------------------------------------

**Ideal linear electrical conductors**

.. figure:: Modelica.Electrical.MultiPhase.Basic.ConductorD.png
   :align: center
   :alt: Modelica.Electrical.MultiPhase.Basic.Conductor

   Modelica.Electrical.MultiPhase.Basic.Conductor

Information
~~~~~~~~~~~

::

Contains m conductors (Modelica.Electrical.Analog.Basic.Conductor)

::

Extends from
`Interfaces.TwoPlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.TwoPlug>`_
(Component with one m-phase electric port),
`Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPort <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPort>`_
(Partial model to include conditional HeatPorts in order to describe the
power loss via a thermal network).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------+---------------+-------------------+----------------------------------------------------------------------------+
| Type                                                                                                    | Name          | Default           | Description                                                                |
+=========================================================================================================+===============+===================+============================================================================+
| Integer                                                                                                 | m             | 3                 | Number of phases                                                           |
+---------------------------------------------------------------------------------------------------------+---------------+-------------------+----------------------------------------------------------------------------+
| `Conductance <Modelica_SIunits.html#Modelica.SIunits.Conductance>`_                                     | G[m]          |                   | Conductances G\_ref at temperatures T\_ref [S]                             |
+---------------------------------------------------------------------------------------------------------+---------------+-------------------+----------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                     | T\_ref[m]     | fill(300.15, m)   | Reference temperatures [K]                                                 |
+---------------------------------------------------------------------------------------------------------+---------------+-------------------+----------------------------------------------------------------------------+
| `LinearTemperatureCoefficient <Modelica_SIunits.html#Modelica.SIunits.LinearTemperatureCoefficient>`_   | alpha[m]      | zeros(m)          | Temperature coefficients of conductances at reference temperatures [1/K]   |
+---------------------------------------------------------------------------------------------------------+---------------+-------------------+----------------------------------------------------------------------------+
| Integer                                                                                                 | mh            | m                 | Number of heatPorts=number of phases                                       |
+---------------------------------------------------------------------------------------------------------+---------------+-------------------+----------------------------------------------------------------------------+
| Boolean                                                                                                 | useHeatPort   | false             | =true, if all HeatPorts are enabled                                        |
+---------------------------------------------------------------------------------------------------------+---------------+-------------------+----------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                     | T[mh]         | T\_ref            | Fixed device temperatures if useHeatPort = false [K]                       |
+---------------------------------------------------------------------------------------------------------+---------------+-------------------+----------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------+----------------+---------------+
| Type                                                                                                                      | Name           | Description   |
+===========================================================================================================================+================+===============+
| `PositivePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.PositivePlug>`_   | plug\_p        |               |
+---------------------------------------------------------------------------------------------------------------------------+----------------+---------------+
| `NegativePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.NegativePlug>`_   | plug\_n        |               |
+---------------------------------------------------------------------------------------------------------------------------+----------------+---------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_        | heatPort[mh]   |               |
+---------------------------------------------------------------------------------------------------------------------------+----------------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Conductor "Ideal linear electrical conductors"
      extends Interfaces.TwoPlug;
      parameter Modelica.SIunits.Conductance G[m](start=fill(1,m)) 
        "Conductances G_ref at temperatures T_ref";
      parameter Modelica.SIunits.Temperature T_ref[m]=fill(300.15,m) 
        "Reference temperatures";
      parameter Modelica.SIunits.LinearTemperatureCoefficient alpha[m]=zeros(m) 
        "Temperature coefficients of conductances at reference temperatures";
      extends Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPort(final mh=m, T = T_ref);
      Modelica.Electrical.Analog.Basic.Conductor conductor[m](
        final G=G,
        final T_ref=T_ref,
        final alpha=alpha,
        each final useHeatPort = useHeatPort,
        final T=T);
    equation 
      connect(plug_p.pin, conductor.p);
      connect(plug_n.pin, conductor.n);
      connect(conductor.heatPort, heatPort);
    end Conductor;

--------------

|image44| `Modelica.Electrical.MultiPhase.Basic <Modelica_Electrical_MultiPhase_Basic.html#Modelica.Electrical.MultiPhase.Basic>`_.Capacitor
--------------------------------------------------------------------------------------------------------------------------------------------

**Ideal linear electrical capacitors**

.. figure:: Modelica.Electrical.MultiPhase.Basic.CapacitorD.png
   :align: center
   :alt: Modelica.Electrical.MultiPhase.Basic.Capacitor

   Modelica.Electrical.MultiPhase.Basic.Capacitor

Information
~~~~~~~~~~~

::

Contains m capacitors (Modelica.Electrical.Analog.Basic.Capacitor)

::

Extends from
`Interfaces.TwoPlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.TwoPlug>`_
(Component with one m-phase electric port).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------+--------+-----------+--------------------+
| Type                                                                  | Name   | Default   | Description        |
+=======================================================================+========+===========+====================+
| Integer                                                               | m      | 3         | Number of phases   |
+-----------------------------------------------------------------------+--------+-----------+--------------------+
| `Capacitance <Modelica_SIunits.html#Modelica.SIunits.Capacitance>`_   | C[m]   |           | Capacitance [F]    |
+-----------------------------------------------------------------------+--------+-----------+--------------------+

Connectors
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------+-----------+---------------+
| Type                                                                                                                      | Name      | Description   |
+===========================================================================================================================+===========+===============+
| `PositivePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.PositivePlug>`_   | plug\_p   |               |
+---------------------------------------------------------------------------------------------------------------------------+-----------+---------------+
| `NegativePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.NegativePlug>`_   | plug\_n   |               |
+---------------------------------------------------------------------------------------------------------------------------+-----------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Capacitor "Ideal linear electrical capacitors"
      extends Interfaces.TwoPlug;
      parameter Modelica.SIunits.Capacitance C[m](start=fill(1, m)) "Capacitance";
      Modelica.Electrical.Analog.Basic.Capacitor capacitor[m](final C=C);
    equation 
      connect(capacitor.p, plug_p.pin);
      connect(capacitor.n, plug_n.pin);
    end Capacitor;

--------------

|image45| `Modelica.Electrical.MultiPhase.Basic <Modelica_Electrical_MultiPhase_Basic.html#Modelica.Electrical.MultiPhase.Basic>`_.Inductor
-------------------------------------------------------------------------------------------------------------------------------------------

**Ideal linear electrical inductors**

.. figure:: Modelica.Electrical.MultiPhase.Basic.InductorD.png
   :align: center
   :alt: Modelica.Electrical.MultiPhase.Basic.Inductor

   Modelica.Electrical.MultiPhase.Basic.Inductor

Information
~~~~~~~~~~~

::

Contains m inductors (Modelica.Electrical.Analog.Basic.Inductor)

::

Extends from
`Interfaces.TwoPlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.TwoPlug>`_
(Component with one m-phase electric port).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------+--------+-----------+--------------------+
| Type                                                                | Name   | Default   | Description        |
+=====================================================================+========+===========+====================+
| Integer                                                             | m      | 3         | Number of phases   |
+---------------------------------------------------------------------+--------+-----------+--------------------+
| `Inductance <Modelica_SIunits.html#Modelica.SIunits.Inductance>`_   | L[m]   |           | Inductance [H]     |
+---------------------------------------------------------------------+--------+-----------+--------------------+

Connectors
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------+-----------+---------------+
| Type                                                                                                                      | Name      | Description   |
+===========================================================================================================================+===========+===============+
| `PositivePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.PositivePlug>`_   | plug\_p   |               |
+---------------------------------------------------------------------------------------------------------------------------+-----------+---------------+
| `NegativePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.NegativePlug>`_   | plug\_n   |               |
+---------------------------------------------------------------------------------------------------------------------------+-----------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Inductor "Ideal linear electrical inductors"
      extends Interfaces.TwoPlug;
      parameter Modelica.SIunits.Inductance L[m](start=fill(1, m)) "Inductance";
      Modelica.Electrical.Analog.Basic.Inductor inductor[m](final L=L);
    equation 
      connect(inductor.p, plug_p.pin);
      connect(inductor.n, plug_n.pin);
    end Inductor;

--------------

|image46| `Modelica.Electrical.MultiPhase.Basic <Modelica_Electrical_MultiPhase_Basic.html#Modelica.Electrical.MultiPhase.Basic>`_.SaturatingInductor
-----------------------------------------------------------------------------------------------------------------------------------------------------

**Simple model of inductors with saturation**

.. figure:: Modelica.Electrical.MultiPhase.Basic.SaturatingInductorD.png
   :align: center
   :alt: Modelica.Electrical.MultiPhase.Basic.SaturatingInductor

   Modelica.Electrical.MultiPhase.Basic.SaturatingInductor

Information
~~~~~~~~~~~

::

Contains m saturating inductors
(Modelica.Electrical.Analog.Basic.SaturatingInductor)

**Attention!!!**
 Each element of the array of saturatingInductors is only dependent on
the current flowing through this element.

::

Extends from
`Interfaces.TwoPlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.TwoPlug>`_
(Component with one m-phase electric port).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------+-----------+-----------+---------------------------------------------+
| Type                                                                | Name      | Default   | Description                                 |
+=====================================================================+===========+===========+=============================================+
| Integer                                                             | m         | 3         | Number of phases                            |
+---------------------------------------------------------------------+-----------+-----------+---------------------------------------------+
| `Current <Modelica_SIunits.html#Modelica.SIunits.Current>`_         | Inom[m]   |           | Nominal current [A]                         |
+---------------------------------------------------------------------+-----------+-----------+---------------------------------------------+
| `Inductance <Modelica_SIunits.html#Modelica.SIunits.Inductance>`_   | Lnom[m]   |           | Nominal inductance at Nominal current [H]   |
+---------------------------------------------------------------------+-----------+-----------+---------------------------------------------+
| `Inductance <Modelica_SIunits.html#Modelica.SIunits.Inductance>`_   | Lzer[m]   |           | Inductance near current=0 [H]               |
+---------------------------------------------------------------------+-----------+-----------+---------------------------------------------+
| `Inductance <Modelica_SIunits.html#Modelica.SIunits.Inductance>`_   | Linf[m]   |           | Inductance at large currents [H]            |
+---------------------------------------------------------------------+-----------+-----------+---------------------------------------------+

Connectors
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------+-----------+---------------+
| Type                                                                                                                      | Name      | Description   |
+===========================================================================================================================+===========+===============+
| `PositivePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.PositivePlug>`_   | plug\_p   |               |
+---------------------------------------------------------------------------------------------------------------------------+-----------+---------------+
| `NegativePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.NegativePlug>`_   | plug\_n   |               |
+---------------------------------------------------------------------------------------------------------------------------+-----------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model SaturatingInductor "Simple model of inductors with saturation"
      extends Interfaces.TwoPlug;
      parameter Modelica.SIunits.Current Inom[m](start=fill(1,m)) "Nominal current";
      parameter Modelica.SIunits.Inductance Lnom[m](start=fill(1,m)) 
        "Nominal inductance at Nominal current";
      parameter Modelica.SIunits.Inductance Lzer[m](start={2*Lnom[j] for j in 1:m}) 
        "Inductance near current=0";
      parameter Modelica.SIunits.Inductance Linf[m](start={Lnom[j]/2 for j in 1:m}) 
        "Inductance at large currents";
      Modelica.Electrical.Analog.Basic.SaturatingInductor saturatingInductor[m](
        final Inom=Inom,
        final Lnom=Lnom,
        final Lzer=Lzer,
        final Linf=Linf);
    equation 
      connect(saturatingInductor.p, plug_p.pin);
      connect(saturatingInductor.n, plug_n.pin);
    end SaturatingInductor;

--------------

|image47| `Modelica.Electrical.MultiPhase.Basic <Modelica_Electrical_MultiPhase_Basic.html#Modelica.Electrical.MultiPhase.Basic>`_.MutualInductor
-------------------------------------------------------------------------------------------------------------------------------------------------

**Linear mutual inductor**

.. figure:: Modelica.Electrical.MultiPhase.Basic.MutualInductorD.png
   :align: center
   :alt: Modelica.Electrical.MultiPhase.Basic.MutualInductor

   Modelica.Electrical.MultiPhase.Basic.MutualInductor

Information
~~~~~~~~~~~

::

Model of a multi phase inductor providing a mutual inductance matrix
model.

Implementation
^^^^^^^^^^^^^^

::

      v[1] = L[1,1]*der(i[1]) + L[1,2]*der(i[2]) + ... + L[1,m]*der(i[m])
      v[2] = L[2,1]*der(i[1]) + L[2,2]*der(i[2]) + ... + L[2,m]*der(i[m])
        :              :                         :                                :
      v[m] = L[m,1]*der(i[1]) + L[m,2]*der(i[2]) + ... + L[m,m]*der(i[m])

::

Extends from
`Modelica.Electrical.MultiPhase.Interfaces.OnePort <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.OnePort>`_
(Component with two electrical plugs and currents from plug\_p to
plug\_n).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------+-----------+-----------+--------------------------------+
| Type                                                                | Name      | Default   | Description                    |
+=====================================================================+===========+===========+================================+
| Integer                                                             | m         | 3         | Number of phases               |
+---------------------------------------------------------------------+-----------+-----------+--------------------------------+
| `Inductance <Modelica_SIunits.html#Modelica.SIunits.Inductance>`_   | L[m, m]   |           | Mutual inductance matrix [H]   |
+---------------------------------------------------------------------+-----------+-----------+--------------------------------+

Connectors
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------+-----------+---------------+
| Type                                                                                                                      | Name      | Description   |
+===========================================================================================================================+===========+===============+
| `PositivePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.PositivePlug>`_   | plug\_p   |               |
+---------------------------------------------------------------------------------------------------------------------------+-----------+---------------+
| `NegativePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.NegativePlug>`_   | plug\_n   |               |
+---------------------------------------------------------------------------------------------------------------------------+-----------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model MutualInductor "Linear mutual inductor"
      extends Modelica.Electrical.MultiPhase.Interfaces.OnePort;
      constant Real epsilon = 1e-9 "Relative accuracy tolerance of matrix symmetry";
      parameter Integer m = 3 "Number of phases";
      parameter Modelica.SIunits.Inductance L[m,m] "Mutual inductance matrix";
    initial equation 
      if abs(Modelica.Math.Matrices.det(L))<epsilon then
        Modelica.Utilities.Streams.print("Warning: mutual inductance matrix singular!");
      end if;
    equation 
      assert(sum(abs(L-transpose(L)))<epsilon*sum(abs(L)),"Mutual inductance matrix is not symmetric");
      for j in 1:m loop
        v[j] = sum(L[j,k]*der(i[k]) for k in 1:m);
      end for;
    end MutualInductor;

--------------

|image48| `Modelica.Electrical.MultiPhase.Basic <Modelica_Electrical_MultiPhase_Basic.html#Modelica.Electrical.MultiPhase.Basic>`_.ZeroInductor
-----------------------------------------------------------------------------------------------------------------------------------------------

**Linear zero sequence inductor**

.. figure:: Modelica.Electrical.MultiPhase.Basic.MutualInductorD.png
   :align: center
   :alt: Modelica.Electrical.MultiPhase.Basic.ZeroInductor

   Modelica.Electrical.MultiPhase.Basic.ZeroInductor

Information
~~~~~~~~~~~

::

Model of a multi phase zero sequence inductor.

Implementation
^^^^^^^^^^^^^^

::

      v = Lzero*sum(der(i)) = Lzero*der(sum(i))

::

Extends from
`Modelica.Electrical.MultiPhase.Interfaces.OnePort <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.OnePort>`_
(Component with two electrical plugs and currents from plug\_p to
plug\_n).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------+---------+-----------+--------------------------------+
| Type                                                                | Name    | Default   | Description                    |
+=====================================================================+=========+===========+================================+
| Integer                                                             | m       | 3         | Number of phases               |
+---------------------------------------------------------------------+---------+-----------+--------------------------------+
| `Inductance <Modelica_SIunits.html#Modelica.SIunits.Inductance>`_   | Lzero   |           | Zero sequence inductance [H]   |
+---------------------------------------------------------------------+---------+-----------+--------------------------------+

Connectors
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------+-----------+---------------+
| Type                                                                                                                      | Name      | Description   |
+===========================================================================================================================+===========+===============+
| `PositivePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.PositivePlug>`_   | plug\_p   |               |
+---------------------------------------------------------------------------------------------------------------------------+-----------+---------------+
| `NegativePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.NegativePlug>`_   | plug\_n   |               |
+---------------------------------------------------------------------------------------------------------------------------+-----------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model ZeroInductor "Linear zero sequence inductor"
      extends Modelica.Electrical.MultiPhase.Interfaces.OnePort;
      parameter Modelica.SIunits.Inductance Lzero "Zero sequence inductance";
      Modelica.SIunits.Current i0;
      Modelica.SIunits.Voltage v0;
    equation 
      m*i0 = sum(i);
      v0 = Lzero*der(i0);
      v = fill(v0, m);
    end ZeroInductor;

--------------

|image49| `Modelica.Electrical.MultiPhase.Basic <Modelica_Electrical_MultiPhase_Basic.html#Modelica.Electrical.MultiPhase.Basic>`_.Transformer
----------------------------------------------------------------------------------------------------------------------------------------------

**Multiphase Transformer**

.. figure:: Modelica.Electrical.MultiPhase.Basic.TransformerD.png
   :align: center
   :alt: Modelica.Electrical.MultiPhase.Basic.Transformer

   Modelica.Electrical.MultiPhase.Basic.Transformer

Information
~~~~~~~~~~~

::

Contains m transformers (Modelica.Electrical.Analog.Basic.Transformer)

::

Extends from
`Interfaces.FourPlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.FourPlug>`_
(Component with two m-phase electric ports).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------+---------+-----------+----------------------------+
| Type                                                                | Name    | Default   | Description                |
+=====================================================================+=========+===========+============================+
| Integer                                                             | m       | 3         | Number of phases           |
+---------------------------------------------------------------------+---------+-----------+----------------------------+
| `Inductance <Modelica_SIunits.html#Modelica.SIunits.Inductance>`_   | L1[m]   |           | Primary inductance [H]     |
+---------------------------------------------------------------------+---------+-----------+----------------------------+
| `Inductance <Modelica_SIunits.html#Modelica.SIunits.Inductance>`_   | L2[m]   |           | Secondary inductance [H]   |
+---------------------------------------------------------------------+---------+-----------+----------------------------+
| `Inductance <Modelica_SIunits.html#Modelica.SIunits.Inductance>`_   | M[m]    |           | Coupling inductance [H]    |
+---------------------------------------------------------------------+---------+-----------+----------------------------+

Connectors
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------+------------+---------------+
| Type                                                                                                                      | Name       | Description   |
+===========================================================================================================================+============+===============+
| `PositivePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.PositivePlug>`_   | plug\_p1   |               |
+---------------------------------------------------------------------------------------------------------------------------+------------+---------------+
| `PositivePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.PositivePlug>`_   | plug\_p2   |               |
+---------------------------------------------------------------------------------------------------------------------------+------------+---------------+
| `NegativePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.NegativePlug>`_   | plug\_n1   |               |
+---------------------------------------------------------------------------------------------------------------------------+------------+---------------+
| `NegativePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.NegativePlug>`_   | plug\_n2   |               |
+---------------------------------------------------------------------------------------------------------------------------+------------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Transformer "Multiphase Transformer"
      extends Interfaces.FourPlug;
      parameter Modelica.SIunits.Inductance L1[m](start=fill(1, m)) 
        "Primary inductance";
      parameter Modelica.SIunits.Inductance L2[m](start=fill(1, m)) 
        "Secondary inductance";
      parameter Modelica.SIunits.Inductance M[m](start=fill(1, m)) 
        "Coupling inductance";
      Modelica.Electrical.Analog.Basic.Transformer transformer[m](
        final L1=L1,
        final L2=L2,
        final M=M);
    equation 

      connect(plug_p1.pin, transformer.p1);
      connect(plug_p2.pin, transformer.p2);
      connect(plug_n1.pin, transformer.n1);
      connect(plug_n2.pin, transformer.n2);
    end Transformer;

--------------

|image50| `Modelica.Electrical.MultiPhase.Basic <Modelica_Electrical_MultiPhase_Basic.html#Modelica.Electrical.MultiPhase.Basic>`_.VariableResistor
---------------------------------------------------------------------------------------------------------------------------------------------------

**Ideal linear electrical resistors with variable resistance**

.. figure:: Modelica.Electrical.MultiPhase.Basic.VariableResistorD.png
   :align: center
   :alt: Modelica.Electrical.MultiPhase.Basic.VariableResistor

   Modelica.Electrical.MultiPhase.Basic.VariableResistor

Information
~~~~~~~~~~~

::

Contains m variable resistors
(Modelica.Electrical.Analog.Basic.VariableResistor)

**Attention!!!**
 It is recomended that none of the R\_Port signals should not cross the
zero value. Otherwise depending on the surrounding circuit the
probability of singularities is high.

::

Extends from
`Interfaces.TwoPlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.TwoPlug>`_
(Component with one m-phase electric port),
`Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPort <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPort>`_
(Partial model to include conditional HeatPorts in order to describe the
power loss via a thermal network).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------+---------------+-------------------+---------------------------------------------------------------------------+
| Type                                                                                                    | Name          | Default           | Description                                                               |
+=========================================================================================================+===============+===================+===========================================================================+
| Integer                                                                                                 | m             | 3                 | Number of phases                                                          |
+---------------------------------------------------------------------------------------------------------+---------------+-------------------+---------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                     | T\_ref[m]     | fill(300.15, m)   | Reference temperatures [K]                                                |
+---------------------------------------------------------------------------------------------------------+---------------+-------------------+---------------------------------------------------------------------------+
| `LinearTemperatureCoefficient <Modelica_SIunits.html#Modelica.SIunits.LinearTemperatureCoefficient>`_   | alpha[m]      | zeros(m)          | Temperature coefficients of resistances at reference temperatures [1/K]   |
+---------------------------------------------------------------------------------------------------------+---------------+-------------------+---------------------------------------------------------------------------+
| Integer                                                                                                 | mh            | m                 | Number of heatPorts=number of phases                                      |
+---------------------------------------------------------------------------------------------------------+---------------+-------------------+---------------------------------------------------------------------------+
| Boolean                                                                                                 | useHeatPort   | false             | =true, if all HeatPorts are enabled                                       |
+---------------------------------------------------------------------------------------------------------+---------------+-------------------+---------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                     | T[mh]         | T\_ref            | Fixed device temperatures if useHeatPort = false [K]                      |
+---------------------------------------------------------------------------------------------------------+---------------+-------------------+---------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------+----------------+---------------+
| Type                                                                                                                      | Name           | Description   |
+===========================================================================================================================+================+===============+
| `PositivePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.PositivePlug>`_   | plug\_p        |               |
+---------------------------------------------------------------------------------------------------------------------------+----------------+---------------+
| `NegativePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.NegativePlug>`_   | plug\_n        |               |
+---------------------------------------------------------------------------------------------------------------------------+----------------+---------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_        | heatPort[mh]   |               |
+---------------------------------------------------------------------------------------------------------------------------+----------------+---------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_                                 | R[m]           |               |
+---------------------------------------------------------------------------------------------------------------------------+----------------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model VariableResistor 
      "Ideal linear electrical resistors with variable resistance"
      extends Interfaces.TwoPlug;
      parameter Modelica.SIunits.Temperature T_ref[m]=fill(300.15,m) 
        "Reference temperatures";
      parameter Modelica.SIunits.LinearTemperatureCoefficient alpha[m]=zeros(m) 
        "Temperature coefficients of resistances at reference temperatures";
      extends Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPort(final mh=m, T = T_ref);
      Modelica.Blocks.Interfaces.RealInput R[m];
      Modelica.Electrical.Analog.Basic.VariableResistor variableResistor[m](
        final T_ref=T_ref,
        final alpha=alpha,
        each final useHeatPort=useHeatPort,
        final T=T);
    equation 
      connect(variableResistor.p, plug_p.pin);
      connect(variableResistor.n, plug_n.pin);
      connect(R, variableResistor.R);
      connect(variableResistor.heatPort, heatPort);
    end VariableResistor;

--------------

|image51| `Modelica.Electrical.MultiPhase.Basic <Modelica_Electrical_MultiPhase_Basic.html#Modelica.Electrical.MultiPhase.Basic>`_.VariableConductor
----------------------------------------------------------------------------------------------------------------------------------------------------

**Ideal linear electrical conductors with variable conductance**

.. figure:: Modelica.Electrical.MultiPhase.Basic.VariableConductorD.png
   :align: center
   :alt: Modelica.Electrical.MultiPhase.Basic.VariableConductor

   Modelica.Electrical.MultiPhase.Basic.VariableConductor

Information
~~~~~~~~~~~

::

Contains m variable conductors
(Modelica.Electrical.Analog.Basic.VariableConductor)

**Attention!!!**
 It is recomended that none of the G\_Port signals should not cross the
zero value. Otherwise depending on the surrounding circuit the
probability of singularities is high.

::

Extends from
`Interfaces.TwoPlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.TwoPlug>`_
(Component with one m-phase electric port),
`Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPort <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPort>`_
(Partial model to include conditional HeatPorts in order to describe the
power loss via a thermal network).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------+---------------+-------------------+----------------------------------------------------------------------------+
| Type                                                                                                    | Name          | Default           | Description                                                                |
+=========================================================================================================+===============+===================+============================================================================+
| Integer                                                                                                 | m             | 3                 | Number of phases                                                           |
+---------------------------------------------------------------------------------------------------------+---------------+-------------------+----------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                     | T\_ref[m]     | fill(300.15, m)   | Reference temperatures [K]                                                 |
+---------------------------------------------------------------------------------------------------------+---------------+-------------------+----------------------------------------------------------------------------+
| `LinearTemperatureCoefficient <Modelica_SIunits.html#Modelica.SIunits.LinearTemperatureCoefficient>`_   | alpha[m]      | zeros(m)          | Temperature coefficients of conductances at reference temperatures [1/K]   |
+---------------------------------------------------------------------------------------------------------+---------------+-------------------+----------------------------------------------------------------------------+
| Integer                                                                                                 | mh            | m                 | Number of heatPorts=number of phases                                       |
+---------------------------------------------------------------------------------------------------------+---------------+-------------------+----------------------------------------------------------------------------+
| Boolean                                                                                                 | useHeatPort   | false             | =true, if all HeatPorts are enabled                                        |
+---------------------------------------------------------------------------------------------------------+---------------+-------------------+----------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                     | T[mh]         | T\_ref            | Fixed device temperatures if useHeatPort = false [K]                       |
+---------------------------------------------------------------------------------------------------------+---------------+-------------------+----------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------+----------------+---------------+
| Type                                                                                                                      | Name           | Description   |
+===========================================================================================================================+================+===============+
| `PositivePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.PositivePlug>`_   | plug\_p        |               |
+---------------------------------------------------------------------------------------------------------------------------+----------------+---------------+
| `NegativePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.NegativePlug>`_   | plug\_n        |               |
+---------------------------------------------------------------------------------------------------------------------------+----------------+---------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_        | heatPort[mh]   |               |
+---------------------------------------------------------------------------------------------------------------------------+----------------+---------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_                                 | G[m]           |               |
+---------------------------------------------------------------------------------------------------------------------------+----------------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model VariableConductor 
      "Ideal linear electrical conductors with variable conductance"
      extends Interfaces.TwoPlug;
     parameter Modelica.SIunits.Temperature T_ref[m]=fill(300.15,m) 
        "Reference temperatures";
      parameter Modelica.SIunits.LinearTemperatureCoefficient alpha[m]=zeros(m) 
        "Temperature coefficients of conductances at reference temperatures";
      extends Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPort(final mh=m, T = T_ref);
      Modelica.Blocks.Interfaces.RealInput G[m];
      Modelica.Electrical.Analog.Basic.VariableConductor variableConductor[m](
        final T_ref=T_ref,
        final alpha=alpha,
        each final useHeatPort=useHeatPort,
        final T=T);
    equation 
      connect(variableConductor.p, plug_p.pin);
      connect(variableConductor.n, plug_n.pin);
      connect(G, variableConductor.G);
      connect(variableConductor.heatPort, heatPort);
    end VariableConductor;

--------------

|image52| `Modelica.Electrical.MultiPhase.Basic <Modelica_Electrical_MultiPhase_Basic.html#Modelica.Electrical.MultiPhase.Basic>`_.VariableCapacitor
----------------------------------------------------------------------------------------------------------------------------------------------------

**Ideal linear electrical capacitors with variable capacitance**

.. figure:: Modelica.Electrical.MultiPhase.Basic.VariableCapacitorD.png
   :align: center
   :alt: Modelica.Electrical.MultiPhase.Basic.VariableCapacitor

   Modelica.Electrical.MultiPhase.Basic.VariableCapacitor

Information
~~~~~~~~~~~

::

Contains m variable capacitors
(Modelica.Electrical.Analog.Basic.VariableCapacitor)

It is required that each C\_Port.signal ≥ 0, otherwise an assertion is
raised. To avoid a variable index system,
 C = Cmin, if 0 ≤ C\_Port.signal < Cmin, where Cmin is a parameter with
default value Modelica.Constants.eps.

::

Extends from
`Interfaces.TwoPlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.TwoPlug>`_
(Component with one m-phase electric port).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------+-----------+-----------------------------------+---------------------------+
| Type                                                                  | Name      | Default                           | Description               |
+=======================================================================+===========+===================================+===========================+
| Integer                                                               | m         | 3                                 | Number of phases          |
+-----------------------------------------------------------------------+-----------+-----------------------------------+---------------------------+
| `Capacitance <Modelica_SIunits.html#Modelica.SIunits.Capacitance>`_   | Cmin[m]   | fill(Modelica.Constants.eps,...   | minimum Capacitance [F]   |
+-----------------------------------------------------------------------+-----------+-----------------------------------+---------------------------+

Connectors
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------+-----------+---------------+
| Type                                                                                                                      | Name      | Description   |
+===========================================================================================================================+===========+===============+
| `PositivePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.PositivePlug>`_   | plug\_p   |               |
+---------------------------------------------------------------------------------------------------------------------------+-----------+---------------+
| `NegativePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.NegativePlug>`_   | plug\_n   |               |
+---------------------------------------------------------------------------------------------------------------------------+-----------+---------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_                                 | C[m]      |               |
+---------------------------------------------------------------------------------------------------------------------------+-----------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model VariableCapacitor 
      "Ideal linear electrical capacitors with variable capacitance"
      extends Interfaces.TwoPlug;
      parameter Modelica.SIunits.Capacitance Cmin[m]=fill(Modelica.Constants.eps,m) 
        "minimum Capacitance";
      Modelica.Blocks.Interfaces.RealInput C[m];
      Modelica.Electrical.Analog.Basic.VariableCapacitor variableCapacitor[m](final Cmin = Cmin);
    equation 
      connect(variableCapacitor.p, plug_p.pin);
      connect(variableCapacitor.n, plug_n.pin);
      connect(C, variableCapacitor.C);
    end VariableCapacitor;

--------------

|image53| `Modelica.Electrical.MultiPhase.Basic <Modelica_Electrical_MultiPhase_Basic.html#Modelica.Electrical.MultiPhase.Basic>`_.VariableInductor
---------------------------------------------------------------------------------------------------------------------------------------------------

**Ideal linear electrical inductors with variable inductance**

.. figure:: Modelica.Electrical.MultiPhase.Basic.VariableInductorD.png
   :align: center
   :alt: Modelica.Electrical.MultiPhase.Basic.VariableInductor

   Modelica.Electrical.MultiPhase.Basic.VariableInductor

Information
~~~~~~~~~~~

::

Contains m variable inductors
(Modelica.Electrical.Analog.Basic.VariableInductor)

It is required that each L\_Port.signal ≥ 0, otherwise an assertion is
raised. To avoid a variable index system,
 L = Lmin, if 0 ≤ L\_Port.signal < Lmin, where Lmin is a parameter with
default value Modelica.Constants.eps.

::

Extends from
`Interfaces.TwoPlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.TwoPlug>`_
(Component with one m-phase electric port).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------+-----------+-----------------------------------+--------------------------+
| Type                                                                | Name      | Default                           | Description              |
+=====================================================================+===========+===================================+==========================+
| Integer                                                             | m         | 3                                 | Number of phases         |
+---------------------------------------------------------------------+-----------+-----------------------------------+--------------------------+
| `Inductance <Modelica_SIunits.html#Modelica.SIunits.Inductance>`_   | Lmin[m]   | fill(Modelica.Constants.eps,...   | minimum Inductance [H]   |
+---------------------------------------------------------------------+-----------+-----------------------------------+--------------------------+

Connectors
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------+-----------+---------------+
| Type                                                                                                                      | Name      | Description   |
+===========================================================================================================================+===========+===============+
| `PositivePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.PositivePlug>`_   | plug\_p   |               |
+---------------------------------------------------------------------------------------------------------------------------+-----------+---------------+
| `NegativePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.NegativePlug>`_   | plug\_n   |               |
+---------------------------------------------------------------------------------------------------------------------------+-----------+---------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_                                 | L[m]      |               |
+---------------------------------------------------------------------------------------------------------------------------+-----------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model VariableInductor 
      "Ideal linear electrical inductors with variable inductance"
      extends Interfaces.TwoPlug;
      parameter Modelica.SIunits.Inductance Lmin[m]=fill(Modelica.Constants.eps,m) 
        "minimum Inductance";
      Modelica.Blocks.Interfaces.RealInput L[m];
      Modelica.Electrical.Analog.Basic.VariableInductor variableInductor[m](final Lmin=
               Lmin);

    equation 
      connect(variableInductor.p, plug_p.pin);
      connect(variableInductor.n, plug_n.pin);
      connect(L, variableInductor.L);
    end VariableInductor;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:29:18
2010.

.. |Modelica.Electrical.MultiPhase.Basic.Star| image:: Modelica.Electrical.MultiPhase.Basic.StarS.png
.. |Modelica.Electrical.MultiPhase.Basic.Delta| image:: Modelica.Electrical.MultiPhase.Basic.DeltaS.png
.. |Modelica.Electrical.MultiPhase.Basic.PlugToPin\_p| image:: Modelica.Electrical.MultiPhase.Basic.PlugToPin_pS.png
.. |Modelica.Electrical.MultiPhase.Basic.PlugToPin\_n| image:: Modelica.Electrical.MultiPhase.Basic.PlugToPin_nS.png
.. |Modelica.Electrical.MultiPhase.Basic.PlugToPins\_p| image:: Modelica.Electrical.MultiPhase.Basic.PlugToPins_pS.png
.. |Modelica.Electrical.MultiPhase.Basic.PlugToPins\_n| image:: Modelica.Electrical.MultiPhase.Basic.PlugToPins_nS.png
.. |Modelica.Electrical.MultiPhase.Basic.Resistor| image:: Modelica.Electrical.MultiPhase.Basic.ResistorS.png
.. |Modelica.Electrical.MultiPhase.Basic.Conductor| image:: Modelica.Electrical.MultiPhase.Basic.ResistorS.png
.. |Modelica.Electrical.MultiPhase.Basic.Capacitor| image:: Modelica.Electrical.MultiPhase.Basic.CapacitorS.png
.. |Modelica.Electrical.MultiPhase.Basic.Inductor| image:: Modelica.Electrical.MultiPhase.Basic.InductorS.png
.. |Modelica.Electrical.MultiPhase.Basic.SaturatingInductor| image:: Modelica.Electrical.MultiPhase.Basic.SaturatingInductorS.png
.. |Modelica.Electrical.MultiPhase.Basic.MutualInductor| image:: Modelica.Electrical.MultiPhase.Basic.MutualInductorS.png
.. |Modelica.Electrical.MultiPhase.Basic.ZeroInductor| image:: Modelica.Electrical.MultiPhase.Basic.ZeroInductorS.png
.. |Modelica.Electrical.MultiPhase.Basic.Transformer| image:: Modelica.Electrical.MultiPhase.Basic.TransformerS.png
.. |Modelica.Electrical.MultiPhase.Basic.VariableResistor| image:: Modelica.Electrical.MultiPhase.Basic.VariableResistorS.png
.. |Modelica.Electrical.MultiPhase.Basic.VariableConductor| image:: Modelica.Electrical.MultiPhase.Basic.VariableResistorS.png
.. |Modelica.Electrical.MultiPhase.Basic.VariableCapacitor| image:: Modelica.Electrical.MultiPhase.Basic.VariableCapacitorS.png
.. |Modelica.Electrical.MultiPhase.Basic.VariableInductor| image:: Modelica.Electrical.MultiPhase.Basic.VariableInductorS.png
.. |image18| image:: Modelica.Electrical.MultiPhase.Basic.StarS.png
.. |image19| image:: Modelica.Electrical.MultiPhase.Basic.DeltaS.png
.. |image20| image:: Modelica.Electrical.MultiPhase.Basic.PlugToPin_pS.png
.. |image21| image:: Modelica.Electrical.MultiPhase.Basic.PlugToPin_nS.png
.. |image22| image:: Modelica.Electrical.MultiPhase.Basic.PlugToPins_pS.png
.. |image23| image:: Modelica.Electrical.MultiPhase.Basic.PlugToPins_nS.png
.. |image24| image:: Modelica.Electrical.MultiPhase.Basic.ResistorS.png
.. |image25| image:: Modelica.Electrical.MultiPhase.Basic.ResistorS.png
.. |image26| image:: Modelica.Electrical.MultiPhase.Basic.CapacitorS.png
.. |image27| image:: Modelica.Electrical.MultiPhase.Basic.InductorS.png
.. |image28| image:: Modelica.Electrical.MultiPhase.Basic.SaturatingInductorS.png
.. |image29| image:: Modelica.Electrical.MultiPhase.Basic.MutualInductorS.png
.. |image30| image:: Modelica.Electrical.MultiPhase.Basic.ZeroInductorS.png
.. |image31| image:: Modelica.Electrical.MultiPhase.Basic.TransformerS.png
.. |image32| image:: Modelica.Electrical.MultiPhase.Basic.VariableResistorS.png
.. |image33| image:: Modelica.Electrical.MultiPhase.Basic.VariableResistorS.png
.. |image34| image:: Modelica.Electrical.MultiPhase.Basic.VariableCapacitorS.png
.. |image35| image:: Modelica.Electrical.MultiPhase.Basic.VariableInductorS.png
.. |image36| image:: Modelica.Electrical.MultiPhase.Basic.StarI.png
.. |image37| image:: Modelica.Electrical.MultiPhase.Basic.DeltaI.png
.. |image38| image:: Modelica.Electrical.MultiPhase.Basic.PlugToPin_pI.png
.. |image39| image:: Modelica.Electrical.MultiPhase.Basic.PlugToPin_nI.png
.. |image40| image:: Modelica.Electrical.MultiPhase.Basic.PlugToPins_pI.png
.. |image41| image:: Modelica.Electrical.MultiPhase.Basic.PlugToPins_nI.png
.. |image42| image:: Modelica.Electrical.MultiPhase.Basic.ResistorI.png
.. |image43| image:: Modelica.Electrical.MultiPhase.Basic.ResistorI.png
.. |image44| image:: Modelica.Electrical.MultiPhase.Basic.CapacitorI.png
.. |image45| image:: Modelica.Electrical.MultiPhase.Basic.InductorI.png
.. |image46| image:: Modelica.Electrical.MultiPhase.Basic.SaturatingInductorI.png
.. |image47| image:: Modelica.Electrical.MultiPhase.Basic.MutualInductorI.png
.. |image48| image:: Modelica.Electrical.MultiPhase.Basic.ZeroInductorI.png
.. |image49| image:: Modelica.Electrical.MultiPhase.Basic.TransformerI.png
.. |image50| image:: Modelica.Electrical.MultiPhase.Basic.VariableResistorI.png
.. |image51| image:: Modelica.Electrical.MultiPhase.Basic.VariableResistorI.png
.. |image52| image:: Modelica.Electrical.MultiPhase.Basic.VariableCapacitorI.png
.. |image53| image:: Modelica.Electrical.MultiPhase.Basic.VariableInductorI.png
