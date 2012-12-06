=====================================================
Modelica.Electrical.QuasiStationary.SinglePhase.Basic
=====================================================

`Modelica.Electrical.QuasiStationary.SinglePhase <Modelica_Electrical_QuasiStationary_SinglePhase.html#Modelica.Electrical.QuasiStationary.SinglePhase>`_.Basic
---------------------------------------------------------------------------------------------------------------------------------------------------------------

**Basic components for AC singlephase models**

Information
~~~~~~~~~~~

::

This package hosts basic models for quasi stationary single phase
circuits. Quasi stationary theory for single phase circuits can be found
in the
`references <Modelica_Electrical_QuasiStationary_UsersGuide.html#Modelica.Electrical.QuasiStationary.UsersGuide.References>`_.

See also
^^^^^^^^

`MultiPhase.Basic <Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic>`_

::

Extends from
`Modelica.Icons.Package <Modelica_Icons_Package.html#Modelica.Icons.Package>`_
(Icon for standard packages).

Package Content
~~~~~~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------+
| Name                                                                                                                                                                                                                                  | Description                      |
+=======================================================================================================================================================================================================================================+==================================+
| |image9| `Ground <Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.Ground>`_                                                                                          | Electrical ground                |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------+
| |image10| `Resistor <Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.Resistor>`_                                                                                     | Singlephase linear resistor      |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------+
| |image11| `Conductor <Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.Conductor>`_                                                                                   | Singlephase linear conductor     |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------+
| |image12| `Capacitor <Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.Capacitor>`_                                                                                   | Singlephase linear capacitor     |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------+
| |image13| `Inductor <Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.Inductor>`_                                                                                     | Singlephase linear inductor      |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------+
| |image14| `VariableResistor <Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.VariableResistor>`_                                                                     | Singlephase variable resistor    |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------+
| |image15| `VariableConductor <Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.VariableConductor>`_                                                                   | Singlephase variable conductor   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------+
| |image16| `VariableCapacitor <Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.VariableCapacitor>`_                                                                   | Singlephase variable capacitor   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------+
| |image17| `VariableInductor <Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.VariableInductor>`_                                                                     | Singlephase variable inductor    |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------+

--------------

|image18| `Modelica.Electrical.QuasiStationary.SinglePhase.Basic <Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic>`_.Ground
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Electrical ground**

.. figure:: Modelica.Electrical.QuasiStationary.SinglePhase.Basic.GroundD.png
   :align: center
   :alt: Modelica.Electrical.QuasiStationary.SinglePhase.Basic.Ground

   Modelica.Electrical.QuasiStationary.SinglePhase.Basic.Ground

Information
~~~~~~~~~~~

::

Ground of a single phase circuit. The potential at the ground node is
zero. Every electrical circuit, e.g., a series resonance
`example <Modelica_Electrical_QuasiStationary_SinglePhase_Examples.html#Modelica.Electrical.QuasiStationary.SinglePhase.Examples.SeriesResonance>`_,
has to contain at least one ground object.

::

Connectors
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------------+--------+---------------+
| Type                                                                                                                                                      | Name   | Description   |
+===========================================================================================================================================================+========+===============+
| `PositivePin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.PositivePin>`_   | pin    |               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+--------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Ground "Electrical ground"

      Interfaces.PositivePin pin;
    equation 
      Connections.potentialRoot(pin.reference, 256);
      if Connections.isRoot(pin.reference) then
        pin.reference.gamma = 0;
      end if;
      pin.v = Complex(0);
    end Ground;

--------------

|image19| `Modelica.Electrical.QuasiStationary.SinglePhase.Basic <Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic>`_.Resistor
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Singlephase linear resistor**

.. figure:: Modelica.Electrical.QuasiStationary.SinglePhase.Basic.ResistorD.png
   :align: center
   :alt: Modelica.Electrical.QuasiStationary.SinglePhase.Basic.Resistor

   Modelica.Electrical.QuasiStationary.SinglePhase.Basic.Resistor

Information
~~~~~~~~~~~

::

The linear resistor connects the complex voltage *v* with the complex
current *i* by *i\*R = v*. The resistance *R* is allowed to be positive,
zero, or negative.

The resistor model also has an optional `conditional heat
port <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort>`_.
A linear temperature dependency of the resistance for an enabled heat
port is also taken into account.

See also
^^^^^^^^

`Conductor <Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.Conductor>`_,
`Capacitor <Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.Capacitor>`_,
`Inductor <Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.Inductor>`_,
`Variable
resistor <Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.VariableResistor>`_,
`Variable
conductor <Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.VariableConductor>`_,
`Variable
capacitor <Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.VariableCapacitor>`_,
`Variable
inductor <Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.VariableInductor>`_

::

Extends from
`Interfaces.OnePort <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.OnePort>`_
(Two pins, current through),
`Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort>`_
(Partial model to include a conditional HeatPort in order to describe
the power loss via a thermal network).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------+---------------+-----------+------------------------------------------------------------------------------------------------------------+
| Type                                                                                                    | Name          | Default   | Description                                                                                                |
+=========================================================================================================+===============+===========+============================================================================================================+
| `Resistance <Modelica_SIunits.html#Modelica.SIunits.Resistance>`_                                       | R\_ref        |           | Reference resistance at T\_ref [Ohm]                                                                       |
+---------------------------------------------------------------------------------------------------------+---------------+-----------+------------------------------------------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                     | T\_ref        | 293.15    | Reference temperature [K]                                                                                  |
+---------------------------------------------------------------------------------------------------------+---------------+-----------+------------------------------------------------------------------------------------------------------------+
| `LinearTemperatureCoefficient <Modelica_SIunits.html#Modelica.SIunits.LinearTemperatureCoefficient>`_   | alpha\_ref    | 0         | Temperature coefficient of resistance (R\_actual = R\_ref\*(1 + alpha\_ref\*(heatPort.T - T\_ref)) [1/K]   |
+---------------------------------------------------------------------------------------------------------+---------------+-----------+------------------------------------------------------------------------------------------------------------+
| Boolean                                                                                                 | useHeatPort   | false     | =true, if HeatPort is enabled                                                                              |
+---------------------------------------------------------------------------------------------------------+---------------+-----------+------------------------------------------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                     | T             | T\_ref    | Fixed device temperature if useHeatPort = false [K]                                                        |
+---------------------------------------------------------------------------------------------------------+---------------+-----------+------------------------------------------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------------+------------+----------------+
| Type                                                                                                                                                      | Name       | Description    |
+===========================================================================================================================================================+============+================+
| `PositivePin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.PositivePin>`_   | pin\_p     | Positive pin   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+------------+----------------+
| `NegativePin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.NegativePin>`_   | pin\_n     | Negative pin   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+------------+----------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_                                        | heatPort   |                |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+------------+----------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Resistor "Singlephase linear resistor"
      extends Interfaces.OnePort;
      import Modelica.ComplexMath.real;
      import Modelica.ComplexMath.conj;
      parameter Modelica.SIunits.Resistance R_ref(start=1) 
        "Reference resistance at T_ref";
      parameter Modelica.SIunits.Temperature T_ref=293.15 "Reference temperature";
      parameter Modelica.SIunits.LinearTemperatureCoefficient alpha_ref=0 
        "Temperature coefficient of resistance (R_actual = R_ref*(1 + alpha_ref*(heatPort.T - T_ref))";
      extends Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort(T = T_ref);
      Modelica.SIunits.Resistance R_actual 
        "Resistance = R_ref*(1 + alpha_ref*(heatPort.T - T_ref))";
    equation 
      assert((1 + alpha_ref*(T_heatPort - T_ref)) >= Modelica.Constants.eps, "Temperature outside scope of model!");
      R_actual = R_ref*(1 + alpha_ref*(T_heatPort - T_ref));
      v = R_actual*i;
      LossPower = real(v*conj(i));
    end Resistor;

--------------

|image20| `Modelica.Electrical.QuasiStationary.SinglePhase.Basic <Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic>`_.Conductor
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Singlephase linear conductor**

.. figure:: Modelica.Electrical.QuasiStationary.SinglePhase.Basic.ResistorD.png
   :align: center
   :alt: Modelica.Electrical.QuasiStationary.SinglePhase.Basic.Conductor

   Modelica.Electrical.QuasiStationary.SinglePhase.Basic.Conductor

Information
~~~~~~~~~~~

::

The linear conductor connects the voltage *v* with the current *i* by *i
= v\*G*. The conductance *G* is allowed to be positive, zero, or
negative.

The conductor model also has an optional `conditional heat
port <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort>`_.
A linear temperature dependency of the resistance for an enabled heat
port is also taken into account.

See also
^^^^^^^^

`Resistor <Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.Resistor>`_,
`Capacitor <Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.Capacitor>`_,
`Inductor <Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.Inductor>`_,
`Variable
resistor <Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.VariableResistor>`_,
`Variable
conductor <Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.VariableConductor>`_,
`Variable
capacitor <Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.VariableCapacitor>`_,
`Variable
inductor <Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.VariableInductor>`_

::

Extends from
`Interfaces.OnePort <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.OnePort>`_
(Two pins, current through),
`Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort>`_
(Partial model to include a conditional HeatPort in order to describe
the power loss via a thermal network).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------+---------------+-----------+------------------------------------------------------------------------------------------------------------+
| Type                                                                                                    | Name          | Default   | Description                                                                                                |
+=========================================================================================================+===============+===========+============================================================================================================+
| `Conductance <Modelica_SIunits.html#Modelica.SIunits.Conductance>`_                                     | G\_ref        |           | Reference conductance at T\_ref [S]                                                                        |
+---------------------------------------------------------------------------------------------------------+---------------+-----------+------------------------------------------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                     | T\_ref        | 293.15    | Reference temperature [K]                                                                                  |
+---------------------------------------------------------------------------------------------------------+---------------+-----------+------------------------------------------------------------------------------------------------------------+
| `LinearTemperatureCoefficient <Modelica_SIunits.html#Modelica.SIunits.LinearTemperatureCoefficient>`_   | alpha\_ref    | 0         | Temperature coefficient of conductance (G\_actual = G\_ref/(1 + alpha\_ref\*(heatPort.T - T\_ref)) [1/K]   |
+---------------------------------------------------------------------------------------------------------+---------------+-----------+------------------------------------------------------------------------------------------------------------+
| Boolean                                                                                                 | useHeatPort   | false     | =true, if HeatPort is enabled                                                                              |
+---------------------------------------------------------------------------------------------------------+---------------+-----------+------------------------------------------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                     | T             | T\_ref    | Fixed device temperature if useHeatPort = false [K]                                                        |
+---------------------------------------------------------------------------------------------------------+---------------+-----------+------------------------------------------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------------+------------+----------------+
| Type                                                                                                                                                      | Name       | Description    |
+===========================================================================================================================================================+============+================+
| `PositivePin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.PositivePin>`_   | pin\_p     | Positive pin   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+------------+----------------+
| `NegativePin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.NegativePin>`_   | pin\_n     | Negative pin   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+------------+----------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_                                        | heatPort   |                |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+------------+----------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Conductor "Singlephase linear conductor"
      extends Interfaces.OnePort;
      import Modelica.ComplexMath.real;
      import Modelica.ComplexMath.conj;
      parameter Modelica.SIunits.Conductance G_ref(start=1) 
        "Reference conductance at T_ref";
      parameter Modelica.SIunits.Temperature T_ref=293.15 "Reference temperature";
      parameter Modelica.SIunits.LinearTemperatureCoefficient alpha_ref=0 
        "Temperature coefficient of conductance (G_actual = G_ref/(1 + alpha_ref*(heatPort.T - T_ref))";
      extends Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort(T = T_ref);
      Modelica.SIunits.Conductance G_actual 
        "Conductance = G_ref/(1 + alpha_ref*(heatPort.T - T_ref))";
    equation 
      assert((1 + alpha_ref*(T_heatPort - T_ref)) >= Modelica.Constants.eps, "Temperature outside scope of model!");
      G_actual = G_ref/(1 + alpha_ref*(T_heatPort - T_ref));
      i = G_actual*v;
      LossPower = real(v*conj(i));
    end Conductor;

--------------

|image21| `Modelica.Electrical.QuasiStationary.SinglePhase.Basic <Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic>`_.Capacitor
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Singlephase linear capacitor**

.. figure:: Modelica.Electrical.QuasiStationary.SinglePhase.Basic.CapacitorD.png
   :align: center
   :alt: Modelica.Electrical.QuasiStationary.SinglePhase.Basic.Capacitor

   Modelica.Electrical.QuasiStationary.SinglePhase.Basic.Capacitor

Information
~~~~~~~~~~~

::

The linear capacitor connects the voltage *v* with the current *i* by *i
= j\*ω\*C\*v*. The capacitance *C* is allowed to be positive, zero, or
negative.

See also
^^^^^^^^

`Resistor <Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.Resistor>`_,
`Conductor <Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.Conductor>`_,
`Inductor <Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.Inductor>`_,
`Variable
resistor <Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.VariableResistor>`_,
`Variable
conductor <Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.VariableConductor>`_,
`Variable
capacitor <Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.VariableCapacitor>`_,
`Variable
inductor <Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.VariableInductor>`_

::

Extends from
`Interfaces.OnePort <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.OnePort>`_
(Two pins, current through).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------+--------+-----------+-------------------+
| Type                                                                  | Name   | Default   | Description       |
+=======================================================================+========+===========+===================+
| `Capacitance <Modelica_SIunits.html#Modelica.SIunits.Capacitance>`_   | C      |           | Capacitance [F]   |
+-----------------------------------------------------------------------+--------+-----------+-------------------+

Connectors
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------------+----------+----------------+
| Type                                                                                                                                                      | Name     | Description    |
+===========================================================================================================================================================+==========+================+
| `PositivePin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.PositivePin>`_   | pin\_p   | Positive pin   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+----------+----------------+
| `NegativePin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.NegativePin>`_   | pin\_n   | Negative pin   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+----------+----------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Capacitor "Singlephase linear capacitor"
      extends Interfaces.OnePort;
      import Modelica.ComplexMath.j;
      parameter Modelica.SIunits.Capacitance C(start=1) "Capacitance";
    equation 
      i = j*omega*C*v;
    end Capacitor;

--------------

|image22| `Modelica.Electrical.QuasiStationary.SinglePhase.Basic <Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic>`_.Inductor
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Singlephase linear inductor**

.. figure:: Modelica.Electrical.QuasiStationary.SinglePhase.Basic.CapacitorD.png
   :align: center
   :alt: Modelica.Electrical.QuasiStationary.SinglePhase.Basic.Inductor

   Modelica.Electrical.QuasiStationary.SinglePhase.Basic.Inductor

Information
~~~~~~~~~~~

::

The linear inductor connects the voltage *v* with the current *i* by *v
= j\*ω\*L\*i*. The Inductance *L* is allowed to be positive, zero, or
negative.

See also
^^^^^^^^

`Resistor <Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.Resistor>`_,
`Conductor <Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.Conductor>`_,
`Capacitor <Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.Capacitor>`_,
`Variable
resistor <Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.VariableResistor>`_,
`Variable
conductor <Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.VariableConductor>`_,
`Variable
capacitor <Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.VariableCapacitor>`_,
`Variable
inductor <Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.VariableInductor>`_

::

Extends from
`Interfaces.OnePort <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.OnePort>`_
(Two pins, current through).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------+--------+-----------+------------------+
| Type                                                                | Name   | Default   | Description      |
+=====================================================================+========+===========+==================+
| `Inductance <Modelica_SIunits.html#Modelica.SIunits.Inductance>`_   | L      |           | Inductance [H]   |
+---------------------------------------------------------------------+--------+-----------+------------------+

Connectors
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------------+----------+----------------+
| Type                                                                                                                                                      | Name     | Description    |
+===========================================================================================================================================================+==========+================+
| `PositivePin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.PositivePin>`_   | pin\_p   | Positive pin   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+----------+----------------+
| `NegativePin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.NegativePin>`_   | pin\_n   | Negative pin   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+----------+----------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Inductor "Singlephase linear inductor"
      extends Interfaces.OnePort;
      import Modelica.ComplexMath.j;
      parameter Modelica.SIunits.Inductance L(start=1) "Inductance";
    equation 
      v = j*omega*L*i;
    end Inductor;

--------------

|image23| `Modelica.Electrical.QuasiStationary.SinglePhase.Basic <Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic>`_.VariableResistor
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Singlephase variable resistor**

.. figure:: Modelica.Electrical.QuasiStationary.SinglePhase.Basic.VariableResistorD.png
   :align: center
   :alt: Modelica.Electrical.QuasiStationary.SinglePhase.Basic.VariableResistor

   Modelica.Electrical.QuasiStationary.SinglePhase.Basic.VariableResistor

Information
~~~~~~~~~~~

::

The linear resistor connects the voltage *v* with the current *i* by
*i\*R = v*. The resistance *R* is given as input signal.

The variable resistor model also has an optional `conditional heat
port <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort>`_.
A linear temperature dependency of the resistance for an enabled heat
port is also taken into account.

Note
^^^^

A zero crossing of the R signal could cause singularities due to the
actual structure of the connected network.

The variable resistor model also has an optional `conditional heat
port <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort>`_.
A linear temperature dependency of the resistance for an enabled heat
port is also taken into account.

See also
^^^^^^^^

`Resistor <Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.Resistor>`_,
`Conductor <Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.Conductor>`_,
`Capacitor <Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.Capacitor>`_,
`Inductor <Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.Inductor>`_,
`Variable
conductor <Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.VariableConductor>`_,
`Variable
capacitor <Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.VariableCapacitor>`_,
`Variable
inductor <Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.VariableInductor>`_

::

Extends from
`Interfaces.OnePort <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.OnePort>`_
(Two pins, current through),
`Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort>`_
(Partial model to include a conditional HeatPort in order to describe
the power loss via a thermal network).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------+---------------+-----------+------------------------------------------------------------------------------------------------------------+
| Type                                                                                                    | Name          | Default   | Description                                                                                                |
+=========================================================================================================+===============+===========+============================================================================================================+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                     | T\_ref        | 293.15    | Reference temperature [K]                                                                                  |
+---------------------------------------------------------------------------------------------------------+---------------+-----------+------------------------------------------------------------------------------------------------------------+
| `LinearTemperatureCoefficient <Modelica_SIunits.html#Modelica.SIunits.LinearTemperatureCoefficient>`_   | alpha\_ref    | 0         | Temperature coefficient of resistance (R\_actual = R\_ref\*(1 + alpha\_ref\*(heatPort.T - T\_ref)) [1/K]   |
+---------------------------------------------------------------------------------------------------------+---------------+-----------+------------------------------------------------------------------------------------------------------------+
| Boolean                                                                                                 | useHeatPort   | false     | =true, if HeatPort is enabled                                                                              |
+---------------------------------------------------------------------------------------------------------+---------------+-----------+------------------------------------------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                     | T             | T\_ref    | Fixed device temperature if useHeatPort = false [K]                                                        |
+---------------------------------------------------------------------------------------------------------+---------------+-----------+------------------------------------------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------------+------------+----------------+
| Type                                                                                                                                                      | Name       | Description    |
+===========================================================================================================================================================+============+================+
| `PositivePin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.PositivePin>`_   | pin\_p     | Positive pin   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+------------+----------------+
| `NegativePin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.NegativePin>`_   | pin\_n     | Negative pin   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+------------+----------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_                                        | heatPort   |                |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+------------+----------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_                                                                 | R\_ref     |                |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+------------+----------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model VariableResistor "Singlephase variable resistor"
      extends Interfaces.OnePort;
      import Modelica.ComplexMath.real;
      import Modelica.ComplexMath.conj;
      parameter Modelica.SIunits.Temperature T_ref=293.15 "Reference temperature";
      parameter Modelica.SIunits.LinearTemperatureCoefficient alpha_ref=0 
        "Temperature coefficient of resistance (R_actual = R_ref*(1 + alpha_ref*(heatPort.T - T_ref))";
      extends Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort(T = T_ref);
      Modelica.SIunits.Resistance R_actual 
        "Resistance = R_ref*(1 + alpha_ref*(heatPort.T - T_ref))";
      Modelica.Blocks.Interfaces.RealInput R_ref;
    equation 
      assert((1 + alpha_ref*(T_heatPort - T_ref)) >= Modelica.Constants.eps, "Temperature outside scope of model!");
      R_actual = R_ref*(1 + alpha_ref*(T_heatPort - T_ref));
      v = R_actual*i;
      LossPower = real(v*conj(i));
    end VariableResistor;

--------------

|image24| `Modelica.Electrical.QuasiStationary.SinglePhase.Basic <Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic>`_.VariableConductor
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Singlephase variable conductor**

.. figure:: Modelica.Electrical.QuasiStationary.SinglePhase.Basic.VariableConductorD.png
   :align: center
   :alt: Modelica.Electrical.QuasiStationary.SinglePhase.Basic.VariableConductor

   Modelica.Electrical.QuasiStationary.SinglePhase.Basic.VariableConductor

Information
~~~~~~~~~~~

::

The linear conductor connects the voltage *v* with the current *i* by *i
= G\*v*. The conductance *G* is given as input signal.

The variable conductor model also has an optional `conditional heat
port <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort>`_.
A linear temperature dependency of the resistance for an enabled heat
port is also taken into account.

See also
^^^^^^^^

`Resistor <Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.Resistor>`_,
`Conductor <Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.Conductor>`_,
`Capacitor <Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.Capacitor>`_,
`Inductor <Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.Inductor>`_,
`Variable
resistor <Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.VariableResistor>`_,
`Variable
capacitor <Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.VariableCapacitor>`_,
`Variable
inductor <Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.VariableInductor>`_

::

Extends from
`Interfaces.OnePort <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.OnePort>`_
(Two pins, current through),
`Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort>`_
(Partial model to include a conditional HeatPort in order to describe
the power loss via a thermal network).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------+---------------+-----------+------------------------------------------------------------------------------------------------------------+
| Type                                                                                                    | Name          | Default   | Description                                                                                                |
+=========================================================================================================+===============+===========+============================================================================================================+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                     | T\_ref        | 293.15    | Reference temperature [K]                                                                                  |
+---------------------------------------------------------------------------------------------------------+---------------+-----------+------------------------------------------------------------------------------------------------------------+
| `LinearTemperatureCoefficient <Modelica_SIunits.html#Modelica.SIunits.LinearTemperatureCoefficient>`_   | alpha\_ref    | 0         | Temperature coefficient of conductance (G\_actual = G\_ref/(1 + alpha\_ref\*(heatPort.T - T\_ref)) [1/K]   |
+---------------------------------------------------------------------------------------------------------+---------------+-----------+------------------------------------------------------------------------------------------------------------+
| Boolean                                                                                                 | useHeatPort   | false     | =true, if HeatPort is enabled                                                                              |
+---------------------------------------------------------------------------------------------------------+---------------+-----------+------------------------------------------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                     | T             | T\_ref    | Fixed device temperature if useHeatPort = false [K]                                                        |
+---------------------------------------------------------------------------------------------------------+---------------+-----------+------------------------------------------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------------+------------+----------------+
| Type                                                                                                                                                      | Name       | Description    |
+===========================================================================================================================================================+============+================+
| `PositivePin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.PositivePin>`_   | pin\_p     | Positive pin   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+------------+----------------+
| `NegativePin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.NegativePin>`_   | pin\_n     | Negative pin   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+------------+----------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_                                        | heatPort   |                |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+------------+----------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_                                                                 | G\_ref     |                |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+------------+----------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model VariableConductor "Singlephase variable conductor"
      extends Interfaces.OnePort;
      import Modelica.ComplexMath.real;
      import Modelica.ComplexMath.conj;
      parameter Modelica.SIunits.Temperature T_ref=293.15 "Reference temperature";
      parameter Modelica.SIunits.LinearTemperatureCoefficient alpha_ref=0 
        "Temperature coefficient of conductance (G_actual = G_ref/(1 + alpha_ref*(heatPort.T - T_ref))";
      extends Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort(T = T_ref);
      Modelica.SIunits.Conductance G_actual 
        "Conductance = G_ref/(1 + alpha_ref*(heatPort.T - T_ref))";
      Modelica.Blocks.Interfaces.RealInput G_ref;
    equation 
      assert((1 + alpha_ref*(T_heatPort - T_ref)) >= Modelica.Constants.eps, "Temperature outside scope of model!");
      G_actual = G_ref/(1 + alpha_ref*(T_heatPort - T_ref));
      i = G_actual*v;
      LossPower = real(v*conj(i));
    end VariableConductor;

--------------

|image25| `Modelica.Electrical.QuasiStationary.SinglePhase.Basic <Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic>`_.VariableCapacitor
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Singlephase variable capacitor**

.. figure:: Modelica.Electrical.QuasiStationary.SinglePhase.Basic.VariableCapacitorD.png
   :align: center
   :alt: Modelica.Electrical.QuasiStationary.SinglePhase.Basic.VariableCapacitor

   Modelica.Electrical.QuasiStationary.SinglePhase.Basic.VariableCapacitor

Information
~~~~~~~~~~~

::

The linear capacitor connects the voltage *v* with the current *i* by *i
= j\*ω\*C\*v*. The capacitance *C* is given as input signal.

Note
^^^^

The abstraction of a variable capacitor at quasi stationary operation
assumes:
 |image26|.

See also
^^^^^^^^

`Resistor <Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.Resistor>`_,
`Conductor <Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.Conductor>`_,
`Capacitor <Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.Capacitor>`_,
`Inductor <Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.Inductor>`_,
`Variable
resistor <Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.VariableResistor>`_,
`Variable
conductor <Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.VariableConductor>`_,
`Variable
inductor <Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.VariableInductor>`_

::

Extends from
`Interfaces.OnePort <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.OnePort>`_
(Two pins, current through).

Connectors
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------------+----------+----------------+
| Type                                                                                                                                                      | Name     | Description    |
+===========================================================================================================================================================+==========+================+
| `PositivePin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.PositivePin>`_   | pin\_p   | Positive pin   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+----------+----------------+
| `NegativePin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.NegativePin>`_   | pin\_n   | Negative pin   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+----------+----------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_                                                                 | C        |                |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+----------+----------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model VariableCapacitor "Singlephase variable capacitor"
      extends Interfaces.OnePort;
      import Modelica.ComplexMath.j;
      Modelica.Blocks.Interfaces.RealInput C;
    equation 
      i = j*omega*C*v;
    end VariableCapacitor;

--------------

|image27| `Modelica.Electrical.QuasiStationary.SinglePhase.Basic <Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic>`_.VariableInductor
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Singlephase variable inductor**

.. figure:: Modelica.Electrical.QuasiStationary.SinglePhase.Basic.VariableInductorD.png
   :align: center
   :alt: Modelica.Electrical.QuasiStationary.SinglePhase.Basic.VariableInductor

   Modelica.Electrical.QuasiStationary.SinglePhase.Basic.VariableInductor

Information
~~~~~~~~~~~

::

The linear inductor connects the branch voltage *v* with the branch
current *i* by *v = j\*ω\*L\*i*. The inductance *L* is given as input
signal.

Note
^^^^

The abstraction of a variable inductor at quasi stationary operation
assumes:
 |image28|

See also
^^^^^^^^

`Resistor <Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.Resistor>`_,
`Conductor <Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.Conductor>`_,
`Capacitor <Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.Capacitor>`_,
`Inductor <Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.Inductor>`_,
`Variable
resistor <Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.VariableResistor>`_,
`Variable
conductor <Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.VariableConductor>`_,
`Variable
capacitor <Modelica_Electrical_QuasiStationary_SinglePhase_Basic.html#Modelica.Electrical.QuasiStationary.SinglePhase.Basic.VariableCapacitor>`_

::

Extends from
`Interfaces.OnePort <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.OnePort>`_
(Two pins, current through).

Connectors
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------------+----------+----------------+
| Type                                                                                                                                                      | Name     | Description    |
+===========================================================================================================================================================+==========+================+
| `PositivePin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.PositivePin>`_   | pin\_p   | Positive pin   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+----------+----------------+
| `NegativePin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.NegativePin>`_   | pin\_n   | Negative pin   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+----------+----------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_                                                                 | L        |                |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+----------+----------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model VariableInductor "Singlephase variable inductor"
      extends Interfaces.OnePort;
      import Modelica.ComplexMath.j;
      Modelica.Blocks.Interfaces.RealInput L;
    equation 
      v = j*omega*L*i;
    end VariableInductor;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:29:23
2010.

.. |Modelica.Electrical.QuasiStationary.SinglePhase.Basic.Ground| image:: Modelica.Electrical.QuasiStationary.SinglePhase.Basic.GroundS.png
.. |Modelica.Electrical.QuasiStationary.SinglePhase.Basic.Resistor| image:: Modelica.Electrical.QuasiStationary.SinglePhase.Basic.ResistorS.png
.. |Modelica.Electrical.QuasiStationary.SinglePhase.Basic.Conductor| image:: Modelica.Electrical.QuasiStationary.SinglePhase.Basic.ResistorS.png
.. |Modelica.Electrical.QuasiStationary.SinglePhase.Basic.Capacitor| image:: Modelica.Electrical.QuasiStationary.SinglePhase.Basic.CapacitorS.png
.. |Modelica.Electrical.QuasiStationary.SinglePhase.Basic.Inductor| image:: Modelica.Electrical.QuasiStationary.SinglePhase.Basic.InductorS.png
.. |Modelica.Electrical.QuasiStationary.SinglePhase.Basic.VariableResistor| image:: Modelica.Electrical.QuasiStationary.SinglePhase.Basic.VariableResistorS.png
.. |Modelica.Electrical.QuasiStationary.SinglePhase.Basic.VariableConductor| image:: Modelica.Electrical.QuasiStationary.SinglePhase.Basic.VariableResistorS.png
.. |Modelica.Electrical.QuasiStationary.SinglePhase.Basic.VariableCapacitor| image:: Modelica.Electrical.QuasiStationary.SinglePhase.Basic.VariableCapacitorS.png
.. |Modelica.Electrical.QuasiStationary.SinglePhase.Basic.VariableInductor| image:: Modelica.Electrical.QuasiStationary.SinglePhase.Basic.VariableInductorS.png
.. |image9| image:: Modelica.Electrical.QuasiStationary.SinglePhase.Basic.GroundS.png
.. |image10| image:: Modelica.Electrical.QuasiStationary.SinglePhase.Basic.ResistorS.png
.. |image11| image:: Modelica.Electrical.QuasiStationary.SinglePhase.Basic.ResistorS.png
.. |image12| image:: Modelica.Electrical.QuasiStationary.SinglePhase.Basic.CapacitorS.png
.. |image13| image:: Modelica.Electrical.QuasiStationary.SinglePhase.Basic.InductorS.png
.. |image14| image:: Modelica.Electrical.QuasiStationary.SinglePhase.Basic.VariableResistorS.png
.. |image15| image:: Modelica.Electrical.QuasiStationary.SinglePhase.Basic.VariableResistorS.png
.. |image16| image:: Modelica.Electrical.QuasiStationary.SinglePhase.Basic.VariableCapacitorS.png
.. |image17| image:: Modelica.Electrical.QuasiStationary.SinglePhase.Basic.VariableInductorS.png
.. |image18| image:: Modelica.Electrical.QuasiStationary.SinglePhase.Basic.GroundI.png
.. |image19| image:: Modelica.Electrical.QuasiStationary.SinglePhase.Basic.ResistorI.png
.. |image20| image:: Modelica.Electrical.QuasiStationary.SinglePhase.Basic.ResistorI.png
.. |image21| image:: Modelica.Electrical.QuasiStationary.SinglePhase.Basic.CapacitorI.png
.. |image22| image:: Modelica.Electrical.QuasiStationary.SinglePhase.Basic.InductorI.png
.. |image23| image:: Modelica.Electrical.QuasiStationary.SinglePhase.Basic.VariableResistorI.png
.. |image24| image:: Modelica.Electrical.QuasiStationary.SinglePhase.Basic.VariableResistorI.png
.. |image25| image:: Modelica.Electrical.QuasiStationary.SinglePhase.Basic.VariableCapacitorI.png
.. |image26| image:: ../Resources/Images/Electrical/QuasiStationary/SinglePhase/Basic/dc_dt.png
.. |image27| image:: Modelica.Electrical.QuasiStationary.SinglePhase.Basic.VariableInductorI.png
.. |image28| image:: ../Resources/Images/Electrical/QuasiStationary/SinglePhase/Basic/dl_dt.png
