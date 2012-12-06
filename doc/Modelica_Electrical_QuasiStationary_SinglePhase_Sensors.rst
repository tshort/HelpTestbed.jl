=======================================================
Modelica.Electrical.QuasiStationary.SinglePhase.Sensors
=======================================================

`Modelica.Electrical.QuasiStationary.SinglePhase <Modelica_Electrical_QuasiStationary_SinglePhase.html#Modelica.Electrical.QuasiStationary.SinglePhase>`_.Sensors
-----------------------------------------------------------------------------------------------------------------------------------------------------------------

**AC singlephase sensors**

Information
~~~~~~~~~~~

::

This package hosts sensors for quasi stationary single phase circuits.
Quasi stationary theory for single phase circuits can be found in the
`references <Modelica_Electrical_QuasiStationary_UsersGuide.html#Modelica.Electrical.QuasiStationary.UsersGuide.References>`_.

See also
^^^^^^^^

`MultiPhase.Sensors <Modelica_Electrical_QuasiStationary_MultiPhase_Sensors.html#Modelica.Electrical.QuasiStationary.MultiPhase.Sensors>`_

::

Extends from
`Modelica.Icons.SensorsPackage <Modelica_Icons_SensorsPackage.html#Modelica.Icons.SensorsPackage>`_
(Icon for packages containing sensors).

Package Content
~~~~~~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------+
| Name                                                                                                                                                                                                                                  | Description        |
+=======================================================================================================================================================================================================================================+====================+
| |image5| `FrequencySensor <Modelica_Electrical_QuasiStationary_SinglePhase_Sensors.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.FrequencySensor>`_                                                                    | Frequency sensor   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------+
| |image6| `PotentialSensor <Modelica_Electrical_QuasiStationary_SinglePhase_Sensors.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.PotentialSensor>`_                                                                    | Potential sensor   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------+
| |image7| `VoltageSensor <Modelica_Electrical_QuasiStationary_SinglePhase_Sensors.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.VoltageSensor>`_                                                                        | Voltage sensor     |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------+
| |image8| `CurrentSensor <Modelica_Electrical_QuasiStationary_SinglePhase_Sensors.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.CurrentSensor>`_                                                                        | Current sensor     |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------+
| |image9| `PowerSensor <Modelica_Electrical_QuasiStationary_SinglePhase_Sensors.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.PowerSensor>`_                                                                            | Power sensor       |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------+

--------------

|image10| `Modelica.Electrical.QuasiStationary.SinglePhase.Sensors <Modelica_Electrical_QuasiStationary_SinglePhase_Sensors.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sensors>`_.FrequencySensor
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Frequency sensor**

.. figure:: Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.FrequencySensorD.png
   :align: center
   :alt: Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.FrequencySensor

   Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.FrequencySensor

Information
~~~~~~~~~~~

::

This sensor can be used to measure the frequency of the reference
system.

See also
^^^^^^^^

`PotentialSensor <Modelica_Electrical_QuasiStationary_SinglePhase_Sensors.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.PotentialSensor>`_,
`VoltageSensor <Modelica_Electrical_QuasiStationary_SinglePhase_Sensors.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.VoltageSensor>`_,
`CurrentSensor <Modelica_Electrical_QuasiStationary_SinglePhase_Sensors.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.CurrentSensor>`_,
`PowerSensor <Modelica_Electrical_QuasiStationary_SinglePhase_Sensors.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.PowerSensor>`_

::

Extends from
`Interfaces.AbsoluteSensor <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.AbsoluteSensor>`_
(Partial potential sensor).

Connectors
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------------+--------+---------------+
| Type                                                                                                                                                      | Name   | Description   |
+===========================================================================================================================================================+========+===============+
| `PositivePin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.PositivePin>`_   | pin    | Pin           |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+--------+---------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_                                                              | y      |               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+--------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model FrequencySensor "Frequency sensor"
      extends Interfaces.AbsoluteSensor;
      import Modelica.Constants.pi;
      Blocks.Interfaces.RealOutput y;
    equation 
      2*pi*y = omega;
    end FrequencySensor;

--------------

|image11| `Modelica.Electrical.QuasiStationary.SinglePhase.Sensors <Modelica_Electrical_QuasiStationary_SinglePhase_Sensors.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sensors>`_.PotentialSensor
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Potential sensor**

.. figure:: Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.PotentialSensorD.png
   :align: center
   :alt: Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.PotentialSensor

   Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.PotentialSensor

Information
~~~~~~~~~~~

::

This sensor can be used to measure the complex potential.

See also
^^^^^^^^

`VoltageSensor <Modelica_Electrical_QuasiStationary_SinglePhase_Sensors.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.VoltageSensor>`_,
`CurrentSensor <Modelica_Electrical_QuasiStationary_SinglePhase_Sensors.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.CurrentSensor>`_,
`PowerSensor <Modelica_Electrical_QuasiStationary_SinglePhase_Sensors.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.PowerSensor>`_

::

Extends from
`Interfaces.AbsoluteSensor <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.AbsoluteSensor>`_
(Partial potential sensor).

Connectors
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------------+--------+---------------+
| Type                                                                                                                                                      | Name   | Description   |
+===========================================================================================================================================================+========+===============+
| `PositivePin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.PositivePin>`_   | pin    | Pin           |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+--------+---------------+
| output `ComplexOutput <Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces.ComplexOutput>`_                                          | y      |               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+--------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model PotentialSensor "Potential sensor"
      extends Interfaces.AbsoluteSensor;
      ComplexBlocks.Interfaces.ComplexOutput y;
    equation 
      y = pin.v;
    end PotentialSensor;

--------------

|image12| `Modelica.Electrical.QuasiStationary.SinglePhase.Sensors <Modelica_Electrical_QuasiStationary_SinglePhase_Sensors.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sensors>`_.VoltageSensor
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Voltage sensor**

.. figure:: Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.VoltageSensorD.png
   :align: center
   :alt: Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.VoltageSensor

   Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.VoltageSensor

Information
~~~~~~~~~~~

::

This sensor can be used to measure the complex voltage.

See also
^^^^^^^^

`PotentialSensor <Modelica_Electrical_QuasiStationary_SinglePhase_Sensors.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.PotentialSensor>`_,
`CurrentSensor <Modelica_Electrical_QuasiStationary_SinglePhase_Sensors.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.CurrentSensor>`_,
`PowerSensor <Modelica_Electrical_QuasiStationary_SinglePhase_Sensors.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.PowerSensor>`_

::

Extends from
`Interfaces.RelativeSensor <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.RelativeSensor>`_
(Partial voltage / current sensor).

Connectors
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------------+----------+----------------+
| Type                                                                                                                                                      | Name     | Description    |
+===========================================================================================================================================================+==========+================+
| `PositivePin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.PositivePin>`_   | pin\_p   | Positive pin   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+----------+----------------+
| `NegativePin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.NegativePin>`_   | pin\_n   | Negative pin   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+----------+----------------+
| output `ComplexOutput <Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces.ComplexOutput>`_                                          | y        |                |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+----------+----------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model VoltageSensor "Voltage sensor"
      extends Interfaces.RelativeSensor;
    equation 
      i = Complex(0);
      y = v;
    end VoltageSensor;

--------------

|image13| `Modelica.Electrical.QuasiStationary.SinglePhase.Sensors <Modelica_Electrical_QuasiStationary_SinglePhase_Sensors.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sensors>`_.CurrentSensor
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Current sensor**

.. figure:: Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.VoltageSensorD.png
   :align: center
   :alt: Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.CurrentSensor

   Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.CurrentSensor

Information
~~~~~~~~~~~

::

This sensor can be used to measure the complex current.

See also
^^^^^^^^

`PotentialSensor <Modelica_Electrical_QuasiStationary_SinglePhase_Sensors.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.PotentialSensor>`_,
`VoltageSensor <Modelica_Electrical_QuasiStationary_SinglePhase_Sensors.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.VoltageSensor>`_,
`PowerSensor <Modelica_Electrical_QuasiStationary_SinglePhase_Sensors.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.PowerSensor>`_

::

Extends from
`Interfaces.RelativeSensor <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.RelativeSensor>`_
(Partial voltage / current sensor).

Connectors
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------------+----------+----------------+
| Type                                                                                                                                                      | Name     | Description    |
+===========================================================================================================================================================+==========+================+
| `PositivePin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.PositivePin>`_   | pin\_p   | Positive pin   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+----------+----------------+
| `NegativePin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.NegativePin>`_   | pin\_n   | Negative pin   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+----------+----------------+
| output `ComplexOutput <Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces.ComplexOutput>`_                                          | y        |                |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+----------+----------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model CurrentSensor "Current sensor"
      extends Interfaces.RelativeSensor;
    equation 
      v = Complex(0);
      y = i;
    end CurrentSensor;

--------------

|image14| `Modelica.Electrical.QuasiStationary.SinglePhase.Sensors <Modelica_Electrical_QuasiStationary_SinglePhase_Sensors.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sensors>`_.PowerSensor
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Power sensor**

.. figure:: Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.PowerSensorD.png
   :align: center
   :alt: Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.PowerSensor

   Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.PowerSensor

Information
~~~~~~~~~~~

::

This sensor can be used to measure the complex apparent power.

See also
^^^^^^^^

`PotentialSensor <Modelica_Electrical_QuasiStationary_SinglePhase_Sensors.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.PotentialSensor>`_,
`VoltageSensor <Modelica_Electrical_QuasiStationary_SinglePhase_Sensors.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.VoltageSensor>`_,
`CurrentSensor <Modelica_Electrical_QuasiStationary_SinglePhase_Sensors.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.CurrentSensor>`_,

::

Connectors
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------------+------------+---------------+
| Type                                                                                                                                                      | Name       | Description   |
+===========================================================================================================================================================+============+===============+
| `PositivePin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.PositivePin>`_   | currentP   |               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+------------+---------------+
| `NegativePin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.NegativePin>`_   | currentN   |               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+------------+---------------+
| `PositivePin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.PositivePin>`_   | voltageP   |               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+------------+---------------+
| `NegativePin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.NegativePin>`_   | voltageN   |               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+------------+---------------+
| output `ComplexOutput <Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces.ComplexOutput>`_                                          | y          |               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+------------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model PowerSensor "Power sensor"
      import Modelica.ComplexMath.conj;
      Interfaces.PositivePin currentP;
      Interfaces.NegativePin currentN;
      Interfaces.PositivePin voltageP;
      Interfaces.NegativePin voltageN;
      output Modelica.SIunits.ComplexCurrent  i;
      output Modelica.SIunits.ComplexVoltage  v;
      Modelica.ComplexBlocks.Interfaces.ComplexOutput y;
    equation 
      Connections.branch(currentP.reference, currentN.reference);
      currentP.reference.gamma = currentN.reference.gamma;
      Connections.branch(voltageP.reference, voltageN.reference);
      voltageP.reference.gamma = voltageN.reference.gamma;
      Connections.branch(currentP.reference, voltageP.reference);
      currentP.reference.gamma = voltageP.reference.gamma;
      currentP.i + currentN.i = Complex(0);
      currentP.v - currentN.v = Complex(0);
      i = currentP.i;
      voltageP.i + voltageN.i = Complex(0);
      voltageP.i = Complex(0);
      v = voltageP.v - voltageN.v;
    //P + j*Q = v * conj(i);
      y = v*conj(i);
    end PowerSensor;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:29:24
2010.

.. |Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.FrequencySensor| image:: Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.FrequencySensorS.png
.. |Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.PotentialSensor| image:: Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.PotentialSensorS.png
.. |Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.VoltageSensor| image:: Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.VoltageSensorS.png
.. |Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.CurrentSensor| image:: Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.CurrentSensorS.png
.. |Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.PowerSensor| image:: Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.PowerSensorS.png
.. |image5| image:: Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.FrequencySensorS.png
.. |image6| image:: Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.PotentialSensorS.png
.. |image7| image:: Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.VoltageSensorS.png
.. |image8| image:: Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.CurrentSensorS.png
.. |image9| image:: Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.PowerSensorS.png
.. |image10| image:: Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.FrequencySensorI.png
.. |image11| image:: Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.PotentialSensorI.png
.. |image12| image:: Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.VoltageSensorI.png
.. |image13| image:: Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.CurrentSensorI.png
.. |image14| image:: Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.PowerSensorI.png
