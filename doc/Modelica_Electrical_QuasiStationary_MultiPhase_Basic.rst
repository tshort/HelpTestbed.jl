====================================================
Modelica.Electrical.QuasiStationary.MultiPhase.Basic
====================================================

`Modelica.Electrical.QuasiStationary.MultiPhase <Modelica_Electrical_QuasiStationary_MultiPhase.html#Modelica.Electrical.QuasiStationary.MultiPhase>`_.Basic
------------------------------------------------------------------------------------------------------------------------------------------------------------

**Basic components for AC multiphase models**

Information
~~~~~~~~~~~

::

This package hosts basic models for quasi stationary multiphase
circuits. Quasi stationary theory can be found in the
`references <Modelica_Electrical_QuasiStationary_UsersGuide.html#Modelica.Electrical.QuasiStationary.UsersGuide.References>`_.

See also
^^^^^^^^

`SinglePhase.Basic <Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic>`_

::

Extends from
`Modelica.Icons.Package <Modelica_Icons_Package.html#Modelica.Icons.Package>`_
(Icon for standard packages).

Package Content
~~~~~~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------+
| Name                                                                                                                                                                                                                               | Description                     |
+====================================================================================================================================================================================================================================+=================================+
| |image14| `Star <Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.Star>`_                                                                                            | Star connection                 |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------+
| |image15| `Delta <Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.Delta>`_                                                                                          | Delta (polygon) connection      |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------+
| |image16| `PlugToPin\_p <Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.PlugToPin_p>`_                                                                             | Connect one (positive) pin      |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------+
| |image17| `PlugToPin\_n <Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.PlugToPin_n>`_                                                                             | Connect one (negative) pin      |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------+
| |image18| `PlugToPins\_p <Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.PlugToPins_p>`_                                                                           | Connect all (positive) pins     |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------+
| |image19| `PlugToPins\_n <Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.PlugToPins_n>`_                                                                           | Connect all (negative) pins     |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------+
| |image20| `Resistor <Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.Resistor>`_                                                                                    | Multiphase linear resistor      |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------+
| |image21| `Conductor <Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.Conductor>`_                                                                                  | Multiphase linear conductor     |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------+
| |image22| `Capacitor <Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.Capacitor>`_                                                                                  | Multiphase linear capacitor     |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------+
| |image23| `Inductor <Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.Inductor>`_                                                                                    | Multiphase linear inductor      |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------+
| |image24| `VariableResistor <Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.VariableResistor>`_                                                                    | Multiphase variable resistor    |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------+
| |image25| `VariableConductor <Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.VariableConductor>`_                                                                  | Multiphase variable conductor   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------+
| |image26| `VariableCapacitor <Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.VariableCapacitor>`_                                                                  | Multiphase variable capacitor   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------+
| |image27| `VariableInductor <Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.VariableInductor>`_                                                                    | Multiphase variable inductor    |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------+

--------------

|image28| `Modelica.Electrical.QuasiStationary.MultiPhase.Basic <Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic>`_.Star
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Star connection**

.. figure:: Modelica.Electrical.QuasiStationary.MultiPhase.Basic.StarD.png
   :align: center
   :alt: Modelica.Electrical.QuasiStationary.MultiPhase.Basic.Star

   Modelica.Electrical.QuasiStationary.MultiPhase.Basic.Star

Information
~~~~~~~~~~~

::

Star (wye) connection of a multi phase circuit. The potentials at the
star points are the same.

See also
^^^^^^^^

`Delta <Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.Delta>`_

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

+-----------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+---------------+
| Type                                                                                                                                                      | Name      | Description   |
+===========================================================================================================================================================+===========+===============+
| `PositivePlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.PositivePlug>`_   | plug\_p   |               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+---------------+
| `NegativePin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.NegativePin>`_   | pin\_n    |               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Star "Star connection"
      parameter Integer m(final min=1) = 3 "Number of phases";
      Interfaces.PositivePlug plug_p(final m=m);
      QuasiStationary.SinglePhase.Interfaces.NegativePin pin_n;
      PlugToPins_p plugToPins_p;
    equation 
      for j in 1:m loop
        connect(plugToPins_p.pin_p[j], pin_n);
      end for;
      connect(plug_p, plugToPins_p.plug_p);
    end Star;

--------------

|image29| `Modelica.Electrical.QuasiStationary.MultiPhase.Basic <Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic>`_.Delta
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Delta (polygon) connection**

.. figure:: Modelica.Electrical.QuasiStationary.MultiPhase.Basic.DeltaD.png
   :align: center
   :alt: Modelica.Electrical.QuasiStationary.MultiPhase.Basic.Delta

   Modelica.Electrical.QuasiStationary.MultiPhase.Basic.Delta

Information
~~~~~~~~~~~

::

Delta (polygon) connection of a multi phase circuit.

See also
^^^^^^^^

`Star <Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.Star>`_

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

+-----------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+---------------+
| Type                                                                                                                                                      | Name      | Description   |
+===========================================================================================================================================================+===========+===============+
| `PositivePlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.PositivePlug>`_   | plug\_p   |               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+---------------+
| `NegativePlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.NegativePlug>`_   | plug\_n   |               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Delta "Delta (polygon) connection"
      parameter Integer m(final min=2) = 3 "Number of phases";
      Interfaces.PositivePlug plug_p(final m=m);
      Interfaces.NegativePlug plug_n(final m=m);

      PlugToPins_p plugToPins_p;
      PlugToPins_n plugToPins_n;
    equation 
      for j in 1:m loop
        if j<m then
          connect(plugToPins_p.pin_p[j], plugToPins_n.pin_n[j+1]);
        else
          connect(plugToPins_p.pin_p[j], plugToPins_n.pin_n[1]);
        end if;
      end for;
      connect(plug_p, plugToPins_p.plug_p);
      connect(plugToPins_n.plug_n, plug_n);
    end Delta;

--------------

|image30| `Modelica.Electrical.QuasiStationary.MultiPhase.Basic <Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic>`_.PlugToPin\_p
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Connect one (positive) pin**

.. figure:: Modelica.Electrical.QuasiStationary.MultiPhase.Basic.PlugToPin_pD.png
   :align: center
   :alt: Modelica.Electrical.QuasiStationary.MultiPhase.Basic.PlugToPin\_p

   Modelica.Electrical.QuasiStationary.MultiPhase.Basic.PlugToPin\_p

Information
~~~~~~~~~~~

::

Connects the single phase (positive) pin *k* of the multi phase
(positive) plug to a single phase (positive) pin.

See also
^^^^^^^^

`PlugToPin\_n <Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.PlugToPin_n>`_,
`PlutToPins\_p <Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.PlugToPins_p>`_,
`PlugToPins\_n <Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.PlugToPins_n>`_

::

Parameters
~~~~~~~~~~

+-----------+--------+-----------+--------------------+
| Type      | Name   | Default   | Description        |
+===========+========+===========+====================+
| Integer   | m      | 3         | Number of phases   |
+-----------+--------+-----------+--------------------+
| Integer   | k      | 1         | Phase index        |
+-----------+--------+-----------+--------------------+

Connectors
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+---------------+
| Type                                                                                                                                                      | Name      | Description   |
+===========================================================================================================================================================+===========+===============+
| `PositivePlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.PositivePlug>`_   | plug\_p   |               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+---------------+
| `PositivePin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.PositivePin>`_   | pin\_p    |               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model PlugToPin_p "Connect one (positive) pin"
      parameter Integer m(final min=1) = 3 "Number of phases";
      parameter Integer k(
        final min=1,
        final max=m) = 1 "Phase index";
      Interfaces.PositivePlug plug_p(final m=m);
      QuasiStationary.SinglePhase.Interfaces.PositivePin pin_p;
    equation 
      Connections.branch(plug_p.reference, pin_p.reference);
    //Connections.potentialRoot(plug_p.reference);
    //Connections.potentialRoot(pin_p.reference);
      plug_p.reference.gamma = pin_p.reference.gamma;
      pin_p.v = plug_p.pin[k].v;
      for j in 1:m loop
        plug_p.pin[j].i = if j == k then -pin_p.i else Complex(0);
       end for;
    end PlugToPin_p;

--------------

|image31| `Modelica.Electrical.QuasiStationary.MultiPhase.Basic <Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic>`_.PlugToPin\_n
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Connect one (negative) pin**

.. figure:: Modelica.Electrical.QuasiStationary.MultiPhase.Basic.PlugToPin_nD.png
   :align: center
   :alt: Modelica.Electrical.QuasiStationary.MultiPhase.Basic.PlugToPin\_n

   Modelica.Electrical.QuasiStationary.MultiPhase.Basic.PlugToPin\_n

Information
~~~~~~~~~~~

::

Connects the single phase (negative) pin *k* of the multi phase
(negative) plug to a single phase (negative) pin.

See also
^^^^^^^^

`PlugToPin\_p <Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.PlugToPin_p>`_,
`PlutToPins\_p <Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.PlugToPins_p>`_,
`PlugToPins\_n <Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.PlugToPins_n>`_

::

Parameters
~~~~~~~~~~

+-----------+--------+-----------+--------------------+
| Type      | Name   | Default   | Description        |
+===========+========+===========+====================+
| Integer   | m      | 3         | Number of phases   |
+-----------+--------+-----------+--------------------+
| Integer   | k      | 1         | Phase index        |
+-----------+--------+-----------+--------------------+

Connectors
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+---------------+
| Type                                                                                                                                                      | Name      | Description   |
+===========================================================================================================================================================+===========+===============+
| `NegativePlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.NegativePlug>`_   | plug\_n   |               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+---------------+
| `NegativePin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.NegativePin>`_   | pin\_n    |               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model PlugToPin_n "Connect one (negative) pin"
      parameter Integer m(final min=1) = 3 "Number of phases";
      parameter Integer k(
        final min=1,
        final max=m) = 1 "Phase index";
      Interfaces.NegativePlug plug_n(final m=m);
      QuasiStationary.SinglePhase.Interfaces.NegativePin pin_n;
    equation 
      Connections.branch(plug_n.reference, pin_n.reference);
    //Connections.potentialRoot(plug_n.reference);
    //Connections.potentialRoot(pin_n.reference);
      plug_n.reference.gamma = pin_n.reference.gamma;
      pin_n.v = plug_n.pin[k].v;
      for j in 1:m loop
        plug_n.pin[j].i = if j == k then -pin_n.i else Complex(0);
      end for;
    end PlugToPin_n;

--------------

|image32| `Modelica.Electrical.QuasiStationary.MultiPhase.Basic <Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic>`_.PlugToPins\_p
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Connect all (positive) pins**

.. figure:: Modelica.Electrical.QuasiStationary.MultiPhase.Basic.PlugToPins_pD.png
   :align: center
   :alt: Modelica.Electrical.QuasiStationary.MultiPhase.Basic.PlugToPins\_p

   Modelica.Electrical.QuasiStationary.MultiPhase.Basic.PlugToPins\_p

Information
~~~~~~~~~~~

::

Connects all *m* single phase (positive) pins of the multi phase
(positive) plug to an array of *m* single phase (positive) pins.

See also
^^^^^^^^

`PlugToPin\_p <Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.PlugToPin_p>`_,
`PlugToPin\_n <Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.PlugToPin_n>`_,
`PlugToPins\_n <Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.PlugToPins_n>`_

::

Parameters
~~~~~~~~~~

+-----------+--------+-----------+--------------------+
| Type      | Name   | Default   | Description        |
+===========+========+===========+====================+
| Integer   | m      | 3         | number of phases   |
+-----------+--------+-----------+--------------------+

Connectors
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------------+-------------+---------------+
| Type                                                                                                                                                      | Name        | Description   |
+===========================================================================================================================================================+=============+===============+
| `PositivePlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.PositivePlug>`_   | plug\_p     |               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+-------------+---------------+
| `PositivePin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.PositivePin>`_   | pin\_p[m]   |               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+-------------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model PlugToPins_p "Connect all (positive) pins"
      parameter Integer m(final min=1) = 3 "number of phases";
      Interfaces.PositivePlug plug_p(final m=m);
      QuasiStationary.SinglePhase.Interfaces.PositivePin pin_p[m];
      PlugToPin_p plugToPin_p[m](each final m=m, final k={j for j in 1:m});
    equation 
      for j in 1:m loop
    /*
        Connections.branch(plug_p.reference, pin_p[j].reference);
        plug_p.reference.gamma = pin_p[j].reference.gamma;
        plug_p.pin[j].v = pin_p[j].v;
        plug_p.pin[j].i = -pin_p[j].i;
    */
        connect(plug_p, plugToPin_p[j].plug_p);
        connect(plugToPin_p[j].pin_p, pin_p[j]);
      end for;
    end PlugToPins_p;

--------------

|image33| `Modelica.Electrical.QuasiStationary.MultiPhase.Basic <Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic>`_.PlugToPins\_n
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Connect all (negative) pins**

.. figure:: Modelica.Electrical.QuasiStationary.MultiPhase.Basic.PlugToPins_nD.png
   :align: center
   :alt: Modelica.Electrical.QuasiStationary.MultiPhase.Basic.PlugToPins\_n

   Modelica.Electrical.QuasiStationary.MultiPhase.Basic.PlugToPins\_n

Information
~~~~~~~~~~~

::

Connects all *m* single phase (negative) pins of the multi phase
(negative) plug to an array of *m* single phase (negative) pins.

See also
^^^^^^^^

`PlugToPin\_p <Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.PlugToPin_p>`_,
`PlugToPin\_n <Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.PlugToPin_n>`_,
`PlugToPins\_p <Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.PlugToPins_p>`_

::

Parameters
~~~~~~~~~~

+-----------+--------+-----------+--------------------+
| Type      | Name   | Default   | Description        |
+===========+========+===========+====================+
| Integer   | m      | 3         | number of phases   |
+-----------+--------+-----------+--------------------+

Connectors
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------------+-------------+---------------+
| Type                                                                                                                                                      | Name        | Description   |
+===========================================================================================================================================================+=============+===============+
| `NegativePlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.NegativePlug>`_   | plug\_n     |               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+-------------+---------------+
| `NegativePin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.NegativePin>`_   | pin\_n[m]   |               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+-------------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model PlugToPins_n "Connect all (negative) pins"
      parameter Integer m(final min=1) = 3 "number of phases";
      Interfaces.NegativePlug plug_n(final m=m);
      QuasiStationary.SinglePhase.Interfaces.NegativePin pin_n[m];
      PlugToPin_n plugToPin_n[m](each final m=m, final k={j for j in 1:m});
    equation 
      for j in 1:m loop
    /*
        Connections.branch(plug_n.reference, pin_n[j].reference);
        plug_n.reference.gamma = pin_n[j].reference.gamma;
        plug_n.pin[j].v = pin_n[j].v;
        plug_n.pin[j].i = -pin_n[j].i;
    */
        connect(plug_n, plugToPin_n[j].plug_n);
        connect(plugToPin_n[j].pin_n, pin_n[j]);
      end for;
    end PlugToPins_n;

--------------

|image34| `Modelica.Electrical.QuasiStationary.MultiPhase.Basic <Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic>`_.Resistor
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Multiphase linear resistor**

.. figure:: Modelica.Electrical.QuasiStationary.MultiPhase.Basic.ResistorD.png
   :align: center
   :alt: Modelica.Electrical.QuasiStationary.MultiPhase.Basic.Resistor

   Modelica.Electrical.QuasiStationary.MultiPhase.Basic.Resistor

Information
~~~~~~~~~~~

::

The linear resistor connects the complex voltages *v* with the complex
currents *i* by *i\*R = v*, using *m* `single phase
Resistors <Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.Resistor>`_.

The resistor model also has *m* optional `conditional heat
ports <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPort>`_.
A linear temperature dependency of the resistances for enabled heat
ports is also taken into account.

See also
^^^^^^^^

`Resistor <Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.Resistor>`_,
`Conductor <Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.Conductor>`_,
`Capacitor <Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.Capacitor>`_,
`Inductor <Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.Inductor>`_,
`Variable
resistor <Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.VariableResistor>`_,
`Variable
conductor <Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.VariableConductor>`_,
`Variable
capacitor <Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.VariableCapacitor>`_,
`Variable
inductor <Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.VariableInductor>`_

::

Extends from
`Interfaces.TwoPlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.TwoPlug>`_
(Two plugs with pin-adapter),
`Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPort <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPort>`_
(Partial model to include conditional HeatPorts in order to describe the
power loss via a thermal network).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------+-----------------+-------------------+------------------------------------------------------------------------------------------------------------+
| Type                                                                                                    | Name            | Default           | Description                                                                                                |
+=========================================================================================================+=================+===================+============================================================================================================+
| Integer                                                                                                 | m               | 3                 | Number of phases                                                                                           |
+---------------------------------------------------------------------------------------------------------+-----------------+-------------------+------------------------------------------------------------------------------------------------------------+
| `Resistance <Modelica_SIunits.html#Modelica.SIunits.Resistance>`_                                       | R\_ref[m]       |                   | Reference resistances at T\_ref [Ohm]                                                                      |
+---------------------------------------------------------------------------------------------------------+-----------------+-------------------+------------------------------------------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                     | T\_ref[m]       | fill(293.15, m)   | Reference temperatures [K]                                                                                 |
+---------------------------------------------------------------------------------------------------------+-----------------+-------------------+------------------------------------------------------------------------------------------------------------+
| `LinearTemperatureCoefficient <Modelica_SIunits.html#Modelica.SIunits.LinearTemperatureCoefficient>`_   | alpha\_ref[m]   | zeros(m)          | Temperature coefficient of resistance (R\_actual = R\_ref\*(1 + alpha\_ref\*(heatPort.T - T\_ref)) [1/K]   |
+---------------------------------------------------------------------------------------------------------+-----------------+-------------------+------------------------------------------------------------------------------------------------------------+
| Integer                                                                                                 | mh              | m                 | Number of heatPorts=number of phases                                                                       |
+---------------------------------------------------------------------------------------------------------+-----------------+-------------------+------------------------------------------------------------------------------------------------------------+
| Boolean                                                                                                 | useHeatPort     | false             | =true, if all HeatPorts are enabled                                                                        |
+---------------------------------------------------------------------------------------------------------+-----------------+-------------------+------------------------------------------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                     | T[mh]           | T\_ref            | Fixed device temperatures if useHeatPort = false [K]                                                       |
+---------------------------------------------------------------------------------------------------------+-----------------+-------------------+------------------------------------------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------------+----------------+---------------+
| Type                                                                                                                                                      | Name           | Description   |
+===========================================================================================================================================================+================+===============+
| `PositivePlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.PositivePlug>`_   | plug\_p        |               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+----------------+---------------+
| `NegativePlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.NegativePlug>`_   | plug\_n        |               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+----------------+---------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_                                        | heatPort[mh]   |               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+----------------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Resistor "Multiphase linear resistor"
      extends Interfaces.TwoPlug;
      parameter Modelica.SIunits.Resistance R_ref[m](start=fill(1,m)) 
        "Reference resistances at T_ref";
      parameter Modelica.SIunits.Temperature T_ref[m]=fill(293.15,m) 
        "Reference temperatures";
      parameter Modelica.SIunits.LinearTemperatureCoefficient alpha_ref[m]=zeros(m) 
        "Temperature coefficient of resistance (R_actual = R_ref*(1 + alpha_ref*(heatPort.T - T_ref))";
      extends Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPort(final mh=m, T=T_ref);
      QuasiStationary.SinglePhase.Basic.Resistor resistor[
                                          m](
        final R_ref=R_ref,
        final T_ref=T_ref,
        final alpha_ref=alpha_ref,
        each final useHeatPort=useHeatPort,
        final T=T);
    equation 
      connect(plugToPins_p.pin_p, resistor.pin_p);
      connect(resistor.pin_n, plugToPins_n.pin_n);
      connect(resistor.heatPort, heatPort);
    end Resistor;

--------------

|image35| `Modelica.Electrical.QuasiStationary.MultiPhase.Basic <Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic>`_.Conductor
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Multiphase linear conductor**

.. figure:: Modelica.Electrical.QuasiStationary.MultiPhase.Basic.ConductorD.png
   :align: center
   :alt: Modelica.Electrical.QuasiStationary.MultiPhase.Basic.Conductor

   Modelica.Electrical.QuasiStationary.MultiPhase.Basic.Conductor

Information
~~~~~~~~~~~

::

The linear resistor connects the complex currents *i* with the complex
voltages *v* by *v\*G = i*, using *m* `single phase
Conductors <Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.Conductor>`_.

The conductor model also has *m* optional `conditional heat
ports <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPort>`_.
A linear temperature dependency of the conductances for enabled heat
ports is also taken into account.

See also
^^^^^^^^

`Conductor <Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.Conductor>`_,
`Resistor <Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.Resistor>`_,
`Capacitor <Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.Capacitor>`_,
`Inductor <Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.Inductor>`_,
`Variable
resistor <Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.VariableResistor>`_,
`Variable
conductor <Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.VariableConductor>`_,
`Variable
capacitor <Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.VariableCapacitor>`_,
`Variable
inductor <Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.VariableInductor>`_

::

Extends from
`Interfaces.TwoPlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.TwoPlug>`_
(Two plugs with pin-adapter),
`Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPort <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPort>`_
(Partial model to include conditional HeatPorts in order to describe the
power loss via a thermal network).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------+-----------------+-------------------+------------------------------------------------------------------------------------------------------------+
| Type                                                                                                    | Name            | Default           | Description                                                                                                |
+=========================================================================================================+=================+===================+============================================================================================================+
| Integer                                                                                                 | m               | 3                 | Number of phases                                                                                           |
+---------------------------------------------------------------------------------------------------------+-----------------+-------------------+------------------------------------------------------------------------------------------------------------+
| `Conductance <Modelica_SIunits.html#Modelica.SIunits.Conductance>`_                                     | G\_ref[m]       |                   | Reference conductances at T\_ref [S]                                                                       |
+---------------------------------------------------------------------------------------------------------+-----------------+-------------------+------------------------------------------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                     | T\_ref[m]       | fill(293.15, m)   | Reference temperatures [K]                                                                                 |
+---------------------------------------------------------------------------------------------------------+-----------------+-------------------+------------------------------------------------------------------------------------------------------------+
| `LinearTemperatureCoefficient <Modelica_SIunits.html#Modelica.SIunits.LinearTemperatureCoefficient>`_   | alpha\_ref[m]   | zeros(m)          | Temperature coefficient of conductance (G\_actual = G\_ref/(1 + alpha\_ref\*(heatPort.T - T\_ref)) [1/K]   |
+---------------------------------------------------------------------------------------------------------+-----------------+-------------------+------------------------------------------------------------------------------------------------------------+
| Integer                                                                                                 | mh              | m                 | Number of heatPorts=number of phases                                                                       |
+---------------------------------------------------------------------------------------------------------+-----------------+-------------------+------------------------------------------------------------------------------------------------------------+
| Boolean                                                                                                 | useHeatPort     | false             | =true, if all HeatPorts are enabled                                                                        |
+---------------------------------------------------------------------------------------------------------+-----------------+-------------------+------------------------------------------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                     | T[mh]           | T\_ref            | Fixed device temperatures if useHeatPort = false [K]                                                       |
+---------------------------------------------------------------------------------------------------------+-----------------+-------------------+------------------------------------------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------------+----------------+---------------+
| Type                                                                                                                                                      | Name           | Description   |
+===========================================================================================================================================================+================+===============+
| `PositivePlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.PositivePlug>`_   | plug\_p        |               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+----------------+---------------+
| `NegativePlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.NegativePlug>`_   | plug\_n        |               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+----------------+---------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_                                        | heatPort[mh]   |               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+----------------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Conductor "Multiphase linear conductor"
      extends Interfaces.TwoPlug;
      parameter Modelica.SIunits.Conductance G_ref[m](start=fill(1,m)) 
        "Reference conductances at T_ref";
      parameter Modelica.SIunits.Temperature T_ref[m]=fill(293.15,m) 
        "Reference temperatures";
      parameter Modelica.SIunits.LinearTemperatureCoefficient alpha_ref[m]=zeros(m) 
        "Temperature coefficient of conductance (G_actual = G_ref/(1 + alpha_ref*(heatPort.T - T_ref))";
      extends Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPort(final mh=m, T=T_ref);
      QuasiStationary.SinglePhase.Basic.Conductor conductor[
                                            m](
        final G_ref=G_ref,
        final T_ref=T_ref,
        final alpha_ref=alpha_ref,
        each final useHeatPort=useHeatPort,
        final T=T);
    equation 
      connect(plugToPins_p.pin_p, conductor.pin_p);
      connect(conductor.pin_n, plugToPins_n.pin_n);
      connect(conductor.heatPort, heatPort);
    end Conductor;

--------------

|image36| `Modelica.Electrical.QuasiStationary.MultiPhase.Basic <Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic>`_.Capacitor
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Multiphase linear capacitor**

.. figure:: Modelica.Electrical.QuasiStationary.MultiPhase.Basic.CapacitorD.png
   :align: center
   :alt: Modelica.Electrical.QuasiStationary.MultiPhase.Basic.Capacitor

   Modelica.Electrical.QuasiStationary.MultiPhase.Basic.Capacitor

Information
~~~~~~~~~~~

::

The linear capacitor connects the complex currents *i* with the complex
voltages *v* by *v\*j\*ω\*C = i*, using *m* `single phase
Capacitors <Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.Capacitor>`_.

See also
^^^^^^^^

`Capacitor <Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.Capacitor>`_,
`Resistor <Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.Resistor>`_,
`Conductor <Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.Conductor>`_,
`Inductor <Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.Inductor>`_,
`Variable
resistor <Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.VariableResistor>`_,
`Variable
conductor <Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.VariableConductor>`_,
`Variable
capacitor <Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.VariableCapacitor>`_,
`Variable
inductor <Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.VariableInductor>`_

::

Extends from
`Interfaces.TwoPlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.TwoPlug>`_
(Two plugs with pin-adapter).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------+--------+-----------+--------------------+
| Type                                                                  | Name   | Default   | Description        |
+=======================================================================+========+===========+====================+
| Integer                                                               | m      | 3         | Number of phases   |
+-----------------------------------------------------------------------+--------+-----------+--------------------+
| `Capacitance <Modelica_SIunits.html#Modelica.SIunits.Capacitance>`_   | C[m]   |           | Capacitances [F]   |
+-----------------------------------------------------------------------+--------+-----------+--------------------+

Connectors
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+---------------+
| Type                                                                                                                                                      | Name      | Description   |
+===========================================================================================================================================================+===========+===============+
| `PositivePlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.PositivePlug>`_   | plug\_p   |               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+---------------+
| `NegativePlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.NegativePlug>`_   | plug\_n   |               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Capacitor "Multiphase linear capacitor"
      extends Interfaces.TwoPlug;
      parameter Modelica.SIunits.Capacitance C[m](start=fill(1,m)) "Capacitances";
      QuasiStationary.SinglePhase.Basic.Capacitor capacitor[
                                            m](final C=C);
    equation 
      connect(plugToPins_p.pin_p, capacitor.pin_p);
      connect(capacitor.pin_n, plugToPins_n.pin_n);
    end Capacitor;

--------------

|image37| `Modelica.Electrical.QuasiStationary.MultiPhase.Basic <Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic>`_.Inductor
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Multiphase linear inductor**

.. figure:: Modelica.Electrical.QuasiStationary.MultiPhase.Basic.InductorD.png
   :align: center
   :alt: Modelica.Electrical.QuasiStationary.MultiPhase.Basic.Inductor

   Modelica.Electrical.QuasiStationary.MultiPhase.Basic.Inductor

Information
~~~~~~~~~~~

::

The linear inductor connects the complex voltages *v* with the complex
currents *i* by *i\*j\*ω\*L = v*, using *m* `single phase
Inductors <Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.Inductor>`_.

See also
^^^^^^^^

`Inductor <Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.Inductor>`_,
`Resistor <Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.Resistor>`_,
`Conductor <Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.Conductor>`_,
`Capacitor <Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.Capacitor>`_,
`Variable
resistor <Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.VariableResistor>`_,
`Variable
conductor <Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.VariableConductor>`_,
`Variable
capacitor <Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.VariableCapacitor>`_,
`Variable
inductor <Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.VariableInductor>`_

::

Extends from
`Interfaces.TwoPlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.TwoPlug>`_
(Two plugs with pin-adapter).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------+--------+-----------+--------------------+
| Type                                                                | Name   | Default   | Description        |
+=====================================================================+========+===========+====================+
| Integer                                                             | m      | 3         | Number of phases   |
+---------------------------------------------------------------------+--------+-----------+--------------------+
| `Inductance <Modelica_SIunits.html#Modelica.SIunits.Inductance>`_   | L[m]   |           | Inductances [H]    |
+---------------------------------------------------------------------+--------+-----------+--------------------+

Connectors
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+---------------+
| Type                                                                                                                                                      | Name      | Description   |
+===========================================================================================================================================================+===========+===============+
| `PositivePlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.PositivePlug>`_   | plug\_p   |               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+---------------+
| `NegativePlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.NegativePlug>`_   | plug\_n   |               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Inductor "Multiphase linear inductor"
      extends Interfaces.TwoPlug;
      parameter Modelica.SIunits.Inductance L[m](start=fill(1,m)) "Inductances";
      QuasiStationary.SinglePhase.Basic.Inductor inductor[
                                          m](final L=L);
    equation 

      connect(plugToPins_p.pin_p, inductor.pin_p);
      connect(inductor.pin_n, plugToPins_n.pin_n);
    end Inductor;

--------------

|image38| `Modelica.Electrical.QuasiStationary.MultiPhase.Basic <Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic>`_.VariableResistor
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Multiphase variable resistor**

.. figure:: Modelica.Electrical.QuasiStationary.MultiPhase.Basic.VariableResistorD.png
   :align: center
   :alt: Modelica.Electrical.QuasiStationary.MultiPhase.Basic.VariableResistor

   Modelica.Electrical.QuasiStationary.MultiPhase.Basic.VariableResistor

Information
~~~~~~~~~~~

::

The linear resistor connects the complex voltages *v* with the complex
currents *i* by *i\*R = v*, using *m* `single phase variable
Resistors <Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.VariableResistor>`_.
The resistances *R* are given as *m* input signals.

The resistor model also has *m* optional `conditional heat
ports <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPort>`_.
A linear temperature dependency of the resistances for enabled heat
ports is also taken into account.

See also
^^^^^^^^

`VariableResistor <Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.VariableResistor>`_,
`Resistor <Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.Resistor>`_,
`Conductor <Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.Conductor>`_,
`Capacitor <Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.Capacitor>`_,
`Inductor <Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.Inductor>`_,
`Variable
conductor <Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.VariableConductor>`_,
`Variable
capacitor <Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.VariableCapacitor>`_,
`Variable
inductor <Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.VariableInductor>`_

::

Extends from
`Interfaces.TwoPlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.TwoPlug>`_
(Two plugs with pin-adapter),
`Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPort <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPort>`_
(Partial model to include conditional HeatPorts in order to describe the
power loss via a thermal network).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------+-----------------+-------------------+------------------------------------------------------------------------------------------------------------+
| Type                                                                                                    | Name            | Default           | Description                                                                                                |
+=========================================================================================================+=================+===================+============================================================================================================+
| Integer                                                                                                 | m               | 3                 | Number of phases                                                                                           |
+---------------------------------------------------------------------------------------------------------+-----------------+-------------------+------------------------------------------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                     | T\_ref[m]       | fill(293.15, m)   | Reference temperatures [K]                                                                                 |
+---------------------------------------------------------------------------------------------------------+-----------------+-------------------+------------------------------------------------------------------------------------------------------------+
| `LinearTemperatureCoefficient <Modelica_SIunits.html#Modelica.SIunits.LinearTemperatureCoefficient>`_   | alpha\_ref[m]   | zeros(m)          | Temperature coefficient of resistance (R\_actual = R\_ref\*(1 + alpha\_ref\*(heatPort.T - T\_ref)) [1/K]   |
+---------------------------------------------------------------------------------------------------------+-----------------+-------------------+------------------------------------------------------------------------------------------------------------+
| Integer                                                                                                 | mh              | m                 | Number of heatPorts=number of phases                                                                       |
+---------------------------------------------------------------------------------------------------------+-----------------+-------------------+------------------------------------------------------------------------------------------------------------+
| Boolean                                                                                                 | useHeatPort     | false             | =true, if all HeatPorts are enabled                                                                        |
+---------------------------------------------------------------------------------------------------------+-----------------+-------------------+------------------------------------------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                     | T[mh]           | T\_ref            | Fixed device temperatures if useHeatPort = false [K]                                                       |
+---------------------------------------------------------------------------------------------------------+-----------------+-------------------+------------------------------------------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------------+----------------+---------------+
| Type                                                                                                                                                      | Name           | Description   |
+===========================================================================================================================================================+================+===============+
| `PositivePlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.PositivePlug>`_   | plug\_p        |               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+----------------+---------------+
| `NegativePlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.NegativePlug>`_   | plug\_n        |               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+----------------+---------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_                                        | heatPort[mh]   |               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+----------------+---------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_                                                                 | R\_ref[m]      |               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+----------------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model VariableResistor "Multiphase variable resistor"
      extends Interfaces.TwoPlug;
      parameter Modelica.SIunits.Temperature T_ref[m]=fill(293.15,m) 
        "Reference temperatures";
      parameter Modelica.SIunits.LinearTemperatureCoefficient alpha_ref[m]=zeros(m) 
        "Temperature coefficient of resistance (R_actual = R_ref*(1 + alpha_ref*(heatPort.T - T_ref))";
      extends Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPort(final mh=m, T=T_ref);
      Modelica.Blocks.Interfaces.RealInput R_ref[m];
      QuasiStationary.SinglePhase.Basic.VariableResistor variableResistor[
                                                          m](
        final T_ref=T_ref,
        final alpha_ref=alpha_ref,
        each final useHeatPort=useHeatPort,
        final T=T);
    equation 

      connect(variableResistor.pin_p, plugToPins_p.pin_p);
      connect(variableResistor.pin_n, plugToPins_n.pin_n);
      connect(variableResistor.heatPort, heatPort);
      connect(R_ref, variableResistor.R_ref);
    end VariableResistor;

--------------

|image39| `Modelica.Electrical.QuasiStationary.MultiPhase.Basic <Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic>`_.VariableConductor
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Multiphase variable conductor**

.. figure:: Modelica.Electrical.QuasiStationary.MultiPhase.Basic.VariableConductorD.png
   :align: center
   :alt: Modelica.Electrical.QuasiStationary.MultiPhase.Basic.VariableConductor

   Modelica.Electrical.QuasiStationary.MultiPhase.Basic.VariableConductor

Information
~~~~~~~~~~~

::

The linear resistor connects the complex currents *i* with the complex
voltages *v* by *v\*G = i*, using *m* `single phase variable
Conductors <Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.VariableConductor>`_.
The conductances *G* are given as *m* input signals.

The conductor model also has *m* optional `conditional heat
ports <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPort>`_.
A linear temperature dependency of the conductances for enabled heat
ports is also taken into account.

See also
^^^^^^^^

`VariableConductor <Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.VariableConductor>`_,
`Resistor <Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.Resistor>`_,
`Conductor <Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.Conductor>`_,
`Capacitor <Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.Capacitor>`_,
`Inductor <Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.Inductor>`_,
`Variable
resistor <Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.VariableResistor>`_,
`Variable
capacitor <Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.VariableCapacitor>`_,
`Variable
inductor <Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.VariableInductor>`_

::

Extends from
`Interfaces.TwoPlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.TwoPlug>`_
(Two plugs with pin-adapter),
`Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPort <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPort>`_
(Partial model to include conditional HeatPorts in order to describe the
power loss via a thermal network).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------+-----------------+-------------------+-----------------------------------------------------------------------------------------------------------+
| Type                                                                                                    | Name            | Default           | Description                                                                                               |
+=========================================================================================================+=================+===================+===========================================================================================================+
| Integer                                                                                                 | m               | 3                 | Number of phases                                                                                          |
+---------------------------------------------------------------------------------------------------------+-----------------+-------------------+-----------------------------------------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                     | T\_ref[m]       | fill(293.15, m)   | Reference temperatures [K]                                                                                |
+---------------------------------------------------------------------------------------------------------+-----------------+-------------------+-----------------------------------------------------------------------------------------------------------+
| `LinearTemperatureCoefficient <Modelica_SIunits.html#Modelica.SIunits.LinearTemperatureCoefficient>`_   | alpha\_ref[m]   | zeros(m)          | Temperature coefficient of resistance (G\_actual = G\_ref/(1 + alpha\_ref\*(heatPort.T - T\_ref)) [1/K]   |
+---------------------------------------------------------------------------------------------------------+-----------------+-------------------+-----------------------------------------------------------------------------------------------------------+
| Integer                                                                                                 | mh              | m                 | Number of heatPorts=number of phases                                                                      |
+---------------------------------------------------------------------------------------------------------+-----------------+-------------------+-----------------------------------------------------------------------------------------------------------+
| Boolean                                                                                                 | useHeatPort     | false             | =true, if all HeatPorts are enabled                                                                       |
+---------------------------------------------------------------------------------------------------------+-----------------+-------------------+-----------------------------------------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                     | T[mh]           | T\_ref            | Fixed device temperatures if useHeatPort = false [K]                                                      |
+---------------------------------------------------------------------------------------------------------+-----------------+-------------------+-----------------------------------------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------------+----------------+---------------+
| Type                                                                                                                                                      | Name           | Description   |
+===========================================================================================================================================================+================+===============+
| `PositivePlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.PositivePlug>`_   | plug\_p        |               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+----------------+---------------+
| `NegativePlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.NegativePlug>`_   | plug\_n        |               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+----------------+---------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_                                        | heatPort[mh]   |               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+----------------+---------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_                                                                 | G\_ref[m]      |               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+----------------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model VariableConductor "Multiphase variable conductor"
      extends Interfaces.TwoPlug;
      parameter Modelica.SIunits.Temperature T_ref[m]=fill(293.15,m) 
        "Reference temperatures";
      parameter Modelica.SIunits.LinearTemperatureCoefficient alpha_ref[m]=zeros(m) 
        "Temperature coefficient of resistance (G_actual = G_ref/(1 + alpha_ref*(heatPort.T - T_ref))";
      extends Modelica.Electrical.MultiPhase.Interfaces.ConditionalHeatPort(final mh=m, T=T_ref);
      Modelica.Blocks.Interfaces.RealInput G_ref[m];
      QuasiStationary.SinglePhase.Basic.VariableConductor variableResistor[
                                                           m](
        final T_ref=T_ref,
        final alpha_ref=alpha_ref,
        each final useHeatPort=useHeatPort,
        final T=T);
    equation 
      connect(variableResistor.pin_p, plugToPins_p.pin_p);
      connect(variableResistor.pin_n, plugToPins_n.pin_n);
      connect(variableResistor.heatPort, heatPort);
      connect(G_ref, variableResistor.G_ref);
    end VariableConductor;

--------------

|image40| `Modelica.Electrical.QuasiStationary.MultiPhase.Basic <Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic>`_.VariableCapacitor
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Multiphase variable capacitor**

.. figure:: Modelica.Electrical.QuasiStationary.MultiPhase.Basic.VariableCapacitorD.png
   :align: center
   :alt: Modelica.Electrical.QuasiStationary.MultiPhase.Basic.VariableCapacitor

   Modelica.Electrical.QuasiStationary.MultiPhase.Basic.VariableCapacitor

Information
~~~~~~~~~~~

::

The linear capacitor connects the complex currents *i* with the complex
voltages *v* by *v\*j\*ω\*C = i*, using *m* `single phase variable
Capacitors <Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.VariableCapacitor>`_.
The capacitances *C* are given as *m* input signals.

See also
^^^^^^^^

`VariableCapacitor <Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.VariableCapacitor>`_,
`Resistor <Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.Resistor>`_,
`Conductor <Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.Conductor>`_,
`Capacitor <Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.Capacitor>`_,
`Inductor <Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.Inductor>`_,
`Variable
resistor <Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.VariableResistor>`_,
`Variable
conductor <Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.VariableConductor>`_,
`Variable
inductor <Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.VariableInductor>`_

::

Extends from
`Interfaces.TwoPlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.TwoPlug>`_
(Two plugs with pin-adapter).

Parameters
~~~~~~~~~~

+-----------+--------+-----------+--------------------+
| Type      | Name   | Default   | Description        |
+===========+========+===========+====================+
| Integer   | m      | 3         | Number of phases   |
+-----------+--------+-----------+--------------------+

Connectors
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+---------------+
| Type                                                                                                                                                      | Name      | Description   |
+===========================================================================================================================================================+===========+===============+
| `PositivePlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.PositivePlug>`_   | plug\_p   |               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+---------------+
| `NegativePlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.NegativePlug>`_   | plug\_n   |               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+---------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_                                                                 | C[m]      |               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model VariableCapacitor "Multiphase variable capacitor"
      extends Interfaces.TwoPlug;
      Modelica.Blocks.Interfaces.RealInput C[m];
      QuasiStationary.SinglePhase.Basic.VariableCapacitor variableCapacitor[
                                                            m];
    equation 
      connect(variableCapacitor.pin_p, plugToPins_p.pin_p);
      connect(variableCapacitor.pin_n, plugToPins_n.pin_n);
      connect(C, variableCapacitor.C);
    end VariableCapacitor;

--------------

|image41| `Modelica.Electrical.QuasiStationary.MultiPhase.Basic <Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic>`_.VariableInductor
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Multiphase variable inductor**

.. figure:: Modelica.Electrical.QuasiStationary.MultiPhase.Basic.VariableInductorD.png
   :align: center
   :alt: Modelica.Electrical.QuasiStationary.MultiPhase.Basic.VariableInductor

   Modelica.Electrical.QuasiStationary.MultiPhase.Basic.VariableInductor

Information
~~~~~~~~~~~

::

The linear inductor connects the complex voltages *v* with the complex
currents *i* by *i\*j\*ω\*L = v*, using *m* `single phase variable
Inductors <Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.VariableInductor>`_.
The inductances *L* are given as *m* input signals.

See also
^^^^^^^^

`Inductor <Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.Inductor>`_,
`Resistor <Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.Resistor>`_,
`Conductor <Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.Conductor>`_,
`Capacitor <Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.Capacitor>`_,
`Inductor <Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.Inductor>`_,
`Variable
resistor <Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.VariableResistor>`_,
`Variable
conductor <Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.VariableConductor>`_,
`Variable
capacitor <Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.VariableCapacitor>`_

::

Extends from
`Interfaces.TwoPlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.TwoPlug>`_
(Two plugs with pin-adapter).

Parameters
~~~~~~~~~~

+-----------+--------+-----------+--------------------+
| Type      | Name   | Default   | Description        |
+===========+========+===========+====================+
| Integer   | m      | 3         | Number of phases   |
+-----------+--------+-----------+--------------------+

Connectors
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+---------------+
| Type                                                                                                                                                      | Name      | Description   |
+===========================================================================================================================================================+===========+===============+
| `PositivePlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.PositivePlug>`_   | plug\_p   |               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+---------------+
| `NegativePlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.NegativePlug>`_   | plug\_n   |               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+---------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_                                                                 | L[m]      |               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model VariableInductor "Multiphase variable inductor"
      extends Interfaces.TwoPlug;
      Modelica.Blocks.Interfaces.RealInput L[m];
      QuasiStationary.SinglePhase.Basic.VariableInductor variableInductor[
                                                          m];
    equation 
      connect(variableInductor.pin_p, plugToPins_p.pin_p);
      connect(variableInductor.pin_n, plugToPins_n.pin_n);
      connect(variableInductor.L, L);
    end VariableInductor;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:29:41
2010.

.. |Modelica.Electrical.QuasiStationary.MultiPhase.Basic.Star| image:: Modelica.Electrical.QuasiStationary.MultiPhase.Basic.StarS.png
.. |Modelica.Electrical.QuasiStationary.MultiPhase.Basic.Delta| image:: Modelica.Electrical.QuasiStationary.MultiPhase.Basic.DeltaS.png
.. |Modelica.Electrical.QuasiStationary.MultiPhase.Basic.PlugToPin\_p| image:: Modelica.Electrical.QuasiStationary.MultiPhase.Basic.PlugToPin_pS.png
.. |Modelica.Electrical.QuasiStationary.MultiPhase.Basic.PlugToPin\_n| image:: Modelica.Electrical.QuasiStationary.MultiPhase.Basic.PlugToPin_nS.png
.. |Modelica.Electrical.QuasiStationary.MultiPhase.Basic.PlugToPins\_p| image:: Modelica.Electrical.QuasiStationary.MultiPhase.Basic.PlugToPins_pS.png
.. |Modelica.Electrical.QuasiStationary.MultiPhase.Basic.PlugToPins\_n| image:: Modelica.Electrical.QuasiStationary.MultiPhase.Basic.PlugToPins_nS.png
.. |Modelica.Electrical.QuasiStationary.MultiPhase.Basic.Resistor| image:: Modelica.Electrical.QuasiStationary.MultiPhase.Basic.ResistorS.png
.. |Modelica.Electrical.QuasiStationary.MultiPhase.Basic.Conductor| image:: Modelica.Electrical.QuasiStationary.MultiPhase.Basic.ResistorS.png
.. |Modelica.Electrical.QuasiStationary.MultiPhase.Basic.Capacitor| image:: Modelica.Electrical.QuasiStationary.MultiPhase.Basic.CapacitorS.png
.. |Modelica.Electrical.QuasiStationary.MultiPhase.Basic.Inductor| image:: Modelica.Electrical.QuasiStationary.MultiPhase.Basic.InductorS.png
.. |Modelica.Electrical.QuasiStationary.MultiPhase.Basic.VariableResistor| image:: Modelica.Electrical.QuasiStationary.MultiPhase.Basic.VariableResistorS.png
.. |Modelica.Electrical.QuasiStationary.MultiPhase.Basic.VariableConductor| image:: Modelica.Electrical.QuasiStationary.MultiPhase.Basic.VariableResistorS.png
.. |Modelica.Electrical.QuasiStationary.MultiPhase.Basic.VariableCapacitor| image:: Modelica.Electrical.QuasiStationary.MultiPhase.Basic.VariableCapacitorS.png
.. |Modelica.Electrical.QuasiStationary.MultiPhase.Basic.VariableInductor| image:: Modelica.Electrical.QuasiStationary.MultiPhase.Basic.VariableInductorS.png
.. |image14| image:: Modelica.Electrical.QuasiStationary.MultiPhase.Basic.StarS.png
.. |image15| image:: Modelica.Electrical.QuasiStationary.MultiPhase.Basic.DeltaS.png
.. |image16| image:: Modelica.Electrical.QuasiStationary.MultiPhase.Basic.PlugToPin_pS.png
.. |image17| image:: Modelica.Electrical.QuasiStationary.MultiPhase.Basic.PlugToPin_nS.png
.. |image18| image:: Modelica.Electrical.QuasiStationary.MultiPhase.Basic.PlugToPins_pS.png
.. |image19| image:: Modelica.Electrical.QuasiStationary.MultiPhase.Basic.PlugToPins_nS.png
.. |image20| image:: Modelica.Electrical.QuasiStationary.MultiPhase.Basic.ResistorS.png
.. |image21| image:: Modelica.Electrical.QuasiStationary.MultiPhase.Basic.ResistorS.png
.. |image22| image:: Modelica.Electrical.QuasiStationary.MultiPhase.Basic.CapacitorS.png
.. |image23| image:: Modelica.Electrical.QuasiStationary.MultiPhase.Basic.InductorS.png
.. |image24| image:: Modelica.Electrical.QuasiStationary.MultiPhase.Basic.VariableResistorS.png
.. |image25| image:: Modelica.Electrical.QuasiStationary.MultiPhase.Basic.VariableResistorS.png
.. |image26| image:: Modelica.Electrical.QuasiStationary.MultiPhase.Basic.VariableCapacitorS.png
.. |image27| image:: Modelica.Electrical.QuasiStationary.MultiPhase.Basic.VariableInductorS.png
.. |image28| image:: Modelica.Electrical.QuasiStationary.MultiPhase.Basic.StarI.png
.. |image29| image:: Modelica.Electrical.QuasiStationary.MultiPhase.Basic.DeltaI.png
.. |image30| image:: Modelica.Electrical.QuasiStationary.MultiPhase.Basic.PlugToPin_pI.png
.. |image31| image:: Modelica.Electrical.QuasiStationary.MultiPhase.Basic.PlugToPin_nI.png
.. |image32| image:: Modelica.Electrical.QuasiStationary.MultiPhase.Basic.PlugToPins_pI.png
.. |image33| image:: Modelica.Electrical.QuasiStationary.MultiPhase.Basic.PlugToPins_nI.png
.. |image34| image:: Modelica.Electrical.QuasiStationary.MultiPhase.Basic.ResistorI.png
.. |image35| image:: Modelica.Electrical.QuasiStationary.MultiPhase.Basic.ResistorI.png
.. |image36| image:: Modelica.Electrical.QuasiStationary.MultiPhase.Basic.CapacitorI.png
.. |image37| image:: Modelica.Electrical.QuasiStationary.MultiPhase.Basic.InductorI.png
.. |image38| image:: Modelica.Electrical.QuasiStationary.MultiPhase.Basic.VariableResistorI.png
.. |image39| image:: Modelica.Electrical.QuasiStationary.MultiPhase.Basic.VariableResistorI.png
.. |image40| image:: Modelica.Electrical.QuasiStationary.MultiPhase.Basic.VariableCapacitorI.png
.. |image41| image:: Modelica.Electrical.QuasiStationary.MultiPhase.Basic.VariableInductorI.png
