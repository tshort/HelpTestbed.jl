======================================
Modelica.Thermal.FluidHeatFlow.Sensors
======================================

`Modelica.Thermal.FluidHeatFlow <Modelica_Thermal_FluidHeatFlow.html#Modelica.Thermal.FluidHeatFlow>`_.Sensors
--------------------------------------------------------------------------------------------------------------

**Ideal sensors to measure port properties**

Information
~~~~~~~~~~~

::

This package contains sensors:

-  pSensor: absolute pressure
-  TSensor: absolute temperature (Kelvin)
-  dpSensor: pressure drop between flowPort\_a and flowPort\_b
-  dTSensor: temperature difference between flowPort\_a and flowPort\_b
-  m\_flowSensor: measures mass flow rate
-  V\_flowSensor: measures volume flow rate
-  H\_flowSensor: measures enthalpy flow rate

Some of the sensors do not need access to medium properties for
measuring, but it is necessary to define the medium in the connector
(check of connections).
 Thermodynamic equations are defined in partial models (package
Interfaces.Partials).
 All sensors are considered massless, they do not change mass flow or
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
`Modelica.Icons.SensorsPackage <Modelica_Icons_SensorsPackage.html#Modelica.Icons.SensorsPackage>`_
(Icon for packages containing sensors).

Package Content
~~~~~~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------+
| Name                                                                                                                                                                                              | Description                     |
+===================================================================================================================================================================================================+=================================+
| |image7| `PressureSensor <Modelica_Thermal_FluidHeatFlow_Sensors.html#Modelica.Thermal.FluidHeatFlow.Sensors.PressureSensor>`_                                                                    | Absolute pressure sensor        |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------+
| |image8| `TemperatureSensor <Modelica_Thermal_FluidHeatFlow_Sensors.html#Modelica.Thermal.FluidHeatFlow.Sensors.TemperatureSensor>`_                                                              | Absolute temperature sensor     |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------+
| |image9| `RelPressureSensor <Modelica_Thermal_FluidHeatFlow_Sensors.html#Modelica.Thermal.FluidHeatFlow.Sensors.RelPressureSensor>`_                                                              | Pressure difference sensor      |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------+
| |image10| `RelTemperatureSensor <Modelica_Thermal_FluidHeatFlow_Sensors.html#Modelica.Thermal.FluidHeatFlow.Sensors.RelTemperatureSensor>`_                                                       | Temperature difference sensor   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------+
| |image11| `MassFlowSensor <Modelica_Thermal_FluidHeatFlow_Sensors.html#Modelica.Thermal.FluidHeatFlow.Sensors.MassFlowSensor>`_                                                                   | Mass flow sensor                |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------+
| |image12| `VolumeFlowSensor <Modelica_Thermal_FluidHeatFlow_Sensors.html#Modelica.Thermal.FluidHeatFlow.Sensors.VolumeFlowSensor>`_                                                               | Volume flow sensor              |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------+
| |image13| `EnthalpyFlowSensor <Modelica_Thermal_FluidHeatFlow_Sensors.html#Modelica.Thermal.FluidHeatFlow.Sensors.EnthalpyFlowSensor>`_                                                           | Enthapy flow sensor             |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------+

--------------

|image14| `Modelica.Thermal.FluidHeatFlow.Sensors <Modelica_Thermal_FluidHeatFlow_Sensors.html#Modelica.Thermal.FluidHeatFlow.Sensors>`_.PressureSensor
-------------------------------------------------------------------------------------------------------------------------------------------------------

**Absolute pressure sensor**

.. figure:: Modelica.Thermal.FluidHeatFlow.Sensors.PressureSensorD.png
   :align: center
   :alt: Modelica.Thermal.FluidHeatFlow.Sensors.PressureSensor

   Modelica.Thermal.FluidHeatFlow.Sensors.PressureSensor

Information
~~~~~~~~~~~

::

pSensor measures the absolute pressure.
 Thermodynamic equations are defined by Partials.AbsoluteSensor.

::

Extends from
`Interfaces.Partials.AbsoluteSensor <Modelica_Thermal_FluidHeatFlow_Interfaces_Partials.html#Modelica.Thermal.FluidHeatFlow.Interfaces.Partials.AbsoluteSensor>`_
(Partial model of absolute sensor).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------+----------+--------------------------------+-------------------+
| Type                                                                                                | Name     | Default                        | Description       |
+=====================================================================================================+==========+================================+===================+
| `Medium <Modelica_Thermal_FluidHeatFlow_Media.html#Modelica.Thermal.FluidHeatFlow.Media.Medium>`_   | medium   | FluidHeatFlow.Media.Medium()   | Sensor's medium   |
+-----------------------------------------------------------------------------------------------------+----------+--------------------------------+-------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------+------------+---------------+
| Type                                                                                                                   | Name       | Description   |
+========================================================================================================================+============+===============+
| `FlowPort\_a <Modelica_Thermal_FluidHeatFlow_Interfaces.html#Modelica.Thermal.FluidHeatFlow.Interfaces.FlowPort_a>`_   | flowPort   |               |
+------------------------------------------------------------------------------------------------------------------------+------------+---------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_                           | y          |               |
+------------------------------------------------------------------------------------------------------------------------+------------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model PressureSensor "Absolute pressure sensor"

      extends Interfaces.Partials.AbsoluteSensor;
    equation 
      y = flowPort.p;
    end PressureSensor;

--------------

|image15| `Modelica.Thermal.FluidHeatFlow.Sensors <Modelica_Thermal_FluidHeatFlow_Sensors.html#Modelica.Thermal.FluidHeatFlow.Sensors>`_.TemperatureSensor
----------------------------------------------------------------------------------------------------------------------------------------------------------

**Absolute temperature sensor**

.. figure:: Modelica.Thermal.FluidHeatFlow.Sensors.PressureSensorD.png
   :align: center
   :alt: Modelica.Thermal.FluidHeatFlow.Sensors.TemperatureSensor

   Modelica.Thermal.FluidHeatFlow.Sensors.TemperatureSensor

Information
~~~~~~~~~~~

::

TSensor measures the absolute temperature (Kelvin).
 Thermodynamic equations are defined by Partials.AbsoluteSensor.

::

Extends from
`Interfaces.Partials.AbsoluteSensor <Modelica_Thermal_FluidHeatFlow_Interfaces_Partials.html#Modelica.Thermal.FluidHeatFlow.Interfaces.Partials.AbsoluteSensor>`_
(Partial model of absolute sensor).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------+----------+--------------------------------+-------------------+
| Type                                                                                                | Name     | Default                        | Description       |
+=====================================================================================================+==========+================================+===================+
| `Medium <Modelica_Thermal_FluidHeatFlow_Media.html#Modelica.Thermal.FluidHeatFlow.Media.Medium>`_   | medium   | FluidHeatFlow.Media.Medium()   | Sensor's medium   |
+-----------------------------------------------------------------------------------------------------+----------+--------------------------------+-------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------+------------+---------------+
| Type                                                                                                                   | Name       | Description   |
+========================================================================================================================+============+===============+
| `FlowPort\_a <Modelica_Thermal_FluidHeatFlow_Interfaces.html#Modelica.Thermal.FluidHeatFlow.Interfaces.FlowPort_a>`_   | flowPort   |               |
+------------------------------------------------------------------------------------------------------------------------+------------+---------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_                           | y          |               |
+------------------------------------------------------------------------------------------------------------------------+------------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model TemperatureSensor "Absolute temperature sensor"

      extends Interfaces.Partials.AbsoluteSensor;
    equation 
      medium.cp*y = flowPort.h;
    end TemperatureSensor;

--------------

|image16| `Modelica.Thermal.FluidHeatFlow.Sensors <Modelica_Thermal_FluidHeatFlow_Sensors.html#Modelica.Thermal.FluidHeatFlow.Sensors>`_.RelPressureSensor
----------------------------------------------------------------------------------------------------------------------------------------------------------

**Pressure difference sensor**

.. figure:: Modelica.Thermal.FluidHeatFlow.Sensors.RelPressureSensorD.png
   :align: center
   :alt: Modelica.Thermal.FluidHeatFlow.Sensors.RelPressureSensor

   Modelica.Thermal.FluidHeatFlow.Sensors.RelPressureSensor

Information
~~~~~~~~~~~

::

dpSensor measures the pressure drop between flowPort\_a and flowPort\_b.
 Thermodynamic equations are defined by Partials.RelativeSensor.

::

Extends from
`Interfaces.Partials.RelativeSensor <Modelica_Thermal_FluidHeatFlow_Interfaces_Partials.html#Modelica.Thermal.FluidHeatFlow.Interfaces.Partials.RelativeSensor>`_
(Partial model of relative sensor).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------+----------+--------------------------------+-------------------+
| Type                                                                                                | Name     | Default                        | Description       |
+=====================================================================================================+==========+================================+===================+
| `Medium <Modelica_Thermal_FluidHeatFlow_Media.html#Modelica.Thermal.FluidHeatFlow.Media.Medium>`_   | medium   | FluidHeatFlow.Media.Medium()   | Sensor's medium   |
+-----------------------------------------------------------------------------------------------------+----------+--------------------------------+-------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------+---------------+---------------+
| Type                                                                                                                   | Name          | Description   |
+========================================================================================================================+===============+===============+
| `FlowPort\_a <Modelica_Thermal_FluidHeatFlow_Interfaces.html#Modelica.Thermal.FluidHeatFlow.Interfaces.FlowPort_a>`_   | flowPort\_a   |               |
+------------------------------------------------------------------------------------------------------------------------+---------------+---------------+
| `FlowPort\_b <Modelica_Thermal_FluidHeatFlow_Interfaces.html#Modelica.Thermal.FluidHeatFlow.Interfaces.FlowPort_b>`_   | flowPort\_b   |               |
+------------------------------------------------------------------------------------------------------------------------+---------------+---------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_                           | y             |               |
+------------------------------------------------------------------------------------------------------------------------+---------------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model RelPressureSensor "Pressure difference sensor"

      extends Interfaces.Partials.RelativeSensor;
    equation 
      y = flowPort_a.p - flowPort_b.p;
    end RelPressureSensor;

--------------

|image17| `Modelica.Thermal.FluidHeatFlow.Sensors <Modelica_Thermal_FluidHeatFlow_Sensors.html#Modelica.Thermal.FluidHeatFlow.Sensors>`_.RelTemperatureSensor
-------------------------------------------------------------------------------------------------------------------------------------------------------------

**Temperature difference sensor**

.. figure:: Modelica.Thermal.FluidHeatFlow.Sensors.RelPressureSensorD.png
   :align: center
   :alt: Modelica.Thermal.FluidHeatFlow.Sensors.RelTemperatureSensor

   Modelica.Thermal.FluidHeatFlow.Sensors.RelTemperatureSensor

Information
~~~~~~~~~~~

::

dTSensor measures the temperature difference between flowPort\_a and
flowPort\_b.
 Thermodynamic equations are defined by Partials.RelativeSensor.
 **Note:** Connected flowPorts have the same temperature (mixing
temperature)!
 Since mixing my occur, the outlet temperature of a component may be
different from the connector's temperature.
 Outlet temperature is defined by variable T of the corresponding
component.

::

Extends from
`Interfaces.Partials.RelativeSensor <Modelica_Thermal_FluidHeatFlow_Interfaces_Partials.html#Modelica.Thermal.FluidHeatFlow.Interfaces.Partials.RelativeSensor>`_
(Partial model of relative sensor).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------+----------+--------------------------------+-------------------+
| Type                                                                                                | Name     | Default                        | Description       |
+=====================================================================================================+==========+================================+===================+
| `Medium <Modelica_Thermal_FluidHeatFlow_Media.html#Modelica.Thermal.FluidHeatFlow.Media.Medium>`_   | medium   | FluidHeatFlow.Media.Medium()   | Sensor's medium   |
+-----------------------------------------------------------------------------------------------------+----------+--------------------------------+-------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------+---------------+---------------+
| Type                                                                                                                   | Name          | Description   |
+========================================================================================================================+===============+===============+
| `FlowPort\_a <Modelica_Thermal_FluidHeatFlow_Interfaces.html#Modelica.Thermal.FluidHeatFlow.Interfaces.FlowPort_a>`_   | flowPort\_a   |               |
+------------------------------------------------------------------------------------------------------------------------+---------------+---------------+
| `FlowPort\_b <Modelica_Thermal_FluidHeatFlow_Interfaces.html#Modelica.Thermal.FluidHeatFlow.Interfaces.FlowPort_b>`_   | flowPort\_b   |               |
+------------------------------------------------------------------------------------------------------------------------+---------------+---------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_                           | y             |               |
+------------------------------------------------------------------------------------------------------------------------+---------------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model RelTemperatureSensor "Temperature difference sensor"

      extends Interfaces.Partials.RelativeSensor;
    equation 
      medium.cp*y = flowPort_a.h - flowPort_b.h;
    end RelTemperatureSensor;

--------------

|image18| `Modelica.Thermal.FluidHeatFlow.Sensors <Modelica_Thermal_FluidHeatFlow_Sensors.html#Modelica.Thermal.FluidHeatFlow.Sensors>`_.MassFlowSensor
-------------------------------------------------------------------------------------------------------------------------------------------------------

**Mass flow sensor**

.. figure:: Modelica.Thermal.FluidHeatFlow.Sensors.RelPressureSensorD.png
   :align: center
   :alt: Modelica.Thermal.FluidHeatFlow.Sensors.MassFlowSensor

   Modelica.Thermal.FluidHeatFlow.Sensors.MassFlowSensor

Information
~~~~~~~~~~~

::

m\_flowSensor measures the mass flow rate.
 Thermodynamic equations are defined by Partials.FlowSensor.

::

Extends from
`Interfaces.Partials.FlowSensor <Modelica_Thermal_FluidHeatFlow_Interfaces_Partials.html#Modelica.Thermal.FluidHeatFlow.Interfaces.Partials.FlowSensor>`_
(Partial model of flow sensor).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------+----------+--------------------------------+---------------------------+
| Type                                                                                                | Name     | Default                        | Description               |
+=====================================================================================================+==========+================================+===========================+
| `Medium <Modelica_Thermal_FluidHeatFlow_Media.html#Modelica.Thermal.FluidHeatFlow.Media.Medium>`_   | medium   | FluidHeatFlow.Media.Medium()   | Medium in the component   |
+-----------------------------------------------------------------------------------------------------+----------+--------------------------------+---------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------+---------------+---------------+
| Type                                                                                                                   | Name          | Description   |
+========================================================================================================================+===============+===============+
| `FlowPort\_a <Modelica_Thermal_FluidHeatFlow_Interfaces.html#Modelica.Thermal.FluidHeatFlow.Interfaces.FlowPort_a>`_   | flowPort\_a   |               |
+------------------------------------------------------------------------------------------------------------------------+---------------+---------------+
| `FlowPort\_b <Modelica_Thermal_FluidHeatFlow_Interfaces.html#Modelica.Thermal.FluidHeatFlow.Interfaces.FlowPort_b>`_   | flowPort\_b   |               |
+------------------------------------------------------------------------------------------------------------------------+---------------+---------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_                           | y             |               |
+------------------------------------------------------------------------------------------------------------------------+---------------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model MassFlowSensor "Mass flow sensor"

      extends Interfaces.Partials.FlowSensor;
    equation 
      y = V_flow*medium.rho;
    end MassFlowSensor;

--------------

|image19| `Modelica.Thermal.FluidHeatFlow.Sensors <Modelica_Thermal_FluidHeatFlow_Sensors.html#Modelica.Thermal.FluidHeatFlow.Sensors>`_.VolumeFlowSensor
---------------------------------------------------------------------------------------------------------------------------------------------------------

**Volume flow sensor**

.. figure:: Modelica.Thermal.FluidHeatFlow.Sensors.RelPressureSensorD.png
   :align: center
   :alt: Modelica.Thermal.FluidHeatFlow.Sensors.VolumeFlowSensor

   Modelica.Thermal.FluidHeatFlow.Sensors.VolumeFlowSensor

Information
~~~~~~~~~~~

::

V\_flowSensor measures the volume flow rate.
 Thermodynamic equations are defined by Partials.FlowSensor.

::

Extends from
`Interfaces.Partials.FlowSensor <Modelica_Thermal_FluidHeatFlow_Interfaces_Partials.html#Modelica.Thermal.FluidHeatFlow.Interfaces.Partials.FlowSensor>`_
(Partial model of flow sensor).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------+----------+--------------------------------+---------------------------+
| Type                                                                                                | Name     | Default                        | Description               |
+=====================================================================================================+==========+================================+===========================+
| `Medium <Modelica_Thermal_FluidHeatFlow_Media.html#Modelica.Thermal.FluidHeatFlow.Media.Medium>`_   | medium   | FluidHeatFlow.Media.Medium()   | Medium in the component   |
+-----------------------------------------------------------------------------------------------------+----------+--------------------------------+---------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------+---------------+---------------+
| Type                                                                                                                   | Name          | Description   |
+========================================================================================================================+===============+===============+
| `FlowPort\_a <Modelica_Thermal_FluidHeatFlow_Interfaces.html#Modelica.Thermal.FluidHeatFlow.Interfaces.FlowPort_a>`_   | flowPort\_a   |               |
+------------------------------------------------------------------------------------------------------------------------+---------------+---------------+
| `FlowPort\_b <Modelica_Thermal_FluidHeatFlow_Interfaces.html#Modelica.Thermal.FluidHeatFlow.Interfaces.FlowPort_b>`_   | flowPort\_b   |               |
+------------------------------------------------------------------------------------------------------------------------+---------------+---------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_                           | y             |               |
+------------------------------------------------------------------------------------------------------------------------+---------------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model VolumeFlowSensor "Volume flow sensor"

      extends Interfaces.Partials.FlowSensor;
    equation 
      y = V_flow;
    end VolumeFlowSensor;

--------------

|image20| `Modelica.Thermal.FluidHeatFlow.Sensors <Modelica_Thermal_FluidHeatFlow_Sensors.html#Modelica.Thermal.FluidHeatFlow.Sensors>`_.EnthalpyFlowSensor
-----------------------------------------------------------------------------------------------------------------------------------------------------------

**Enthapy flow sensor**

.. figure:: Modelica.Thermal.FluidHeatFlow.Sensors.RelPressureSensorD.png
   :align: center
   :alt: Modelica.Thermal.FluidHeatFlow.Sensors.EnthalpyFlowSensor

   Modelica.Thermal.FluidHeatFlow.Sensors.EnthalpyFlowSensor

Information
~~~~~~~~~~~

::

H\_flowSensor measures the enthalpy flow rate.
 Thermodynamic equations are defined by Partials.FlowSensor.

::

Extends from
`Interfaces.Partials.FlowSensor <Modelica_Thermal_FluidHeatFlow_Interfaces_Partials.html#Modelica.Thermal.FluidHeatFlow.Interfaces.Partials.FlowSensor>`_
(Partial model of flow sensor).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------+----------+--------------------------------+---------------------------+
| Type                                                                                                | Name     | Default                        | Description               |
+=====================================================================================================+==========+================================+===========================+
| `Medium <Modelica_Thermal_FluidHeatFlow_Media.html#Modelica.Thermal.FluidHeatFlow.Media.Medium>`_   | medium   | FluidHeatFlow.Media.Medium()   | Medium in the component   |
+-----------------------------------------------------------------------------------------------------+----------+--------------------------------+---------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------+---------------+---------------+
| Type                                                                                                                   | Name          | Description   |
+========================================================================================================================+===============+===============+
| `FlowPort\_a <Modelica_Thermal_FluidHeatFlow_Interfaces.html#Modelica.Thermal.FluidHeatFlow.Interfaces.FlowPort_a>`_   | flowPort\_a   |               |
+------------------------------------------------------------------------------------------------------------------------+---------------+---------------+
| `FlowPort\_b <Modelica_Thermal_FluidHeatFlow_Interfaces.html#Modelica.Thermal.FluidHeatFlow.Interfaces.FlowPort_b>`_   | flowPort\_b   |               |
+------------------------------------------------------------------------------------------------------------------------+---------------+---------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_                           | y             |               |
+------------------------------------------------------------------------------------------------------------------------+---------------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model EnthalpyFlowSensor "Enthapy flow sensor"

      extends Interfaces.Partials.FlowSensor;
    equation 
      y = flowPort_a.H_flow;
    end EnthalpyFlowSensor;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:31:44
2010.

.. |Modelica.Thermal.FluidHeatFlow.Sensors.PressureSensor| image:: Modelica.Thermal.FluidHeatFlow.Sensors.PressureSensorS.png
.. |Modelica.Thermal.FluidHeatFlow.Sensors.TemperatureSensor| image:: Modelica.Thermal.FluidHeatFlow.Sensors.TemperatureSensorS.png
.. |Modelica.Thermal.FluidHeatFlow.Sensors.RelPressureSensor| image:: Modelica.Thermal.FluidHeatFlow.Sensors.RelPressureSensorS.png
.. |Modelica.Thermal.FluidHeatFlow.Sensors.RelTemperatureSensor| image:: Modelica.Thermal.FluidHeatFlow.Sensors.RelPressureSensorS.png
.. |Modelica.Thermal.FluidHeatFlow.Sensors.MassFlowSensor| image:: Modelica.Thermal.FluidHeatFlow.Sensors.MassFlowSensorS.png
.. |Modelica.Thermal.FluidHeatFlow.Sensors.VolumeFlowSensor| image:: Modelica.Thermal.FluidHeatFlow.Sensors.VolumeFlowSensorS.png
.. |Modelica.Thermal.FluidHeatFlow.Sensors.EnthalpyFlowSensor| image:: Modelica.Thermal.FluidHeatFlow.Sensors.EnthalpyFlowSensorS.png
.. |image7| image:: Modelica.Thermal.FluidHeatFlow.Sensors.PressureSensorS.png
.. |image8| image:: Modelica.Thermal.FluidHeatFlow.Sensors.TemperatureSensorS.png
.. |image9| image:: Modelica.Thermal.FluidHeatFlow.Sensors.RelPressureSensorS.png
.. |image10| image:: Modelica.Thermal.FluidHeatFlow.Sensors.RelPressureSensorS.png
.. |image11| image:: Modelica.Thermal.FluidHeatFlow.Sensors.MassFlowSensorS.png
.. |image12| image:: Modelica.Thermal.FluidHeatFlow.Sensors.VolumeFlowSensorS.png
.. |image13| image:: Modelica.Thermal.FluidHeatFlow.Sensors.EnthalpyFlowSensorS.png
.. |image14| image:: Modelica.Thermal.FluidHeatFlow.Sensors.PressureSensorI.png
.. |image15| image:: Modelica.Thermal.FluidHeatFlow.Sensors.TemperatureSensorI.png
.. |image16| image:: Modelica.Thermal.FluidHeatFlow.Sensors.RelPressureSensorI.png
.. |image17| image:: Modelica.Thermal.FluidHeatFlow.Sensors.RelPressureSensorI.png
.. |image18| image:: Modelica.Thermal.FluidHeatFlow.Sensors.MassFlowSensorI.png
.. |image19| image:: Modelica.Thermal.FluidHeatFlow.Sensors.VolumeFlowSensorI.png
.. |image20| image:: Modelica.Thermal.FluidHeatFlow.Sensors.EnthalpyFlowSensorI.png
