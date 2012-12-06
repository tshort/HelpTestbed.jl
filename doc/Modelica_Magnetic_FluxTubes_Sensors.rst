===================================
Modelica.Magnetic.FluxTubes.Sensors
===================================

`Modelica.Magnetic.FluxTubes <Modelica_Magnetic_FluxTubes.html#Modelica.Magnetic.FluxTubes>`_.Sensors
-----------------------------------------------------------------------------------------------------

**Sensors to measure variables in magnetic networks**

Information
~~~~~~~~~~~

::

For analysis of magnetic networks, only magnetic potential differences
and magnetic flux are variables of interest. For that reason, a magnetic
potential sensor is not provided.

::

Extends from
`Modelica.Icons.SensorsPackage <Modelica_Icons_SensorsPackage.html#Modelica.Icons.SensorsPackage>`_
(Icon for packages containing sensors).

Package Content
~~~~~~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------+
| Name                                                                                                                                                                                                                            | Description                                       |
+=================================================================================================================================================================================================================================+===================================================+
| |image2| `MagneticPotentialDifferenceSensor <Modelica_Magnetic_FluxTubes_Sensors.html#Modelica.Magnetic.FluxTubes.Sensors.MagneticPotentialDifferenceSensor>`_                                                                  | Sensor to measure magnetic potential difference   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------+
| |image3| `MagneticFluxSensor <Modelica_Magnetic_FluxTubes_Sensors.html#Modelica.Magnetic.FluxTubes.Sensors.MagneticFluxSensor>`_                                                                                                | Sensor to measure magnetic flux                   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------+

--------------

|image4| `Modelica.Magnetic.FluxTubes.Sensors <Modelica_Magnetic_FluxTubes_Sensors.html#Modelica.Magnetic.FluxTubes.Sensors>`_.MagneticPotentialDifferenceSensor
----------------------------------------------------------------------------------------------------------------------------------------------------------------

**Sensor to measure magnetic potential difference**

.. figure:: Modelica.Magnetic.FluxTubes.Sensors.MagneticPotentialDifferenceSensorD.png
   :align: center
   :alt: Modelica.Magnetic.FluxTubes.Sensors.MagneticPotentialDifferenceSensor

   Modelica.Magnetic.FluxTubes.Sensors.MagneticPotentialDifferenceSensor

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.RotationalSensor <Modelica_Icons.html#Modelica.Icons.RotationalSensor>`_
(Icon representing a round measurement device),
`Modelica.Magnetic.FluxTubes.Interfaces.PartialTwoPortsElementary <Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.PartialTwoPortsElementary>`_
(Partial component with two magnetic ports p and n for textual
programming).

Connectors
~~~~~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------------+-----------+------------------------------------------------------------------------+
| Type                                                                                                                                | Name      | Description                                                            |
+=====================================================================================================================================+===========+========================================================================+
| `PositiveMagneticPort <Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.PositiveMagneticPort>`_   | port\_p   | Positive magnetic port                                                 |
+-------------------------------------------------------------------------------------------------------------------------------------+-----------+------------------------------------------------------------------------+
| `NegativeMagneticPort <Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.NegativeMagneticPort>`_   | port\_n   | Negative magnetic port                                                 |
+-------------------------------------------------------------------------------------------------------------------------------------+-----------+------------------------------------------------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_                                        | V\_m      | Magnetic potential difference between ports p and n as output signal   |
+-------------------------------------------------------------------------------------------------------------------------------------+-----------+------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model MagneticPotentialDifferenceSensor 
      "Sensor to measure magnetic potential difference"
      extends Modelica.Icons.RotationalSensor;
      extends Modelica.Magnetic.FluxTubes.Interfaces.PartialTwoPortsElementary;

      Modelica.Blocks.Interfaces.RealOutput V_m 
        "Magnetic potential difference between ports p and n as output signal";
      SI.MagneticFlux Phi "Magnetic flux from port_p to port_n";

    equation 
      V_m = port_p.V_m - port_n.V_m;
      Phi = port_p.Phi;
      Phi = 0;
      0 = port_p.Phi + port_n.Phi;

    end MagneticPotentialDifferenceSensor;

--------------

|image5| `Modelica.Magnetic.FluxTubes.Sensors <Modelica_Magnetic_FluxTubes_Sensors.html#Modelica.Magnetic.FluxTubes.Sensors>`_.MagneticFluxSensor
-------------------------------------------------------------------------------------------------------------------------------------------------

**Sensor to measure magnetic flux**

.. figure:: Modelica.Magnetic.FluxTubes.Sensors.MagneticFluxSensorD.png
   :align: center
   :alt: Modelica.Magnetic.FluxTubes.Sensors.MagneticFluxSensor

   Modelica.Magnetic.FluxTubes.Sensors.MagneticFluxSensor

Information
~~~~~~~~~~~

Extends from
`Modelica.Magnetic.FluxTubes.Interfaces.PartialTwoPortsElementary <Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.PartialTwoPortsElementary>`_
(Partial component with two magnetic ports p and n for textual
programming),
`Modelica.Icons.RotationalSensor <Modelica_Icons.html#Modelica.Icons.RotationalSensor>`_
(Icon representing a round measurement device).

Connectors
~~~~~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------------+-----------+--------------------------------------------------------+
| Type                                                                                                                                | Name      | Description                                            |
+=====================================================================================================================================+===========+========================================================+
| `PositiveMagneticPort <Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.PositiveMagneticPort>`_   | port\_p   | Positive magnetic port                                 |
+-------------------------------------------------------------------------------------------------------------------------------------+-----------+--------------------------------------------------------+
| `NegativeMagneticPort <Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.NegativeMagneticPort>`_   | port\_n   | Negative magnetic port                                 |
+-------------------------------------------------------------------------------------------------------------------------------------+-----------+--------------------------------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_                                        | Phi       | Magnetic flux from port p to port n as output signal   |
+-------------------------------------------------------------------------------------------------------------------------------------+-----------+--------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model MagneticFluxSensor "Sensor to measure magnetic flux"
      extends Modelica.Magnetic.FluxTubes.Interfaces.PartialTwoPortsElementary;
      extends Modelica.Icons.RotationalSensor;

      Modelica.Blocks.Interfaces.RealOutput Phi 
        "Magnetic flux from port p to port n as output signal";
    equation 
      port_p.V_m = port_n.V_m;
      Phi = port_p.Phi;
      0 = port_p.Phi + port_n.Phi;

    end MagneticFluxSensor;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:29:53
2010.

.. |Modelica.Magnetic.FluxTubes.Sensors.MagneticPotentialDifferenceSensor| image:: Modelica.Magnetic.FluxTubes.Sensors.MagneticPotentialDifferenceSensorS.png
.. |Modelica.Magnetic.FluxTubes.Sensors.MagneticFluxSensor| image:: Modelica.Magnetic.FluxTubes.Sensors.MagneticPotentialDifferenceSensorS.png
.. |image2| image:: Modelica.Magnetic.FluxTubes.Sensors.MagneticPotentialDifferenceSensorS.png
.. |image3| image:: Modelica.Magnetic.FluxTubes.Sensors.MagneticPotentialDifferenceSensorS.png
.. |image4| image:: Modelica.Magnetic.FluxTubes.Sensors.MagneticPotentialDifferenceSensorI.png
.. |image5| image:: Modelica.Magnetic.FluxTubes.Sensors.MagneticFluxSensorI.png
