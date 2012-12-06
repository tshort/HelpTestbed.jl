======================================================
Modelica.Electrical.QuasiStationary.MultiPhase.Sensors
======================================================

`Modelica.Electrical.QuasiStationary.MultiPhase <Modelica_Electrical_QuasiStationary_MultiPhase.html#Modelica.Electrical.QuasiStationary.MultiPhase>`_.Sensors
--------------------------------------------------------------------------------------------------------------------------------------------------------------

**AC multiphase sensors**

Information
~~~~~~~~~~~

::

This package hosts sensors for quasi stationary multiphase circuits.
Quasi stationary theory can be found in the
`references <Modelica_Electrical_QuasiStationary_UsersGuide.html#Modelica.Electrical.QuasiStationary.UsersGuide.References>`_.

See also
^^^^^^^^

`SinglePhase.Sensors <Modelica_Electrical_QuasiStationary_SinglePhase_Sensors.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sensors>`_

::

Extends from
`Modelica.Icons.SensorsPackage <Modelica_Icons_SensorsPackage.html#Modelica.Icons.SensorsPackage>`_
(Icon for packages containing sensors).

Package Content
~~~~~~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------+
| Name                                                                                                                                                                                                                               | Description        |
+====================================================================================================================================================================================================================================+====================+
| |image5| `FrequencySensor <Modelica_Electrical_QuasiStationary_MultiPhase_Sensors.html#Modelica.Electrical.QuasiStationary.MultiPhase.Sensors.FrequencySensor>`_                                                                   | Frequency sensor   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------+
| |image6| `PotentialSensor <Modelica_Electrical_QuasiStationary_MultiPhase_Sensors.html#Modelica.Electrical.QuasiStationary.MultiPhase.Sensors.PotentialSensor>`_                                                                   | Potential sensor   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------+
| |image7| `VoltageSensor <Modelica_Electrical_QuasiStationary_MultiPhase_Sensors.html#Modelica.Electrical.QuasiStationary.MultiPhase.Sensors.VoltageSensor>`_                                                                       | Voltage sensor     |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------+
| |image8| `CurrentSensor <Modelica_Electrical_QuasiStationary_MultiPhase_Sensors.html#Modelica.Electrical.QuasiStationary.MultiPhase.Sensors.CurrentSensor>`_                                                                       | Current Sensor     |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------+
| |image9| `PowerSensor <Modelica_Electrical_QuasiStationary_MultiPhase_Sensors.html#Modelica.Electrical.QuasiStationary.MultiPhase.Sensors.PowerSensor>`_                                                                           | Power sensor       |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------+

--------------

|image10| `Modelica.Electrical.QuasiStationary.MultiPhase.Sensors <Modelica_Electrical_QuasiStationary_MultiPhase_Sensors.html#Modelica.Electrical.QuasiStationary.MultiPhase.Sensors>`_.FrequencySensor
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Frequency sensor**

.. figure:: Modelica.Electrical.QuasiStationary.MultiPhase.Sensors.FrequencySensorD.png
   :align: center
   :alt: Modelica.Electrical.QuasiStationary.MultiPhase.Sensors.FrequencySensor

   Modelica.Electrical.QuasiStationary.MultiPhase.Sensors.FrequencySensor

Information
~~~~~~~~~~~

::

This sensor can be used to measure the frequency of the reference
system, using *1* `single phase
FrequencySensor <Modelica_Electrical_QuasiStationary_SinglePhase_Sensors.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.FrequencySensor>`_.

See also
^^^^^^^^

`SinglePhase.FrequencySensor <Modelica_Electrical_QuasiStationary_SinglePhase_Sensors.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.FrequencySensor>`_,
`PotentialSensor <Modelica_Electrical_QuasiStationary_MultiPhase_Sensors.html#Modelica.Electrical.QuasiStationary.MultiPhase.Sensors.PotentialSensor>`_

::

Extends from
`Interfaces.AbsoluteSensor <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.AbsoluteSensor>`_
(Partial potential sensor).

Parameters
~~~~~~~~~~

+-----------+--------+-----------+--------------------+
| Type      | Name   | Default   | Description        |
+===========+========+===========+====================+
| Integer   | m      | 3         | number of phases   |
+-----------+--------+-----------+--------------------+

Connectors
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+---------------+
| Type                                                                                                                                                      | Name      | Description   |
+===========================================================================================================================================================+===========+===============+
| `PositivePlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.PositivePlug>`_   | plug\_p   |               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+---------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_                                                              | y         |               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model FrequencySensor "Frequency sensor"
      extends Interfaces.AbsoluteSensor;
      SinglePhase.Sensors.FrequencySensor potentialSensor;
      Basic.PlugToPin_p plugToPins_p( final m=m, final k=1);
      Blocks.Interfaces.RealOutput y;
    equation 

      connect(plug_p, plugToPins_p.plug_p);
      connect(plugToPins_p.pin_p, potentialSensor.pin);
      connect(potentialSensor.y, y);
    end FrequencySensor;

--------------

|image11| `Modelica.Electrical.QuasiStationary.MultiPhase.Sensors <Modelica_Electrical_QuasiStationary_MultiPhase_Sensors.html#Modelica.Electrical.QuasiStationary.MultiPhase.Sensors>`_.PotentialSensor
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Potential sensor**

.. figure:: Modelica.Electrical.QuasiStationary.MultiPhase.Sensors.PotentialSensorD.png
   :align: center
   :alt: Modelica.Electrical.QuasiStationary.MultiPhase.Sensors.PotentialSensor

   Modelica.Electrical.QuasiStationary.MultiPhase.Sensors.PotentialSensor

Information
~~~~~~~~~~~

::

This sensor can be used to measure *m* complex potentials, using *m*
`single phase
PotentialSensors <Modelica_Electrical_QuasiStationary_SinglePhase_Sensors.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.PotentialSensor>`_.

See also
^^^^^^^^

`SinglePhase.PotentialSensor <Modelica_Electrical_QuasiStationary_SinglePhase_Sensors.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.PotentialSensor>`_,
`VoltageSensor <Modelica_Electrical_QuasiStationary_MultiPhase_Sensors.html#Modelica.Electrical.QuasiStationary.MultiPhase.Sensors.VoltageSensor>`_,
`CurrentSensor <Modelica_Electrical_QuasiStationary_MultiPhase_Sensors.html#Modelica.Electrical.QuasiStationary.MultiPhase.Sensors.CurrentSensor>`_,
`PowerSensor <Modelica_Electrical_QuasiStationary_MultiPhase_Sensors.html#Modelica.Electrical.QuasiStationary.MultiPhase.Sensors.PowerSensor>`_

::

Extends from
`Interfaces.AbsoluteSensor <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.AbsoluteSensor>`_
(Partial potential sensor).

Parameters
~~~~~~~~~~

+-----------+--------+-----------+--------------------+
| Type      | Name   | Default   | Description        |
+===========+========+===========+====================+
| Integer   | m      | 3         | number of phases   |
+-----------+--------+-----------+--------------------+

Connectors
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+---------------+
| Type                                                                                                                                                      | Name      | Description   |
+===========================================================================================================================================================+===========+===============+
| `PositivePlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.PositivePlug>`_   | plug\_p   |               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+---------------+
| output `ComplexOutput <Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces.ComplexOutput>`_                                          | y[m]      |               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model PotentialSensor "Potential sensor"
      extends Interfaces.AbsoluteSensor;
      QuasiStationary.SinglePhase.Sensors.PotentialSensor potentialSensor[
                                                          m];
      Basic.PlugToPins_p plugToPins_p(final m=m);
      ComplexBlocks.Interfaces.ComplexOutput y[         m];
    equation 

      connect(potentialSensor.y, y);
      connect(plug_p, plugToPins_p.plug_p);
      connect(plugToPins_p.pin_p, potentialSensor.pin);
    end PotentialSensor;

--------------

|image12| `Modelica.Electrical.QuasiStationary.MultiPhase.Sensors <Modelica_Electrical_QuasiStationary_MultiPhase_Sensors.html#Modelica.Electrical.QuasiStationary.MultiPhase.Sensors>`_.VoltageSensor
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Voltage sensor**

.. figure:: Modelica.Electrical.QuasiStationary.MultiPhase.Sensors.VoltageSensorD.png
   :align: center
   :alt: Modelica.Electrical.QuasiStationary.MultiPhase.Sensors.VoltageSensor

   Modelica.Electrical.QuasiStationary.MultiPhase.Sensors.VoltageSensor

Information
~~~~~~~~~~~

::

This sensor can be used to measure *m* complex voltages, using *m*
`single phase
VoltageSensors <Modelica_Electrical_QuasiStationary_SinglePhase_Sensors.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.VoltageSensor>`_.

See also
^^^^^^^^

`SinglePhase.VoltageSensor <Modelica_Electrical_QuasiStationary_SinglePhase_Sensors.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.VoltageSensor>`_,
`PotentialSensor <Modelica_Electrical_QuasiStationary_MultiPhase_Sensors.html#Modelica.Electrical.QuasiStationary.MultiPhase.Sensors.PotentialSensor>`_,
`CurrentSensor <Modelica_Electrical_QuasiStationary_MultiPhase_Sensors.html#Modelica.Electrical.QuasiStationary.MultiPhase.Sensors.CurrentSensor>`_,
`PowerSensor <Modelica_Electrical_QuasiStationary_MultiPhase_Sensors.html#Modelica.Electrical.QuasiStationary.MultiPhase.Sensors.PowerSensor>`_

::

Extends from
`Interfaces.RelativeSensor <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.RelativeSensor>`_
(Partial voltage / current sensor).

Parameters
~~~~~~~~~~

+-----------+--------+-----------+--------------------+
| Type      | Name   | Default   | Description        |
+===========+========+===========+====================+
| Integer   | m      | 3         | Number of phases   |
+-----------+--------+-----------+--------------------+

Connectors
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+---------------+
| Type                                                                                                                                                      | Name      | Description   |
+===========================================================================================================================================================+===========+===============+
| `PositivePlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.PositivePlug>`_   | plug\_p   |               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+---------------+
| `NegativePlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.NegativePlug>`_   | plug\_n   |               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+---------------+
| output `ComplexOutput <Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces.ComplexOutput>`_                                          | y[m]      |               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model VoltageSensor "Voltage sensor"
      extends Interfaces.RelativeSensor;
      QuasiStationary.SinglePhase.Sensors.VoltageSensor voltageSensor[
                                                      m];
    equation 
      connect(plugToPins_p.pin_p, voltageSensor.pin_p);
      connect(voltageSensor.pin_n, plugToPins_n.pin_n);
      connect(voltageSensor.y, y);
    end VoltageSensor;

--------------

|image13| `Modelica.Electrical.QuasiStationary.MultiPhase.Sensors <Modelica_Electrical_QuasiStationary_MultiPhase_Sensors.html#Modelica.Electrical.QuasiStationary.MultiPhase.Sensors>`_.CurrentSensor
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Current Sensor**

.. figure:: Modelica.Electrical.QuasiStationary.MultiPhase.Sensors.CurrentSensorD.png
   :align: center
   :alt: Modelica.Electrical.QuasiStationary.MultiPhase.Sensors.CurrentSensor

   Modelica.Electrical.QuasiStationary.MultiPhase.Sensors.CurrentSensor

Information
~~~~~~~~~~~

::

This sensor can be used to measure *m* complex currents, using *m*
`single phase
CurrentSensors <Modelica_Electrical_QuasiStationary_SinglePhase_Sensors.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.CurrentSensor>`_.

See also
^^^^^^^^

`SinglePhase.CurrentSensor <Modelica_Electrical_QuasiStationary_SinglePhase_Sensors.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.CurrentSensor>`_,
`PotentialSensor <Modelica_Electrical_QuasiStationary_MultiPhase_Sensors.html#Modelica.Electrical.QuasiStationary.MultiPhase.Sensors.PotentialSensor>`_,
`VoltageSensor <Modelica_Electrical_QuasiStationary_MultiPhase_Sensors.html#Modelica.Electrical.QuasiStationary.MultiPhase.Sensors.VoltageSensor>`_,
`PowerSensor <Modelica_Electrical_QuasiStationary_MultiPhase_Sensors.html#Modelica.Electrical.QuasiStationary.MultiPhase.Sensors.PowerSensor>`_

::

Extends from
`Interfaces.RelativeSensor <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.RelativeSensor>`_
(Partial voltage / current sensor).

Parameters
~~~~~~~~~~

+-----------+--------+-----------+--------------------+
| Type      | Name   | Default   | Description        |
+===========+========+===========+====================+
| Integer   | m      | 3         | Number of phases   |
+-----------+--------+-----------+--------------------+

Connectors
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+---------------+
| Type                                                                                                                                                      | Name      | Description   |
+===========================================================================================================================================================+===========+===============+
| `PositivePlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.PositivePlug>`_   | plug\_p   |               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+---------------+
| `NegativePlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.NegativePlug>`_   | plug\_n   |               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+---------------+
| output `ComplexOutput <Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces.ComplexOutput>`_                                          | y[m]      |               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model CurrentSensor "Current Sensor"
      extends Interfaces.RelativeSensor;
      QuasiStationary.SinglePhase.Sensors.CurrentSensor currentSensor[
                                                      m];
    equation 
      connect(plugToPins_p.pin_p,currentSensor. pin_p);
      connect(currentSensor.pin_n, plugToPins_n.pin_n);
      connect(currentSensor.y, y);
    end CurrentSensor;

--------------

|image14| `Modelica.Electrical.QuasiStationary.MultiPhase.Sensors <Modelica_Electrical_QuasiStationary_MultiPhase_Sensors.html#Modelica.Electrical.QuasiStationary.MultiPhase.Sensors>`_.PowerSensor
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Power sensor**

.. figure:: Modelica.Electrical.QuasiStationary.MultiPhase.Sensors.PowerSensorD.png
   :align: center
   :alt: Modelica.Electrical.QuasiStationary.MultiPhase.Sensors.PowerSensor

   Modelica.Electrical.QuasiStationary.MultiPhase.Sensors.PowerSensor

Information
~~~~~~~~~~~

::

This sensor can be used to measure *m* complex apparent power values,
using *m* `single phase
PowerSensors <Modelica_Electrical_QuasiStationary_SinglePhase_Sensors.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.PowerSensor>`_.

See also
^^^^^^^^

`SinglePhase.PowerSensor <Modelica_Electrical_QuasiStationary_SinglePhase_Sensors.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.PowerSensor>`_,
`PotentialSensor <Modelica_Electrical_QuasiStationary_MultiPhase_Sensors.html#Modelica.Electrical.QuasiStationary.MultiPhase.Sensors.PotentialSensor>`_,
`VoltageSensor <Modelica_Electrical_QuasiStationary_MultiPhase_Sensors.html#Modelica.Electrical.QuasiStationary.MultiPhase.Sensors.VoltageSensor>`_,
`CurrentSensor <Modelica_Electrical_QuasiStationary_MultiPhase_Sensors.html#Modelica.Electrical.QuasiStationary.MultiPhase.Sensors.CurrentSensor>`_

::

Parameters
~~~~~~~~~~

+-----------+--------+-----------+--------------------+
| Type      | Name   | Default   | Description        |
+===========+========+===========+====================+
| Integer   | m      | 3         | number of phases   |
+-----------+--------+-----------+--------------------+

Connectors
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------------+------------+---------------+
| Type                                                                                                                                                      | Name       | Description   |
+===========================================================================================================================================================+============+===============+
| `PositivePlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.PositivePlug>`_   | currentP   |               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+------------+---------------+
| `NegativePlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.NegativePlug>`_   | currentN   |               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+------------+---------------+
| `PositivePlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.PositivePlug>`_   | voltageP   |               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+------------+---------------+
| `NegativePlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.NegativePlug>`_   | voltageN   |               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+------------+---------------+
| output `ComplexOutput <Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces.ComplexOutput>`_                                          | y          |               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+------------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model PowerSensor "Power sensor"
      parameter Integer m(min=1) = 3 "number of phases";
      Modelica.SIunits.AngularVelocity omega = der(currentP.reference.gamma);
      Interfaces.PositivePlug currentP;
      Interfaces.NegativePlug currentN;
      Interfaces.PositivePlug voltageP;
      Interfaces.NegativePlug voltageN;
      Modelica.ComplexBlocks.Interfaces.ComplexOutput y;
      Basic.PlugToPins_p plugToPinsCurrentP(final m=m);
      Basic.PlugToPins_p plugToPinsVoltageP(final m=m);
      Basic.PlugToPins_n plugToPinsCurrentN(final m=m);
      Basic.PlugToPins_n plugToPinsVoltageN(final m=m);
      QuasiStationary.SinglePhase.Sensors.PowerSensor powerSensor[
                                                  m];
      Modelica.ComplexBlocks.ComplexMath.Sum sum(final nin=m);
    equation 
      connect(plugToPinsCurrentP.plug_p, currentP);
      connect(currentN, plugToPinsCurrentN.plug_n);
      connect(voltageP, plugToPinsVoltageP.plug_p);
      connect(plugToPinsVoltageN.plug_n, voltageN);
      connect(plugToPinsCurrentP.pin_p, powerSensor.currentP);
      connect(powerSensor.currentN, plugToPinsCurrentN.pin_n);
      connect(powerSensor.voltageP, plugToPinsVoltageP.pin_p);
      connect(powerSensor.voltageN, plugToPinsVoltageN.pin_n);
      connect(powerSensor.y, sum.u);
      connect(sum.y, y);
      connect(currentP, currentP);
    end PowerSensor;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:29:43
2010.

.. |Modelica.Electrical.QuasiStationary.MultiPhase.Sensors.FrequencySensor| image:: Modelica.Electrical.QuasiStationary.MultiPhase.Sensors.FrequencySensorS.png
.. |Modelica.Electrical.QuasiStationary.MultiPhase.Sensors.PotentialSensor| image:: Modelica.Electrical.QuasiStationary.MultiPhase.Sensors.PotentialSensorS.png
.. |Modelica.Electrical.QuasiStationary.MultiPhase.Sensors.VoltageSensor| image:: Modelica.Electrical.QuasiStationary.MultiPhase.Sensors.VoltageSensorS.png
.. |Modelica.Electrical.QuasiStationary.MultiPhase.Sensors.CurrentSensor| image:: Modelica.Electrical.QuasiStationary.MultiPhase.Sensors.CurrentSensorS.png
.. |Modelica.Electrical.QuasiStationary.MultiPhase.Sensors.PowerSensor| image:: Modelica.Electrical.QuasiStationary.MultiPhase.Sensors.PowerSensorS.png
.. |image5| image:: Modelica.Electrical.QuasiStationary.MultiPhase.Sensors.FrequencySensorS.png
.. |image6| image:: Modelica.Electrical.QuasiStationary.MultiPhase.Sensors.PotentialSensorS.png
.. |image7| image:: Modelica.Electrical.QuasiStationary.MultiPhase.Sensors.VoltageSensorS.png
.. |image8| image:: Modelica.Electrical.QuasiStationary.MultiPhase.Sensors.CurrentSensorS.png
.. |image9| image:: Modelica.Electrical.QuasiStationary.MultiPhase.Sensors.PowerSensorS.png
.. |image10| image:: Modelica.Electrical.QuasiStationary.MultiPhase.Sensors.FrequencySensorI.png
.. |image11| image:: Modelica.Electrical.QuasiStationary.MultiPhase.Sensors.PotentialSensorI.png
.. |image12| image:: Modelica.Electrical.QuasiStationary.MultiPhase.Sensors.VoltageSensorI.png
.. |image13| image:: Modelica.Electrical.QuasiStationary.MultiPhase.Sensors.CurrentSensorI.png
.. |image14| image:: Modelica.Electrical.QuasiStationary.MultiPhase.Sensors.PowerSensorI.png
