=====================================
Modelica.Thermal.HeatTransfer.Sensors
=====================================

`Modelica.Thermal.HeatTransfer <Modelica_Thermal_HeatTransfer.html#Modelica.Thermal.HeatTransfer>`_.Sensors
-----------------------------------------------------------------------------------------------------------

**Thermal sensors**

Information
~~~~~~~~~~~

::

::

Extends from
`Modelica.Icons.SensorsPackage <Modelica_Icons_SensorsPackage.html#Modelica.Icons.SensorsPackage>`_
(Icon for packages containing sensors).

Package Content
~~~~~~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------+
| Name                                                                                                                                                                                                                         | Description                                     |
+==============================================================================================================================================================================================================================+=================================================+
| |image4| `TemperatureSensor <Modelica_Thermal_HeatTransfer_Sensors.html#Modelica.Thermal.HeatTransfer.Sensors.TemperatureSensor>`_                                                                                           | Absolute temperature sensor in Kelvin           |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------+
| |image5| `RelTemperatureSensor <Modelica_Thermal_HeatTransfer_Sensors.html#Modelica.Thermal.HeatTransfer.Sensors.RelTemperatureSensor>`_                                                                                     | Relative Temperature sensor                     |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------+
| |image6| `HeatFlowSensor <Modelica_Thermal_HeatTransfer_Sensors.html#Modelica.Thermal.HeatTransfer.Sensors.HeatFlowSensor>`_                                                                                                 | Heat flow rate sensor                           |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------+
| |image7| `ConditionalFixedHeatFlowSensor <Modelica_Thermal_HeatTransfer_Sensors.html#Modelica.Thermal.HeatTransfer.Sensors.ConditionalFixedHeatFlowSensor>`_                                                                 | HeatFlowSensor, conditional fixed Temperature   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------+

--------------

|image8| `Modelica.Thermal.HeatTransfer.Sensors <Modelica_Thermal_HeatTransfer_Sensors.html#Modelica.Thermal.HeatTransfer.Sensors>`_.TemperatureSensor
------------------------------------------------------------------------------------------------------------------------------------------------------

**Absolute temperature sensor in Kelvin**

.. figure:: Modelica.Thermal.HeatTransfer.Sensors.TemperatureSensorD.png
   :align: center
   :alt: Modelica.Thermal.HeatTransfer.Sensors.TemperatureSensor

   Modelica.Thermal.HeatTransfer.Sensors.TemperatureSensor

Information
~~~~~~~~~~~

::

This is an ideal absolute temperature sensor which returns the
temperature of the connected port in Kelvin as an output signal. The
sensor itself has no thermal interaction with whatever it is connected
to. Furthermore, no thermocouple-like lags are associated with this
sensor model.

::

Connectors
~~~~~~~~~~

+----------------------------------------------------------------------------------------------------------------------+--------+---------------+
| Type                                                                                                                 | Name   | Description   |
+======================================================================================================================+========+===============+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_                         | T      |               |
+----------------------------------------------------------------------------------------------------------------------+--------+---------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | port   |               |
+----------------------------------------------------------------------------------------------------------------------+--------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model TemperatureSensor "Absolute temperature sensor in Kelvin"

      Modelica.Blocks.Interfaces.RealOutput T;
      Interfaces.HeatPort_a port;
    equation 
      T = port.T;
      port.Q_flow = 0;
    end TemperatureSensor;

--------------

|image9| `Modelica.Thermal.HeatTransfer.Sensors <Modelica_Thermal_HeatTransfer_Sensors.html#Modelica.Thermal.HeatTransfer.Sensors>`_.RelTemperatureSensor
---------------------------------------------------------------------------------------------------------------------------------------------------------

**Relative Temperature sensor**

.. figure:: Modelica.Thermal.HeatTransfer.Sensors.RelTemperatureSensorD.png
   :align: center
   :alt: Modelica.Thermal.HeatTransfer.Sensors.RelTemperatureSensor

   Modelica.Thermal.HeatTransfer.Sensors.RelTemperatureSensor

Information
~~~~~~~~~~~

::

The relative temperature "port\_a.T - port\_b.T" is determined between
the two ports of this component and is provided as output signal in
Kelvin.

::

Extends from
`Modelica.Icons.TranslationalSensor <Modelica_Icons.html#Modelica.Icons.TranslationalSensor>`_
(Icon representing a linear measurement device).

Connectors
~~~~~~~~~~

+----------------------------------------------------------------------------------------------------------------------+-----------+---------------+
| Type                                                                                                                 | Name      | Description   |
+======================================================================================================================+===========+===============+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | port\_a   |               |
+----------------------------------------------------------------------------------------------------------------------+-----------+---------------+
| `HeatPort\_b <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_b>`_   | port\_b   |               |
+----------------------------------------------------------------------------------------------------------------------+-----------+---------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_                         | T\_rel    |               |
+----------------------------------------------------------------------------------------------------------------------+-----------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model RelTemperatureSensor "Relative Temperature sensor"
      extends Modelica.Icons.TranslationalSensor;
      Interfaces.HeatPort_a port_a;
      Interfaces.HeatPort_b port_b;
      Modelica.Blocks.Interfaces.RealOutput T_rel;
    equation 
      T_rel = port_a.T - port_b.T;
      0 = port_a.Q_flow;
      0 = port_b.Q_flow;
    end RelTemperatureSensor;

--------------

|image10| `Modelica.Thermal.HeatTransfer.Sensors <Modelica_Thermal_HeatTransfer_Sensors.html#Modelica.Thermal.HeatTransfer.Sensors>`_.HeatFlowSensor
----------------------------------------------------------------------------------------------------------------------------------------------------

**Heat flow rate sensor**

.. figure:: Modelica.Thermal.HeatTransfer.Sensors.HeatFlowSensorD.png
   :align: center
   :alt: Modelica.Thermal.HeatTransfer.Sensors.HeatFlowSensor

   Modelica.Thermal.HeatTransfer.Sensors.HeatFlowSensor

Information
~~~~~~~~~~~

::

This model is capable of monitoring the heat flow rate flowing through
this component. The sensed value of heat flow rate is the amount that
passes through this sensor while keeping the temperature drop across the
sensor zero. This is an ideal model so it does not absorb any energy and
it has no direct effect on the thermal response of a system it is
included in. The output signal is positive, if the heat flows from
port\_a to port\_b.

::

Extends from
`Modelica.Icons.RotationalSensor <Modelica_Icons.html#Modelica.Icons.RotationalSensor>`_
(Icon representing a round measurement device).

Connectors
~~~~~~~~~~

+----------------------------------------------------------------------------------------------------------------------+-----------+-------------------------------------+
| Type                                                                                                                 | Name      | Description                         |
+======================================================================================================================+===========+=====================================+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_                         | Q\_flow   | Heat flow from port\_a to port\_b   |
+----------------------------------------------------------------------------------------------------------------------+-----------+-------------------------------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | port\_a   |                                     |
+----------------------------------------------------------------------------------------------------------------------+-----------+-------------------------------------+
| `HeatPort\_b <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_b>`_   | port\_b   |                                     |
+----------------------------------------------------------------------------------------------------------------------+-----------+-------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model HeatFlowSensor "Heat flow rate sensor"
      extends Modelica.Icons.RotationalSensor;
      Modelica.Blocks.Interfaces.RealOutput Q_flow 
        "Heat flow from port_a to port_b";
      Interfaces.HeatPort_a port_a;
      Interfaces.HeatPort_b port_b;
    equation 
      port_a.T = port_b.T;
      port_a.Q_flow + port_b.Q_flow = 0;
      Q_flow = port_a.Q_flow;
    end HeatFlowSensor;

--------------

|image11| `Modelica.Thermal.HeatTransfer.Sensors <Modelica_Thermal_HeatTransfer_Sensors.html#Modelica.Thermal.HeatTransfer.Sensors>`_.ConditionalFixedHeatFlowSensor
--------------------------------------------------------------------------------------------------------------------------------------------------------------------

**HeatFlowSensor, conditional fixed Temperature**

.. figure:: Modelica.Thermal.HeatTransfer.Sensors.ConditionalFixedHeatFlowSensorD.png
   :align: center
   :alt: Modelica.Thermal.HeatTransfer.Sensors.ConditionalFixedHeatFlowSensor

   Modelica.Thermal.HeatTransfer.Sensors.ConditionalFixedHeatFlowSensor

Information
~~~~~~~~~~~

::

If useFixedTemperature = false, this sensor acts just as a normal
`HeatFlowSensor <Modelica_Thermal_HeatTransfer_Sensors.html#Modelica.Thermal.HeatTransfer.Sensors.HeatFlowSensor>`_.

If useFixedTemperature = true, it is assumed that the connections to
both heatPorts of this sensor are conditionally removed; in this case,
the measured Q\_flow is reported = 0 automatically. To avoid a singular
equation system, the temperature of the sensor is set to 293.15 K.

::

Parameters
~~~~~~~~~~

+-----------+-----------------------+-----------+-----------------------------+
| Type      | Name                  | Default   | Description                 |
+===========+=======================+===========+=============================+
| Boolean   | useFixedTemperature   |           | Fixed Temperature if true   |
+-----------+-----------------------+-----------+-----------------------------+

Connectors
~~~~~~~~~~

+----------------------------------------------------------------------------------------------------------------------+-----------+---------------+
| Type                                                                                                                 | Name      | Description   |
+======================================================================================================================+===========+===============+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | port\_a   |               |
+----------------------------------------------------------------------------------------------------------------------+-----------+---------------+
| `HeatPort\_b <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_b>`_   | port\_b   |               |
+----------------------------------------------------------------------------------------------------------------------+-----------+---------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_                         | Q\_flow   |               |
+----------------------------------------------------------------------------------------------------------------------+-----------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model ConditionalFixedHeatFlowSensor 
      "HeatFlowSensor, conditional fixed Temperature"
      parameter Boolean useFixedTemperature(start=false) 
        "Fixed Temperature if true";
      Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a port_a;
      Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_b port_b;
      Modelica.Thermal.HeatTransfer.Sensors.HeatFlowSensor heatFlowSensor;
      Modelica.Thermal.HeatTransfer.Sources.FixedTemperature fixedTemperature(final T(
            displayUnit="K") = 293.15) if                                                       useFixedTemperature;
      Blocks.Interfaces.RealOutput Q_flow;
    equation 
      connect(heatFlowSensor.port_b, port_b);
      connect(port_a, heatFlowSensor.port_a);
      connect(fixedTemperature.port, heatFlowSensor.port_a);
      connect(heatFlowSensor.Q_flow, Q_flow);
    end ConditionalFixedHeatFlowSensor;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:31:46
2010.

.. |Modelica.Thermal.HeatTransfer.Sensors.TemperatureSensor| image:: Modelica.Thermal.HeatTransfer.Sensors.TemperatureSensorS.png
.. |Modelica.Thermal.HeatTransfer.Sensors.RelTemperatureSensor| image:: Modelica.Thermal.HeatTransfer.Sensors.RelTemperatureSensorS.png
.. |Modelica.Thermal.HeatTransfer.Sensors.HeatFlowSensor| image:: Modelica.Thermal.HeatTransfer.Sensors.HeatFlowSensorS.png
.. |Modelica.Thermal.HeatTransfer.Sensors.ConditionalFixedHeatFlowSensor| image:: Modelica.Thermal.HeatTransfer.Sensors.ConditionalFixedHeatFlowSensorS.png
.. |image4| image:: Modelica.Thermal.HeatTransfer.Sensors.TemperatureSensorS.png
.. |image5| image:: Modelica.Thermal.HeatTransfer.Sensors.RelTemperatureSensorS.png
.. |image6| image:: Modelica.Thermal.HeatTransfer.Sensors.HeatFlowSensorS.png
.. |image7| image:: Modelica.Thermal.HeatTransfer.Sensors.ConditionalFixedHeatFlowSensorS.png
.. |image8| image:: Modelica.Thermal.HeatTransfer.Sensors.TemperatureSensorI.png
.. |image9| image:: Modelica.Thermal.HeatTransfer.Sensors.RelTemperatureSensorI.png
.. |image10| image:: Modelica.Thermal.HeatTransfer.Sensors.HeatFlowSensorI.png
.. |image11| image:: Modelica.Thermal.HeatTransfer.Sensors.ConditionalFixedHeatFlowSensorI.png
