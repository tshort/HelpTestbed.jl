======================================
Modelica.Thermal.FluidHeatFlow.Sources
======================================

`Modelica.Thermal.FluidHeatFlow <Modelica_Thermal_FluidHeatFlow.html#Modelica.Thermal.FluidHeatFlow>`_.Sources
--------------------------------------------------------------------------------------------------------------

**Ideal fluid sources, e.g., ambient, volume flow**

Information
~~~~~~~~~~~

::

This package contains different types of sources:

-  Ambient with constant or prescribed pressure and temperature
-  AbsolutePressure to define pressure level of a closed cooling cycle.
-  Constant and prescribed volume flow
-  Constant and prescribed pressure increase
-  Simple pump with mechanical flange

Thermodynamic equations are defined in partial models (package
Interfaces.Partials).
 All fans / pumps are considered without losses, they do not change
enthalpy flow.

**Main Authors:**
    `Anton Haumer <http://www.haumer.at/>`_
     Technical Consulting & Electrical Engineering
     A-3423 St.Andrae-Woerdern, Austria
     email: `a.haumer@haumer.at <mailto:a.haumer@haumer.at>`_

    Dr. Christian Kral
     `Austrian Institute of Technology, AIT <http://www.ait.ac.at/>`_
     Giefinggasse 2
     A-1210 Vienna, Austria

Copyright © 1998-2010, Modelica Association, Anton Haumer and Austrian
Institute of Technology, AIT.

*This Modelica package is free software and the use is completely at
your own risk; it can be redistributed and/or modified under the terms
of the Modelica License 2. For license conditions (including the
disclaimer of warranty) see
`Modelica.UsersGuide.ModelicaLicense2 <Modelica_UsersGuide.html#Modelica.UsersGuide.ModelicaLicense2>`_
or visit
`http://www.modelica.org/licenses/ModelicaLicense2 <http://www.modelica.org/licenses/ModelicaLicense2>`_.*

::

Extends from
`Modelica.Icons.SourcesPackage <Modelica_Icons_SourcesPackage.html#Modelica.Icons.SourcesPackage>`_
(Icon for packages containing sources).

Package Content
~~~~~~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------+
| Name                                                                                                                                                                                  | Description                           |
+=======================================================================================================================================================================================+=======================================+
| |image5| `Ambient <Modelica_Thermal_FluidHeatFlow_Sources.html#Modelica.Thermal.FluidHeatFlow.Sources.Ambient>`_                                                                      | Ambient with constant properties      |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------+
| |image6| `AbsolutePressure <Modelica_Thermal_FluidHeatFlow_Sources.html#Modelica.Thermal.FluidHeatFlow.Sources.AbsolutePressure>`_                                                    | Defines absolute pressure level       |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------+
| |image7| `VolumeFlow <Modelica_Thermal_FluidHeatFlow_Sources.html#Modelica.Thermal.FluidHeatFlow.Sources.VolumeFlow>`_                                                                | Enforces constant volume flow         |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------+
| |image8| `PressureIncrease <Modelica_Thermal_FluidHeatFlow_Sources.html#Modelica.Thermal.FluidHeatFlow.Sources.PressureIncrease>`_                                                    | Enforces constant pressure increase   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------+
| |image9| `IdealPump <Modelica_Thermal_FluidHeatFlow_Sources.html#Modelica.Thermal.FluidHeatFlow.Sources.IdealPump>`_                                                                  | Model of an ideal pump                |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------+

--------------

|image10| `Modelica.Thermal.FluidHeatFlow.Sources <Modelica_Thermal_FluidHeatFlow_Sources.html#Modelica.Thermal.FluidHeatFlow.Sources>`_.Ambient
------------------------------------------------------------------------------------------------------------------------------------------------

**Ambient with constant properties**

.. figure:: Modelica.Thermal.FluidHeatFlow.Sources.AmbientD.png
   :align: center
   :alt: Modelica.Thermal.FluidHeatFlow.Sources.Ambient

   Modelica.Thermal.FluidHeatFlow.Sources.Ambient

Information
~~~~~~~~~~~

::

(Infinite) ambient with constant pressure and temperature.
 Thermodynamic equations are defined by Partials.Ambient.

::

Extends from
`Interfaces.Partials.Ambient <Modelica_Thermal_FluidHeatFlow_Interfaces_Partials.html#Modelica.Thermal.FluidHeatFlow.Interfaces.Partials.Ambient>`_
(Partial model of ambient).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------+------------------------------+--------------------------------+--------------------------------------+
| Type                                                                                                | Name                         | Default                        | Description                          |
+=====================================================================================================+==============================+================================+======================================+
| `Medium <Modelica_Thermal_FluidHeatFlow_Media.html#Modelica.Thermal.FluidHeatFlow.Media.Medium>`_   | medium                       | FluidHeatFlow.Media.Medium()   | Ambient medium                       |
+-----------------------------------------------------------------------------------------------------+------------------------------+--------------------------------+--------------------------------------+
| Boolean                                                                                             | usePressureInput             | false                          | Enable / disable pressure input      |
+-----------------------------------------------------------------------------------------------------+------------------------------+--------------------------------+--------------------------------------+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_                                       | constantAmbientPressure      |                                | Ambient pressure [Pa]                |
+-----------------------------------------------------------------------------------------------------+------------------------------+--------------------------------+--------------------------------------+
| Boolean                                                                                             | useTemperatureInput          | false                          | Enable / disable temperature input   |
+-----------------------------------------------------------------------------------------------------+------------------------------+--------------------------------+--------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                 | constantAmbientTemperature   |                                | Ambient temperature [K]              |
+-----------------------------------------------------------------------------------------------------+------------------------------+--------------------------------+--------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------+----------------------+---------------+
| Type                                                                                                                   | Name                 | Description   |
+========================================================================================================================+======================+===============+
| `FlowPort\_a <Modelica_Thermal_FluidHeatFlow_Interfaces.html#Modelica.Thermal.FluidHeatFlow.Interfaces.FlowPort_a>`_   | flowPort             |               |
+------------------------------------------------------------------------------------------------------------------------+----------------------+---------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_                              | ambientPressure      |               |
+------------------------------------------------------------------------------------------------------------------------+----------------------+---------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_                              | ambientTemperature   |               |
+------------------------------------------------------------------------------------------------------------------------+----------------------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Ambient "Ambient with constant properties"

      extends Interfaces.Partials.Ambient;
      parameter Boolean usePressureInput=false "Enable / disable pressure input";
      parameter Modelica.SIunits.Pressure constantAmbientPressure(start=0) 
        "Ambient pressure";
      parameter Boolean useTemperatureInput=false 
        "Enable / disable temperature input";
      parameter Modelica.SIunits.Temperature constantAmbientTemperature(start=293.15, displayUnit="degC") 
        "Ambient temperature";
      Modelica.Blocks.Interfaces.RealInput ambientPressure=pAmbient if usePressureInput;
      Modelica.Blocks.Interfaces.RealInput ambientTemperature=TAmbient if useTemperatureInput;
    protected 
      Modelica.SIunits.Pressure pAmbient;
      Modelica.SIunits.Temperature TAmbient;
    equation 
      if not usePressureInput then
        pAmbient = constantAmbientPressure;
      end if;
      if not useTemperatureInput then
        TAmbient = constantAmbientTemperature;
      end if;
      flowPort.p = pAmbient;
      T = TAmbient;
    end Ambient;

--------------

|image11| `Modelica.Thermal.FluidHeatFlow.Sources <Modelica_Thermal_FluidHeatFlow_Sources.html#Modelica.Thermal.FluidHeatFlow.Sources>`_.AbsolutePressure
---------------------------------------------------------------------------------------------------------------------------------------------------------

**Defines absolute pressure level**

.. figure:: Modelica.Thermal.FluidHeatFlow.Sources.AbsolutePressureD.png
   :align: center
   :alt: Modelica.Thermal.FluidHeatFlow.Sources.AbsolutePressure

   Modelica.Thermal.FluidHeatFlow.Sources.AbsolutePressure

Information
~~~~~~~~~~~

::

AbsolutePressure to define pressure level of a closed cooling cycle.
Coolant's mass flow, temperature and enthalpy flow are not affected.

::

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------+----------+--------------------------------+------------------------+
| Type                                                                                                | Name     | Default                        | Description            |
+=====================================================================================================+==========+================================+========================+
| `Medium <Modelica_Thermal_FluidHeatFlow_Media.html#Modelica.Thermal.FluidHeatFlow.Media.Medium>`_   | medium   | FluidHeatFlow.Media.Medium()   | medium                 |
+-----------------------------------------------------------------------------------------------------+----------+--------------------------------+------------------------+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_                                       | p        |                                | Pressure ground [Pa]   |
+-----------------------------------------------------------------------------------------------------+----------+--------------------------------+------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------+------------+---------------+
| Type                                                                                                                   | Name       | Description   |
+========================================================================================================================+============+===============+
| `FlowPort\_a <Modelica_Thermal_FluidHeatFlow_Interfaces.html#Modelica.Thermal.FluidHeatFlow.Interfaces.FlowPort_a>`_   | flowPort   |               |
+------------------------------------------------------------------------------------------------------------------------+------------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model AbsolutePressure "Defines absolute pressure level"

      parameter FluidHeatFlow.Media.Medium medium=FluidHeatFlow.Media.Medium() 
        "medium";
      parameter Modelica.SIunits.Pressure p(start=0) "Pressure ground";
      Interfaces.FlowPort_a flowPort(final medium=medium);
    equation 
      // defining pressure
      flowPort.p = p;
      // no energy exchange; no mass flow by default
      flowPort.H_flow = 0;
    end AbsolutePressure;

--------------

|image12| `Modelica.Thermal.FluidHeatFlow.Sources <Modelica_Thermal_FluidHeatFlow_Sources.html#Modelica.Thermal.FluidHeatFlow.Sources>`_.VolumeFlow
---------------------------------------------------------------------------------------------------------------------------------------------------

**Enforces constant volume flow**

.. figure:: Modelica.Thermal.FluidHeatFlow.Sources.VolumeFlowD.png
   :align: center
   :alt: Modelica.Thermal.FluidHeatFlow.Sources.VolumeFlow

   Modelica.Thermal.FluidHeatFlow.Sources.VolumeFlow

Information
~~~~~~~~~~~

::

Fan resp. pump with constant volume flow rate. Pressure increase is the
response of the whole system. Coolant's temperature and enthalpy flow
are not affected.
 Setting parameter m (mass of medium within fan/pump) to zero leads to
neglection of temperature transient cv\*m\*der(T).
 Thermodynamic equations are defined by Partials.TwoPort.

::

Extends from
`Interfaces.Partials.TwoPort <Modelica_Thermal_FluidHeatFlow_Interfaces_Partials.html#Modelica.Thermal.FluidHeatFlow.Interfaces.Partials.TwoPort>`_
(Partial model of two port).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------+----------------------+--------------------------------+------------------------------------------------------------------------+
| Type                                                                                                | Name                 | Default                        | Description                                                            |
+=====================================================================================================+======================+================================+========================================================================+
| `Medium <Modelica_Thermal_FluidHeatFlow_Media.html#Modelica.Thermal.FluidHeatFlow.Media.Medium>`_   | medium               | FluidHeatFlow.Media.Medium()   | Medium in the component                                                |
+-----------------------------------------------------------------------------------------------------+----------------------+--------------------------------+------------------------------------------------------------------------+
| `Mass <Modelica_SIunits.html#Modelica.SIunits.Mass>`_                                               | m                    |                                | Mass of medium [kg]                                                    |
+-----------------------------------------------------------------------------------------------------+----------------------+--------------------------------+------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                 | T0                   |                                | Initial temperature of medium [K]                                      |
+-----------------------------------------------------------------------------------------------------+----------------------+--------------------------------+------------------------------------------------------------------------+
| Real                                                                                                | tapT                 | 1                              | Defines temperature of heatPort between inlet and outlet temperature   |
+-----------------------------------------------------------------------------------------------------+----------------------+--------------------------------+------------------------------------------------------------------------+
| Boolean                                                                                             | useVolumeFlowInput   | false                          | Enable / disable volume flow input                                     |
+-----------------------------------------------------------------------------------------------------+----------------------+--------------------------------+------------------------------------------------------------------------+
| `VolumeFlowRate <Modelica_SIunits.html#Modelica.SIunits.VolumeFlowRate>`_                           | constantVolumeFlow   |                                | Volume flow rate [m3/s]                                                |
+-----------------------------------------------------------------------------------------------------+----------------------+--------------------------------+------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------+---------------+---------------+
| Type                                                                                                                   | Name          | Description   |
+========================================================================================================================+===============+===============+
| `FlowPort\_a <Modelica_Thermal_FluidHeatFlow_Interfaces.html#Modelica.Thermal.FluidHeatFlow.Interfaces.FlowPort_a>`_   | flowPort\_a   |               |
+------------------------------------------------------------------------------------------------------------------------+---------------+---------------+
| `FlowPort\_b <Modelica_Thermal_FluidHeatFlow_Interfaces.html#Modelica.Thermal.FluidHeatFlow.Interfaces.FlowPort_b>`_   | flowPort\_b   |               |
+------------------------------------------------------------------------------------------------------------------------+---------------+---------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_                              | volumeFlow    |               |
+------------------------------------------------------------------------------------------------------------------------+---------------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model VolumeFlow "Enforces constant volume flow"

      extends Interfaces.Partials.TwoPort(final tapT=1);
      parameter Boolean useVolumeFlowInput=false 
        "Enable / disable volume flow input";
      parameter Modelica.SIunits.VolumeFlowRate constantVolumeFlow(start=1) 
        "Volume flow rate";
      Modelica.Blocks.Interfaces.RealInput volumeFlow=internalVolumeFlow if useVolumeFlowInput;
    protected 
      Modelica.SIunits.VolumeFlowRate internalVolumeFlow;
    equation 
      if not useVolumeFlowInput then
        internalVolumeFlow = constantVolumeFlow;
      end if;
      Q_flow = 0;
      V_flow = internalVolumeFlow;
    end VolumeFlow;

--------------

|image13| `Modelica.Thermal.FluidHeatFlow.Sources <Modelica_Thermal_FluidHeatFlow_Sources.html#Modelica.Thermal.FluidHeatFlow.Sources>`_.PressureIncrease
---------------------------------------------------------------------------------------------------------------------------------------------------------

**Enforces constant pressure increase**

.. figure:: Modelica.Thermal.FluidHeatFlow.Sources.PressureIncreaseD.png
   :align: center
   :alt: Modelica.Thermal.FluidHeatFlow.Sources.PressureIncrease

   Modelica.Thermal.FluidHeatFlow.Sources.PressureIncrease

Information
~~~~~~~~~~~

::

Fan resp. pump with constant pressure increase. Mass resp. volume flow
is the response of the whole system. Coolant's temperature and enthalpy
flow are not affected.
 Setting parameter m (mass of medium within fan/pump) to zero leads to
neglection of temperature transient cv\*m\*der(T).
 Thermodynamic equations are defined by Partials.TwoPort.

::

Extends from
`Interfaces.Partials.TwoPort <Modelica_Thermal_FluidHeatFlow_Interfaces_Partials.html#Modelica.Thermal.FluidHeatFlow.Interfaces.Partials.TwoPort>`_
(Partial model of two port).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------+----------------------------+--------------------------------+------------------------------------------------------------------------+
| Type                                                                                                | Name                       | Default                        | Description                                                            |
+=====================================================================================================+============================+================================+========================================================================+
| `Medium <Modelica_Thermal_FluidHeatFlow_Media.html#Modelica.Thermal.FluidHeatFlow.Media.Medium>`_   | medium                     | FluidHeatFlow.Media.Medium()   | Medium in the component                                                |
+-----------------------------------------------------------------------------------------------------+----------------------------+--------------------------------+------------------------------------------------------------------------+
| `Mass <Modelica_SIunits.html#Modelica.SIunits.Mass>`_                                               | m                          |                                | Mass of medium [kg]                                                    |
+-----------------------------------------------------------------------------------------------------+----------------------------+--------------------------------+------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                 | T0                         |                                | Initial temperature of medium [K]                                      |
+-----------------------------------------------------------------------------------------------------+----------------------------+--------------------------------+------------------------------------------------------------------------+
| Real                                                                                                | tapT                       | 1                              | Defines temperature of heatPort between inlet and outlet temperature   |
+-----------------------------------------------------------------------------------------------------+----------------------------+--------------------------------+------------------------------------------------------------------------+
| Boolean                                                                                             | usePressureIncreaseInput   | false                          | Enable / disable pressure increase input                               |
+-----------------------------------------------------------------------------------------------------+----------------------------+--------------------------------+------------------------------------------------------------------------+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_                                       | constantPressureIncrease   |                                | Pressure increase [Pa]                                                 |
+-----------------------------------------------------------------------------------------------------+----------------------------+--------------------------------+------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------+--------------------+---------------+
| Type                                                                                                                   | Name               | Description   |
+========================================================================================================================+====================+===============+
| `FlowPort\_a <Modelica_Thermal_FluidHeatFlow_Interfaces.html#Modelica.Thermal.FluidHeatFlow.Interfaces.FlowPort_a>`_   | flowPort\_a        |               |
+------------------------------------------------------------------------------------------------------------------------+--------------------+---------------+
| `FlowPort\_b <Modelica_Thermal_FluidHeatFlow_Interfaces.html#Modelica.Thermal.FluidHeatFlow.Interfaces.FlowPort_b>`_   | flowPort\_b        |               |
+------------------------------------------------------------------------------------------------------------------------+--------------------+---------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_                              | pressureIncrease   |               |
+------------------------------------------------------------------------------------------------------------------------+--------------------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model PressureIncrease "Enforces constant pressure increase"

      extends Interfaces.Partials.TwoPort(final tapT=1);
      parameter Boolean usePressureIncreaseInput=false 
        "Enable / disable pressure increase input";
      parameter Modelica.SIunits.Pressure constantPressureIncrease(start=1) 
        "Pressure increase";
      Modelica.Blocks.Interfaces.RealInput pressureIncrease=internalPressureIncrease if usePressureIncreaseInput;
    protected 
      Modelica.SIunits.Pressure internalPressureIncrease;
    equation 
      if not usePressureIncreaseInput then
        internalPressureIncrease = constantPressureIncrease;
      end if;
      Q_flow = 0;
      dp = -internalPressureIncrease;
    end PressureIncrease;

--------------

|image14| `Modelica.Thermal.FluidHeatFlow.Sources <Modelica_Thermal_FluidHeatFlow_Sources.html#Modelica.Thermal.FluidHeatFlow.Sources>`_.IdealPump
--------------------------------------------------------------------------------------------------------------------------------------------------

**Model of an ideal pump**

.. figure:: Modelica.Thermal.FluidHeatFlow.Sources.IdealPumpD.png
   :align: center
   :alt: Modelica.Thermal.FluidHeatFlow.Sources.IdealPump

   Modelica.Thermal.FluidHeatFlow.Sources.IdealPump

Information
~~~~~~~~~~~

::

Simple fan resp. pump where characteristic is dependent on shaft's
speed,
 torque \* speed = pressure increase \* volume flow (without losses)
 Pressure increase versus volume flow is defined by a linear function,
from dp0(V\_flow=0) to V\_flow0(dp=0).
 The axis intersections vary with speed as follows:

-  dp prop. speed^2
-  V\_flow prop. speed

Coolant's temperature and enthalpy flow are not affected.
 Setting parameter m (mass of medium within fan/pump) to zero leads to
neglection of temperature transient cv\*m\*der(T).
 Thermodynamic equations are defined by Partials.TwoPort.

::

Extends from
`Interfaces.Partials.TwoPort <Modelica_Thermal_FluidHeatFlow_Interfaces_Partials.html#Modelica.Thermal.FluidHeatFlow.Interfaces.Partials.TwoPort>`_
(Partial model of two port).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------+------------+--------------------------------+------------------------------------------------------------------------+
| Type                                                                                                | Name       | Default                        | Description                                                            |
+=====================================================================================================+============+================================+========================================================================+
| `Medium <Modelica_Thermal_FluidHeatFlow_Media.html#Modelica.Thermal.FluidHeatFlow.Media.Medium>`_   | medium     | FluidHeatFlow.Media.Medium()   | Medium in the component                                                |
+-----------------------------------------------------------------------------------------------------+------------+--------------------------------+------------------------------------------------------------------------+
| `Mass <Modelica_SIunits.html#Modelica.SIunits.Mass>`_                                               | m          |                                | Mass of medium [kg]                                                    |
+-----------------------------------------------------------------------------------------------------+------------+--------------------------------+------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                 | T0         |                                | Initial temperature of medium [K]                                      |
+-----------------------------------------------------------------------------------------------------+------------+--------------------------------+------------------------------------------------------------------------+
| Real                                                                                                | tapT       | 1                              | Defines temperature of heatPort between inlet and outlet temperature   |
+-----------------------------------------------------------------------------------------------------+------------+--------------------------------+------------------------------------------------------------------------+
| Pump characteristic                                                                                 |
+-----------------------------------------------------------------------------------------------------+------------+--------------------------------+------------------------------------------------------------------------+
| `AngularVelocity <Modelica_SIunits.html#Modelica.SIunits.AngularVelocity>`_                         | wNominal   |                                | Nominal speed [rad/s]                                                  |
+-----------------------------------------------------------------------------------------------------+------------+--------------------------------+------------------------------------------------------------------------+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_                                       | dp0        |                                | Max. pressure increase @ V\_flow=0 [Pa]                                |
+-----------------------------------------------------------------------------------------------------+------------+--------------------------------+------------------------------------------------------------------------+
| `VolumeFlowRate <Modelica_SIunits.html#Modelica.SIunits.VolumeFlowRate>`_                           | V\_flow0   |                                | Max. volume flow rate @ dp=0 [m3/s]                                    |
+-----------------------------------------------------------------------------------------------------+------------+--------------------------------+------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------+---------------+---------------+
| Type                                                                                                                   | Name          | Description   |
+========================================================================================================================+===============+===============+
| `FlowPort\_a <Modelica_Thermal_FluidHeatFlow_Interfaces.html#Modelica.Thermal.FluidHeatFlow.Interfaces.FlowPort_a>`_   | flowPort\_a   |               |
+------------------------------------------------------------------------------------------------------------------------+---------------+---------------+
| `FlowPort\_b <Modelica_Thermal_FluidHeatFlow_Interfaces.html#Modelica.Thermal.FluidHeatFlow.Interfaces.FlowPort_b>`_   | flowPort\_b   |               |
+------------------------------------------------------------------------------------------------------------------------+---------------+---------------+
| `Flange\_a <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.Flange_a>`_         | flange\_a     |               |
+------------------------------------------------------------------------------------------------------------------------+---------------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model IdealPump "Model of an ideal pump"

      extends Interfaces.Partials.TwoPort(final tapT=1);
      parameter Modelica.SIunits.AngularVelocity wNominal(start=1, displayUnit="1/min") 
        "Nominal speed";
      parameter Modelica.SIunits.Pressure dp0(start=2) 
        "Max. pressure increase @ V_flow=0";
      parameter Modelica.SIunits.VolumeFlowRate V_flow0(start=2) 
        "Max. volume flow rate @ dp=0";
      Modelica.SIunits.AngularVelocity w=der(flange_a.phi) "Speed";
    protected 
      Modelica.SIunits.Pressure dp1;
      Modelica.SIunits.VolumeFlowRate V_flow1;
    public 
      Modelica.Mechanics.Rotational.Interfaces.Flange_a flange_a;
    equation 
      // pump characteristic
      dp1 = dp0*sign(w/wNominal)*(w/wNominal)^2;
      V_flow1 = V_flow0*(w/wNominal);
      if noEvent(abs(w)<Modelica.Constants.small) then
        dp = 0;
        flange_a.tau = 0;
      else
        dp = -dp1*(1-noEvent(abs(V_flow/V_flow1)));
        flange_a.tau*w = -dp*V_flow;
      end if;
      // no energy exchange with medium
      Q_flow = 0;
    end IdealPump;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:31:44
2010.

.. |Modelica.Thermal.FluidHeatFlow.Sources.Ambient| image:: Modelica.Thermal.FluidHeatFlow.Sources.AmbientS.png
.. |Modelica.Thermal.FluidHeatFlow.Sources.AbsolutePressure| image:: Modelica.Thermal.FluidHeatFlow.Sources.AbsolutePressureS.png
.. |Modelica.Thermal.FluidHeatFlow.Sources.VolumeFlow| image:: Modelica.Thermal.FluidHeatFlow.Sources.VolumeFlowS.png
.. |Modelica.Thermal.FluidHeatFlow.Sources.PressureIncrease| image:: Modelica.Thermal.FluidHeatFlow.Sources.PressureIncreaseS.png
.. |Modelica.Thermal.FluidHeatFlow.Sources.IdealPump| image:: Modelica.Thermal.FluidHeatFlow.Sources.IdealPumpS.png
.. |image5| image:: Modelica.Thermal.FluidHeatFlow.Sources.AmbientS.png
.. |image6| image:: Modelica.Thermal.FluidHeatFlow.Sources.AbsolutePressureS.png
.. |image7| image:: Modelica.Thermal.FluidHeatFlow.Sources.VolumeFlowS.png
.. |image8| image:: Modelica.Thermal.FluidHeatFlow.Sources.PressureIncreaseS.png
.. |image9| image:: Modelica.Thermal.FluidHeatFlow.Sources.IdealPumpS.png
.. |image10| image:: Modelica.Thermal.FluidHeatFlow.Sources.AmbientI.png
.. |image11| image:: Modelica.Thermal.FluidHeatFlow.Sources.AbsolutePressureI.png
.. |image12| image:: Modelica.Thermal.FluidHeatFlow.Sources.VolumeFlowI.png
.. |image13| image:: Modelica.Thermal.FluidHeatFlow.Sources.PressureIncreaseI.png
.. |image14| image:: Modelica.Thermal.FluidHeatFlow.Sources.IdealPumpI.png
