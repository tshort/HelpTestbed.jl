=========================================
Modelica.Magnetic.FundamentalWave.Sensors
=========================================

`Modelica.Magnetic.FundamentalWave <Modelica_Magnetic_FundamentalWave.html#Modelica.Magnetic.FundamentalWave>`_.Sensors
-----------------------------------------------------------------------------------------------------------------------

**Sensors to measure variables in magnetic networks**

Information
~~~~~~~~~~~

::

This package provides sensors for the magnetic potential difference and
the magnetic flux in magnetic circuit.

::

Extends from
`Modelica.Icons.SensorsPackage <Modelica_Icons_SensorsPackage.html#Modelica.Icons.SensorsPackage>`_
(Icon for packages containing sensors).

Package Content
~~~~~~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------+
| Name                                                                                                                                                                                                                                              | Description                                       |
+===================================================================================================================================================================================================================================================+===================================================+
| |image3| `MagneticFluxSensor <Modelica_Magnetic_FundamentalWave_Sensors.html#Modelica.Magnetic.FundamentalWave.Sensors.MagneticFluxSensor>`_                                                                                                      | Sensor to measure magnetic flux                   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------+
| |image4| `MagneticPotentialDifferenceSensor <Modelica_Magnetic_FundamentalWave_Sensors.html#Modelica.Magnetic.FundamentalWave.Sensors.MagneticPotentialDifferenceSensor>`_                                                                        | Sensor to measure magnetic potential difference   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------+
| |image5| `MagneticPotentialSensor <Modelica_Magnetic_FundamentalWave_Sensors.html#Modelica.Magnetic.FundamentalWave.Sensors.MagneticPotentialSensor>`_                                                                                            | Sensor to measure magnetic potentiale             |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------+

--------------

|image6| `Modelica.Magnetic.FundamentalWave.Sensors <Modelica_Magnetic_FundamentalWave_Sensors.html#Modelica.Magnetic.FundamentalWave.Sensors>`_.MagneticFluxSensor
-------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Sensor to measure magnetic flux**

.. figure:: Modelica.Magnetic.FundamentalWave.Sensors.MagneticFluxSensorD.png
   :align: center
   :alt: Modelica.Magnetic.FundamentalWave.Sensors.MagneticFluxSensor

   Modelica.Magnetic.FundamentalWave.Sensors.MagneticFluxSensor

Information
~~~~~~~~~~~

::

Sensor for magnetic flux.

See also
^^^^^^^^

`MagneticPotentialDifferenceSensor <Modelica_Magnetic_FundamentalWave_Sensors.html#Modelica.Magnetic.FundamentalWave.Sensors.MagneticPotentialDifferenceSensor>`_

::

Extends from
`Modelica.Icons.RotationalSensor <Modelica_Icons.html#Modelica.Icons.RotationalSensor>`_
(Icon representing a round measurement device),
`Modelica.Magnetic.FundamentalWave.Interfaces.PartialTwoPort <Modelica_Magnetic_FundamentalWave_Interfaces.html#Modelica.Magnetic.FundamentalWave.Interfaces.PartialTwoPort>`_
(Two magnetic ports for graphical modeling).

Connectors
~~~~~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------------------------+-----------+------------------------------------------------------------------+
| Type                                                                                                                                            | Name      | Description                                                      |
+=================================================================================================================================================+===========+==================================================================+
| `PositiveMagneticPort <Modelica_Magnetic_FundamentalWave_Interfaces.html#Modelica.Magnetic.FundamentalWave.Interfaces.PositiveMagneticPort>`_   | port\_p   | Positive complex magnetic port                                   |
+-------------------------------------------------------------------------------------------------------------------------------------------------+-----------+------------------------------------------------------------------+
| `NegativeMagneticPort <Modelica_Magnetic_FundamentalWave_Interfaces.html#Modelica.Magnetic.FundamentalWave.Interfaces.NegativeMagneticPort>`_   | port\_n   | Negative complex magnetic port                                   |
+-------------------------------------------------------------------------------------------------------------------------------------------------+-----------+------------------------------------------------------------------+
| output `ComplexOutput <Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces.ComplexOutput>`_                                | Phi       | Complex magnetic flux from por\_ p to port\_n as output signal   |
+-------------------------------------------------------------------------------------------------------------------------------------------------+-----------+------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model MagneticFluxSensor "Sensor to measure magnetic flux"
      extends Modelica.Icons.RotationalSensor;
      extends Modelica.Magnetic.FundamentalWave.Interfaces.PartialTwoPort;

      Modelica.SIunits.ComplexMagneticPotentialDifference  V_m 
        "Complex magnetic potential difference";
      Modelica.ComplexBlocks.Interfaces.ComplexOutput Phi 
        "Complex magnetic flux from por_ p to port_n as output signal";

    equation 
      // Flux into positive port
      port_p.V_m - port_n.V_m = V_m;

      // Magneto motive force
      port_p.Phi = Phi;

      // Local flux balance
      port_p.Phi + port_n.Phi = Complex(0,0);

      // No magnetic potential difference at sensor
      V_m = Complex(0,0);

    end MagneticFluxSensor;

--------------

|image7| `Modelica.Magnetic.FundamentalWave.Sensors <Modelica_Magnetic_FundamentalWave_Sensors.html#Modelica.Magnetic.FundamentalWave.Sensors>`_.MagneticPotentialDifferenceSensor
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Sensor to measure magnetic potential difference**

.. figure:: Modelica.Magnetic.FundamentalWave.Sensors.MagneticPotentialDifferenceSensorD.png
   :align: center
   :alt: Modelica.Magnetic.FundamentalWave.Sensors.MagneticPotentialDifferenceSensor

   Modelica.Magnetic.FundamentalWave.Sensors.MagneticPotentialDifferenceSensor

Information
~~~~~~~~~~~

::

Sensor for magnetic potential difference.

See also
^^^^^^^^

`MagneticFluxSensor <Modelica_Magnetic_FundamentalWave_Sensors.html#Modelica.Magnetic.FundamentalWave.Sensors.MagneticFluxSensor>`_

::

Extends from
`Modelica.Icons.RotationalSensor <Modelica_Icons.html#Modelica.Icons.RotationalSensor>`_
(Icon representing a round measurement device),
`Modelica.Magnetic.FundamentalWave.Interfaces.PartialTwoPort <Modelica_Magnetic_FundamentalWave_Interfaces.html#Modelica.Magnetic.FundamentalWave.Interfaces.PartialTwoPort>`_
(Two magnetic ports for graphical modeling).

Connectors
~~~~~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------------------------+-----------+--------------------------------------------------------------------------------------+
| Type                                                                                                                                            | Name      | Description                                                                          |
+=================================================================================================================================================+===========+======================================================================================+
| `PositiveMagneticPort <Modelica_Magnetic_FundamentalWave_Interfaces.html#Modelica.Magnetic.FundamentalWave.Interfaces.PositiveMagneticPort>`_   | port\_p   | Positive complex magnetic port                                                       |
+-------------------------------------------------------------------------------------------------------------------------------------------------+-----------+--------------------------------------------------------------------------------------+
| `NegativeMagneticPort <Modelica_Magnetic_FundamentalWave_Interfaces.html#Modelica.Magnetic.FundamentalWave.Interfaces.NegativeMagneticPort>`_   | port\_n   | Negative complex magnetic port                                                       |
+-------------------------------------------------------------------------------------------------------------------------------------------------+-----------+--------------------------------------------------------------------------------------+
| output `ComplexOutput <Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces.ComplexOutput>`_                                | V\_m      | Complex magnetic potential difference between port\_p and port\_n as output signal   |
+-------------------------------------------------------------------------------------------------------------------------------------------------+-----------+--------------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model MagneticPotentialDifferenceSensor 
      "Sensor to measure magnetic potential difference"
      extends Modelica.Icons.RotationalSensor;
      extends Modelica.Magnetic.FundamentalWave.Interfaces.PartialTwoPort;

      Modelica.ComplexBlocks.Interfaces.ComplexOutput V_m 
        "Complex magnetic potential difference between port_p and port_n as output signal";
      Modelica.SIunits.ComplexMagneticFlux  Phi "Complex magnetic flux";

    equation 
      // Flux into positive port
      port_p.V_m - port_n.V_m = V_m;

      // Magneto motive force
      port_p.Phi = Phi;

      // Local flux balance
      port_p.Phi + port_n.Phi = Complex(0,0);

      // No magnetic flux through sensor
      Phi = Complex(0,0);

    end MagneticPotentialDifferenceSensor;

--------------

|image8| `Modelica.Magnetic.FundamentalWave.Sensors <Modelica_Magnetic_FundamentalWave_Sensors.html#Modelica.Magnetic.FundamentalWave.Sensors>`_.MagneticPotentialSensor
------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Sensor to measure magnetic potentiale**

.. figure:: Modelica.Magnetic.FundamentalWave.Sensors.MagneticPotentialSensorD.png
   :align: center
   :alt: Modelica.Magnetic.FundamentalWave.Sensors.MagneticPotentialSensor

   Modelica.Magnetic.FundamentalWave.Sensors.MagneticPotentialSensor

Information
~~~~~~~~~~~

::

Sensor for magnetic potential difference.

See also
^^^^^^^^

`MagneticFluxSensor <Modelica_Magnetic_FundamentalWave_Sensors.html#Modelica.Magnetic.FundamentalWave.Sensors.MagneticFluxSensor>`_

::

Extends from
`Modelica.Icons.RotationalSensor <Modelica_Icons.html#Modelica.Icons.RotationalSensor>`_
(Icon representing a round measurement device).

Connectors
~~~~~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------------------------+-----------+--------------------------------+
| Type                                                                                                                                            | Name      | Description                    |
+=================================================================================================================================================+===========+================================+
| output `ComplexOutput <Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces.ComplexOutput>`_                                | V\_m      | Complex magnetic potential     |
+-------------------------------------------------------------------------------------------------------------------------------------------------+-----------+--------------------------------+
| `PositiveMagneticPort <Modelica_Magnetic_FundamentalWave_Interfaces.html#Modelica.Magnetic.FundamentalWave.Interfaces.PositiveMagneticPort>`_   | port\_p   | Magnetic connector of sensor   |
+-------------------------------------------------------------------------------------------------------------------------------------------------+-----------+--------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model MagneticPotentialSensor "Sensor to measure magnetic potentiale"
      extends Modelica.Icons.RotationalSensor;

      Modelica.ComplexBlocks.Interfaces.ComplexOutput V_m 
        "Complex magnetic potential";

      Interfaces.PositiveMagneticPort port_p "Magnetic connector of sensor";
    equation 
      // No magnetic flux through sensor
      port_p.Phi = Complex(0,0);

      // Magnetic potential
      V_m = port_p.V_m;

    end MagneticPotentialSensor;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:30:02
2010.

.. |Modelica.Magnetic.FundamentalWave.Sensors.MagneticFluxSensor| image:: Modelica.Magnetic.FundamentalWave.Sensors.MagneticFluxSensorS.png
.. |Modelica.Magnetic.FundamentalWave.Sensors.MagneticPotentialDifferenceSensor| image:: Modelica.Magnetic.FundamentalWave.Sensors.MagneticFluxSensorS.png
.. |Modelica.Magnetic.FundamentalWave.Sensors.MagneticPotentialSensor| image:: Modelica.Magnetic.FundamentalWave.Sensors.MagneticPotentialSensorS.png
.. |image3| image:: Modelica.Magnetic.FundamentalWave.Sensors.MagneticFluxSensorS.png
.. |image4| image:: Modelica.Magnetic.FundamentalWave.Sensors.MagneticFluxSensorS.png
.. |image5| image:: Modelica.Magnetic.FundamentalWave.Sensors.MagneticPotentialSensorS.png
.. |image6| image:: Modelica.Magnetic.FundamentalWave.Sensors.MagneticFluxSensorI.png
.. |image7| image:: Modelica.Magnetic.FundamentalWave.Sensors.MagneticPotentialDifferenceSensorI.png
.. |image8| image:: Modelica.Magnetic.FundamentalWave.Sensors.MagneticPotentialSensorI.png
