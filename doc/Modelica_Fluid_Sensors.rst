======================
Modelica.Fluid.Sensors
======================

`Modelica.Fluid <Modelica_Fluid.html#Modelica.Fluid>`_.Sensors
--------------------------------------------------------------

**Ideal sensor components to extract signals from a fluid connector**

Information
~~~~~~~~~~~

::

Package **Sensors** consists of idealized sensor components that provide
variables of a medium model and/or fluid ports as output signals. These
signals can be, e.g., further processed with components of the
Modelica.Blocks library. Also more realistic sensor models can be built,
by further processing (e.g., by attaching block
Modelica.Blocks.FirstOrder to model the time constant of the sensor).

For the thermodynamic state variables temperature, specific entalpy,
specific entropy and density the fluid library provides two different
types of sensors: **regular one port** and **two port** sensors.

-  The **regular one port** sensors have the advantage of easy
   introduction and removal from a model, as no connections have to be
   broken. A potential drawback is that the obtained value jumps as flow
   reverts.
-  The **two port** sensors offer the advantages of an adjustable
   regularized step function around zero flow. Moreover the obtained
   result is restricted to the value flowing into port\_a if
   allowFlowReversal is false.

`Modelica.Fluid.Examples.Explanatory.MeasuringTemperature <Modelica_Fluid_Examples_Explanatory.html#Modelica.Fluid.Examples.Explanatory.MeasuringTemperature>`_
demonstrates the differences between one- and two-port sensor at hand of
a simple example.

::

Extends from
`Modelica.Icons.SensorsPackage <Modelica_Icons_SensorsPackage.html#Modelica.Icons.SensorsPackage>`_
(Icon for packages containing sensors).

Package Content
~~~~~~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------+
| Name                                                                                                                                                       | Description                                                                                 |
+============================================================================================================================================================+=============================================================================================+
| |image16| `Pressure <Modelica_Fluid_Sensors.html#Modelica.Fluid.Sensors.Pressure>`_                                                                        | Ideal pressure sensor                                                                       |
+------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------+
| |image17| `Density <Modelica_Fluid_Sensors.html#Modelica.Fluid.Sensors.Density>`_                                                                          | Ideal one port density sensor                                                               |
+------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------+
| |image18| `DensityTwoPort <Modelica_Fluid_Sensors.html#Modelica.Fluid.Sensors.DensityTwoPort>`_                                                            | Ideal two port density sensor                                                               |
+------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------+
| |image19| `Temperature <Modelica_Fluid_Sensors.html#Modelica.Fluid.Sensors.Temperature>`_                                                                  | Ideal one port temperature sensor                                                           |
+------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------+
| |image20| `TemperatureTwoPort <Modelica_Fluid_Sensors.html#Modelica.Fluid.Sensors.TemperatureTwoPort>`_                                                    | Ideal two port temperature sensor                                                           |
+------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------+
| |image21| `SpecificEnthalpy <Modelica_Fluid_Sensors.html#Modelica.Fluid.Sensors.SpecificEnthalpy>`_                                                        | Ideal one port specific enthalpy sensor                                                     |
+------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------+
| |image22| `SpecificEnthalpyTwoPort <Modelica_Fluid_Sensors.html#Modelica.Fluid.Sensors.SpecificEnthalpyTwoPort>`_                                          | Ideal two port sensor for the specific enthalpy                                             |
+------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------+
| |image23| `SpecificEntropy <Modelica_Fluid_Sensors.html#Modelica.Fluid.Sensors.SpecificEntropy>`_                                                          | Ideal one port specific entropy sensor                                                      |
+------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------+
| |image24| `SpecificEntropyTwoPort <Modelica_Fluid_Sensors.html#Modelica.Fluid.Sensors.SpecificEntropyTwoPort>`_                                            | Ideal two port sensor for the specific entropy                                              |
+------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------+
| |image25| `TraceSubstances <Modelica_Fluid_Sensors.html#Modelica.Fluid.Sensors.TraceSubstances>`_                                                          | Ideal one port trace substances sensor                                                      |
+------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------+
| |image26| `TraceSubstancesTwoPort <Modelica_Fluid_Sensors.html#Modelica.Fluid.Sensors.TraceSubstancesTwoPort>`_                                            | Ideal two port sensor for trace substance                                                   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------+
| |image27| `MassFlowRate <Modelica_Fluid_Sensors.html#Modelica.Fluid.Sensors.MassFlowRate>`_                                                                | Ideal sensor for mass flow rate                                                             |
+------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------+
| |image28| `VolumeFlowRate <Modelica_Fluid_Sensors.html#Modelica.Fluid.Sensors.VolumeFlowRate>`_                                                            | Ideal sensor for volume flow rate                                                           |
+------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------+
| |image29| `RelativePressure <Modelica_Fluid_Sensors.html#Modelica.Fluid.Sensors.RelativePressure>`_                                                        | Ideal relative pressure sensor                                                              |
+------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------+
| |image30| `RelativeTemperature <Modelica_Fluid_Sensors.html#Modelica.Fluid.Sensors.RelativeTemperature>`_                                                  | Ideal relative temperature sensor                                                           |
+------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------+
| |image31| `BaseClasses <Modelica_Fluid_Sensors_BaseClasses.html#Modelica.Fluid.Sensors.BaseClasses>`_                                                      | Base classes used in the Sensors package (only of interest to build new component models)   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------+

--------------

|image32| `Modelica.Fluid.Sensors <Modelica_Fluid_Sensors.html#Modelica.Fluid.Sensors>`_.Pressure
-------------------------------------------------------------------------------------------------

**Ideal pressure sensor**

.. figure:: Modelica.Fluid.Sensors.PressureD.png
   :align: center
   :alt: Modelica.Fluid.Sensors.Pressure

   Modelica.Fluid.Sensors.Pressure

Information
~~~~~~~~~~~

::

This component monitors the absolute pressure at its fluid port. The
sensor is ideal, i.e., it does not influence the fluid.

::

Extends from
`Sensors.BaseClasses.PartialAbsoluteSensor <Modelica_Fluid_Sensors_BaseClasses.html#Modelica.Fluid.Sensors.BaseClasses.PartialAbsoluteSensor>`_
(Partial component to model a sensor that measures a potential
variable),
`Modelica.Icons.RotationalSensor <Modelica_Icons.html#Modelica.Icons.RotationalSensor>`_
(Icon representing a round measurement device).

Parameters
~~~~~~~~~~

+------------------------------+-----------------------------------------------------------------------------------------------------------+------------------------+---------------+
| Type                         | Name                                                                                                      | Default                | Description   |
+==============================+===========================================================================================================+========================+===============+
| replaceable package Medium   | `PartialMedium <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium>`_   | Medium in the sensor   |
+------------------------------+-----------------------------------------------------------------------------------------------------------+------------------------+---------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------+--------+-------------------------+
| Type                                                                                           | Name   | Description             |
+================================================================================================+========+=========================+
| `FluidPort\_a <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.FluidPort_a>`_         | port   |                         |
+------------------------------------------------------------------------------------------------+--------+-------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | p      | Pressure at port [Pa]   |
+------------------------------------------------------------------------------------------------+--------+-------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Pressure "Ideal pressure sensor"
      extends Sensors.BaseClasses.PartialAbsoluteSensor;
      extends Modelica.Icons.RotationalSensor;
      Modelica.Blocks.Interfaces.RealOutput p(final quantity="Pressure",
                                              final unit="Pa",
                                              displayUnit="bar",
                                              min=0) "Pressure at port";
    equation 
      p = port.p;
    end Pressure;

--------------

|image33| `Modelica.Fluid.Sensors <Modelica_Fluid_Sensors.html#Modelica.Fluid.Sensors>`_.Density
------------------------------------------------------------------------------------------------

**Ideal one port density sensor**

.. figure:: Modelica.Fluid.Sensors.DensityD.png
   :align: center
   :alt: Modelica.Fluid.Sensors.Density

   Modelica.Fluid.Sensors.Density

Information
~~~~~~~~~~~

::

This component monitors the density of the fluid passing its port. The
sensor is ideal, i.e., it does not influence the fluid.

::

Extends from
`Sensors.BaseClasses.PartialAbsoluteSensor <Modelica_Fluid_Sensors_BaseClasses.html#Modelica.Fluid.Sensors.BaseClasses.PartialAbsoluteSensor>`_
(Partial component to model a sensor that measures a potential
variable),
`Modelica.Icons.RotationalSensor <Modelica_Icons.html#Modelica.Icons.RotationalSensor>`_
(Icon representing a round measurement device).

Parameters
~~~~~~~~~~

+------------------------------+-----------------------------------------------------------------------------------------------------------+------------------------+---------------+
| Type                         | Name                                                                                                      | Default                | Description   |
+==============================+===========================================================================================================+========================+===============+
| replaceable package Medium   | `PartialMedium <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium>`_   | Medium in the sensor   |
+------------------------------+-----------------------------------------------------------------------------------------------------------+------------------------+---------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------+--------+----------------------------------+
| Type                                                                                           | Name   | Description                      |
+================================================================================================+========+==================================+
| `FluidPort\_a <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.FluidPort_a>`_         | port   |                                  |
+------------------------------------------------------------------------------------------------+--------+----------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | d      | Density in port medium [kg/m3]   |
+------------------------------------------------------------------------------------------------+--------+----------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Density "Ideal one port density sensor"
      extends Sensors.BaseClasses.PartialAbsoluteSensor;
      extends Modelica.Icons.RotationalSensor;
      Modelica.Blocks.Interfaces.RealOutput d(final quantity="Density",
                                              final unit="kg/m3",
                                              displayUnit="g/cm3",
                                              min=0) "Density in port medium";

    equation 
      d = Medium.density(Medium.setState_phX(port.p, inStream(port.h_outflow), inStream(port.Xi_outflow)));
    end Density;

--------------

|image34| `Modelica.Fluid.Sensors <Modelica_Fluid_Sensors.html#Modelica.Fluid.Sensors>`_.DensityTwoPort
-------------------------------------------------------------------------------------------------------

**Ideal two port density sensor**

.. figure:: Modelica.Fluid.Sensors.DensityTwoPortD.png
   :align: center
   :alt: Modelica.Fluid.Sensors.DensityTwoPort

   Modelica.Fluid.Sensors.DensityTwoPort

Information
~~~~~~~~~~~

::

This component monitors the density of the fluid flowing from port\_a to
port\_b. The sensor is ideal, i.e., it does not influence the fluid.

::

Extends from
`Sensors.BaseClasses.PartialFlowSensor <Modelica_Fluid_Sensors_BaseClasses.html#Modelica.Fluid.Sensors.BaseClasses.PartialFlowSensor>`_
(Partial component to model sensors that measure flow properties),
`Modelica.Icons.RotationalSensor <Modelica_Icons.html#Modelica.Icons.RotationalSensor>`_
(Icon representing a round measurement device).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+----------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
| Type                                                                                                                  | Name                                                                                                      | Default                    | Description                                                                                                                       |
+=======================================================================================================================+===========================================================================================================+============================+===================================================================================================================================+
| replaceable package Medium                                                                                            | `PartialMedium <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium>`_   | Medium in the component    |
+-----------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+----------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
| **Assumptions**                                                                                                       |
+-----------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+----------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
| Boolean                                                                                                               | allowFlowReversal                                                                                         | system.allowFlowReversal   | = true to allow flow reversal, false restricts to design direction (port\_a -> port\_b)                                           |
+-----------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+----------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
| **Advanced**                                                                                                          |
+-----------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+----------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
| `MassFlowRate <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.MassFlowRate>`_   | m\_flow\_small                                                                                            | system.m\_flow\_small      | For bi-directional flow, density is regularized in the region \|m\_flow\| < m\_flow\_small (m\_flow\_small > 0 required) [kg/s]   |
+-----------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+----------------------------+-----------------------------------------------------------------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------+-----------+---------------------------------------------------------------------------------+
| Type                                                                                           | Name      | Description                                                                     |
+================================================================================================+===========+=================================================================================+
| `FluidPort\_a <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.FluidPort_a>`_         | port\_a   | Fluid connector a (positive design flow direction is from port\_a to port\_b)   |
+------------------------------------------------------------------------------------------------+-----------+---------------------------------------------------------------------------------+
| `FluidPort\_b <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.FluidPort_b>`_         | port\_b   | Fluid connector b (positive design flow direction is from port\_a to port\_b)   |
+------------------------------------------------------------------------------------------------+-----------+---------------------------------------------------------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | d         | Density of the passing fluid [kg/m3]                                            |
+------------------------------------------------------------------------------------------------+-----------+---------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model DensityTwoPort "Ideal two port density sensor"
      extends Sensors.BaseClasses.PartialFlowSensor;
      extends Modelica.Icons.RotationalSensor;
      Modelica.Blocks.Interfaces.RealOutput d(final quantity="Density",
                                              final unit="kg/m3",
                                              displayUnit="g/cm3",
                                              min=0) "Density of the passing fluid";
      parameter Medium.MassFlowRate m_flow_small(min=0) = system.m_flow_small 
        "For bi-directional flow, density is regularized in the region |m_flow| < m_flow_small (m_flow_small > 0 required)";
    protected 
      Medium.Density rho_a_inflow "Density of inflowing fluid at port_a";
      Medium.Density rho_b_inflow 
        "Density of inflowing fluid at port_b or rho_a_inflow, if uni-directional flow";
    equation 
      if allowFlowReversal then
         rho_a_inflow = Medium.density(Medium.setState_phX(port_b.p, port_b.h_outflow, port_b.Xi_outflow));
         rho_b_inflow = Medium.density(Medium.setState_phX(port_a.p, port_a.h_outflow, port_a.Xi_outflow));
         d = Modelica.Fluid.Utilities.regStep(port_a.m_flow, rho_a_inflow, rho_b_inflow, m_flow_small);
      else
         d = Medium.density(Medium.setState_phX(port_b.p, port_b.h_outflow, port_b.Xi_outflow));
         rho_a_inflow = d;
         rho_b_inflow = d;
      end if;
    end DensityTwoPort;

--------------

|image35| `Modelica.Fluid.Sensors <Modelica_Fluid_Sensors.html#Modelica.Fluid.Sensors>`_.Temperature
----------------------------------------------------------------------------------------------------

**Ideal one port temperature sensor**

.. figure:: Modelica.Fluid.Sensors.TemperatureD.png
   :align: center
   :alt: Modelica.Fluid.Sensors.Temperature

   Modelica.Fluid.Sensors.Temperature

Information
~~~~~~~~~~~

::

This component monitors the temperature of the fluid passing its port.
The sensor is ideal, i.e., it does not influence the fluid.

::

Extends from
`Sensors.BaseClasses.PartialAbsoluteSensor <Modelica_Fluid_Sensors_BaseClasses.html#Modelica.Fluid.Sensors.BaseClasses.PartialAbsoluteSensor>`_
(Partial component to model a sensor that measures a potential
variable).

Parameters
~~~~~~~~~~

+------------------------------+-----------------------------------------------------------------------------------------------------------+------------------------+---------------+
| Type                         | Name                                                                                                      | Default                | Description   |
+==============================+===========================================================================================================+========================+===============+
| replaceable package Medium   | `PartialMedium <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium>`_   | Medium in the sensor   |
+------------------------------+-----------------------------------------------------------------------------------------------------------+------------------------+---------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------+--------+----------------------------------+
| Type                                                                                           | Name   | Description                      |
+================================================================================================+========+==================================+
| `FluidPort\_a <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.FluidPort_a>`_         | port   |                                  |
+------------------------------------------------------------------------------------------------+--------+----------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | T      | Temperature in port medium [K]   |
+------------------------------------------------------------------------------------------------+--------+----------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Temperature "Ideal one port temperature sensor"
        extends Sensors.BaseClasses.PartialAbsoluteSensor;

      Modelica.Blocks.Interfaces.RealOutput T(final quantity="ThermodynamicTemperature",
                                              final unit = "K", displayUnit = "degC", min=0) 
        "Temperature in port medium";

    equation 
      T = Medium.temperature(Medium.setState_phX(port.p, inStream(port.h_outflow), inStream(port.Xi_outflow)));
    end Temperature;

--------------

|image36| `Modelica.Fluid.Sensors <Modelica_Fluid_Sensors.html#Modelica.Fluid.Sensors>`_.TemperatureTwoPort
-----------------------------------------------------------------------------------------------------------

**Ideal two port temperature sensor**

.. figure:: Modelica.Fluid.Sensors.TemperatureTwoPortD.png
   :align: center
   :alt: Modelica.Fluid.Sensors.TemperatureTwoPort

   Modelica.Fluid.Sensors.TemperatureTwoPort

Information
~~~~~~~~~~~

::

This component monitors the temperature of the passing fluid. The sensor
is ideal, i.e., it does not influence the fluid.

::

Extends from
`Sensors.BaseClasses.PartialFlowSensor <Modelica_Fluid_Sensors_BaseClasses.html#Modelica.Fluid.Sensors.BaseClasses.PartialFlowSensor>`_
(Partial component to model sensors that measure flow properties).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+----------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
| Type                                                                                                                  | Name                                                                                                      | Default                    | Description                                                                                                                           |
+=======================================================================================================================+===========================================================================================================+============================+=======================================================================================================================================+
| replaceable package Medium                                                                                            | `PartialMedium <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium>`_   | Medium in the component    |
+-----------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+----------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
| **Assumptions**                                                                                                       |
+-----------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+----------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
| Boolean                                                                                                               | allowFlowReversal                                                                                         | system.allowFlowReversal   | = true to allow flow reversal, false restricts to design direction (port\_a -> port\_b)                                               |
+-----------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+----------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
| **Advanced**                                                                                                          |
+-----------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+----------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
| `MassFlowRate <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.MassFlowRate>`_   | m\_flow\_small                                                                                            | system.m\_flow\_small      | For bi-directional flow, temperature is regularized in the region \|m\_flow\| < m\_flow\_small (m\_flow\_small > 0 required) [kg/s]   |
+-----------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+----------------------------+---------------------------------------------------------------------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------+-----------+---------------------------------------------------------------------------------+
| Type                                                                                           | Name      | Description                                                                     |
+================================================================================================+===========+=================================================================================+
| `FluidPort\_a <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.FluidPort_a>`_         | port\_a   | Fluid connector a (positive design flow direction is from port\_a to port\_b)   |
+------------------------------------------------------------------------------------------------+-----------+---------------------------------------------------------------------------------+
| `FluidPort\_b <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.FluidPort_b>`_         | port\_b   | Fluid connector b (positive design flow direction is from port\_a to port\_b)   |
+------------------------------------------------------------------------------------------------+-----------+---------------------------------------------------------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | T         | Temperature of the passing fluid [K]                                            |
+------------------------------------------------------------------------------------------------+-----------+---------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model TemperatureTwoPort "Ideal two port temperature sensor"
      extends Sensors.BaseClasses.PartialFlowSensor;

      Modelica.Blocks.Interfaces.RealOutput T( final quantity="ThermodynamicTemperature",
                                               final unit="K",
                                               min = 0,
                                               displayUnit="degC") 
        "Temperature of the passing fluid";
      parameter Medium.MassFlowRate m_flow_small(min=0) = system.m_flow_small 
        "For bi-directional flow, temperature is regularized in the region |m_flow| < m_flow_small (m_flow_small > 0 required)";

    protected 
      Medium.Temperature T_a_inflow "Temperature of inflowing fluid at port_a";
      Medium.Temperature T_b_inflow 
        "Temperature of inflowing fluid at port_b or T_a_inflow, if uni-directional flow";
    equation 
      if allowFlowReversal then
         T_a_inflow = Medium.temperature(Medium.setState_phX(port_b.p, port_b.h_outflow, port_b.Xi_outflow));
         T_b_inflow = Medium.temperature(Medium.setState_phX(port_a.p, port_a.h_outflow, port_a.Xi_outflow));
         T = Modelica.Fluid.Utilities.regStep(port_a.m_flow, T_a_inflow, T_b_inflow, m_flow_small);
      else
         T = Medium.temperature(Medium.setState_phX(port_b.p, port_b.h_outflow, port_b.Xi_outflow));
         T_a_inflow = T;
         T_b_inflow = T;
      end if;
    end TemperatureTwoPort;

--------------

|image37| `Modelica.Fluid.Sensors <Modelica_Fluid_Sensors.html#Modelica.Fluid.Sensors>`_.SpecificEnthalpy
---------------------------------------------------------------------------------------------------------

**Ideal one port specific enthalpy sensor**

.. figure:: Modelica.Fluid.Sensors.SpecificEnthalpyD.png
   :align: center
   :alt: Modelica.Fluid.Sensors.SpecificEnthalpy

   Modelica.Fluid.Sensors.SpecificEnthalpy

Information
~~~~~~~~~~~

::

This component monitors the specific enthalpy of the fluid passing its
port. The sensor is ideal, i.e., it does not influence the fluid.

::

Extends from
`Sensors.BaseClasses.PartialAbsoluteSensor <Modelica_Fluid_Sensors_BaseClasses.html#Modelica.Fluid.Sensors.BaseClasses.PartialAbsoluteSensor>`_
(Partial component to model a sensor that measures a potential
variable),
`Modelica.Icons.RotationalSensor <Modelica_Icons.html#Modelica.Icons.RotationalSensor>`_
(Icon representing a round measurement device).

Parameters
~~~~~~~~~~

+------------------------------+-----------------------------------------------------------------------------------------------------------+------------------------+---------------+
| Type                         | Name                                                                                                      | Default                | Description   |
+==============================+===========================================================================================================+========================+===============+
| replaceable package Medium   | `PartialMedium <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium>`_   | Medium in the sensor   |
+------------------------------+-----------------------------------------------------------------------------------------------------------+------------------------+---------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------+----------+-------------------------------------------+
| Type                                                                                           | Name     | Description                               |
+================================================================================================+==========+===========================================+
| `FluidPort\_a <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.FluidPort_a>`_         | port     |                                           |
+------------------------------------------------------------------------------------------------+----------+-------------------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | h\_out   | Specific enthalpy in port medium [J/kg]   |
+------------------------------------------------------------------------------------------------+----------+-------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model SpecificEnthalpy "Ideal one port specific enthalpy sensor"
      extends Sensors.BaseClasses.PartialAbsoluteSensor;
      extends Modelica.Icons.RotationalSensor;
      Modelica.Blocks.Interfaces.RealOutput h_out(final quantity="SpecificEnergy",
                                                  final unit="J/kg") 
        "Specific enthalpy in port medium";

    equation 
      h_out = inStream(port.h_outflow);
    end SpecificEnthalpy;

--------------

|image38| `Modelica.Fluid.Sensors <Modelica_Fluid_Sensors.html#Modelica.Fluid.Sensors>`_.SpecificEnthalpyTwoPort
----------------------------------------------------------------------------------------------------------------

**Ideal two port sensor for the specific enthalpy**

.. figure:: Modelica.Fluid.Sensors.SpecificEnthalpyTwoPortD.png
   :align: center
   :alt: Modelica.Fluid.Sensors.SpecificEnthalpyTwoPort

   Modelica.Fluid.Sensors.SpecificEnthalpyTwoPort

Information
~~~~~~~~~~~

::

This component monitors the specific enthalpy of a passing fluid. The
sensor is ideal, i.e., it does not influence the fluid.

::

Extends from
`Sensors.BaseClasses.PartialFlowSensor <Modelica_Fluid_Sensors_BaseClasses.html#Modelica.Fluid.Sensors.BaseClasses.PartialFlowSensor>`_
(Partial component to model sensors that measure flow properties),
`Modelica.Icons.RotationalSensor <Modelica_Icons.html#Modelica.Icons.RotationalSensor>`_
(Icon representing a round measurement device).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
| Type                                                                                                                  | Name                                                                                                      | Default                    | Description                                                                                                                                 |
+=======================================================================================================================+===========================================================================================================+============================+=============================================================================================================================================+
| replaceable package Medium                                                                                            | `PartialMedium <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium>`_   | Medium in the component    |
+-----------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
| **Assumptions**                                                                                                       |
+-----------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
| Boolean                                                                                                               | allowFlowReversal                                                                                         | system.allowFlowReversal   | = true to allow flow reversal, false restricts to design direction (port\_a -> port\_b)                                                     |
+-----------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
| **Advanced**                                                                                                          |
+-----------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
| `MassFlowRate <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.MassFlowRate>`_   | m\_flow\_small                                                                                            | system.m\_flow\_small      | For bi-directional flow, specific enthalpy is regularized in the region \|m\_flow\| < m\_flow\_small (m\_flow\_small > 0 required) [kg/s]   |
+-----------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------+-----------+---------------------------------------------------------------------------------+
| Type                                                                                           | Name      | Description                                                                     |
+================================================================================================+===========+=================================================================================+
| `FluidPort\_a <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.FluidPort_a>`_         | port\_a   | Fluid connector a (positive design flow direction is from port\_a to port\_b)   |
+------------------------------------------------------------------------------------------------+-----------+---------------------------------------------------------------------------------+
| `FluidPort\_b <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.FluidPort_b>`_         | port\_b   | Fluid connector b (positive design flow direction is from port\_a to port\_b)   |
+------------------------------------------------------------------------------------------------+-----------+---------------------------------------------------------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | h\_out    | Specific enthalpy of the passing fluid [J/kg]                                   |
+------------------------------------------------------------------------------------------------+-----------+---------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model SpecificEnthalpyTwoPort 
      "Ideal two port sensor for the specific enthalpy"
      extends Sensors.BaseClasses.PartialFlowSensor;
      extends Modelica.Icons.RotationalSensor;
      Modelica.Blocks.Interfaces.RealOutput h_out(final quantity="SpecificEnergy",
                                                  final unit="J/kg") 
        "Specific enthalpy of the passing fluid";

      parameter Medium.MassFlowRate m_flow_small(min=0) = system.m_flow_small 
        "For bi-directional flow, specific enthalpy is regularized in the region |m_flow| < m_flow_small (m_flow_small > 0 required)";

    equation 
      if allowFlowReversal then
         h_out = Modelica.Fluid.Utilities.regStep(port_a.m_flow, port_b.h_outflow, port_a.h_outflow, m_flow_small);
      else
         h_out = port_b.h_outflow;
      end if;
    end SpecificEnthalpyTwoPort;

--------------

|image39| `Modelica.Fluid.Sensors <Modelica_Fluid_Sensors.html#Modelica.Fluid.Sensors>`_.SpecificEntropy
--------------------------------------------------------------------------------------------------------

**Ideal one port specific entropy sensor**

.. figure:: Modelica.Fluid.Sensors.SpecificEntropyD.png
   :align: center
   :alt: Modelica.Fluid.Sensors.SpecificEntropy

   Modelica.Fluid.Sensors.SpecificEntropy

Information
~~~~~~~~~~~

::

This component monitors the specific entropy of the fluid passing its
port. The sensor is ideal, i.e., it does not influence the fluid.

::

Extends from
`Sensors.BaseClasses.PartialAbsoluteSensor <Modelica_Fluid_Sensors_BaseClasses.html#Modelica.Fluid.Sensors.BaseClasses.PartialAbsoluteSensor>`_
(Partial component to model a sensor that measures a potential
variable),
`Modelica.Icons.RotationalSensor <Modelica_Icons.html#Modelica.Icons.RotationalSensor>`_
(Icon representing a round measurement device).

Parameters
~~~~~~~~~~

+------------------------------+-----------------------------------------------------------------------------------------------------------+------------------------+---------------+
| Type                         | Name                                                                                                      | Default                | Description   |
+==============================+===========================================================================================================+========================+===============+
| replaceable package Medium   | `PartialMedium <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium>`_   | Medium in the sensor   |
+------------------------------+-----------------------------------------------------------------------------------------------------------+------------------------+---------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------+--------+----------------------------------------------+
| Type                                                                                           | Name   | Description                                  |
+================================================================================================+========+==============================================+
| `FluidPort\_a <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.FluidPort_a>`_         | port   |                                              |
+------------------------------------------------------------------------------------------------+--------+----------------------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | s      | Specific entropy in port medium [J/(kg.K)]   |
+------------------------------------------------------------------------------------------------+--------+----------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model SpecificEntropy "Ideal one port specific entropy sensor"
      extends Sensors.BaseClasses.PartialAbsoluteSensor;
      extends Modelica.Icons.RotationalSensor;
      Modelica.Blocks.Interfaces.RealOutput s(final quantity="SpecificEntropy",
                                              final unit="J/(kg.K)") 
        "Specific entropy in port medium";

    equation 
      s = Medium.specificEntropy(Medium.setState_phX(port.p, inStream(port.h_outflow), inStream(port.Xi_outflow)));
    end SpecificEntropy;

--------------

|image40| `Modelica.Fluid.Sensors <Modelica_Fluid_Sensors.html#Modelica.Fluid.Sensors>`_.SpecificEntropyTwoPort
---------------------------------------------------------------------------------------------------------------

**Ideal two port sensor for the specific entropy**

.. figure:: Modelica.Fluid.Sensors.SpecificEntropyTwoPortD.png
   :align: center
   :alt: Modelica.Fluid.Sensors.SpecificEntropyTwoPort

   Modelica.Fluid.Sensors.SpecificEntropyTwoPort

Information
~~~~~~~~~~~

::

This component monitors the specific entropy of the passing fluid. The
sensor is ideal, i.e., it does not influence the fluid.

::

Extends from
`Sensors.BaseClasses.PartialFlowSensor <Modelica_Fluid_Sensors_BaseClasses.html#Modelica.Fluid.Sensors.BaseClasses.PartialFlowSensor>`_
(Partial component to model sensors that measure flow properties),
`Modelica.Icons.RotationalSensor <Modelica_Icons.html#Modelica.Icons.RotationalSensor>`_
(Icon representing a round measurement device).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+----------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
| Type                                                                                                                  | Name                                                                                                      | Default                    | Description                                                                                                                                |
+=======================================================================================================================+===========================================================================================================+============================+============================================================================================================================================+
| replaceable package Medium                                                                                            | `PartialMedium <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium>`_   | Medium in the component    |
+-----------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+----------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
| **Assumptions**                                                                                                       |
+-----------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+----------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
| Boolean                                                                                                               | allowFlowReversal                                                                                         | system.allowFlowReversal   | = true to allow flow reversal, false restricts to design direction (port\_a -> port\_b)                                                    |
+-----------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+----------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
| **Advanced**                                                                                                          |
+-----------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+----------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
| `MassFlowRate <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.MassFlowRate>`_   | m\_flow\_small                                                                                            | system.m\_flow\_small      | For bi-directional flow, specific entropy is regularized in the region \|m\_flow\| < m\_flow\_small (m\_flow\_small > 0 required) [kg/s]   |
+-----------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+----------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------+-----------+---------------------------------------------------------------------------------+
| Type                                                                                           | Name      | Description                                                                     |
+================================================================================================+===========+=================================================================================+
| `FluidPort\_a <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.FluidPort_a>`_         | port\_a   | Fluid connector a (positive design flow direction is from port\_a to port\_b)   |
+------------------------------------------------------------------------------------------------+-----------+---------------------------------------------------------------------------------+
| `FluidPort\_b <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.FluidPort_b>`_         | port\_b   | Fluid connector b (positive design flow direction is from port\_a to port\_b)   |
+------------------------------------------------------------------------------------------------+-----------+---------------------------------------------------------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | s         | Specific entropy of the passing fluid [J/(kg.K)]                                |
+------------------------------------------------------------------------------------------------+-----------+---------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model SpecificEntropyTwoPort 
      "Ideal two port sensor for the specific entropy"
      extends Sensors.BaseClasses.PartialFlowSensor;
      extends Modelica.Icons.RotationalSensor;
      Modelica.Blocks.Interfaces.RealOutput s(final quantity="SpecificEntropy",
                                              final unit="J/(kg.K)") 
        "Specific entropy of the passing fluid";
      parameter Medium.MassFlowRate m_flow_small(min=0) = system.m_flow_small 
        "For bi-directional flow, specific entropy is regularized in the region |m_flow| < m_flow_small (m_flow_small > 0 required)";

    protected 
      Medium.SpecificEntropy s_a_inflow 
        "Specific entropy of inflowing fluid at port_a";
      Medium.SpecificEntropy s_b_inflow 
        "Specific entropy of inflowing fluid at port_b or s_a_inflow, if uni-directional flow";
    equation 
      if allowFlowReversal then
         s_a_inflow = Medium.specificEntropy(Medium.setState_phX(port_b.p, port_b.h_outflow, port_b.Xi_outflow));
         s_b_inflow = Medium.specificEntropy(Medium.setState_phX(port_a.p, port_a.h_outflow, port_a.Xi_outflow));
         s = Modelica.Fluid.Utilities.regStep(port_a.m_flow, s_a_inflow, s_b_inflow, m_flow_small);
      else
         s = Medium.specificEntropy(Medium.setState_phX(port_b.p, port_b.h_outflow, port_b.Xi_outflow));
         s_a_inflow = s;
         s_b_inflow = s;
      end if;
    end SpecificEntropyTwoPort;

--------------

|image41| `Modelica.Fluid.Sensors <Modelica_Fluid_Sensors.html#Modelica.Fluid.Sensors>`_.TraceSubstances
--------------------------------------------------------------------------------------------------------

**Ideal one port trace substances sensor**

.. figure:: Modelica.Fluid.Sensors.TraceSubstancesD.png
   :align: center
   :alt: Modelica.Fluid.Sensors.TraceSubstances

   Modelica.Fluid.Sensors.TraceSubstances

Information
~~~~~~~~~~~

::

This component monitors the trace substances contained in the fluid
passing its port. The sensor is ideal, i.e., it does not influence the
fluid.

::

Extends from
`Sensors.BaseClasses.PartialAbsoluteSensor <Modelica_Fluid_Sensors_BaseClasses.html#Modelica.Fluid.Sensors.BaseClasses.PartialAbsoluteSensor>`_
(Partial component to model a sensor that measures a potential
variable),
`Modelica.Icons.RotationalSensor <Modelica_Icons.html#Modelica.Icons.RotationalSensor>`_
(Icon representing a round measurement device).

Parameters
~~~~~~~~~~

+------------------------------+-----------------------------------------------------------------------------------------------------------+------------------------+---------------------------+
| Type                         | Name                                                                                                      | Default                | Description               |
+==============================+===========================================================================================================+========================+===========================+
| replaceable package Medium   | `PartialMedium <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium>`_   | Medium in the sensor   |
+------------------------------+-----------------------------------------------------------------------------------------------------------+------------------------+---------------------------+
| String                       | substanceName                                                                                             | "CO2"                  | Name of trace substance   |
+------------------------------+-----------------------------------------------------------------------------------------------------------+------------------------+---------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------+--------+----------------------------------+
| Type                                                                                           | Name   | Description                      |
+================================================================================================+========+==================================+
| `FluidPort\_a <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.FluidPort_a>`_         | port   |                                  |
+------------------------------------------------------------------------------------------------+--------+----------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | C      | Trace substance in port medium   |
+------------------------------------------------------------------------------------------------+--------+----------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model TraceSubstances "Ideal one port trace substances sensor"
      extends Sensors.BaseClasses.PartialAbsoluteSensor;
      extends Modelica.Icons.RotationalSensor;
      parameter String substanceName = "CO2" "Name of trace substance";

      Modelica.Blocks.Interfaces.RealOutput C "Trace substance in port medium";

    protected 
      parameter Integer ind(fixed=false) 
        "Index of species in vector of auxiliary substances";
      Medium.ExtraProperty CVec[Medium.nC](
          quantity=Medium.extraPropertiesNames) 
        "Trace substances vector, needed because indexed argument for the operator inStream is not supported";
    initial algorithm 
      ind:= -1;
      for i in 1:Medium.nC loop
        if ( Modelica.Utilities.Strings.isEqual(Medium.extraPropertiesNames[i], substanceName)) then
          ind := i;
        end if;
      end for;
      assert(ind > 0, "Trace substance '" + substanceName + "' is not present in medium '"
             + Medium.mediumName + "'.\n"
             + "Check sensor parameter and medium model.");
    equation 
      CVec = inStream(port.C_outflow);
      C = CVec[ind];
    end TraceSubstances;

--------------

|image42| `Modelica.Fluid.Sensors <Modelica_Fluid_Sensors.html#Modelica.Fluid.Sensors>`_.TraceSubstancesTwoPort
---------------------------------------------------------------------------------------------------------------

**Ideal two port sensor for trace substance**

.. figure:: Modelica.Fluid.Sensors.TraceSubstancesTwoPortD.png
   :align: center
   :alt: Modelica.Fluid.Sensors.TraceSubstancesTwoPort

   Modelica.Fluid.Sensors.TraceSubstancesTwoPort

Information
~~~~~~~~~~~

::

This component monitors the trace substance of the passing fluid. The
sensor is ideal, i.e., it does not influence the fluid.

::

Extends from
`Sensors.BaseClasses.PartialFlowSensor <Modelica_Fluid_Sensors_BaseClasses.html#Modelica.Fluid.Sensors.BaseClasses.PartialFlowSensor>`_
(Partial component to model sensors that measure flow properties),
`Modelica.Icons.RotationalSensor <Modelica_Icons.html#Modelica.Icons.RotationalSensor>`_
(Icon representing a round measurement device).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+----------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
| Type                                                                                                                  | Name                                                                                                      | Default                    | Description                                                                                                                               |
+=======================================================================================================================+===========================================================================================================+============================+===========================================================================================================================================+
| replaceable package Medium                                                                                            | `PartialMedium <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium>`_   | Medium in the component    |
+-----------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+----------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
| String                                                                                                                | substanceName                                                                                             | "CO2"                      | Name of trace substance                                                                                                                   |
+-----------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+----------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
| **Assumptions**                                                                                                       |
+-----------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+----------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
| Boolean                                                                                                               | allowFlowReversal                                                                                         | system.allowFlowReversal   | = true to allow flow reversal, false restricts to design direction (port\_a -> port\_b)                                                   |
+-----------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+----------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
| **Advanced**                                                                                                          |
+-----------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+----------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
| `MassFlowRate <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.MassFlowRate>`_   | m\_flow\_small                                                                                            | system.m\_flow\_small      | For bi-directional flow, trace substance is regularized in the region \|m\_flow\| < m\_flow\_small (m\_flow\_small > 0 required) [kg/s]   |
+-----------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+----------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------+-----------+---------------------------------------------------------------------------------+
| Type                                                                                           | Name      | Description                                                                     |
+================================================================================================+===========+=================================================================================+
| `FluidPort\_a <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.FluidPort_a>`_         | port\_a   | Fluid connector a (positive design flow direction is from port\_a to port\_b)   |
+------------------------------------------------------------------------------------------------+-----------+---------------------------------------------------------------------------------+
| `FluidPort\_b <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.FluidPort_b>`_         | port\_b   | Fluid connector b (positive design flow direction is from port\_a to port\_b)   |
+------------------------------------------------------------------------------------------------+-----------+---------------------------------------------------------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | C         | Trace substance of the passing fluid                                            |
+------------------------------------------------------------------------------------------------+-----------+---------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model TraceSubstancesTwoPort 
      "Ideal two port sensor for trace substance"
      extends Sensors.BaseClasses.PartialFlowSensor;
      extends Modelica.Icons.RotationalSensor;
      Modelica.Blocks.Interfaces.RealOutput C 
        "Trace substance of the passing fluid";
      parameter String substanceName = "CO2" "Name of trace substance";
      parameter Medium.MassFlowRate m_flow_small(min=0) = system.m_flow_small 
        "For bi-directional flow, trace substance is regularized in the region |m_flow| < m_flow_small (m_flow_small > 0 required)";

    protected 
      parameter Integer ind(fixed=false) 
        "Index of species in vector of auxiliary substances";
    initial algorithm 
      ind:= -1;
      for i in 1:Medium.nC loop
        if ( Modelica.Utilities.Strings.isEqual(Medium.extraPropertiesNames[i], substanceName)) then
          ind := i;
        end if;
      end for;
      assert(ind > 0, "Trace substance '" + substanceName + "' is not present in medium '"
             + Medium.mediumName + "'.\n"
             + "Check sensor parameter and medium model.");
    equation 
      if allowFlowReversal then
         C = Modelica.Fluid.Utilities.regStep(port_a.m_flow, port_b.C_outflow[ind], port_a.C_outflow[ind], m_flow_small);
      else
         C = port_b.C_outflow[ind];
      end if;
    end TraceSubstancesTwoPort;

--------------

|image43| `Modelica.Fluid.Sensors <Modelica_Fluid_Sensors.html#Modelica.Fluid.Sensors>`_.MassFlowRate
-----------------------------------------------------------------------------------------------------

**Ideal sensor for mass flow rate**

.. figure:: Modelica.Fluid.Sensors.MassFlowRateD.png
   :align: center
   :alt: Modelica.Fluid.Sensors.MassFlowRate

   Modelica.Fluid.Sensors.MassFlowRate

Information
~~~~~~~~~~~

::

This component monitors the mass flow rate flowing from port\_a to
port\_b. The sensor is ideal, i.e., it does not influence the fluid.

::

Extends from
`Sensors.BaseClasses.PartialFlowSensor <Modelica_Fluid_Sensors_BaseClasses.html#Modelica.Fluid.Sensors.BaseClasses.PartialFlowSensor>`_
(Partial component to model sensors that measure flow properties),
`Modelica.Icons.RotationalSensor <Modelica_Icons.html#Modelica.Icons.RotationalSensor>`_
(Icon representing a round measurement device).

Parameters
~~~~~~~~~~

+------------------------------+-----------------------------------------------------------------------------------------------------------+----------------------------+-------------------------------------------------------------------------------------------+
| Type                         | Name                                                                                                      | Default                    | Description                                                                               |
+==============================+===========================================================================================================+============================+===========================================================================================+
| replaceable package Medium   | `PartialMedium <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium>`_   | Medium in the component    |
+------------------------------+-----------------------------------------------------------------------------------------------------------+----------------------------+-------------------------------------------------------------------------------------------+
| **Assumptions**              |
+------------------------------+-----------------------------------------------------------------------------------------------------------+----------------------------+-------------------------------------------------------------------------------------------+
| Boolean                      | allowFlowReversal                                                                                         | system.allowFlowReversal   | = true to allow flow reversal, false restricts to design direction (port\_a -> port\_b)   |
+------------------------------+-----------------------------------------------------------------------------------------------------------+----------------------------+-------------------------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------+-----------+---------------------------------------------------------------------------------+
| Type                                                                                           | Name      | Description                                                                     |
+================================================================================================+===========+=================================================================================+
| `FluidPort\_a <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.FluidPort_a>`_         | port\_a   | Fluid connector a (positive design flow direction is from port\_a to port\_b)   |
+------------------------------------------------------------------------------------------------+-----------+---------------------------------------------------------------------------------+
| `FluidPort\_b <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.FluidPort_b>`_         | port\_b   | Fluid connector b (positive design flow direction is from port\_a to port\_b)   |
+------------------------------------------------------------------------------------------------+-----------+---------------------------------------------------------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | m\_flow   | Mass flow rate from port\_a to port\_b [kg/s]                                   |
+------------------------------------------------------------------------------------------------+-----------+---------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model MassFlowRate "Ideal sensor for mass flow rate"
      extends Sensors.BaseClasses.PartialFlowSensor;
      extends Modelica.Icons.RotationalSensor;
      Modelica.Blocks.Interfaces.RealOutput m_flow(quantity="MassFlowRate",
                                                   final unit="kg/s") 
        "Mass flow rate from port_a to port_b";

    equation 
      m_flow = port_a.m_flow;
    end MassFlowRate;

--------------

|image44| `Modelica.Fluid.Sensors <Modelica_Fluid_Sensors.html#Modelica.Fluid.Sensors>`_.VolumeFlowRate
-------------------------------------------------------------------------------------------------------

**Ideal sensor for volume flow rate**

.. figure:: Modelica.Fluid.Sensors.VolumeFlowRateD.png
   :align: center
   :alt: Modelica.Fluid.Sensors.VolumeFlowRate

   Modelica.Fluid.Sensors.VolumeFlowRate

Information
~~~~~~~~~~~

::

This component monitors the volume flow rate flowing from port\_a to
port\_b. The sensor is ideal, i.e., it does not influence the fluid.

::

Extends from
`Sensors.BaseClasses.PartialFlowSensor <Modelica_Fluid_Sensors_BaseClasses.html#Modelica.Fluid.Sensors.BaseClasses.PartialFlowSensor>`_
(Partial component to model sensors that measure flow properties),
`Modelica.Icons.RotationalSensor <Modelica_Icons.html#Modelica.Icons.RotationalSensor>`_
(Icon representing a round measurement device).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+----------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
| Type                                                                                                                  | Name                                                                                                      | Default                    | Description                                                                                                                       |
+=======================================================================================================================+===========================================================================================================+============================+===================================================================================================================================+
| replaceable package Medium                                                                                            | `PartialMedium <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium>`_   | Medium in the component    |
+-----------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+----------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
| **Assumptions**                                                                                                       |
+-----------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+----------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
| Boolean                                                                                                               | allowFlowReversal                                                                                         | system.allowFlowReversal   | = true to allow flow reversal, false restricts to design direction (port\_a -> port\_b)                                           |
+-----------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+----------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
| **Advanced**                                                                                                          |
+-----------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+----------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
| `MassFlowRate <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.MassFlowRate>`_   | m\_flow\_small                                                                                            | system.m\_flow\_small      | For bi-directional flow, density is regularized in the region \|m\_flow\| < m\_flow\_small (m\_flow\_small > 0 required) [kg/s]   |
+-----------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+----------------------------+-----------------------------------------------------------------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------+-----------+---------------------------------------------------------------------------------+
| Type                                                                                           | Name      | Description                                                                     |
+================================================================================================+===========+=================================================================================+
| `FluidPort\_a <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.FluidPort_a>`_         | port\_a   | Fluid connector a (positive design flow direction is from port\_a to port\_b)   |
+------------------------------------------------------------------------------------------------+-----------+---------------------------------------------------------------------------------+
| `FluidPort\_b <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.FluidPort_b>`_         | port\_b   | Fluid connector b (positive design flow direction is from port\_a to port\_b)   |
+------------------------------------------------------------------------------------------------+-----------+---------------------------------------------------------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | V\_flow   | Volume flow rate from port\_a to port\_b [m3/s]                                 |
+------------------------------------------------------------------------------------------------+-----------+---------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model VolumeFlowRate "Ideal sensor for volume flow rate"
      extends Sensors.BaseClasses.PartialFlowSensor;
      extends Modelica.Icons.RotationalSensor;
      Modelica.Blocks.Interfaces.RealOutput V_flow(final quantity="VolumeFlowRate",
                                                   final unit="m3/s") 
        "Volume flow rate from port_a to port_b";
      parameter Medium.MassFlowRate m_flow_small(min=0) = system.m_flow_small 
        "For bi-directional flow, density is regularized in the region |m_flow| < m_flow_small (m_flow_small > 0 required)";

    protected 
      Medium.Density rho_a_inflow "Density of inflowing fluid at port_a";
      Medium.Density rho_b_inflow 
        "Density of inflowing fluid at port_b or rho_a_inflow, if uni-directional flow";
      Medium.Density d "Density of the passing fluid";
    equation 
      if allowFlowReversal then
         rho_a_inflow = Medium.density(Medium.setState_phX(port_b.p, port_b.h_outflow, port_b.Xi_outflow));
         rho_b_inflow = Medium.density(Medium.setState_phX(port_a.p, port_a.h_outflow, port_a.Xi_outflow));
         d = Modelica.Fluid.Utilities.regStep(port_a.m_flow, rho_a_inflow, rho_b_inflow, m_flow_small);
      else
         d = Medium.density(Medium.setState_phX(port_b.p, port_b.h_outflow, port_b.Xi_outflow));
         rho_a_inflow = d;
         rho_b_inflow = d;
      end if;
      V_flow = port_a.m_flow/d;
    end VolumeFlowRate;

--------------

|image45| `Modelica.Fluid.Sensors <Modelica_Fluid_Sensors.html#Modelica.Fluid.Sensors>`_.RelativePressure
---------------------------------------------------------------------------------------------------------

**Ideal relative pressure sensor**

.. figure:: Modelica.Fluid.Sensors.RelativePressureD.png
   :align: center
   :alt: Modelica.Fluid.Sensors.RelativePressure

   Modelica.Fluid.Sensors.RelativePressure

Information
~~~~~~~~~~~

::

The relative pressure "port\_a.p - port\_b.p" is determined between the
two ports of this component and is provided as output signal. The sensor
should be connected in parallel with other equipment, no flow through
the sensor is allowed.

::

Extends from
`Modelica.Icons.TranslationalSensor <Modelica_Icons.html#Modelica.Icons.TranslationalSensor>`_
(Icon representing a linear measurement device).

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------+-----------+---------------------------------+
| Type                                                                                           | Name      | Description                     |
+================================================================================================+===========+=================================+
| `FluidPort\_a <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.FluidPort_a>`_         | port\_a   |                                 |
+------------------------------------------------------------------------------------------------+-----------+---------------------------------+
| `FluidPort\_b <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.FluidPort_b>`_         | port\_b   |                                 |
+------------------------------------------------------------------------------------------------+-----------+---------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | p\_rel    | Relative pressure signal [Pa]   |
+------------------------------------------------------------------------------------------------+-----------+---------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model RelativePressure "Ideal relative pressure sensor"
      extends Modelica.Icons.TranslationalSensor;
      replaceable package Medium =
        Modelica.Media.Interfaces.PartialMedium "Medium in the sensor";

      Modelica.Fluid.Interfaces.FluidPort_a port_a(m_flow(min=0),
                                    redeclare package Medium = Medium);
      Modelica.Fluid.Interfaces.FluidPort_b port_b(m_flow(min=0),
                                    redeclare package Medium = Medium);

      Modelica.Blocks.Interfaces.RealOutput p_rel(final quantity="Pressure",
                                                  final unit="Pa",
                                                  displayUnit="bar") 
        "Relative pressure signal";
    equation 
      // Zero flow equations for connectors
      port_a.m_flow = 0;
      port_b.m_flow = 0;

      // No contribution of specific quantities
      port_a.h_outflow = 0;
      port_b.h_outflow = 0;
      port_a.Xi_outflow = zeros(Medium.nXi);
      port_b.Xi_outflow = zeros(Medium.nXi);
      port_a.C_outflow  = zeros(Medium.nC);
      port_b.C_outflow  = zeros(Medium.nC);

      // Relative pressure
      p_rel = port_a.p - port_b.p;
    end RelativePressure;

--------------

|image46| `Modelica.Fluid.Sensors <Modelica_Fluid_Sensors.html#Modelica.Fluid.Sensors>`_.RelativeTemperature
------------------------------------------------------------------------------------------------------------

**Ideal relative temperature sensor**

.. figure:: Modelica.Fluid.Sensors.RelativeTemperatureD.png
   :align: center
   :alt: Modelica.Fluid.Sensors.RelativeTemperature

   Modelica.Fluid.Sensors.RelativeTemperature

Information
~~~~~~~~~~~

::

The relative temperature "T(port\_a) - T(port\_b)" is determined between
the two ports of this component and is provided as output signal. The
sensor should be connected in parallel with other equipment, no flow
through the sensor is allowed.

::

Extends from
`Modelica.Icons.TranslationalSensor <Modelica_Icons.html#Modelica.Icons.TranslationalSensor>`_
(Icon representing a linear measurement device).

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------+-----------+-----------------------------------+
| Type                                                                                           | Name      | Description                       |
+================================================================================================+===========+===================================+
| `FluidPort\_a <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.FluidPort_a>`_         | port\_a   |                                   |
+------------------------------------------------------------------------------------------------+-----------+-----------------------------------+
| `FluidPort\_b <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.FluidPort_b>`_         | port\_b   |                                   |
+------------------------------------------------------------------------------------------------+-----------+-----------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | T\_rel    | Relative temperature signal [K]   |
+------------------------------------------------------------------------------------------------+-----------+-----------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model RelativeTemperature "Ideal relative temperature sensor"
      extends Modelica.Icons.TranslationalSensor;
      replaceable package Medium =
        Modelica.Media.Interfaces.PartialMedium "Medium in the sensor";
      Modelica.Fluid.Interfaces.FluidPort_a port_a(m_flow(min=0),
                                    redeclare package Medium = Medium);
      Modelica.Fluid.Interfaces.FluidPort_b port_b(m_flow(min=0),
                                    redeclare package Medium = Medium);

      Modelica.Blocks.Interfaces.RealOutput T_rel(final quantity="ThermodynamicTemperature",
                                                  final unit = "K", displayUnit = "degC", min=0) 
        "Relative temperature signal";
    equation 
      // Zero flow equations for connectors
      port_a.m_flow = 0;
      port_b.m_flow = 0;

      // No contribution of specific quantities
      port_a.h_outflow = 0;
      port_b.h_outflow = 0;
      port_a.Xi_outflow = zeros(Medium.nXi);
      port_b.Xi_outflow = zeros(Medium.nXi);
      port_a.C_outflow  = zeros(Medium.nC);
      port_b.C_outflow  = zeros(Medium.nC);

      // Relative temperature
      T_rel = Medium.temperature(Medium.setState_phX(port_a.p, inStream(port_a.h_outflow), inStream(port_a.Xi_outflow))) -
              Medium.temperature(Medium.setState_phX(port_b.p, inStream(port_b.h_outflow), inStream(port_b.Xi_outflow)));
    end RelativeTemperature;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:31:19
2010.

.. |Modelica.Fluid.Sensors.Pressure| image:: Modelica.Fluid.Sensors.PressureS.png
.. |Modelica.Fluid.Sensors.Density| image:: Modelica.Fluid.Sensors.DensityS.png
.. |Modelica.Fluid.Sensors.DensityTwoPort| image:: Modelica.Fluid.Sensors.DensityTwoPortS.png
.. |Modelica.Fluid.Sensors.Temperature| image:: Modelica.Fluid.Sensors.TemperatureS.png
.. |Modelica.Fluid.Sensors.TemperatureTwoPort| image:: Modelica.Fluid.Sensors.TemperatureTwoPortS.png
.. |Modelica.Fluid.Sensors.SpecificEnthalpy| image:: Modelica.Fluid.Sensors.SpecificEnthalpyS.png
.. |Modelica.Fluid.Sensors.SpecificEnthalpyTwoPort| image:: Modelica.Fluid.Sensors.SpecificEnthalpyTwoPortS.png
.. |Modelica.Fluid.Sensors.SpecificEntropy| image:: Modelica.Fluid.Sensors.SpecificEntropyS.png
.. |Modelica.Fluid.Sensors.SpecificEntropyTwoPort| image:: Modelica.Fluid.Sensors.SpecificEntropyTwoPortS.png
.. |Modelica.Fluid.Sensors.TraceSubstances| image:: Modelica.Fluid.Sensors.TraceSubstancesS.png
.. |Modelica.Fluid.Sensors.TraceSubstancesTwoPort| image:: Modelica.Fluid.Sensors.TraceSubstancesTwoPortS.png
.. |Modelica.Fluid.Sensors.MassFlowRate| image:: Modelica.Fluid.Sensors.MassFlowRateS.png
.. |Modelica.Fluid.Sensors.VolumeFlowRate| image:: Modelica.Fluid.Sensors.MassFlowRateS.png
.. |Modelica.Fluid.Sensors.RelativePressure| image:: Modelica.Fluid.Sensors.RelativePressureS.png
.. |Modelica.Fluid.Sensors.RelativeTemperature| image:: Modelica.Fluid.Sensors.RelativeTemperatureS.png
.. |Modelica.Fluid.Sensors.BaseClasses| image:: Modelica.Fluid.Sensors.BaseClassesS.png
.. |image16| image:: Modelica.Fluid.Sensors.PressureS.png
.. |image17| image:: Modelica.Fluid.Sensors.DensityS.png
.. |image18| image:: Modelica.Fluid.Sensors.DensityTwoPortS.png
.. |image19| image:: Modelica.Fluid.Sensors.TemperatureS.png
.. |image20| image:: Modelica.Fluid.Sensors.TemperatureTwoPortS.png
.. |image21| image:: Modelica.Fluid.Sensors.SpecificEnthalpyS.png
.. |image22| image:: Modelica.Fluid.Sensors.SpecificEnthalpyTwoPortS.png
.. |image23| image:: Modelica.Fluid.Sensors.SpecificEntropyS.png
.. |image24| image:: Modelica.Fluid.Sensors.SpecificEntropyTwoPortS.png
.. |image25| image:: Modelica.Fluid.Sensors.TraceSubstancesS.png
.. |image26| image:: Modelica.Fluid.Sensors.TraceSubstancesTwoPortS.png
.. |image27| image:: Modelica.Fluid.Sensors.MassFlowRateS.png
.. |image28| image:: Modelica.Fluid.Sensors.MassFlowRateS.png
.. |image29| image:: Modelica.Fluid.Sensors.RelativePressureS.png
.. |image30| image:: Modelica.Fluid.Sensors.RelativeTemperatureS.png
.. |image31| image:: Modelica.Fluid.Sensors.BaseClassesS.png
.. |image32| image:: Modelica.Fluid.Sensors.PressureI.png
.. |image33| image:: Modelica.Fluid.Sensors.DensityI.png
.. |image34| image:: Modelica.Fluid.Sensors.DensityTwoPortI.png
.. |image35| image:: Modelica.Fluid.Sensors.TemperatureI.png
.. |image36| image:: Modelica.Fluid.Sensors.TemperatureTwoPortI.png
.. |image37| image:: Modelica.Fluid.Sensors.SpecificEnthalpyI.png
.. |image38| image:: Modelica.Fluid.Sensors.SpecificEnthalpyTwoPortI.png
.. |image39| image:: Modelica.Fluid.Sensors.SpecificEntropyI.png
.. |image40| image:: Modelica.Fluid.Sensors.SpecificEntropyTwoPortI.png
.. |image41| image:: Modelica.Fluid.Sensors.TraceSubstancesI.png
.. |image42| image:: Modelica.Fluid.Sensors.TraceSubstancesTwoPortI.png
.. |image43| image:: Modelica.Fluid.Sensors.MassFlowRateI.png
.. |image44| image:: Modelica.Fluid.Sensors.VolumeFlowRateI.png
.. |image45| image:: Modelica.Fluid.Sensors.RelativePressureI.png
.. |image46| image:: Modelica.Fluid.Sensors.RelativeTemperatureI.png
