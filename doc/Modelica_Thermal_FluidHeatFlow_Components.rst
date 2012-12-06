=========================================
Modelica.Thermal.FluidHeatFlow.Components
=========================================

`Modelica.Thermal.FluidHeatFlow <Modelica_Thermal_FluidHeatFlow.html#Modelica.Thermal.FluidHeatFlow>`_.Components
-----------------------------------------------------------------------------------------------------------------

**Basic components (pipes, valves)**

Information
~~~~~~~~~~~

::

This package contains components:

-  pipe without heat exchange
-  pipe with heat exchange
-  valve (simple controlled valve)

Pressure drop is taken from partial model SimpleFriction.
 Thermodynamic equations are defined in partial models (package
Partials).

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
`Modelica.Icons.Package <Modelica_Icons_Package.html#Modelica.Icons.Package>`_
(Icon for standard packages).

Package Content
~~~~~~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------+
| Name                                                                                                                                                                               | Description                  |
+====================================================================================================================================================================================+==============================+
| |image3| `IsolatedPipe <Modelica_Thermal_FluidHeatFlow_Components.html#Modelica.Thermal.FluidHeatFlow.Components.IsolatedPipe>`_                                                   | Pipe without heat exchange   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------+
| |image4| `HeatedPipe <Modelica_Thermal_FluidHeatFlow_Components.html#Modelica.Thermal.FluidHeatFlow.Components.HeatedPipe>`_                                                       | Pipe with heat exchange      |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------+
| |image5| `Valve <Modelica_Thermal_FluidHeatFlow_Components.html#Modelica.Thermal.FluidHeatFlow.Components.Valve>`_                                                                 | Simple valve                 |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------+

--------------

|image6| `Modelica.Thermal.FluidHeatFlow.Components <Modelica_Thermal_FluidHeatFlow_Components.html#Modelica.Thermal.FluidHeatFlow.Components>`_.IsolatedPipe
-------------------------------------------------------------------------------------------------------------------------------------------------------------

**Pipe without heat exchange**

.. figure:: Modelica.Thermal.FluidHeatFlow.Components.IsolatedPipeD.png
   :align: center
   :alt: Modelica.Thermal.FluidHeatFlow.Components.IsolatedPipe

   Modelica.Thermal.FluidHeatFlow.Components.IsolatedPipe

Information
~~~~~~~~~~~

::

Pipe without heat exchange.
 Thermodynamic equations are defined by Partials.TwoPortMass(Q\_flow =
0).
 **Note:** Setting parameter m (mass of medium within pipe) to zero
leads to neglection of temperature transient cv\*m\*der(T).

::

Extends from
`Interfaces.Partials.TwoPort <Modelica_Thermal_FluidHeatFlow_Interfaces_Partials.html#Modelica.Thermal.FluidHeatFlow.Interfaces.Partials.TwoPort>`_
(Partial model of two port),
`Interfaces.Partials.SimpleFriction <Modelica_Thermal_FluidHeatFlow_Interfaces_Partials.html#Modelica.Thermal.FluidHeatFlow.Interfaces.Partials.SimpleFriction>`_
(Simple friction model).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------+------------------+--------------------------------+---------------------------------------------------------------------------+
| Type                                                                                                | Name             | Default                        | Description                                                               |
+=====================================================================================================+==================+================================+===========================================================================+
| `Medium <Modelica_Thermal_FluidHeatFlow_Media.html#Modelica.Thermal.FluidHeatFlow.Media.Medium>`_   | medium           | FluidHeatFlow.Media.Medium()   | Medium in the component                                                   |
+-----------------------------------------------------------------------------------------------------+------------------+--------------------------------+---------------------------------------------------------------------------+
| `Mass <Modelica_SIunits.html#Modelica.SIunits.Mass>`_                                               | m                |                                | Mass of medium [kg]                                                       |
+-----------------------------------------------------------------------------------------------------+------------------+--------------------------------+---------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                 | T0               |                                | Initial temperature of medium [K]                                         |
+-----------------------------------------------------------------------------------------------------+------------------+--------------------------------+---------------------------------------------------------------------------+
| Real                                                                                                | tapT             | 1                              | Defines temperature of heatPort between inlet and outlet temperature      |
+-----------------------------------------------------------------------------------------------------+------------------+--------------------------------+---------------------------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                                           | h\_g             |                                | Geodetic height (heigth difference from flowPort\_a to flowPort\_b) [m]   |
+-----------------------------------------------------------------------------------------------------+------------------+--------------------------------+---------------------------------------------------------------------------+
| Simple Friction                                                                                     |
+-----------------------------------------------------------------------------------------------------+------------------+--------------------------------+---------------------------------------------------------------------------+
| `VolumeFlowRate <Modelica_SIunits.html#Modelica.SIunits.VolumeFlowRate>`_                           | V\_flowLaminar   |                                | Laminar volume flow [m3/s]                                                |
+-----------------------------------------------------------------------------------------------------+------------------+--------------------------------+---------------------------------------------------------------------------+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_                                       | dpLaminar        |                                | Laminar pressure drop [Pa]                                                |
+-----------------------------------------------------------------------------------------------------+------------------+--------------------------------+---------------------------------------------------------------------------+
| `VolumeFlowRate <Modelica_SIunits.html#Modelica.SIunits.VolumeFlowRate>`_                           | V\_flowNominal   |                                | Nominal volume flow [m3/s]                                                |
+-----------------------------------------------------------------------------------------------------+------------------+--------------------------------+---------------------------------------------------------------------------+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_                                       | dpNominal        |                                | Nominal pressure drop [Pa]                                                |
+-----------------------------------------------------------------------------------------------------+------------------+--------------------------------+---------------------------------------------------------------------------+
| Real                                                                                                | frictionLoss     | 0                              | Part of friction losses fed to medium                                     |
+-----------------------------------------------------------------------------------------------------+------------------+--------------------------------+---------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------+---------------+---------------+
| Type                                                                                                                   | Name          | Description   |
+========================================================================================================================+===============+===============+
| `FlowPort\_a <Modelica_Thermal_FluidHeatFlow_Interfaces.html#Modelica.Thermal.FluidHeatFlow.Interfaces.FlowPort_a>`_   | flowPort\_a   |               |
+------------------------------------------------------------------------------------------------------------------------+---------------+---------------+
| `FlowPort\_b <Modelica_Thermal_FluidHeatFlow_Interfaces.html#Modelica.Thermal.FluidHeatFlow.Interfaces.FlowPort_b>`_   | flowPort\_b   |               |
+------------------------------------------------------------------------------------------------------------------------+---------------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model IsolatedPipe "Pipe without heat exchange"

      extends Interfaces.Partials.TwoPort(final tapT=1);
      extends Interfaces.Partials.SimpleFriction;
      parameter Modelica.SIunits.Length h_g(start=0) 
        "Geodetic height (heigth difference from flowPort_a to flowPort_b)";
    equation 
      // coupling with FrictionModel
      volumeFlow = V_flow;
      dp = pressureDrop + medium.rho*Modelica.Constants.g_n*h_g;
      // no energy exchange with medium
      Q_flow = Q_friction;
    end IsolatedPipe;

--------------

|image7| `Modelica.Thermal.FluidHeatFlow.Components <Modelica_Thermal_FluidHeatFlow_Components.html#Modelica.Thermal.FluidHeatFlow.Components>`_.HeatedPipe
-----------------------------------------------------------------------------------------------------------------------------------------------------------

**Pipe with heat exchange**

.. figure:: Modelica.Thermal.FluidHeatFlow.Components.HeatedPipeD.png
   :align: center
   :alt: Modelica.Thermal.FluidHeatFlow.Components.HeatedPipe

   Modelica.Thermal.FluidHeatFlow.Components.HeatedPipe

Information
~~~~~~~~~~~

::

Pipe with heat exchange.
 Thermodynamic equations are defined by Partials.TwoPort.
 Q\_flow is defined by heatPort.Q\_flow.
 **Note:** Setting parameter m (mass of medium within pipe) to zero
leads to neglection of temperature transient cv\*m\*der(T).
 **Note:** Injecting heat into a pipe with zero massflow causes
temperature rise defined by storing heat in medium's mass.

::

Extends from
`Interfaces.Partials.TwoPort <Modelica_Thermal_FluidHeatFlow_Interfaces_Partials.html#Modelica.Thermal.FluidHeatFlow.Interfaces.Partials.TwoPort>`_
(Partial model of two port),
`Interfaces.Partials.SimpleFriction <Modelica_Thermal_FluidHeatFlow_Interfaces_Partials.html#Modelica.Thermal.FluidHeatFlow.Interfaces.Partials.SimpleFriction>`_
(Simple friction model).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------+------------------+--------------------------------+---------------------------------------------------------------------------+
| Type                                                                                                | Name             | Default                        | Description                                                               |
+=====================================================================================================+==================+================================+===========================================================================+
| `Medium <Modelica_Thermal_FluidHeatFlow_Media.html#Modelica.Thermal.FluidHeatFlow.Media.Medium>`_   | medium           | FluidHeatFlow.Media.Medium()   | Medium in the component                                                   |
+-----------------------------------------------------------------------------------------------------+------------------+--------------------------------+---------------------------------------------------------------------------+
| `Mass <Modelica_SIunits.html#Modelica.SIunits.Mass>`_                                               | m                |                                | Mass of medium [kg]                                                       |
+-----------------------------------------------------------------------------------------------------+------------------+--------------------------------+---------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                 | T0               |                                | Initial temperature of medium [K]                                         |
+-----------------------------------------------------------------------------------------------------+------------------+--------------------------------+---------------------------------------------------------------------------+
| Real                                                                                                | tapT             | 1                              | Defines temperature of heatPort between inlet and outlet temperature      |
+-----------------------------------------------------------------------------------------------------+------------------+--------------------------------+---------------------------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                                           | h\_g             |                                | Geodetic height (heigth difference from flowPort\_a to flowPort\_b) [m]   |
+-----------------------------------------------------------------------------------------------------+------------------+--------------------------------+---------------------------------------------------------------------------+
| Simple Friction                                                                                     |
+-----------------------------------------------------------------------------------------------------+------------------+--------------------------------+---------------------------------------------------------------------------+
| `VolumeFlowRate <Modelica_SIunits.html#Modelica.SIunits.VolumeFlowRate>`_                           | V\_flowLaminar   |                                | Laminar volume flow [m3/s]                                                |
+-----------------------------------------------------------------------------------------------------+------------------+--------------------------------+---------------------------------------------------------------------------+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_                                       | dpLaminar        |                                | Laminar pressure drop [Pa]                                                |
+-----------------------------------------------------------------------------------------------------+------------------+--------------------------------+---------------------------------------------------------------------------+
| `VolumeFlowRate <Modelica_SIunits.html#Modelica.SIunits.VolumeFlowRate>`_                           | V\_flowNominal   |                                | Nominal volume flow [m3/s]                                                |
+-----------------------------------------------------------------------------------------------------+------------------+--------------------------------+---------------------------------------------------------------------------+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_                                       | dpNominal        |                                | Nominal pressure drop [Pa]                                                |
+-----------------------------------------------------------------------------------------------------+------------------+--------------------------------+---------------------------------------------------------------------------+
| Real                                                                                                | frictionLoss     | 0                              | Part of friction losses fed to medium                                     |
+-----------------------------------------------------------------------------------------------------+------------------+--------------------------------+---------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------+---------------+---------------+
| Type                                                                                                                   | Name          | Description   |
+========================================================================================================================+===============+===============+
| `FlowPort\_a <Modelica_Thermal_FluidHeatFlow_Interfaces.html#Modelica.Thermal.FluidHeatFlow.Interfaces.FlowPort_a>`_   | flowPort\_a   |               |
+------------------------------------------------------------------------------------------------------------------------+---------------+---------------+
| `FlowPort\_b <Modelica_Thermal_FluidHeatFlow_Interfaces.html#Modelica.Thermal.FluidHeatFlow.Interfaces.FlowPort_b>`_   | flowPort\_b   |               |
+------------------------------------------------------------------------------------------------------------------------+---------------+---------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_     | heatPort      |               |
+------------------------------------------------------------------------------------------------------------------------+---------------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model HeatedPipe "Pipe with heat exchange"

      extends Interfaces.Partials.TwoPort;
      extends Interfaces.Partials.SimpleFriction;
      parameter Modelica.SIunits.Length h_g(start=0) 
        "Geodetic height (heigth difference from flowPort_a to flowPort_b)";
      Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a heatPort;
    equation 
      // coupling with FrictionModel
      volumeFlow = V_flow;
      dp = pressureDrop + medium.rho*Modelica.Constants.g_n*h_g;
      // energy exchange with medium
      Q_flow = heatPort.Q_flow + Q_friction;
      // defines heatPort's temperature
      heatPort.T = T_q;
    end HeatedPipe;

--------------

|image8| `Modelica.Thermal.FluidHeatFlow.Components <Modelica_Thermal_FluidHeatFlow_Components.html#Modelica.Thermal.FluidHeatFlow.Components>`_.Valve
------------------------------------------------------------------------------------------------------------------------------------------------------

**Simple valve**

.. figure:: Modelica.Thermal.FluidHeatFlow.Components.ValveD.png
   :align: center
   :alt: Modelica.Thermal.FluidHeatFlow.Components.Valve

   Modelica.Thermal.FluidHeatFlow.Components.Valve

Information
~~~~~~~~~~~

::

Simple controlled valve.
 Standard characteristic Kv=*f*(y) is given at standard conditions (dp0,
rho0),
 ````

-  either linear : Kv/Kv1 = Kv0/Kv1 + (1-Kv0/Kv1) \* y/Y1
-  or exponential: Kv/Kv1 = Kv0/Kv1 \* exp[log(Kv1/Kv0) \* y/Y1]

where:

-  Kv0 ... min. flow @ y = 0
-  Y1 .... max. valve opening
-  Kv1 ... max. flow @ y = Y1

Flow resistance under real conditions is calculated by
 ``V_flow**2 * rho / dp = Kv(y)**2 * rho0 / dp0``

::

Extends from
`Interfaces.Partials.TwoPort <Modelica_Thermal_FluidHeatFlow_Interfaces_Partials.html#Modelica.Thermal.FluidHeatFlow.Interfaces.Partials.TwoPort>`_
(Partial model of two port).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------+------------------------+--------------------------------+------------------------------------------------------------------------+
| Type                                                                                                | Name                   | Default                        | Description                                                            |
+=====================================================================================================+========================+================================+========================================================================+
| `Medium <Modelica_Thermal_FluidHeatFlow_Media.html#Modelica.Thermal.FluidHeatFlow.Media.Medium>`_   | medium                 | FluidHeatFlow.Media.Medium()   | Medium in the component                                                |
+-----------------------------------------------------------------------------------------------------+------------------------+--------------------------------+------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                 | T0                     |                                | Initial temperature of medium [K]                                      |
+-----------------------------------------------------------------------------------------------------+------------------------+--------------------------------+------------------------------------------------------------------------+
| Real                                                                                                | tapT                   | 1                              | Defines temperature of heatPort between inlet and outlet temperature   |
+-----------------------------------------------------------------------------------------------------+------------------------+--------------------------------+------------------------------------------------------------------------+
| Real                                                                                                | frictionLoss           |                                | Part of friction losses fed to medium                                  |
+-----------------------------------------------------------------------------------------------------+------------------------+--------------------------------+------------------------------------------------------------------------+
| Standard characteristic                                                                             |
+-----------------------------------------------------------------------------------------------------+------------------------+--------------------------------+------------------------------------------------------------------------+
| Boolean                                                                                             | LinearCharacteristic   |                                | Type of characteristic                                                 |
+-----------------------------------------------------------------------------------------------------+------------------------+--------------------------------+------------------------------------------------------------------------+
| Real                                                                                                | y1                     |                                | Max. valve opening                                                     |
+-----------------------------------------------------------------------------------------------------+------------------------+--------------------------------+------------------------------------------------------------------------+
| `VolumeFlowRate <Modelica_SIunits.html#Modelica.SIunits.VolumeFlowRate>`_                           | Kv1                    |                                | Max. flow @ y = y1 [m3/s]                                              |
+-----------------------------------------------------------------------------------------------------+------------------------+--------------------------------+------------------------------------------------------------------------+
| Real                                                                                                | kv0                    |                                | Leakage flow / max.flow @ y = 0                                        |
+-----------------------------------------------------------------------------------------------------+------------------------+--------------------------------+------------------------------------------------------------------------+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_                                       | dp0                    |                                | Standard pressure drop [Pa]                                            |
+-----------------------------------------------------------------------------------------------------+------------------------+--------------------------------+------------------------------------------------------------------------+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_                                         | rho0                   |                                | Standard medium's density [kg/m3]                                      |
+-----------------------------------------------------------------------------------------------------+------------------------+--------------------------------+------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------+---------------+---------------+
| Type                                                                                                                   | Name          | Description   |
+========================================================================================================================+===============+===============+
| `FlowPort\_a <Modelica_Thermal_FluidHeatFlow_Interfaces.html#Modelica.Thermal.FluidHeatFlow.Interfaces.FlowPort_a>`_   | flowPort\_a   |               |
+------------------------------------------------------------------------------------------------------------------------+---------------+---------------+
| `FlowPort\_b <Modelica_Thermal_FluidHeatFlow_Interfaces.html#Modelica.Thermal.FluidHeatFlow.Interfaces.FlowPort_b>`_   | flowPort\_b   |               |
+------------------------------------------------------------------------------------------------------------------------+---------------+---------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_                              | y             |               |
+------------------------------------------------------------------------------------------------------------------------+---------------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Valve "Simple valve"

      extends Interfaces.Partials.TwoPort(m(start=0), final tapT=1);
      parameter Boolean LinearCharacteristic(start=true) "Type of characteristic";
      parameter Real y1(min=small, start=1) "Max. valve opening";
      parameter Modelica.SIunits.VolumeFlowRate Kv1(min=small, start=1) 
        "Max. flow @ y = y1";
      parameter Real kv0(min=small,max=1-small, start=0.01) 
        "Leakage flow / max.flow @ y = 0";
      parameter Modelica.SIunits.Pressure dp0(start=1) "Standard pressure drop";
      parameter Modelica.SIunits.Density rho0(start=10) "Standard medium's density";
      parameter Real frictionLoss(min=0, max=1, start=0) 
        "Part of friction losses fed to medium";
    protected 
      constant Modelica.SIunits.VolumeFlowRate unitVolumeFlowRate = 1;
      constant Real small = Modelica.Constants.small;
      constant Modelica.SIunits.VolumeFlowRate smallVolumeFlowRate = eps*unitVolumeFlowRate;
      constant Real eps = Modelica.Constants.eps;
      Real yLim = max(min(y,y1),0) "Limited valve opening";
      Modelica.SIunits.VolumeFlowRate Kv "Standard flow rate";
    public 
      Modelica.Blocks.Interfaces.RealInput y;
    initial algorithm 
      assert(y1>small, "Valve characteristic: y1 has to be > 0 !");
      assert(Kv1>smallVolumeFlowRate, "Valve characteristic: Kv1 has to be > 0 !");
      assert(kv0>small, "Valve characteristic: kv0 has to be > 0 !");
      assert(kv0<1-eps, "Valve characteristic: kv0 has to be < 1 !");
    equation 
      // evaluate standard characteristic
      Kv/Kv1 = if LinearCharacteristic then (kv0 + (1-kv0)*yLim/y1) else kv0*exp(Modelica.Math.log(1/kv0)*yLim/y1);
      // pressure drop under real conditions
      dp/dp0 = medium.rho/rho0*(V_flow/Kv)*abs(V_flow/Kv);
      // no energy exchange with medium
      Q_flow = frictionLoss*V_flow*dp;
    end Valve;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:31:43
2010.

.. |Modelica.Thermal.FluidHeatFlow.Components.IsolatedPipe| image:: Modelica.Thermal.FluidHeatFlow.Components.IsolatedPipeS.png
.. |Modelica.Thermal.FluidHeatFlow.Components.HeatedPipe| image:: Modelica.Thermal.FluidHeatFlow.Components.HeatedPipeS.png
.. |Modelica.Thermal.FluidHeatFlow.Components.Valve| image:: Modelica.Thermal.FluidHeatFlow.Components.ValveS.png
.. |image3| image:: Modelica.Thermal.FluidHeatFlow.Components.IsolatedPipeS.png
.. |image4| image:: Modelica.Thermal.FluidHeatFlow.Components.HeatedPipeS.png
.. |image5| image:: Modelica.Thermal.FluidHeatFlow.Components.ValveS.png
.. |image6| image:: Modelica.Thermal.FluidHeatFlow.Components.IsolatedPipeI.png
.. |image7| image:: Modelica.Thermal.FluidHeatFlow.Components.HeatedPipeI.png
.. |image8| image:: Modelica.Thermal.FluidHeatFlow.Components.ValveI.png
