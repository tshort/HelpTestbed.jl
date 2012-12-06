================================
Modelica.Electrical.Analog.Basic
================================

`Modelica.Electrical.Analog <Modelica_Electrical_Analog.html#Modelica.Electrical.Analog>`_.Basic
------------------------------------------------------------------------------------------------

**Basic electrical components**

Information
~~~~~~~~~~~

::

This package contains very basic analog electrical components such as
resistor, conductor, condensator, inductor, and the ground (which is
needed in each electrical circuit description. Furthermore, controled
sources, coupling components, and some improved (but newertheless basic)
are in this package.

::

Extends from
`Modelica.Icons.Package <Modelica_Icons_Package.html#Modelica.Icons.Package>`_
(Icon for standard packages).

Package Content
~~~~~~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------+
| Name                                                                                                                                                                      | Description                                                   |
+===========================================================================================================================================================================+===============================================================+
| |image22| `Ground <Modelica_Electrical_Analog_Basic.html#Modelica.Electrical.Analog.Basic.Ground>`_                                                                       | Ground node                                                   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------+
| |image23| `Resistor <Modelica_Electrical_Analog_Basic.html#Modelica.Electrical.Analog.Basic.Resistor>`_                                                                   | Ideal linear electrical resistor                              |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------+
| |image24| `HeatingResistor <Modelica_Electrical_Analog_Basic.html#Modelica.Electrical.Analog.Basic.HeatingResistor>`_                                                     | Temperature dependent electrical resistor                     |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------+
| |image25| `Conductor <Modelica_Electrical_Analog_Basic.html#Modelica.Electrical.Analog.Basic.Conductor>`_                                                                 | Ideal linear electrical conductor                             |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------+
| |image26| `Capacitor <Modelica_Electrical_Analog_Basic.html#Modelica.Electrical.Analog.Basic.Capacitor>`_                                                                 | Ideal linear electrical capacitor                             |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------+
| |image27| `Inductor <Modelica_Electrical_Analog_Basic.html#Modelica.Electrical.Analog.Basic.Inductor>`_                                                                   | Ideal linear electrical inductor                              |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------+
| |image28| `SaturatingInductor <Modelica_Electrical_Analog_Basic.html#Modelica.Electrical.Analog.Basic.SaturatingInductor>`_                                               | Simple model of an inductor with saturation                   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------+
| |image29| `Transformer <Modelica_Electrical_Analog_Basic.html#Modelica.Electrical.Analog.Basic.Transformer>`_                                                             | Transformer with two ports                                    |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------+
| |image30| `M\_Transformer <Modelica_Electrical_Analog_Basic.html#Modelica.Electrical.Analog.Basic.M_Transformer>`_                                                        | Generic transformer with free number of inductors             |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------+
| |image31| `Gyrator <Modelica_Electrical_Analog_Basic.html#Modelica.Electrical.Analog.Basic.Gyrator>`_                                                                     | Gyrator                                                       |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------+
| |image32| `EMF <Modelica_Electrical_Analog_Basic.html#Modelica.Electrical.Analog.Basic.EMF>`_                                                                             | Electromotoric force (electric/mechanic transformer)          |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------+
| |image33| `TranslationalEMF <Modelica_Electrical_Analog_Basic.html#Modelica.Electrical.Analog.Basic.TranslationalEMF>`_                                                   | Electromotoric force (electric/mechanic transformer)          |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------+
| |image34| `VCV <Modelica_Electrical_Analog_Basic.html#Modelica.Electrical.Analog.Basic.VCV>`_                                                                             | Linear voltage-controlled voltage source                      |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------+
| |image35| `VCC <Modelica_Electrical_Analog_Basic.html#Modelica.Electrical.Analog.Basic.VCC>`_                                                                             | Linear voltage-controlled current source                      |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------+
| |image36| `CCV <Modelica_Electrical_Analog_Basic.html#Modelica.Electrical.Analog.Basic.CCV>`_                                                                             | Linear current-controlled voltage source                      |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------+
| |image37| `CCC <Modelica_Electrical_Analog_Basic.html#Modelica.Electrical.Analog.Basic.CCC>`_                                                                             | Linear current-controlled current source                      |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------+
| |image38| `OpAmp <Modelica_Electrical_Analog_Basic.html#Modelica.Electrical.Analog.Basic.OpAmp>`_                                                                         | Simple nonideal model of an OpAmp with limitation             |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------+
| |image39| `OpAmpDetailed <Modelica_Electrical_Analog_Basic.html#Modelica.Electrical.Analog.Basic.OpAmpDetailed>`_                                                         | Detailed model of an operational amplifier                    |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------+
| |image40| `VariableResistor <Modelica_Electrical_Analog_Basic.html#Modelica.Electrical.Analog.Basic.VariableResistor>`_                                                   | Ideal linear electrical resistor with variable resistance     |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------+
| |image41| `VariableConductor <Modelica_Electrical_Analog_Basic.html#Modelica.Electrical.Analog.Basic.VariableConductor>`_                                                 | Ideal linear electrical conductor with variable conductance   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------+
| |image42| `VariableCapacitor <Modelica_Electrical_Analog_Basic.html#Modelica.Electrical.Analog.Basic.VariableCapacitor>`_                                                 | Ideal linear electrical capacitor with variable capacitance   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------+
| |image43| `VariableInductor <Modelica_Electrical_Analog_Basic.html#Modelica.Electrical.Analog.Basic.VariableInductor>`_                                                   | Ideal linear electrical inductor with variable inductance     |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------+

--------------

|image44| `Modelica.Electrical.Analog.Basic <Modelica_Electrical_Analog_Basic.html#Modelica.Electrical.Analog.Basic>`_.Ground
-----------------------------------------------------------------------------------------------------------------------------

**Ground node**

.. figure:: Modelica.Electrical.Analog.Basic.GroundD.png
   :align: center
   :alt: Modelica.Electrical.Analog.Basic.Ground

   Modelica.Electrical.Analog.Basic.Ground

Information
~~~~~~~~~~~

::

Ground of an electrical circuit. The potential at the ground node is
zero. Every electrical circuit has to contain at least one ground
object.

::

Connectors
~~~~~~~~~~

+-------------------------------------------------------------------------------------------------+--------+---------------+
| Type                                                                                            | Name   | Description   |
+=================================================================================================+========+===============+
| `Pin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.Pin>`_   | p      |               |
+-------------------------------------------------------------------------------------------------+--------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Ground "Ground node"

      Interfaces.Pin p;
    equation 
      p.v = 0;
    end Ground;

--------------

|image45| `Modelica.Electrical.Analog.Basic <Modelica_Electrical_Analog_Basic.html#Modelica.Electrical.Analog.Basic>`_.Resistor
-------------------------------------------------------------------------------------------------------------------------------

**Ideal linear electrical resistor**

.. figure:: Modelica.Electrical.Analog.Basic.ResistorD.png
   :align: center
   :alt: Modelica.Electrical.Analog.Basic.Resistor

   Modelica.Electrical.Analog.Basic.Resistor

Information
~~~~~~~~~~~

::

The linear resistor connects the branch voltage *v* with the branch
current *i* by *i\*R = v*. The Resistance *R* is allowed to be positive,
zero, or negative.

::

Extends from
`Modelica.Electrical.Analog.Interfaces.OnePort <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.OnePort>`_
(Component with two electrical pins p and n and current i from p to n),
`Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort>`_
(Partial model to include a conditional HeatPort in order to describe
the power loss via a thermal network).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------+---------------+-----------+---------------------------------------------------------------------------------------------------+
| Type                                                                                                    | Name          | Default   | Description                                                                                       |
+=========================================================================================================+===============+===========+===================================================================================================+
| `Resistance <Modelica_SIunits.html#Modelica.SIunits.Resistance>`_                                       | R             |           | Resistance at temperature T\_ref [Ohm]                                                            |
+---------------------------------------------------------------------------------------------------------+---------------+-----------+---------------------------------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                     | T\_ref        | 300.15    | Reference temperature [K]                                                                         |
+---------------------------------------------------------------------------------------------------------+---------------+-----------+---------------------------------------------------------------------------------------------------+
| `LinearTemperatureCoefficient <Modelica_SIunits.html#Modelica.SIunits.LinearTemperatureCoefficient>`_   | alpha         | 0         | Temperature coefficient of resistance (R\_actual = R\*(1 + alpha\*(T\_heatPort - T\_ref)) [1/K]   |
+---------------------------------------------------------------------------------------------------------+---------------+-----------+---------------------------------------------------------------------------------------------------+
| Boolean                                                                                                 | useHeatPort   | false     | =true, if HeatPort is enabled                                                                     |
+---------------------------------------------------------------------------------------------------------+---------------+-----------+---------------------------------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                     | T             | T\_ref    | Fixed device temperature if useHeatPort = false [K]                                               |
+---------------------------------------------------------------------------------------------------------+---------------+-----------+---------------------------------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+----------------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------------------------+
| Type                                                                                                                 | Name       | Description                                                      |
+======================================================================================================================+============+==================================================================+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_        | p          | Positive pin (potential p.v > n.v for positive voltage drop v)   |
+----------------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------------------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_        | n          | Negative pin                                                     |
+----------------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------------------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPort   |                                                                  |
+----------------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Resistor "Ideal linear electrical resistor"
      parameter Modelica.SIunits.Resistance R(start=1) 
        "Resistance at temperature T_ref";
      parameter Modelica.SIunits.Temperature T_ref=300.15 "Reference temperature";
      parameter Modelica.SIunits.LinearTemperatureCoefficient alpha=0 
        "Temperature coefficient of resistance (R_actual = R*(1 + alpha*(T_heatPort - T_ref))";

      extends Modelica.Electrical.Analog.Interfaces.OnePort;
      extends Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort(                    T = T_ref);
      Modelica.SIunits.Resistance R_actual 
        "Actual resistance = R*(1 + alpha*(T_heatPort - T_ref))";

    equation 
      assert((1 + alpha*(T_heatPort - T_ref)) >= Modelica.Constants.eps, "Temperature outside scope of model!");
      R_actual = R*(1 + alpha*(T_heatPort - T_ref));
      v = R_actual*i;
      LossPower = v*i;
    end Resistor;

--------------

|image46| `Modelica.Electrical.Analog.Basic <Modelica_Electrical_Analog_Basic.html#Modelica.Electrical.Analog.Basic>`_.HeatingResistor
--------------------------------------------------------------------------------------------------------------------------------------

**Temperature dependent electrical resistor**

.. figure:: Modelica.Electrical.Analog.Basic.HeatingResistorD.png
   :align: center
   :alt: Modelica.Electrical.Analog.Basic.HeatingResistor

   Modelica.Electrical.Analog.Basic.HeatingResistor

Information
~~~~~~~~~~~

::

This is a model for an electrical resistor where the generated heat is
dissipated to the environment via connector **heatPort** and where the
resistance R is temperature dependent according to the following
equation:

::

        R = R_ref*(1 + alpha*(heatPort.T - T_ref))

**alpha** is the **temperature coefficient of resistance**, which is
often abbreviated as **TCR**. In resistor catalogues, it is usually
defined as **X [ppm/K]** (parts per million, similarly to per centage)
meaning **X\*1.e-6 [1/K]**. Resistors are available for 1 .. 7000 ppm/K,
i.e., alpha = 1e-6 .. 7e-3 1/K;

Via parameter **useHeatPort** the heatPort connector can be enabled and
disabled (default = enabled). If it is disabled, the generated heat is
transported implicitly to an internal temperature source with a fixed
temperature of T\_ref.

If the heatPort connector is enabled, it must be connected.

::

Extends from
`Modelica.Electrical.Analog.Interfaces.OnePort <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.OnePort>`_
(Component with two electrical pins p and n and current i from p to n),
`Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort>`_
(Partial model to include a conditional HeatPort in order to describe
the power loss via a thermal network).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------+---------------+-----------+-----------------------------------------------------------------------------------------------+
| Type                                                                                                    | Name          | Default   | Description                                                                                   |
+=========================================================================================================+===============+===========+===============================================================================================+
| `Resistance <Modelica_SIunits.html#Modelica.SIunits.Resistance>`_                                       | R\_ref        |           | Resistance at temperature T\_ref [Ohm]                                                        |
+---------------------------------------------------------------------------------------------------------+---------------+-----------+-----------------------------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                     | T\_ref        | 300.15    | Reference temperature [K]                                                                     |
+---------------------------------------------------------------------------------------------------------+---------------+-----------+-----------------------------------------------------------------------------------------------+
| `LinearTemperatureCoefficient <Modelica_SIunits.html#Modelica.SIunits.LinearTemperatureCoefficient>`_   | alpha         | 0         | Temperature coefficient of resistance (R = R\_ref\*(1 + alpha\*(heatPort.T - T\_ref)) [1/K]   |
+---------------------------------------------------------------------------------------------------------+---------------+-----------+-----------------------------------------------------------------------------------------------+
| Boolean                                                                                                 | useHeatPort   | true      | =true, if HeatPort is enabled                                                                 |
+---------------------------------------------------------------------------------------------------------+---------------+-----------+-----------------------------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                     | T             | T\_ref    | Fixed device temperature if useHeatPort = false [K]                                           |
+---------------------------------------------------------------------------------------------------------+---------------+-----------+-----------------------------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+----------------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------------------------+
| Type                                                                                                                 | Name       | Description                                                      |
+======================================================================================================================+============+==================================================================+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_        | p          | Positive pin (potential p.v > n.v for positive voltage drop v)   |
+----------------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------------------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_        | n          | Negative pin                                                     |
+----------------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------------------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPort   |                                                                  |
+----------------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model HeatingResistor "Temperature dependent electrical resistor"
      parameter Modelica.SIunits.Resistance R_ref(start=1) 
        "Resistance at temperature T_ref";
      parameter Modelica.SIunits.Temperature T_ref=300.15 "Reference temperature";
      parameter Modelica.SIunits.LinearTemperatureCoefficient alpha=0 
        "Temperature coefficient of resistance (R = R_ref*(1 + alpha*(heatPort.T - T_ref))";
      extends Modelica.Electrical.Analog.Interfaces.OnePort;
      extends Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort(                    T = T_ref, useHeatPort=true);
      Modelica.SIunits.Resistance R 
        "Resistance = R_ref*(1 + alpha*(T_heatPort - T_ref))";
    equation 
      assert((1 + alpha*(T_heatPort - T_ref)) >= Modelica.Constants.eps, "Temperature outside scope of model!");
      R = R_ref*(1 + alpha*(T_heatPort - T_ref));
      v = R*i;
      LossPower = v*i;
    end HeatingResistor;

--------------

|image47| `Modelica.Electrical.Analog.Basic <Modelica_Electrical_Analog_Basic.html#Modelica.Electrical.Analog.Basic>`_.Conductor
--------------------------------------------------------------------------------------------------------------------------------

**Ideal linear electrical conductor**

.. figure:: Modelica.Electrical.Analog.Basic.ConductorD.png
   :align: center
   :alt: Modelica.Electrical.Analog.Basic.Conductor

   Modelica.Electrical.Analog.Basic.Conductor

Information
~~~~~~~~~~~

::

The linear conductor connects the branch voltage *v* with the branch
current *i* by *i = v\*G*. The Conductance *G* is allowed to be
positive, zero, or negative.

::

Extends from
`Modelica.Electrical.Analog.Interfaces.OnePort <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.OnePort>`_
(Component with two electrical pins p and n and current i from p to n),
`Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort>`_
(Partial model to include a conditional HeatPort in order to describe
the power loss via a thermal network).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------+---------------+-----------+--------------------------------------------------------------------------------------------------------+
| Type                                                                                                    | Name          | Default   | Description                                                                                            |
+=========================================================================================================+===============+===========+========================================================================================================+
| `Conductance <Modelica_SIunits.html#Modelica.SIunits.Conductance>`_                                     | G             |           | Conductance at temperature T\_ref [S]                                                                  |
+---------------------------------------------------------------------------------------------------------+---------------+-----------+--------------------------------------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                     | T\_ref        | 300.15    | Reference temperature [K]                                                                              |
+---------------------------------------------------------------------------------------------------------+---------------+-----------+--------------------------------------------------------------------------------------------------------+
| `LinearTemperatureCoefficient <Modelica_SIunits.html#Modelica.SIunits.LinearTemperatureCoefficient>`_   | alpha         | 0         | Temperature coefficient of conductance (G\_actual = G\_ref/(1 + alpha\*(T\_heatPort - T\_ref)) [1/K]   |
+---------------------------------------------------------------------------------------------------------+---------------+-----------+--------------------------------------------------------------------------------------------------------+
| Boolean                                                                                                 | useHeatPort   | false     | =true, if HeatPort is enabled                                                                          |
+---------------------------------------------------------------------------------------------------------+---------------+-----------+--------------------------------------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                     | T             | T\_ref    | Fixed device temperature if useHeatPort = false [K]                                                    |
+---------------------------------------------------------------------------------------------------------+---------------+-----------+--------------------------------------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+----------------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------------------------+
| Type                                                                                                                 | Name       | Description                                                      |
+======================================================================================================================+============+==================================================================+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_        | p          | Positive pin (potential p.v > n.v for positive voltage drop v)   |
+----------------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------------------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_        | n          | Negative pin                                                     |
+----------------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------------------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPort   |                                                                  |
+----------------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Conductor "Ideal linear electrical conductor"
      parameter Modelica.SIunits.Conductance G(start=1) 
        "Conductance at temperature T_ref";
      parameter Modelica.SIunits.Temperature T_ref=300.15 "Reference temperature";
      parameter Modelica.SIunits.LinearTemperatureCoefficient alpha=0 
        "Temperature coefficient of conductance (G_actual = G_ref/(1 + alpha*(T_heatPort - T_ref))";
      extends Modelica.Electrical.Analog.Interfaces.OnePort;
      extends Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort(
                                                                   T = T_ref);
      Modelica.SIunits.Conductance G_actual 
        "Actual conductance = G_ref/(1 + alpha*(T_heatPort - T_ref))";

    equation 
      assert((1 + alpha*(T_heatPort - T_ref)) >= Modelica.Constants.eps, "Temperature outside scope of model!");
      G_actual = G/(1 + alpha*(T_heatPort - T_ref));
      i = G_actual*v;
      LossPower = v*i;
    end Conductor;

--------------

|image48| `Modelica.Electrical.Analog.Basic <Modelica_Electrical_Analog_Basic.html#Modelica.Electrical.Analog.Basic>`_.Capacitor
--------------------------------------------------------------------------------------------------------------------------------

**Ideal linear electrical capacitor**

.. figure:: Modelica.Electrical.Analog.Basic.CapacitorD.png
   :align: center
   :alt: Modelica.Electrical.Analog.Basic.Capacitor

   Modelica.Electrical.Analog.Basic.Capacitor

Information
~~~~~~~~~~~

::

The linear capacitor connects the branch voltage *v* with the branch
current *i* by *i = C \* dv/dt*. The Capacitance *C* is allowed to be
positive, zero, or negative.

::

Extends from
`Interfaces.OnePort <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.OnePort>`_
(Component with two electrical pins p and n and current i from p to n).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------+--------+-----------+-------------------+
| Type                                                                  | Name   | Default   | Description       |
+=======================================================================+========+===========+===================+
| `Capacitance <Modelica_SIunits.html#Modelica.SIunits.Capacitance>`_   | C      |           | Capacitance [F]   |
+-----------------------------------------------------------------------+--------+-----------+-------------------+

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

    model Capacitor "Ideal linear electrical capacitor"
      extends Interfaces.OnePort;
      parameter SI.Capacitance C(start=1) "Capacitance";

    equation 
      i = C*der(v);
    end Capacitor;

--------------

|image49| `Modelica.Electrical.Analog.Basic <Modelica_Electrical_Analog_Basic.html#Modelica.Electrical.Analog.Basic>`_.Inductor
-------------------------------------------------------------------------------------------------------------------------------

**Ideal linear electrical inductor**

.. figure:: Modelica.Electrical.Analog.Basic.InductorD.png
   :align: center
   :alt: Modelica.Electrical.Analog.Basic.Inductor

   Modelica.Electrical.Analog.Basic.Inductor

Information
~~~~~~~~~~~

::

The linear inductor connects the branch voltage *v* with the branch
current *i* by *v = L \* di/dt*. The Inductance *L* is allowed to be
positive, zero, or negative.

::

Extends from
`Interfaces.OnePort <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.OnePort>`_
(Component with two electrical pins p and n and current i from p to n).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------+--------+-----------+------------------+
| Type                                                                | Name   | Default   | Description      |
+=====================================================================+========+===========+==================+
| `Inductance <Modelica_SIunits.html#Modelica.SIunits.Inductance>`_   | L      |           | Inductance [H]   |
+---------------------------------------------------------------------+--------+-----------+------------------+

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

    model Inductor "Ideal linear electrical inductor"
      extends Interfaces.OnePort;
      parameter SI.Inductance L(start=1) "Inductance";
    equation 
      L*der(i) = v;
    end Inductor;

--------------

|image50| `Modelica.Electrical.Analog.Basic <Modelica_Electrical_Analog_Basic.html#Modelica.Electrical.Analog.Basic>`_.SaturatingInductor
-----------------------------------------------------------------------------------------------------------------------------------------

**Simple model of an inductor with saturation**

.. figure:: Modelica.Electrical.Analog.Basic.SaturatingInductorD.png
   :align: center
   :alt: Modelica.Electrical.Analog.Basic.SaturatingInductor

   Modelica.Electrical.Analog.Basic.SaturatingInductor

Information
~~~~~~~~~~~

::

This model approximates the behaviour of an inductor with the influence
of saturation, i.e., the value of the inductance depends on the current
flowing through the inductor. The inductance decreases as current
increases.

The parameters are:

-  Inom...nominal current
-  Lnom...nominal inductance at nominal current
-  Lzer...inductance near current = 0; Lzer has to be greater than Lnom
-  Linf...inductance at large currents; Linf has to be less than Lnom

::

Extends from
`Modelica.Electrical.Analog.Interfaces.OnePort <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.OnePort>`_
(Component with two electrical pins p and n and current i from p to n).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------+--------+-----------+---------------------------------------------+
| Type                                                                | Name   | Default   | Description                                 |
+=====================================================================+========+===========+=============================================+
| `Current <Modelica_SIunits.html#Modelica.SIunits.Current>`_         | Inom   |           | Nominal current [A]                         |
+---------------------------------------------------------------------+--------+-----------+---------------------------------------------+
| `Inductance <Modelica_SIunits.html#Modelica.SIunits.Inductance>`_   | Lnom   |           | Nominal inductance at Nominal current [H]   |
+---------------------------------------------------------------------+--------+-----------+---------------------------------------------+
| `Inductance <Modelica_SIunits.html#Modelica.SIunits.Inductance>`_   | Lzer   |           | Inductance near current=0 [H]               |
+---------------------------------------------------------------------+--------+-----------+---------------------------------------------+
| `Inductance <Modelica_SIunits.html#Modelica.SIunits.Inductance>`_   | Linf   |           | Inductance at large currents [H]            |
+---------------------------------------------------------------------+--------+-----------+---------------------------------------------+

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

    model SaturatingInductor 
      "Simple model of an inductor with saturation"
      extends Modelica.Electrical.Analog.Interfaces.OnePort;
      parameter Modelica.SIunits.Current Inom(start=1) "Nominal current";
      parameter Modelica.SIunits.Inductance Lnom(start=1) 
        "Nominal inductance at Nominal current";
      parameter Modelica.SIunits.Inductance Lzer(start=2*Lnom) 
        "Inductance near current=0";
      parameter Modelica.SIunits.Inductance Linf(start=Lnom/2) 
        "Inductance at large currents";
      Modelica.SIunits.Inductance Lact(start=Lzer);
      Modelica.SIunits.MagneticFlux Psi;
    protected 
      parameter Modelica.SIunits.Current Ipar(start=Inom/10, fixed=false);
    initial equation 
      (Lnom - Linf) = (Lzer - Linf)*Ipar/Inom*(Modelica.Constants.pi/2-Modelica.Math.atan(Ipar/Inom));
    equation 
      assert(Lzer > Lnom+Modelica.Constants.eps,
             "Lzer (= " + String(Lzer) + ") has to be > Lnom (= " + String(Lnom) + ")");
      assert(Linf < Lnom-Modelica.Constants.eps,
             "Linf (= " + String(Linf) + ") has to be < Lnom (= " + String(Lnom) + ")");
      (Lact - Linf)*i/Ipar = (Lzer - Linf)*noEvent(Modelica.Math.atan(i/Ipar));
      Psi = Lact*i;
      v = der(Psi);
    end SaturatingInductor;

--------------

|image51| `Modelica.Electrical.Analog.Basic <Modelica_Electrical_Analog_Basic.html#Modelica.Electrical.Analog.Basic>`_.Transformer
----------------------------------------------------------------------------------------------------------------------------------

**Transformer with two ports**

.. figure:: Modelica.Electrical.Analog.Basic.TransformerD.png
   :align: center
   :alt: Modelica.Electrical.Analog.Basic.Transformer

   Modelica.Electrical.Analog.Basic.Transformer

Information
~~~~~~~~~~~

::

The transformer is a two port. The left port voltage *v1*, left port
current *i1*, right port voltage *v2* and right port current *i2* are
connected by the following relation:

::

             | v1 |         | L1   M  |  | i1'; |
             |    |    =    |         |  |     |
             | v2 |         | M    L2 |  | i2'; |

*L1*, *L2*, and *M* are the primary, secondary, and coupling inductances
respectively.

::

Extends from
`Interfaces.TwoPort <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.TwoPort>`_
(Component with two electrical ports, including current).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------+--------+-----------+----------------------------+
| Type                                                                | Name   | Default   | Description                |
+=====================================================================+========+===========+============================+
| `Inductance <Modelica_SIunits.html#Modelica.SIunits.Inductance>`_   | L1     |           | Primary inductance [H]     |
+---------------------------------------------------------------------+--------+-----------+----------------------------+
| `Inductance <Modelica_SIunits.html#Modelica.SIunits.Inductance>`_   | L2     |           | Secondary inductance [H]   |
+---------------------------------------------------------------------+--------+-----------+----------------------------+
| `Inductance <Modelica_SIunits.html#Modelica.SIunits.Inductance>`_   | M      |           | Coupling inductance [H]    |
+---------------------------------------------------------------------+--------+-----------+----------------------------+

Connectors
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------+--------+---------------------------------------------------------------------------------------+
| Type                                                                                                            | Name   | Description                                                                           |
+=================================================================================================================+========+=======================================================================================+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_   | p1     | Positive pin of the left port (potential p1.v > n1.v for positive voltage drop v1)    |
+-----------------------------------------------------------------------------------------------------------------+--------+---------------------------------------------------------------------------------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_   | n1     | Negative pin of the left port                                                         |
+-----------------------------------------------------------------------------------------------------------------+--------+---------------------------------------------------------------------------------------+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_   | p2     | Positive pin of the right port (potential p2.v > n2.v for positive voltage drop v2)   |
+-----------------------------------------------------------------------------------------------------------------+--------+---------------------------------------------------------------------------------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_   | n2     | Negative pin of the right port                                                        |
+-----------------------------------------------------------------------------------------------------------------+--------+---------------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Transformer "Transformer with two ports"
      extends Interfaces.TwoPort;
      parameter SI.Inductance L1(start=1) "Primary inductance";
      parameter SI.Inductance L2(start=1) "Secondary inductance";
      parameter SI.Inductance M(start=1) "Coupling inductance";
    equation 
      v1 = L1*der(i1) + M*der(i2);
      v2 = M*der(i1) + L2*der(i2);
    end Transformer;

--------------

|image52| `Modelica.Electrical.Analog.Basic <Modelica_Electrical_Analog_Basic.html#Modelica.Electrical.Analog.Basic>`_.M\_Transformer
-------------------------------------------------------------------------------------------------------------------------------------

**Generic transformer with free number of inductors**

.. figure:: Modelica.Electrical.Analog.Basic.M_TransformerD.png
   :align: center
   :alt: Modelica.Electrical.Analog.Basic.M\_Transformer

   Modelica.Electrical.Analog.Basic.M\_Transformer

Information
~~~~~~~~~~~

::

The model *M\_Transformer* is a model of a transformer with the
posibility to choose the number of inductors. Inside the model, an
inductance matrix is built based on the inductance of the inductors and
the coupling inductances between the inductors given as a parameter
vector from the user of the model.

An example shows that approach:
 The user chooses a model with **three** inductors, that means the
parameter ***N*** has to be **3**. Then he has to specify the
inductances of the three inductors and the three coupling inductances.
The coupling inductances are no real existing devices, but effects that
occur between two inductors. The inductivities (main diagonal of the
inductance matrix) and the coupling inductivities have to be specified
in the parameter vector *L*. The length *dimL* of the parameter vector
is calculated as follows: ***dimL=(N\*(N+1))/2***

The following example shows how the parameter vector is used to fill in
the inductance matrix. To specify the inductance matrix of a three
inductances transformer (*N=3*):
 |L\_m|
the user has to allocate the parameter vector *L[6]*, since
*Nv=(N\*(N+1))/2=(3\*(3+1))/2=6*. The parameter vector must be filled
like this: *L=[1,0.1,0.2,2,0.3,3]*.

Inside the model, two loops are used to fill the inductance matrix to
guarantee that it is filled in a symmetric way.

::

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------+-----------+-----------------------+--------------------------------------------+
| Type                                                                | Name      | Default               | Description                                |
+=====================================================================+===========+=======================+============================================+
| Integer                                                             | N         | 3                     | number of inductors                        |
+---------------------------------------------------------------------+-----------+-----------------------+--------------------------------------------+
| `Inductance <Modelica_SIunits.html#Modelica.SIunits.Inductance>`_   | L[dimL]   | {1,0.1,0.2,2,0.3,3}   | inductances and coupling inductances [H]   |
+---------------------------------------------------------------------+-----------+-----------------------+--------------------------------------------+

Connectors
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------+--------+----------------+
| Type                                                                                                            | Name   | Description    |
+=================================================================================================================+========+================+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_   | p[N]   | Positive pin   |
+-----------------------------------------------------------------------------------------------------------------+--------+----------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_   | n[N]   | Negative pin   |
+-----------------------------------------------------------------------------------------------------------------+--------+----------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model M_Transformer 
      "Generic transformer with free number of inductors"

      parameter Integer N(final min=1)=3 "number of inductors";
    protected 
      parameter Integer dimL=div(N*(N+1),2);
    public 
      parameter Modelica.SIunits.Inductance L[dimL]={1,0.1,0.2,2,0.3,3} 
        "inductances and coupling inductances";
      Modelica.Electrical.Analog.Interfaces.PositivePin p[N] "Positive pin";
      Modelica.Electrical.Analog.Interfaces.NegativePin n[N] "Negative pin";

      Modelica.SIunits.Voltage v[N];
      Modelica.SIunits.Current i[N];
      Modelica.SIunits.Inductance Lm[N,N];
    algorithm 
      for s in 1:N loop
         for z in 1:N loop
           Lm[z,s]:= if (z>=s) then L[(s-1)*N+z-div((s-1)*s,2)] else 
                     Lm[s,z];
         end for;
      end for;

    equation 
      for j in 1:N loop
        v[j] = p[j].v - n[j].v;
        0 = p[j].i + n[j].i;
        i[j] = p[j].i;
      end for;

      v =Lm*der(i);

    end M_Transformer;

--------------

|image54| `Modelica.Electrical.Analog.Basic <Modelica_Electrical_Analog_Basic.html#Modelica.Electrical.Analog.Basic>`_.Gyrator
------------------------------------------------------------------------------------------------------------------------------

**Gyrator**

.. figure:: Modelica.Electrical.Analog.Basic.GyratorD.png
   :align: center
   :alt: Modelica.Electrical.Analog.Basic.Gyrator

   Modelica.Electrical.Analog.Basic.Gyrator

Information
~~~~~~~~~~~

::

A gyrator is a two-port element defined by the following equations:

::

        i1 =  G2 * v2
        i2 = -G1 * v1

where the constants *G1*, *G2* are called the gyration conductance.

::

Extends from
`Interfaces.TwoPort <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.TwoPort>`_
(Component with two electrical ports, including current).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------+--------+-----------+----------------------------+
| Type                                                                  | Name   | Default   | Description                |
+=======================================================================+========+===========+============================+
| `Conductance <Modelica_SIunits.html#Modelica.SIunits.Conductance>`_   | G1     |           | Gyration conductance [S]   |
+-----------------------------------------------------------------------+--------+-----------+----------------------------+
| `Conductance <Modelica_SIunits.html#Modelica.SIunits.Conductance>`_   | G2     |           | Gyration conductance [S]   |
+-----------------------------------------------------------------------+--------+-----------+----------------------------+

Connectors
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------+--------+---------------------------------------------------------------------------------------+
| Type                                                                                                            | Name   | Description                                                                           |
+=================================================================================================================+========+=======================================================================================+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_   | p1     | Positive pin of the left port (potential p1.v > n1.v for positive voltage drop v1)    |
+-----------------------------------------------------------------------------------------------------------------+--------+---------------------------------------------------------------------------------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_   | n1     | Negative pin of the left port                                                         |
+-----------------------------------------------------------------------------------------------------------------+--------+---------------------------------------------------------------------------------------+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_   | p2     | Positive pin of the right port (potential p2.v > n2.v for positive voltage drop v2)   |
+-----------------------------------------------------------------------------------------------------------------+--------+---------------------------------------------------------------------------------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_   | n2     | Negative pin of the right port                                                        |
+-----------------------------------------------------------------------------------------------------------------+--------+---------------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Gyrator "Gyrator"
      extends Interfaces.TwoPort;
      parameter SI.Conductance G1(start=1) "Gyration conductance";
      parameter SI.Conductance G2(start=1) "Gyration conductance";
    equation 
      i1 = G2*v2;
      i2 = -G1*v1;
    end Gyrator;

--------------

|image55| `Modelica.Electrical.Analog.Basic <Modelica_Electrical_Analog_Basic.html#Modelica.Electrical.Analog.Basic>`_.EMF
--------------------------------------------------------------------------------------------------------------------------

**Electromotoric force (electric/mechanic transformer)**

.. figure:: Modelica.Electrical.Analog.Basic.EMFD.png
   :align: center
   :alt: Modelica.Electrical.Analog.Basic.EMF

   Modelica.Electrical.Analog.Basic.EMF

Information
~~~~~~~~~~~

::

EMF transforms electrical energy into rotational mechanical energy. It
is used as basic building block of an electrical motor. The mechanical
connector flange can be connected to elements of the
Modelica.Mechanics.Rotational library. flange.tau is the cut-torque,
flange.phi is the angle at the rotational connection.

::

Parameters
~~~~~~~~~~

+-------------------------------------------------------------------------------------------------+--------------+-----------+--------------------------------------------------------------------+
| Type                                                                                            | Name         | Default   | Description                                                        |
+=================================================================================================+==============+===========+====================================================================+
| Boolean                                                                                         | useSupport   | false     | = true, if support flange enabled, otherwise implicitly grounded   |
+-------------------------------------------------------------------------------------------------+--------------+-----------+--------------------------------------------------------------------+
| `ElectricalTorqueConstant <Modelica_SIunits.html#Modelica.SIunits.ElectricalTorqueConstant>`_   | k            |           | Transformation coefficient [N.m/A]                                 |
+-------------------------------------------------------------------------------------------------+--------------+-----------+--------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------+-----------+--------------------------------+
| Type                                                                                                             | Name      | Description                    |
+==================================================================================================================+===========+================================+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_    | p         |                                |
+------------------------------------------------------------------------------------------------------------------+-----------+--------------------------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_    | n         |                                |
+------------------------------------------------------------------------------------------------------------------+-----------+--------------------------------+
| `Flange\_b <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.Flange_b>`_   | flange    |                                |
+------------------------------------------------------------------------------------------------------------------+-----------+--------------------------------+
| `Support <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.Support>`_      | support   | Support/housing of emf shaft   |
+------------------------------------------------------------------------------------------------------------------+-----------+--------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model EMF "Electromotoric force (electric/mechanic transformer)"
      parameter Boolean useSupport=false 
        "= true, if support flange enabled, otherwise implicitly grounded";
      parameter SI.ElectricalTorqueConstant k(start=1) "Transformation coefficient";
      SI.Voltage v "Voltage drop between the two pins";
      SI.Current i "Current flowing from positive to negative pin";
      SI.Angle phi 
        "Angle of shaft flange with respect to support (= flange.phi - support.phi)";
      SI.AngularVelocity w "Angular velocity of flange relative to support";
      Interfaces.PositivePin p;
      Interfaces.NegativePin n;
      Modelica.Mechanics.Rotational.Interfaces.Flange_b flange;
      Mechanics.Rotational.Interfaces.Support support if useSupport 
        "Support/housing of emf shaft";
    protected 
      Mechanics.Rotational.Components.Fixed fixed if not useSupport;
      Mechanics.Rotational.Interfaces.InternalSupport internalSupport(tau=-flange.tau);
    equation 
      v = p.v - n.v;
      0 = p.i + n.i;
      i = p.i;

      phi = flange.phi - internalSupport.phi;
      w = der(phi);
      k*w = v;
      flange.tau = -k*i;
      connect(internalSupport.flange, support);
      connect(internalSupport.flange,fixed. flange);
    end EMF;

--------------

|image56| `Modelica.Electrical.Analog.Basic <Modelica_Electrical_Analog_Basic.html#Modelica.Electrical.Analog.Basic>`_.TranslationalEMF
---------------------------------------------------------------------------------------------------------------------------------------

**Electromotoric force (electric/mechanic transformer)**

.. figure:: Modelica.Electrical.Analog.Basic.TranslationalEMFD.png
   :align: center
   :alt: Modelica.Electrical.Analog.Basic.TranslationalEMF

   Modelica.Electrical.Analog.Basic.TranslationalEMF

Information
~~~~~~~~~~~

::

EMF transforms electrical energy into translational mechanical energy.
It is used as basic building block of an electrical linear motor. The
mechanical connector flange can be connected to elements of the
Modelica.Mechanics.Translational library. flange.f is the cut-force,
flange.s is the distance at the translational connection.

::

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------+--------------+-----------+--------------------------------------------------------------------+
| Type                                                                                          | Name         | Default   | Description                                                        |
+===============================================================================================+==============+===========+====================================================================+
| Boolean                                                                                       | useSupport   | false     | = true, if support flange enabled, otherwise implicitly grounded   |
+-----------------------------------------------------------------------------------------------+--------------+-----------+--------------------------------------------------------------------+
| `ElectricalForceConstant <Modelica_SIunits.html#Modelica.SIunits.ElectricalForceConstant>`_   | k            |           | Transformation coefficient [N/A]                                   |
+-----------------------------------------------------------------------------------------------+--------------+-----------+--------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------+-----------+-------------------+
| Type                                                                                                                   | Name      | Description       |
+========================================================================================================================+===========+===================+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_          | p         |                   |
+------------------------------------------------------------------------------------------------------------------------+-----------+-------------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_          | n         |                   |
+------------------------------------------------------------------------------------------------------------------------+-----------+-------------------+
| `Flange\_b <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.Flange_b>`_   | flange    |                   |
+------------------------------------------------------------------------------------------------------------------------+-----------+-------------------+
| `Support <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.Support>`_      | support   | Support/housing   |
+------------------------------------------------------------------------------------------------------------------------+-----------+-------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model TranslationalEMF 
      "Electromotoric force (electric/mechanic transformer)"
      parameter Boolean useSupport=false 
        "= true, if support flange enabled, otherwise implicitly grounded";
      parameter Modelica.SIunits.ElectricalForceConstant k(start=1) 
        "Transformation coefficient";

      Modelica.SIunits.Voltage v "Voltage drop between the two pins";
      Modelica.SIunits.Current i "Current flowing from positive to negative pin";
      Modelica.SIunits.Position s "Position of flange relative to support";
      Modelica.SIunits.Velocity vel "Velocity of flange relative to support";

      Modelica.Electrical.Analog.Interfaces.PositivePin p;
      Modelica.Electrical.Analog.Interfaces.NegativePin n;
      Modelica.Mechanics.Translational.Interfaces.Flange_b flange;
      Modelica.Mechanics.Translational.Interfaces.Support support if useSupport 
        "Support/housing";
    protected 
      Modelica.Mechanics.Translational.Components.Fixed fixed if not useSupport;
      Modelica.Mechanics.Translational.Interfaces.InternalSupport internalSupport(f=-flange.f);
    equation 
      v = p.v - n.v;
      0 = p.i + n.i;
      i = p.i;

      s = flange.s - internalSupport.s;
      vel = der(s);
      k*vel = v;
      flange.f = -k*i;
      connect(internalSupport.flange, support);
      connect(internalSupport.flange, fixed.flange);
    end TranslationalEMF;

--------------

|image57| `Modelica.Electrical.Analog.Basic <Modelica_Electrical_Analog_Basic.html#Modelica.Electrical.Analog.Basic>`_.VCV
--------------------------------------------------------------------------------------------------------------------------

**Linear voltage-controlled voltage source**

.. figure:: Modelica.Electrical.Analog.Basic.VCVD.png
   :align: center
   :alt: Modelica.Electrical.Analog.Basic.VCV

   Modelica.Electrical.Analog.Basic.VCV

Information
~~~~~~~~~~~

::

The linear voltage-controlled voltage source is a TwoPort. The right
port voltage v2 is controlled by the left port voltage v1 via

::

        v2 = v1 * gain. 

The left port current is zero. Any voltage gain can be chosen.

::

Extends from
`Interfaces.TwoPort <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.TwoPort>`_
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

+-----------------------------------------------------------------------------------------------------------------+--------+---------------------------------------------------------------------------------------+
| Type                                                                                                            | Name   | Description                                                                           |
+=================================================================================================================+========+=======================================================================================+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_   | p1     | Positive pin of the left port (potential p1.v > n1.v for positive voltage drop v1)    |
+-----------------------------------------------------------------------------------------------------------------+--------+---------------------------------------------------------------------------------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_   | n1     | Negative pin of the left port                                                         |
+-----------------------------------------------------------------------------------------------------------------+--------+---------------------------------------------------------------------------------------+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_   | p2     | Positive pin of the right port (potential p2.v > n2.v for positive voltage drop v2)   |
+-----------------------------------------------------------------------------------------------------------------+--------+---------------------------------------------------------------------------------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_   | n2     | Negative pin of the right port                                                        |
+-----------------------------------------------------------------------------------------------------------------+--------+---------------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model VCV "Linear voltage-controlled voltage source"
      extends Interfaces.TwoPort;
      parameter Real gain(start=1) "Voltage gain";

    equation 
      v2 = v1*gain;
      i1 = 0;
    end VCV;

--------------

|image58| `Modelica.Electrical.Analog.Basic <Modelica_Electrical_Analog_Basic.html#Modelica.Electrical.Analog.Basic>`_.VCC
--------------------------------------------------------------------------------------------------------------------------

**Linear voltage-controlled current source**

.. figure:: Modelica.Electrical.Analog.Basic.VCCD.png
   :align: center
   :alt: Modelica.Electrical.Analog.Basic.VCC

   Modelica.Electrical.Analog.Basic.VCC

Information
~~~~~~~~~~~

::

The linear voltage-controlled current source is a TwoPort. The right
port current i2 is controlled by the left port voltage v1 via

::

        i2 = v1 * transConductance. 

The left port current is zero. Any transConductance can be chosen.

::

Extends from
`Interfaces.TwoPort <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.TwoPort>`_
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

+-----------------------------------------------------------------------------------------------------------------+--------+---------------------------------------------------------------------------------------+
| Type                                                                                                            | Name   | Description                                                                           |
+=================================================================================================================+========+=======================================================================================+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_   | p1     | Positive pin of the left port (potential p1.v > n1.v for positive voltage drop v1)    |
+-----------------------------------------------------------------------------------------------------------------+--------+---------------------------------------------------------------------------------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_   | n1     | Negative pin of the left port                                                         |
+-----------------------------------------------------------------------------------------------------------------+--------+---------------------------------------------------------------------------------------+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_   | p2     | Positive pin of the right port (potential p2.v > n2.v for positive voltage drop v2)   |
+-----------------------------------------------------------------------------------------------------------------+--------+---------------------------------------------------------------------------------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_   | n2     | Negative pin of the right port                                                        |
+-----------------------------------------------------------------------------------------------------------------+--------+---------------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model VCC "Linear voltage-controlled current source"
      extends Interfaces.TwoPort;
      parameter SI.Conductance transConductance(start=1) "Transconductance";
    equation 
      i2 = v1*transConductance;
      i1 = 0;
    end VCC;

--------------

|image59| `Modelica.Electrical.Analog.Basic <Modelica_Electrical_Analog_Basic.html#Modelica.Electrical.Analog.Basic>`_.CCV
--------------------------------------------------------------------------------------------------------------------------

**Linear current-controlled voltage source**

.. figure:: Modelica.Electrical.Analog.Basic.CCVD.png
   :align: center
   :alt: Modelica.Electrical.Analog.Basic.CCV

   Modelica.Electrical.Analog.Basic.CCV

Information
~~~~~~~~~~~

::

The linear current-controlled voltage source is a TwoPort. The right
port voltage v2 is controlled by the left port current i1 via

::

        v2 = i1 * transResistance. 

The left port voltage is zero. Any transResistance can be chosen.

::

Extends from
`Interfaces.TwoPort <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.TwoPort>`_
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

+-----------------------------------------------------------------------------------------------------------------+--------+---------------------------------------------------------------------------------------+
| Type                                                                                                            | Name   | Description                                                                           |
+=================================================================================================================+========+=======================================================================================+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_   | p1     | Positive pin of the left port (potential p1.v > n1.v for positive voltage drop v1)    |
+-----------------------------------------------------------------------------------------------------------------+--------+---------------------------------------------------------------------------------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_   | n1     | Negative pin of the left port                                                         |
+-----------------------------------------------------------------------------------------------------------------+--------+---------------------------------------------------------------------------------------+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_   | p2     | Positive pin of the right port (potential p2.v > n2.v for positive voltage drop v2)   |
+-----------------------------------------------------------------------------------------------------------------+--------+---------------------------------------------------------------------------------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_   | n2     | Negative pin of the right port                                                        |
+-----------------------------------------------------------------------------------------------------------------+--------+---------------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model CCV "Linear current-controlled voltage source"
      extends Interfaces.TwoPort;

      parameter SI.Resistance transResistance(start=1) "Transresistance";

    equation 
      v2 = i1*transResistance;
      v1 = 0;
    end CCV;

--------------

|image60| `Modelica.Electrical.Analog.Basic <Modelica_Electrical_Analog_Basic.html#Modelica.Electrical.Analog.Basic>`_.CCC
--------------------------------------------------------------------------------------------------------------------------

**Linear current-controlled current source**

.. figure:: Modelica.Electrical.Analog.Basic.CCCD.png
   :align: center
   :alt: Modelica.Electrical.Analog.Basic.CCC

   Modelica.Electrical.Analog.Basic.CCC

Information
~~~~~~~~~~~

::

The linear current-controlled current source is a TwoPort. The right
port current i2 is controlled by the left port current i1 via

::

        i2 = i1 * gain. 

The left port voltage is zero. Any current gain can be chosen.

::

Extends from
`Interfaces.TwoPort <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.TwoPort>`_
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

+-----------------------------------------------------------------------------------------------------------------+--------+---------------------------------------------------------------------------------------+
| Type                                                                                                            | Name   | Description                                                                           |
+=================================================================================================================+========+=======================================================================================+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_   | p1     | Positive pin of the left port (potential p1.v > n1.v for positive voltage drop v1)    |
+-----------------------------------------------------------------------------------------------------------------+--------+---------------------------------------------------------------------------------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_   | n1     | Negative pin of the left port                                                         |
+-----------------------------------------------------------------------------------------------------------------+--------+---------------------------------------------------------------------------------------+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_   | p2     | Positive pin of the right port (potential p2.v > n2.v for positive voltage drop v2)   |
+-----------------------------------------------------------------------------------------------------------------+--------+---------------------------------------------------------------------------------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_   | n2     | Negative pin of the right port                                                        |
+-----------------------------------------------------------------------------------------------------------------+--------+---------------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model CCC "Linear current-controlled current source"
      extends Interfaces.TwoPort;
      parameter Real gain(start=1) "Current gain";

    equation 
      i2 = i1*gain;
      v1 = 0;
    end CCC;

--------------

|image61| `Modelica.Electrical.Analog.Basic <Modelica_Electrical_Analog_Basic.html#Modelica.Electrical.Analog.Basic>`_.OpAmp
----------------------------------------------------------------------------------------------------------------------------

**Simple nonideal model of an OpAmp with limitation**

.. figure:: Modelica.Electrical.Analog.Basic.OpAmpD.png
   :align: center
   :alt: Modelica.Electrical.Analog.Basic.OpAmp

   Modelica.Electrical.Analog.Basic.OpAmp

Information
~~~~~~~~~~~

::

The OpAmp is a simle nonideal model with a smooth out.v = f(vin)
characteristic, where "vin = in\_p.v - in\_n.v". The characteristic is
limited by VMax.v and VMin.v. Its slope at vin=0 is the parameter Slope,
which must be positive. (Therefore, the absolute value of Slope is taken
into calculation.)

::

Parameters
~~~~~~~~~~

+--------+---------+-----------+--------------------------------------------------+
| Type   | Name    | Default   | Description                                      |
+========+=========+===========+==================================================+
| Real   | Slope   |           | Slope of the out.v/vin characteristic at vin=0   |
+--------+---------+-----------+--------------------------------------------------+

Connectors
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------+---------+--------------------------------------+
| Type                                                                                                            | Name    | Description                          |
+=================================================================================================================+=========+======================================+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_   | in\_p   | Positive pin of the input port       |
+-----------------------------------------------------------------------------------------------------------------+---------+--------------------------------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_   | in\_n   | Negative pin of the input port       |
+-----------------------------------------------------------------------------------------------------------------+---------+--------------------------------------+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_   | out     | Output pin                           |
+-----------------------------------------------------------------------------------------------------------------+---------+--------------------------------------+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_   | VMax    | Positive output voltage limitation   |
+-----------------------------------------------------------------------------------------------------------------+---------+--------------------------------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_   | VMin    | Negative output voltage limitation   |
+-----------------------------------------------------------------------------------------------------------------+---------+--------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model OpAmp "Simple nonideal model of an OpAmp with limitation"
      parameter Real Slope(start=1) 
        "Slope of the out.v/vin characteristic at vin=0";
      Modelica.Electrical.Analog.Interfaces.PositivePin in_p 
        "Positive pin of the input port";
      Modelica.Electrical.Analog.Interfaces.NegativePin in_n 
        "Negative pin of the input port";
      Modelica.Electrical.Analog.Interfaces.PositivePin out "Output pin";
      Modelica.Electrical.Analog.Interfaces.PositivePin VMax 
        "Positive output voltage limitation";
      Modelica.Electrical.Analog.Interfaces.NegativePin VMin 
        "Negative output voltage limitation";
      SI.Voltage vin "input voltagae";
    protected 
      Real f "auxiliary variable";
      Real absSlope;
    equation 
      in_p.i = 0;
      in_n.i = 0;
      VMax.i = 0;
      VMin.i = 0;
      vin = in_p.v - in_n.v;
      f = 2/(VMax.v - VMin.v);
      absSlope = smooth(0,(if (Slope < 0) then -Slope else Slope));
      out.v = (VMax.v + VMin.v)/2 + absSlope*vin/(1 + absSlope*smooth(0,(if (f*vin
         < 0) then -f*vin else f*vin)));
    end OpAmp;

--------------

|image62| `Modelica.Electrical.Analog.Basic <Modelica_Electrical_Analog_Basic.html#Modelica.Electrical.Analog.Basic>`_.OpAmpDetailed
------------------------------------------------------------------------------------------------------------------------------------

**Detailed model of an operational amplifier**

.. figure:: Modelica.Electrical.Analog.Basic.OpAmpDetailedD.png
   :align: center
   :alt: Modelica.Electrical.Analog.Basic.OpAmpDetailed

   Modelica.Electrical.Analog.Basic.OpAmpDetailed

Information
~~~~~~~~~~~

::

The OpAmpDetailed model is a general operational amplifier model. The
emphasis is on separating each important data sheet parameter into a
sub-circuit independent of the other parameters. The model is broken
down into five functional stages **input**, **frequency response**,
**gain**, **slew rate** and an **output** stage. Each stage contains
data sheet parameters to be modeled. This partitioning and the modelling
of the separate submodels are based on the description in **[CP92]**.

Using **[CP92]** Joachim Haase (Fraunhofer Institute for Integrated
Circuits, Design Automation Division) transfered 2001 operational
amplifier models into VHDL-AMS. Now one of these models, the model
"amp(macro)" was transferred into Modelica.

**Reference:**
    **[CP92]** Conelly, J.A.; Choi, P.: Macromodelling with SPICE.
    Englewood Cliffs: Prentice-Hall, 1992

::

Parameters
~~~~~~~~~~

+-------------------------------------------------------------------------+----------+-------------+----------------------------------------------------+
| Type                                                                    | Name     | Default     | Description                                        |
+=========================================================================+==========+=============+====================================================+
| `Resistance <Modelica_SIunits.html#Modelica.SIunits.Resistance>`_       | Rdm      | 2.0e6       | Input resistance (differential input mode) [Ohm]   |
+-------------------------------------------------------------------------+----------+-------------+----------------------------------------------------+
| `Resistance <Modelica_SIunits.html#Modelica.SIunits.Resistance>`_       | Rcm      | 2.0e9       | Input resistance (common mode) [Ohm]               |
+-------------------------------------------------------------------------+----------+-------------+----------------------------------------------------+
| `Capacitance <Modelica_SIunits.html#Modelica.SIunits.Capacitance>`_     | Cin      | 1.4e-12     | Input capacitance [F]                              |
+-------------------------------------------------------------------------+----------+-------------+----------------------------------------------------+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_             | Vos      | 1.0e-3      | Input offset voltage [V]                           |
+-------------------------------------------------------------------------+----------+-------------+----------------------------------------------------+
| `Current <Modelica_SIunits.html#Modelica.SIunits.Current>`_             | Ib       | 80.0e-9     | Input bias current [A]                             |
+-------------------------------------------------------------------------+----------+-------------+----------------------------------------------------+
| `Current <Modelica_SIunits.html#Modelica.SIunits.Current>`_             | Ios      | 20.0e-9     | Input offset current [A]                           |
+-------------------------------------------------------------------------+----------+-------------+----------------------------------------------------+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_             | vcp      | 0.0         | Correction value for limiting by p\_supply [V]     |
+-------------------------------------------------------------------------+----------+-------------+----------------------------------------------------+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_             | vcm      | 0.0         | Correction value for limiting by msupply [V]       |
+-------------------------------------------------------------------------+----------+-------------+----------------------------------------------------+
| Real                                                                    | Avd0     | 106.0       | Differential amplifier [dB]                        |
+-------------------------------------------------------------------------+----------+-------------+----------------------------------------------------+
| Real                                                                    | CMRR     | 90.0        | Common-mode rejection [dB]                         |
+-------------------------------------------------------------------------+----------+-------------+----------------------------------------------------+
| `Frequency <Modelica_SIunits.html#Modelica.SIunits.Frequency>`_         | fp1      | 5.0         | Dominant pole [Hz]                                 |
+-------------------------------------------------------------------------+----------+-------------+----------------------------------------------------+
| `Frequency <Modelica_SIunits.html#Modelica.SIunits.Frequency>`_         | fp2      | 2.0e6       | Pole frequency [Hz]                                |
+-------------------------------------------------------------------------+----------+-------------+----------------------------------------------------+
| `Frequency <Modelica_SIunits.html#Modelica.SIunits.Frequency>`_         | fp3      | 20.0e6      | Pole frequency [Hz]                                |
+-------------------------------------------------------------------------+----------+-------------+----------------------------------------------------+
| `Frequency <Modelica_SIunits.html#Modelica.SIunits.Frequency>`_         | fp4      | 100.0e6     | Pole frequency [Hz]                                |
+-------------------------------------------------------------------------+----------+-------------+----------------------------------------------------+
| `Frequency <Modelica_SIunits.html#Modelica.SIunits.Frequency>`_         | fz       | 5.0e6       | Zero frequency [Hz]                                |
+-------------------------------------------------------------------------+----------+-------------+----------------------------------------------------+
| `VoltageSlope <Modelica_SIunits.html#Modelica.SIunits.VoltageSlope>`_   | sr\_p    | 0.5e6       | Slew rate for increase [V/s]                       |
+-------------------------------------------------------------------------+----------+-------------+----------------------------------------------------+
| `VoltageSlope <Modelica_SIunits.html#Modelica.SIunits.VoltageSlope>`_   | sr\_m    | 0.5e6       | Slew rate for decrease [V/s]                       |
+-------------------------------------------------------------------------+----------+-------------+----------------------------------------------------+
| `Resistance <Modelica_SIunits.html#Modelica.SIunits.Resistance>`_       | Rout     | 75.0        | Output resistance [Ohm]                            |
+-------------------------------------------------------------------------+----------+-------------+----------------------------------------------------+
| `Current <Modelica_SIunits.html#Modelica.SIunits.Current>`_             | Imaxso   | 25.0e-3     | Maximal output current (source current) [A]        |
+-------------------------------------------------------------------------+----------+-------------+----------------------------------------------------+
| `Current <Modelica_SIunits.html#Modelica.SIunits.Current>`_             | Imaxsi   | 25.0e-3     | Maximal output current (sink current) [A]          |
+-------------------------------------------------------------------------+----------+-------------+----------------------------------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_                   | Ts       | 0.0000012   | sampling time [s]                                  |
+-------------------------------------------------------------------------+----------+-------------+----------------------------------------------------+

Connectors
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------+-------------+--------------------------------------+
| Type                                                                                                            | Name        | Description                          |
+=================================================================================================================+=============+======================================+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_   | p           | Positive pin of the input port       |
+-----------------------------------------------------------------------------------------------------------------+-------------+--------------------------------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_   | m           | Negative pin of the input port       |
+-----------------------------------------------------------------------------------------------------------------+-------------+--------------------------------------+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_   | outp        | Output pin                           |
+-----------------------------------------------------------------------------------------------------------------+-------------+--------------------------------------+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_   | p\_supply   | Positive output voltage limitation   |
+-----------------------------------------------------------------------------------------------------------------+-------------+--------------------------------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_   | m\_supply   | Negative output voltage limitation   |
+-----------------------------------------------------------------------------------------------------------------+-------------+--------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model OpAmpDetailed "Detailed model of an operational amplifier"
    // literature: Conelly, J.A.; Choi, P.: Macromodelling with SPICE. Englewood Cliffs: Prentice-Hall, 1992
      import SI = Modelica.SIunits;
      parameter SI.Resistance Rdm=2.0e6 
        "Input resistance (differential input mode)";
      parameter SI.Resistance Rcm=2.0e9 "Input resistance (common mode)";
      parameter SI.Capacitance Cin=1.4e-12 "Input capacitance";
      parameter SI.Voltage Vos=1.0e-3 "Input offset voltage";
      parameter SI.Current Ib=80.0e-9 "Input bias current";
      parameter SI.Current Ios=20.0e-9 "Input offset current";
      parameter SI.Voltage vcp=0.0 "Correction value for limiting by p_supply";
      parameter SI.Voltage vcm=0.0 "Correction value for limiting by msupply";
      parameter Real Avd0=106.0 "Differential amplifier [dB]";
      parameter Real CMRR=90.0 "Common-mode rejection [dB]";
      parameter SI.Frequency fp1=5.0 "Dominant pole";
      parameter SI.Frequency fp2=2.0e6 "Pole frequency";
      parameter SI.Frequency fp3=20.0e6 "Pole frequency";
      parameter SI.Frequency fp4=100.0e6 "Pole frequency";
      parameter SI.Frequency fz=5.0e6 "Zero frequency";
      parameter SI.VoltageSlope sr_p=0.5e6 "Slew rate for increase";
      parameter SI.VoltageSlope sr_m=0.5e6 "Slew rate for decrease";
      parameter SI.Resistance Rout=75.0 "Output resistance";
      parameter SI.Current Imaxso=25.0e-3 "Maximal output current (source current)";
      parameter SI.Current Imaxsi=25.0e-3 "Maximal output current (sink current)";

    // number of intervalls: 2500, stop time: 0.003
      parameter SI.Time Ts=0.0000012 "sampling time";

    // constant expressions
      constant Real Pi=3.141592654;

     // power supply
      final parameter SI.Voltage vcp_abs = abs(vcp) 
        "Positive correction value for limiting by p_supply";
      final parameter SI.Voltage vcm_abs = abs(vcm) 
        "Positive correction value for limiting by msupply";

    // input stage
    //  Ib = 0.5*(I1 + I2);
    //  Ios = I1 - I2;
      final parameter SI.Current I1 =  Ib + Ios/2.0 "Current of internal source I1";
      final parameter SI.Current I2 =  Ib - Ios/2.0 "Current of internal source I2";

    // gain stage (difference and common mode)
      final parameter Real Avd0_val = 10.0^(Avd0/20.0) "differential mode gain";
      final parameter Real Avcm_val = (Avd0_val/(10.0^(CMRR/20.0)))/2.0 
        "common mode gain";

    // slew rate stage
      final parameter SI.VoltageSlope sr_p_val =  abs(sr_p) 
        "Value of slew rate for increase";
      final parameter SI.VoltageSlope sr_m_val = -abs(sr_m) 
        "Negative alue of slew rate for increase";

    // output stage
      final parameter SI.Current Imaxso_val = abs(Imaxso) "Orientation out outp";
      final parameter SI.Current Imaxsi_val = abs(Imaxsi) "Orientation into outp";

      Modelica.Electrical.Analog.Interfaces.PositivePin p 
        "Positive pin of the input port";
      Modelica.Electrical.Analog.Interfaces.NegativePin m 
        "Negative pin of the input port";
      Modelica.Electrical.Analog.Interfaces.PositivePin outp "Output pin";
      Modelica.Electrical.Analog.Interfaces.PositivePin p_supply 
        "Positive output voltage limitation";
      Modelica.Electrical.Analog.Interfaces.NegativePin m_supply 
        "Negative output voltage limitation";

    // power supply
      SI.Voltage v_pos;
      SI.Voltage v_neg;

    // input stage
      Modelica.SIunits.Voltage v_vos;
      Modelica.SIunits.Voltage v_3;
      Modelica.SIunits.Voltage v_in;
      Modelica.SIunits.Voltage v_4;

      Modelica.SIunits.Current i_vos;
      Modelica.SIunits.Current i_3;
      Modelica.SIunits.Current i_r2;
      Modelica.SIunits.Current i_c3;
      Modelica.SIunits.Current i_4;

    // frequency response
      Real q_fr1;
      Real q_fr2;
      Real q_fr3;

    // gain stage
      SI.Voltage q_sum;
      SI.Voltage q_sum_help;
      SI.Voltage q_fp1;

    // slew rate stage
      SI.Voltage v_source;

      SI.Voltage x "auxiliary variable for slew rate";

    // output stage
      Modelica.SIunits.Voltage v_out;

      Modelica.SIunits.Current i_out;

    // functions
      function FCNiout_limit "Internal limitation function"
        input SI.Voltage v_source;
        input SI.Voltage v_out;
        input SI.Resistance Rout;
        input SI.Current Imaxsi_val;
        input SI.Current Imaxso_val;
        output SI.Current result;

      algorithm 
          if  v_out > v_source + Rout*Imaxsi_val then
              result := Imaxsi_val;
          elseif v_out < v_source - Rout*Imaxso_val then
              result := -Imaxso_val;
          else
              result := (v_out - v_source)/Rout;
          end if;
          return;
      end FCNiout_limit;

      function FCNq_sum_limit "Internal limitation function"
        input SI.Voltage q_sum;
        input SI.Voltage q_sum_ltf;
        input SI.Voltage v_pos;
        input SI.Voltage v_neg;
        input SI.Voltage vcp;
        input SI.Voltage vcm;
        output SI.Voltage result;

      algorithm 
          if  q_sum > v_pos - vcp and q_sum_ltf >= v_pos - vcp then
            result := v_pos - vcp;
          elseif q_sum < v_neg + vcm and q_sum_ltf <= v_neg + vcm then
            result := v_neg + vcm;
          else
            result := q_sum;
          end if;
        return;
      end FCNq_sum_limit;

    initial equation 
      v_source = q_fp1;
      x = 0;
    equation 
    assert(Rout > 0.0, "Rout must be > 0.0.");

    // power supply
      v_pos = p_supply.v;
      v_neg = m_supply.v;

    // input stage
      p.i = i_vos;
      m.i = i_4 - i_r2 - i_c3;
      0 = i_3 + i_r2 + i_c3 - i_vos;
      p.v - m.v = v_vos + v_in;
      v_4 = m.v;
      v_3 = p.v - v_vos;
      v_vos = Vos;
      i_3 = I1 + v_3/Rcm;
      v_in = Rdm*i_r2;
      i_c3 = Cin*der(v_in);
      i_4 = I2 + v_4/Rcm;

    // frequency response
    // Laplace transformation
        der(q_fr1) = 2.0*Pi*fp2*(v_in - q_fr1);
        q_fr2 + (1.0/(2.0*Pi*fp3))*der(q_fr2) = q_fr1 + (1.0/(2.0*Pi*fz))*der(q_fr1);
        der(q_fr3) = 2.0*Pi*fp4*(q_fr2 - q_fr3);

    // gain stage
    // Laplace transformation
      q_sum = Avd0_val*q_fr3 + Avcm_val*(v_3 + v_4);
      q_sum_help = FCNq_sum_limit(
        q_sum,
        q_fp1,
        v_pos,
        v_neg,
        vcp_abs,
        vcm_abs);
      der(q_fp1) = 2.0*Pi*fp1*(q_sum_help - q_fp1);

    // slew rate stage
       der(x) = (q_fp1 - v_source)/Ts;
       der(v_source) = smooth(0,noEvent(
       if der(x) > sr_p_val then sr_p_val else 
       if der(x) < sr_m_val then sr_m_val else 
          der(x)));

    // output stage
      v_out = outp.v;
      i_out = outp.i;
      i_out = FCNiout_limit(
        v_source,
        v_out,
        Rout,
        Imaxsi_val,
        Imaxso_val);

      p_supply.i = 0;
      m_supply.i = 0;

    end OpAmpDetailed;

--------------

|image63| `Modelica.Electrical.Analog.Basic <Modelica_Electrical_Analog_Basic.html#Modelica.Electrical.Analog.Basic>`_.VariableResistor
---------------------------------------------------------------------------------------------------------------------------------------

**Ideal linear electrical resistor with variable resistance**

.. figure:: Modelica.Electrical.Analog.Basic.VariableResistorD.png
   :align: center
   :alt: Modelica.Electrical.Analog.Basic.VariableResistor

   Modelica.Electrical.Analog.Basic.VariableResistor

Information
~~~~~~~~~~~

::

The linear resistor connects the branch voltage *v* with the branch
current *i* by
***i\*R = v***
The Resistance *R* is given as input signal.
**Attention!!!**
It is recommended that the R signal should not cross the zero value.
Otherwise depending on the surrounding circuit the probability of
singularities is high.

::

Extends from
`Modelica.Electrical.Analog.Interfaces.OnePort <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.OnePort>`_
(Component with two electrical pins p and n and current i from p to n),
`Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort>`_
(Partial model to include a conditional HeatPort in order to describe
the power loss via a thermal network).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------+---------------+-----------+---------------------------------------------------------------------------------------------------+
| Type                                                                                                    | Name          | Default   | Description                                                                                       |
+=========================================================================================================+===============+===========+===================================================================================================+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                     | T\_ref        | 300.15    | Reference temperature [K]                                                                         |
+---------------------------------------------------------------------------------------------------------+---------------+-----------+---------------------------------------------------------------------------------------------------+
| `LinearTemperatureCoefficient <Modelica_SIunits.html#Modelica.SIunits.LinearTemperatureCoefficient>`_   | alpha         | 0         | Temperature coefficient of resistance (R\_actual = R\*(1 + alpha\*(T\_heatPort - T\_ref)) [1/K]   |
+---------------------------------------------------------------------------------------------------------+---------------+-----------+---------------------------------------------------------------------------------------------------+
| Boolean                                                                                                 | useHeatPort   | false     | =true, if HeatPort is enabled                                                                     |
+---------------------------------------------------------------------------------------------------------+---------------+-----------+---------------------------------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                     | T             | T\_ref    | Fixed device temperature if useHeatPort = false [K]                                               |
+---------------------------------------------------------------------------------------------------------+---------------+-----------+---------------------------------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+----------------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------------------------+
| Type                                                                                                                 | Name       | Description                                                      |
+======================================================================================================================+============+==================================================================+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_        | p          | Positive pin (potential p.v > n.v for positive voltage drop v)   |
+----------------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------------------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_        | n          | Negative pin                                                     |
+----------------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------------------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPort   |                                                                  |
+----------------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------------------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_                            | R          |                                                                  |
+----------------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model VariableResistor 
      "Ideal linear electrical resistor with variable resistance"
      parameter Modelica.SIunits.Temperature T_ref=300.15 "Reference temperature";
      parameter Modelica.SIunits.LinearTemperatureCoefficient alpha=0 
        "Temperature coefficient of resistance (R_actual = R*(1 + alpha*(T_heatPort - T_ref))";
      extends Modelica.Electrical.Analog.Interfaces.OnePort;
      extends Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort(                    T = T_ref);
      Modelica.SIunits.Resistance R_actual 
        "Actual resistance = R*(1 + alpha*(T_heatPort - T_ref))";
      Modelica.Blocks.Interfaces.RealInput R;
    equation 
      assert((1 + alpha*(T_heatPort - T_ref)) >= Modelica.Constants.eps, "Temperature outside scope of model!");
      R_actual = R*(1 + alpha*(T_heatPort - T_ref));
      v = R_actual*i;
      LossPower = v*i;
    end VariableResistor;

--------------

|image64| `Modelica.Electrical.Analog.Basic <Modelica_Electrical_Analog_Basic.html#Modelica.Electrical.Analog.Basic>`_.VariableConductor
----------------------------------------------------------------------------------------------------------------------------------------

**Ideal linear electrical conductor with variable conductance**

.. figure:: Modelica.Electrical.Analog.Basic.VariableConductorD.png
   :align: center
   :alt: Modelica.Electrical.Analog.Basic.VariableConductor

   Modelica.Electrical.Analog.Basic.VariableConductor

Information
~~~~~~~~~~~

::

The linear conductor connects the branch voltage *v* with the branch
current *i* by
***i = G\*v***
The Conductance *G* is given as input signal.
**Attention!!!**
It is recommended that the G signal should not cross the zero value.
Otherwise depending on the surrounding circuit the probability of
singularities is high.

::

Extends from
`Modelica.Electrical.Analog.Interfaces.OnePort <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.OnePort>`_
(Component with two electrical pins p and n and current i from p to n),
`Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort>`_
(Partial model to include a conditional HeatPort in order to describe
the power loss via a thermal network).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------+---------------+-----------+---------------------------------------------------------------------------------------------------+
| Type                                                                                                    | Name          | Default   | Description                                                                                       |
+=========================================================================================================+===============+===========+===================================================================================================+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                     | T\_ref        | 300.15    | Reference temperature [K]                                                                         |
+---------------------------------------------------------------------------------------------------------+---------------+-----------+---------------------------------------------------------------------------------------------------+
| `LinearTemperatureCoefficient <Modelica_SIunits.html#Modelica.SIunits.LinearTemperatureCoefficient>`_   | alpha         | 0         | Temperature coefficient of conductance (G\_actual = G/(1 + alpha\*(T\_heatPort - T\_ref)) [1/K]   |
+---------------------------------------------------------------------------------------------------------+---------------+-----------+---------------------------------------------------------------------------------------------------+
| Boolean                                                                                                 | useHeatPort   | false     | =true, if HeatPort is enabled                                                                     |
+---------------------------------------------------------------------------------------------------------+---------------+-----------+---------------------------------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                     | T             | T\_ref    | Fixed device temperature if useHeatPort = false [K]                                               |
+---------------------------------------------------------------------------------------------------------+---------------+-----------+---------------------------------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+----------------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------------------------+
| Type                                                                                                                 | Name       | Description                                                      |
+======================================================================================================================+============+==================================================================+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_        | p          | Positive pin (potential p.v > n.v for positive voltage drop v)   |
+----------------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------------------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_        | n          | Negative pin                                                     |
+----------------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------------------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPort   |                                                                  |
+----------------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------------------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_                            | G          |                                                                  |
+----------------------------------------------------------------------------------------------------------------------+------------+------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model VariableConductor 
      "Ideal linear electrical conductor with variable conductance"
      parameter Modelica.SIunits.Temperature T_ref=300.15 "Reference temperature";
      parameter Modelica.SIunits.LinearTemperatureCoefficient alpha=0 
        "Temperature coefficient of conductance (G_actual = G/(1 + alpha*(T_heatPort - T_ref))";
      extends Modelica.Electrical.Analog.Interfaces.OnePort;
      extends Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort(                    T = T_ref);
      Modelica.SIunits.Conductance G_actual 
        "Actual conductance = G/(1 + alpha*(T_heatPort - T_ref))";
      Modelica.Blocks.Interfaces.RealInput G;
    equation 
      assert((1 + alpha*(T_heatPort - T_ref)) >= Modelica.Constants.eps, "Temperature outside scope of model!");
      G_actual = G/(1 + alpha*(T_heatPort - T_ref));
      i = G_actual*v;
      LossPower = v*i;
    end VariableConductor;

--------------

|image65| `Modelica.Electrical.Analog.Basic <Modelica_Electrical_Analog_Basic.html#Modelica.Electrical.Analog.Basic>`_.VariableCapacitor
----------------------------------------------------------------------------------------------------------------------------------------

**Ideal linear electrical capacitor with variable capacitance**

.. figure:: Modelica.Electrical.Analog.Basic.VariableCapacitorD.png
   :align: center
   :alt: Modelica.Electrical.Analog.Basic.VariableCapacitor

   Modelica.Electrical.Analog.Basic.VariableCapacitor

Information
~~~~~~~~~~~

::

The linear capacitor connects the branch voltage *v* with the branch
current *i* by
***i = dQ/dt*** with ***Q = C \* v*******.
The capacitance *C* is given as input signal. It is required that C ≥ 0,
otherwise an assertion is raised. To avoid a variable index system, C =
Cmin, if 0 ≤ C < Cmin, where Cmin is a parameter with default value
Modelica.Constants.eps.

::

Extends from
`Modelica.Electrical.Analog.Interfaces.OnePort <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.OnePort>`_
(Component with two electrical pins p and n and current i from p to n).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------+--------+--------------------------+--------------------------------------------+
| Type                                                                  | Name   | Default                  | Description                                |
+=======================================================================+========+==========================+============================================+
| `Capacitance <Modelica_SIunits.html#Modelica.SIunits.Capacitance>`_   | Cmin   | Modelica.Constants.eps   | lower bound for variable capacitance [F]   |
+-----------------------------------------------------------------------+--------+--------------------------+--------------------------------------------+

Connectors
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------+--------+------------------------------------------------------------------+
| Type                                                                                                            | Name   | Description                                                      |
+=================================================================================================================+========+==================================================================+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_   | p      | Positive pin (potential p.v > n.v for positive voltage drop v)   |
+-----------------------------------------------------------------------------------------------------------------+--------+------------------------------------------------------------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_   | n      | Negative pin                                                     |
+-----------------------------------------------------------------------------------------------------------------+--------+------------------------------------------------------------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_                       | C      |                                                                  |
+-----------------------------------------------------------------------------------------------------------------+--------+------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model VariableCapacitor 
      "Ideal linear electrical capacitor with variable capacitance"
      extends Modelica.Electrical.Analog.Interfaces.OnePort;
      Modelica.Blocks.Interfaces.RealInput C;
      parameter Modelica.SIunits.Capacitance Cmin=Modelica.Constants.eps 
        "lower bound for variable capacitance";
      Modelica.SIunits.ElectricCharge Q;
    equation 
      assert(C>=0,"Capacitance C (= " +
             String(C) + ") has to be >= 0!");
      // protect solver from index change
      Q = noEvent(max(C,Cmin))*v;
      i = der(Q);
    end VariableCapacitor;

--------------

|image66| `Modelica.Electrical.Analog.Basic <Modelica_Electrical_Analog_Basic.html#Modelica.Electrical.Analog.Basic>`_.VariableInductor
---------------------------------------------------------------------------------------------------------------------------------------

**Ideal linear electrical inductor with variable inductance**

.. figure:: Modelica.Electrical.Analog.Basic.VariableInductorD.png
   :align: center
   :alt: Modelica.Electrical.Analog.Basic.VariableInductor

   Modelica.Electrical.Analog.Basic.VariableInductor

Information
~~~~~~~~~~~

::

The linear inductor connects the branch voltage *v* with the branch
current *i* by
***v = d Psi/dt***with ***Psi = L \* i***.
The inductance *L* is as input signal. It is required that L ≥ 0,
otherwise an assertion is raised. To avoid a variable index system, L =
Lmin, if 0 ≤ L < Lmin, where Lmin is a parameter with default value
Modelica.Constants.eps.

::

Extends from
`Modelica.Electrical.Analog.Interfaces.OnePort <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.OnePort>`_
(Component with two electrical pins p and n and current i from p to n).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------+--------+--------------------------+-------------------------------------------+
| Type                                                                | Name   | Default                  | Description                               |
+=====================================================================+========+==========================+===========================================+
| `Inductance <Modelica_SIunits.html#Modelica.SIunits.Inductance>`_   | Lmin   | Modelica.Constants.eps   | lower bound for variable inductance [H]   |
+---------------------------------------------------------------------+--------+--------------------------+-------------------------------------------+

Connectors
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------+--------+------------------------------------------------------------------+
| Type                                                                                                            | Name   | Description                                                      |
+=================================================================================================================+========+==================================================================+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_   | p      | Positive pin (potential p.v > n.v for positive voltage drop v)   |
+-----------------------------------------------------------------------------------------------------------------+--------+------------------------------------------------------------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_   | n      | Negative pin                                                     |
+-----------------------------------------------------------------------------------------------------------------+--------+------------------------------------------------------------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_                       | L      |                                                                  |
+-----------------------------------------------------------------------------------------------------------------+--------+------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model VariableInductor 
      "Ideal linear electrical inductor with variable inductance"

      extends Modelica.Electrical.Analog.Interfaces.OnePort;
      Modelica.Blocks.Interfaces.RealInput L;
      Modelica.SIunits.MagneticFlux Psi;
      parameter Modelica.SIunits.Inductance Lmin=Modelica.Constants.eps 
        "lower bound for variable inductance";
    equation 
      assert(L>=0,"Inductance L_ (= " +
             String(L) + ") has to be >= 0!");
      // protect solver from index change
      Psi = noEvent(max(L,Lmin))*i;
      v = der(Psi);
    end VariableInductor;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:28:07
2010.

.. |Modelica.Electrical.Analog.Basic.Ground| image:: Modelica.Electrical.Analog.Basic.GroundS.png
.. |Modelica.Electrical.Analog.Basic.Resistor| image:: Modelica.Electrical.Analog.Basic.ResistorS.png
.. |Modelica.Electrical.Analog.Basic.HeatingResistor| image:: Modelica.Electrical.Analog.Basic.HeatingResistorS.png
.. |Modelica.Electrical.Analog.Basic.Conductor| image:: Modelica.Electrical.Analog.Basic.ConductorS.png
.. |Modelica.Electrical.Analog.Basic.Capacitor| image:: Modelica.Electrical.Analog.Basic.CapacitorS.png
.. |Modelica.Electrical.Analog.Basic.Inductor| image:: Modelica.Electrical.Analog.Basic.InductorS.png
.. |Modelica.Electrical.Analog.Basic.SaturatingInductor| image:: Modelica.Electrical.Analog.Basic.SaturatingInductorS.png
.. |Modelica.Electrical.Analog.Basic.Transformer| image:: Modelica.Electrical.Analog.Basic.TransformerS.png
.. |Modelica.Electrical.Analog.Basic.M\_Transformer| image:: Modelica.Electrical.Analog.Basic.M_TransformerS.png
.. |Modelica.Electrical.Analog.Basic.Gyrator| image:: Modelica.Electrical.Analog.Basic.GyratorS.png
.. |Modelica.Electrical.Analog.Basic.EMF| image:: Modelica.Electrical.Analog.Basic.EMFS.png
.. |Modelica.Electrical.Analog.Basic.TranslationalEMF| image:: Modelica.Electrical.Analog.Basic.TranslationalEMFS.png
.. |Modelica.Electrical.Analog.Basic.VCV| image:: Modelica.Electrical.Analog.Basic.VCVS.png
.. |Modelica.Electrical.Analog.Basic.VCC| image:: Modelica.Electrical.Analog.Basic.VCCS.png
.. |Modelica.Electrical.Analog.Basic.CCV| image:: Modelica.Electrical.Analog.Basic.CCVS.png
.. |Modelica.Electrical.Analog.Basic.CCC| image:: Modelica.Electrical.Analog.Basic.CCCS.png
.. |Modelica.Electrical.Analog.Basic.OpAmp| image:: Modelica.Electrical.Analog.Basic.OpAmpS.png
.. |Modelica.Electrical.Analog.Basic.OpAmpDetailed| image:: Modelica.Electrical.Analog.Basic.OpAmpDetailedS.png
.. |Modelica.Electrical.Analog.Basic.VariableResistor| image:: Modelica.Electrical.Analog.Basic.VariableResistorS.png
.. |Modelica.Electrical.Analog.Basic.VariableConductor| image:: Modelica.Electrical.Analog.Basic.VariableResistorS.png
.. |Modelica.Electrical.Analog.Basic.VariableCapacitor| image:: Modelica.Electrical.Analog.Basic.VariableCapacitorS.png
.. |Modelica.Electrical.Analog.Basic.VariableInductor| image:: Modelica.Electrical.Analog.Basic.VariableInductorS.png
.. |image22| image:: Modelica.Electrical.Analog.Basic.GroundS.png
.. |image23| image:: Modelica.Electrical.Analog.Basic.ResistorS.png
.. |image24| image:: Modelica.Electrical.Analog.Basic.HeatingResistorS.png
.. |image25| image:: Modelica.Electrical.Analog.Basic.ConductorS.png
.. |image26| image:: Modelica.Electrical.Analog.Basic.CapacitorS.png
.. |image27| image:: Modelica.Electrical.Analog.Basic.InductorS.png
.. |image28| image:: Modelica.Electrical.Analog.Basic.SaturatingInductorS.png
.. |image29| image:: Modelica.Electrical.Analog.Basic.TransformerS.png
.. |image30| image:: Modelica.Electrical.Analog.Basic.M_TransformerS.png
.. |image31| image:: Modelica.Electrical.Analog.Basic.GyratorS.png
.. |image32| image:: Modelica.Electrical.Analog.Basic.EMFS.png
.. |image33| image:: Modelica.Electrical.Analog.Basic.TranslationalEMFS.png
.. |image34| image:: Modelica.Electrical.Analog.Basic.VCVS.png
.. |image35| image:: Modelica.Electrical.Analog.Basic.VCCS.png
.. |image36| image:: Modelica.Electrical.Analog.Basic.CCVS.png
.. |image37| image:: Modelica.Electrical.Analog.Basic.CCCS.png
.. |image38| image:: Modelica.Electrical.Analog.Basic.OpAmpS.png
.. |image39| image:: Modelica.Electrical.Analog.Basic.OpAmpDetailedS.png
.. |image40| image:: Modelica.Electrical.Analog.Basic.VariableResistorS.png
.. |image41| image:: Modelica.Electrical.Analog.Basic.VariableResistorS.png
.. |image42| image:: Modelica.Electrical.Analog.Basic.VariableCapacitorS.png
.. |image43| image:: Modelica.Electrical.Analog.Basic.VariableInductorS.png
.. |image44| image:: Modelica.Electrical.Analog.Basic.GroundI.png
.. |image45| image:: Modelica.Electrical.Analog.Basic.ResistorI.png
.. |image46| image:: Modelica.Electrical.Analog.Basic.HeatingResistorI.png
.. |image47| image:: Modelica.Electrical.Analog.Basic.ConductorI.png
.. |image48| image:: Modelica.Electrical.Analog.Basic.CapacitorI.png
.. |image49| image:: Modelica.Electrical.Analog.Basic.InductorI.png
.. |image50| image:: Modelica.Electrical.Analog.Basic.SaturatingInductorI.png
.. |image51| image:: Modelica.Electrical.Analog.Basic.TransformerI.png
.. |image52| image:: Modelica.Electrical.Analog.Basic.M_TransformerI.png
.. |L\_m| image:: ../Resources/Images/Electrical/Analog/Basic/M_Transformer-eq.png
.. |image54| image:: Modelica.Electrical.Analog.Basic.GyratorI.png
.. |image55| image:: Modelica.Electrical.Analog.Basic.EMFI.png
.. |image56| image:: Modelica.Electrical.Analog.Basic.TranslationalEMFI.png
.. |image57| image:: Modelica.Electrical.Analog.Basic.VCVI.png
.. |image58| image:: Modelica.Electrical.Analog.Basic.VCCI.png
.. |image59| image:: Modelica.Electrical.Analog.Basic.CCVI.png
.. |image60| image:: Modelica.Electrical.Analog.Basic.CCCI.png
.. |image61| image:: Modelica.Electrical.Analog.Basic.OpAmpI.png
.. |image62| image:: Modelica.Electrical.Analog.Basic.OpAmpDetailedI.png
.. |image63| image:: Modelica.Electrical.Analog.Basic.VariableResistorI.png
.. |image64| image:: Modelica.Electrical.Analog.Basic.VariableResistorI.png
.. |image65| image:: Modelica.Electrical.Analog.Basic.VariableCapacitorI.png
.. |image66| image:: Modelica.Electrical.Analog.Basic.VariableInductorI.png
