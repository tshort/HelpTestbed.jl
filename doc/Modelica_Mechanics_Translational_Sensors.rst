========================================
Modelica.Mechanics.Translational.Sensors
========================================

`Modelica.Mechanics.Translational <Modelica_Mechanics_Translational.html#Modelica.Mechanics.Translational>`_.Sensors
--------------------------------------------------------------------------------------------------------------------

**Sensors for 1-dim. translational mechanical quantities**

Information
~~~~~~~~~~~

::

This package contains ideal sensor components that provide the connector
variables as signals for further processing with the Modelica.Blocks
library.

::

Extends from
`Modelica.Icons.SensorsPackage <Modelica_Icons_SensorsPackage.html#Modelica.Icons.SensorsPackage>`_
(Icon for packages containing sensors).

Package Content
~~~~~~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------+
| Name                                                                                                                                                                                           | Description                                                                               |
+================================================================================================================================================================================================+===========================================================================================+
| |image8| `PositionSensor <Modelica_Mechanics_Translational_Sensors.html#Modelica.Mechanics.Translational.Sensors.PositionSensor>`_                                                             | Ideal sensor to measure the absolute position                                             |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------+
| |image9| `SpeedSensor <Modelica_Mechanics_Translational_Sensors.html#Modelica.Mechanics.Translational.Sensors.SpeedSensor>`_                                                                   | Ideal sensor to measure the absolute velocity                                             |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------+
| |image10| `AccSensor <Modelica_Mechanics_Translational_Sensors.html#Modelica.Mechanics.Translational.Sensors.AccSensor>`_                                                                      | Ideal sensor to measure the absolute acceleration                                         |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------+
| |image11| `RelPositionSensor <Modelica_Mechanics_Translational_Sensors.html#Modelica.Mechanics.Translational.Sensors.RelPositionSensor>`_                                                      | Ideal sensor to measure the relative position                                             |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------+
| |image12| `RelSpeedSensor <Modelica_Mechanics_Translational_Sensors.html#Modelica.Mechanics.Translational.Sensors.RelSpeedSensor>`_                                                            | Ideal sensor to measure the relative speed                                                |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------+
| |image13| `RelAccSensor <Modelica_Mechanics_Translational_Sensors.html#Modelica.Mechanics.Translational.Sensors.RelAccSensor>`_                                                                | Ideal sensor to measure the relative acceleration                                         |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------+
| |image14| `ForceSensor <Modelica_Mechanics_Translational_Sensors.html#Modelica.Mechanics.Translational.Sensors.ForceSensor>`_                                                                  | Ideal sensor to measure the force between two flanges                                     |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------+
| |image15| `PowerSensor <Modelica_Mechanics_Translational_Sensors.html#Modelica.Mechanics.Translational.Sensors.PowerSensor>`_                                                                  | Ideal sensor to measure the power between two flanges (= flange\_a.f\*der(flange\_a.s))   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------+

--------------

|image16| `Modelica.Mechanics.Translational.Sensors <Modelica_Mechanics_Translational_Sensors.html#Modelica.Mechanics.Translational.Sensors>`_.PositionSensor
-------------------------------------------------------------------------------------------------------------------------------------------------------------

**Ideal sensor to measure the absolute position**

.. figure:: Modelica.Mechanics.Translational.Sensors.PositionSensorD.png
   :align: center
   :alt: Modelica.Mechanics.Translational.Sensors.PositionSensor

   Modelica.Mechanics.Translational.Sensors.PositionSensor

Information
~~~~~~~~~~~

::

Measures the *absolute position s* of a flange in an ideal way and
provides the result as output signals (to be further processed with
blocks of the Modelica.Blocks library).

::

Extends from
`Translational.Interfaces.PartialAbsoluteSensor <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.PartialAbsoluteSensor>`_
(Device to measure a single absolute flange variable).

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------+----------+------------------------------------------------------------------------------------------+
| Type                                                                                                                   | Name     | Description                                                                              |
+========================================================================================================================+==========+==========================================================================================+
| `Flange\_a <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.Flange_a>`_   | flange   | Flange to be measured (flange axis directed in to cut plane, e. g. from left to right)   |
+------------------------------------------------------------------------------------------------------------------------+----------+------------------------------------------------------------------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_                           | s        | Absolute position of flange                                                              |
+------------------------------------------------------------------------------------------------------------------------+----------+------------------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model PositionSensor "Ideal sensor to measure the absolute position"
      extends Translational.Interfaces.PartialAbsoluteSensor;
      Modelica.Blocks.Interfaces.RealOutput s "Absolute position of flange";

    equation 
      s = flange.s;
    end PositionSensor;

--------------

|image17| `Modelica.Mechanics.Translational.Sensors <Modelica_Mechanics_Translational_Sensors.html#Modelica.Mechanics.Translational.Sensors>`_.SpeedSensor
----------------------------------------------------------------------------------------------------------------------------------------------------------

**Ideal sensor to measure the absolute velocity**

.. figure:: Modelica.Mechanics.Translational.Sensors.SpeedSensorD.png
   :align: center
   :alt: Modelica.Mechanics.Translational.Sensors.SpeedSensor

   Modelica.Mechanics.Translational.Sensors.SpeedSensor

Information
~~~~~~~~~~~

::

Measures the *absolute velocity v* of a flange in an ideal way and
provides the result as output signals (to be further processed with
blocks of the Modelica.Blocks library).

::

Extends from
`Translational.Interfaces.PartialAbsoluteSensor <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.PartialAbsoluteSensor>`_
(Device to measure a single absolute flange variable).

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------+----------+------------------------------------------------------------------------------------------+
| Type                                                                                                                   | Name     | Description                                                                              |
+========================================================================================================================+==========+==========================================================================================+
| `Flange\_a <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.Flange_a>`_   | flange   | Flange to be measured (flange axis directed in to cut plane, e. g. from left to right)   |
+------------------------------------------------------------------------------------------------------------------------+----------+------------------------------------------------------------------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_                           | v        | Absolute velocity of flange as output signal                                             |
+------------------------------------------------------------------------------------------------------------------------+----------+------------------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model SpeedSensor "Ideal sensor to measure the absolute velocity"
      extends Translational.Interfaces.PartialAbsoluteSensor;
      Modelica.Blocks.Interfaces.RealOutput v 
        "Absolute velocity of flange as output signal";

    equation 
      v = der(flange.s);
    end SpeedSensor;

--------------

|image18| `Modelica.Mechanics.Translational.Sensors <Modelica_Mechanics_Translational_Sensors.html#Modelica.Mechanics.Translational.Sensors>`_.AccSensor
--------------------------------------------------------------------------------------------------------------------------------------------------------

**Ideal sensor to measure the absolute acceleration**

.. figure:: Modelica.Mechanics.Translational.Sensors.AccSensorD.png
   :align: center
   :alt: Modelica.Mechanics.Translational.Sensors.AccSensor

   Modelica.Mechanics.Translational.Sensors.AccSensor

Information
~~~~~~~~~~~

::

Measures the *absolute acceleration a* of a flange in an ideal way and
provides the result as output signals (to be further processed with
blocks of the Modelica.Blocks library).

::

Extends from
`Translational.Interfaces.PartialAbsoluteSensor <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.PartialAbsoluteSensor>`_
(Device to measure a single absolute flange variable).

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------+----------+------------------------------------------------------------------------------------------+
| Type                                                                                                                   | Name     | Description                                                                              |
+========================================================================================================================+==========+==========================================================================================+
| `Flange\_a <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.Flange_a>`_   | flange   | Flange to be measured (flange axis directed in to cut plane, e. g. from left to right)   |
+------------------------------------------------------------------------------------------------------------------------+----------+------------------------------------------------------------------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_                           | a        | Absolute acceleration of flange as output signal                                         |
+------------------------------------------------------------------------------------------------------------------------+----------+------------------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model AccSensor "Ideal sensor to measure the absolute acceleration"
      extends Translational.Interfaces.PartialAbsoluteSensor;
      SI.Velocity v "Absolute velocity of flange";
      Modelica.Blocks.Interfaces.RealOutput a 
        "Absolute acceleration of flange as output signal";

    equation 
      v = der(flange.s);
      a = der(v);
    end AccSensor;

--------------

|image19| `Modelica.Mechanics.Translational.Sensors <Modelica_Mechanics_Translational_Sensors.html#Modelica.Mechanics.Translational.Sensors>`_.RelPositionSensor
----------------------------------------------------------------------------------------------------------------------------------------------------------------

**Ideal sensor to measure the relative position**

.. figure:: Modelica.Mechanics.Translational.Sensors.RelPositionSensorD.png
   :align: center
   :alt: Modelica.Mechanics.Translational.Sensors.RelPositionSensor

   Modelica.Mechanics.Translational.Sensors.RelPositionSensor

Information
~~~~~~~~~~~

::

Measures the *relative position s* of a flange in an ideal way and
provides the result as output signals (to be further processed with
blocks of the Modelica.Blocks library).

::

Extends from
`Translational.Interfaces.PartialRelativeSensor <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.PartialRelativeSensor>`_
(Device to measure a single relative variable between two flanges).

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------+-------------+------------------------------------------------------------------------------------------+
| Type                                                                                                                   | Name        | Description                                                                              |
+========================================================================================================================+=============+==========================================================================================+
| `Flange\_a <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.Flange_a>`_   | flange\_a   | (left) driving flange (flange axis directed in to cut plane, e. g. from left to right)   |
+------------------------------------------------------------------------------------------------------------------------+-------------+------------------------------------------------------------------------------------------+
| `Flange\_b <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.Flange_b>`_   | flange\_b   | (right) driven flange (flange axis directed out of cut plane)                            |
+------------------------------------------------------------------------------------------------------------------------+-------------+------------------------------------------------------------------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_                           | s\_rel      | Distance between two flanges (= flange\_b.s - flange\_a.s)                               |
+------------------------------------------------------------------------------------------------------------------------+-------------+------------------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model RelPositionSensor 
      "Ideal sensor to measure the relative position"
      extends Translational.Interfaces.PartialRelativeSensor;
      Modelica.Blocks.Interfaces.RealOutput s_rel 
        "Distance between two flanges (= flange_b.s - flange_a.s)";

    equation 
      s_rel = flange_b.s - flange_a.s;
      0 = flange_a.f;
    end RelPositionSensor;

--------------

|image20| `Modelica.Mechanics.Translational.Sensors <Modelica_Mechanics_Translational_Sensors.html#Modelica.Mechanics.Translational.Sensors>`_.RelSpeedSensor
-------------------------------------------------------------------------------------------------------------------------------------------------------------

**Ideal sensor to measure the relative speed**

.. figure:: Modelica.Mechanics.Translational.Sensors.RelSpeedSensorD.png
   :align: center
   :alt: Modelica.Mechanics.Translational.Sensors.RelSpeedSensor

   Modelica.Mechanics.Translational.Sensors.RelSpeedSensor

Information
~~~~~~~~~~~

::

Measures the *relative speed v* of a flange in an ideal way and provides
the result as output signals (to be further processed with blocks of the
Modelica.Blocks library).

::

Extends from
`Translational.Interfaces.PartialRelativeSensor <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.PartialRelativeSensor>`_
(Device to measure a single relative variable between two flanges).

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------+-------------+------------------------------------------------------------------------------------------+
| Type                                                                                                                   | Name        | Description                                                                              |
+========================================================================================================================+=============+==========================================================================================+
| `Flange\_a <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.Flange_a>`_   | flange\_a   | (left) driving flange (flange axis directed in to cut plane, e. g. from left to right)   |
+------------------------------------------------------------------------------------------------------------------------+-------------+------------------------------------------------------------------------------------------+
| `Flange\_b <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.Flange_b>`_   | flange\_b   | (right) driven flange (flange axis directed out of cut plane)                            |
+------------------------------------------------------------------------------------------------------------------------+-------------+------------------------------------------------------------------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_                           | v\_rel      | Relative velocity between two flanges (= der(flange\_b.s) - der(flange\_a.s))            |
+------------------------------------------------------------------------------------------------------------------------+-------------+------------------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model RelSpeedSensor "Ideal sensor to measure the relative speed"
      extends Translational.Interfaces.PartialRelativeSensor;
      SI.Position s_rel 
        "Distance between the two flanges (flange_b.s - flange_a.s)";
      Modelica.Blocks.Interfaces.RealOutput v_rel 
        "Relative velocity between two flanges (= der(flange_b.s) - der(flange_a.s))";

    equation 
      s_rel = flange_b.s - flange_a.s;
      v_rel = der(s_rel);
      0 = flange_a.f;
    end RelSpeedSensor;

--------------

|image21| `Modelica.Mechanics.Translational.Sensors <Modelica_Mechanics_Translational_Sensors.html#Modelica.Mechanics.Translational.Sensors>`_.RelAccSensor
-----------------------------------------------------------------------------------------------------------------------------------------------------------

**Ideal sensor to measure the relative acceleration**

.. figure:: Modelica.Mechanics.Translational.Sensors.RelAccSensorD.png
   :align: center
   :alt: Modelica.Mechanics.Translational.Sensors.RelAccSensor

   Modelica.Mechanics.Translational.Sensors.RelAccSensor

Information
~~~~~~~~~~~

::

Measures the *relative acceleration a* of a flange in an ideal way and
provides the result as output signals (to be further processed with
blocks of the Modelica.Blocks library).

::

Extends from
`Translational.Interfaces.PartialRelativeSensor <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.PartialRelativeSensor>`_
(Device to measure a single relative variable between two flanges).

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------+-------------+------------------------------------------------------------------------------------------+
| Type                                                                                                                   | Name        | Description                                                                              |
+========================================================================================================================+=============+==========================================================================================+
| `Flange\_a <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.Flange_a>`_   | flange\_a   | (left) driving flange (flange axis directed in to cut plane, e. g. from left to right)   |
+------------------------------------------------------------------------------------------------------------------------+-------------+------------------------------------------------------------------------------------------+
| `Flange\_b <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.Flange_b>`_   | flange\_b   | (right) driven flange (flange axis directed out of cut plane)                            |
+------------------------------------------------------------------------------------------------------------------------+-------------+------------------------------------------------------------------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_                           | a\_rel      | Relative acceleration between two flanges (= der(v\_rel))                                |
+------------------------------------------------------------------------------------------------------------------------+-------------+------------------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model RelAccSensor 
      "Ideal sensor to measure the relative acceleration"
      extends Translational.Interfaces.PartialRelativeSensor;
      SI.Position s_rel 
        "Distance between the two flanges (flange_b.s - flange_a.s)";
      SI.Velocity v_rel 
        "Relative velocity between the two flanges (der(flange_b.s) - der(flange_a.s))";
      Modelica.Blocks.Interfaces.RealOutput a_rel 
        "Relative acceleration between two flanges (= der(v_rel))";

    equation 
      s_rel = flange_b.s - flange_a.s;
      v_rel = der(s_rel);
      a_rel = der(v_rel);
      0 = flange_a.f;
    end RelAccSensor;

--------------

|image22| `Modelica.Mechanics.Translational.Sensors <Modelica_Mechanics_Translational_Sensors.html#Modelica.Mechanics.Translational.Sensors>`_.ForceSensor
----------------------------------------------------------------------------------------------------------------------------------------------------------

**Ideal sensor to measure the force between two flanges**

.. figure:: Modelica.Mechanics.Translational.Sensors.ForceSensorD.png
   :align: center
   :alt: Modelica.Mechanics.Translational.Sensors.ForceSensor

   Modelica.Mechanics.Translational.Sensors.ForceSensor

Information
~~~~~~~~~~~

::

Measures the *cut-force between two flanges* in an ideal way and
provides the result as output signal (to be further processed with
blocks of the Modelica.Blocks library).

::

Extends from
`Translational.Interfaces.PartialRelativeSensor <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.PartialRelativeSensor>`_
(Device to measure a single relative variable between two flanges).

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------+-------------+------------------------------------------------------------------------------------------+
| Type                                                                                                                   | Name        | Description                                                                              |
+========================================================================================================================+=============+==========================================================================================+
| `Flange\_a <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.Flange_a>`_   | flange\_a   | (left) driving flange (flange axis directed in to cut plane, e. g. from left to right)   |
+------------------------------------------------------------------------------------------------------------------------+-------------+------------------------------------------------------------------------------------------+
| `Flange\_b <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.Flange_b>`_   | flange\_b   | (right) driven flange (flange axis directed out of cut plane)                            |
+------------------------------------------------------------------------------------------------------------------------+-------------+------------------------------------------------------------------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_                           | f           | Force in flange\_a and flange\_b (f = flange\_a.f = -flange\_b.f)                        |
+------------------------------------------------------------------------------------------------------------------------+-------------+------------------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model ForceSensor 
      "Ideal sensor to measure the force between two flanges"
      extends Translational.Interfaces.PartialRelativeSensor;
      Modelica.Blocks.Interfaces.RealOutput f 
        "Force in flange_a and flange_b (f = flange_a.f = -flange_b.f)";
    equation 
      flange_a.s = flange_b.s;
      flange_a.f = f;
    end ForceSensor;

--------------

|image23| `Modelica.Mechanics.Translational.Sensors <Modelica_Mechanics_Translational_Sensors.html#Modelica.Mechanics.Translational.Sensors>`_.PowerSensor
----------------------------------------------------------------------------------------------------------------------------------------------------------

**Ideal sensor to measure the power between two flanges (=
flange\_a.f\*der(flange\_a.s))**

.. figure:: Modelica.Mechanics.Translational.Sensors.PowerSensorD.png
   :align: center
   :alt: Modelica.Mechanics.Translational.Sensors.PowerSensor

   Modelica.Mechanics.Translational.Sensors.PowerSensor

Information
~~~~~~~~~~~

::

Measures the **power between two flanges** in an ideal way and provides
the result as output signal **power** (to be further processed with
blocks of the Modelica.Blocks library).

::

Extends from
`Translational.Interfaces.PartialRelativeSensor <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.PartialRelativeSensor>`_
(Device to measure a single relative variable between two flanges).

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------+-------------+------------------------------------------------------------------------------------------+
| Type                                                                                                                   | Name        | Description                                                                              |
+========================================================================================================================+=============+==========================================================================================+
| `Flange\_a <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.Flange_a>`_   | flange\_a   | (left) driving flange (flange axis directed in to cut plane, e. g. from left to right)   |
+------------------------------------------------------------------------------------------------------------------------+-------------+------------------------------------------------------------------------------------------+
| `Flange\_b <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.Flange_b>`_   | flange\_b   | (right) driven flange (flange axis directed out of cut plane)                            |
+------------------------------------------------------------------------------------------------------------------------+-------------+------------------------------------------------------------------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_                           | power       | Power in flange flange\_a                                                                |
+------------------------------------------------------------------------------------------------------------------------+-------------+------------------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model PowerSensor 
      "Ideal sensor to measure the power between two flanges (= flange_a.f*der(flange_a.s))"
      extends Translational.Interfaces.PartialRelativeSensor;
      Modelica.Blocks.Interfaces.RealOutput power "Power in flange flange_a";
    equation 
      flange_a.s = flange_b.s;
      power = flange_a.f*der(flange_a.s);
    end PowerSensor;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:30:51
2010.

.. |Modelica.Mechanics.Translational.Sensors.PositionSensor| image:: Modelica.Mechanics.Translational.Sensors.PositionSensorS.png
.. |Modelica.Mechanics.Translational.Sensors.SpeedSensor| image:: Modelica.Mechanics.Translational.Sensors.SpeedSensorS.png
.. |Modelica.Mechanics.Translational.Sensors.AccSensor| image:: Modelica.Mechanics.Translational.Sensors.AccSensorS.png
.. |Modelica.Mechanics.Translational.Sensors.RelPositionSensor| image:: Modelica.Mechanics.Translational.Sensors.RelPositionSensorS.png
.. |Modelica.Mechanics.Translational.Sensors.RelSpeedSensor| image:: Modelica.Mechanics.Translational.Sensors.RelSpeedSensorS.png
.. |Modelica.Mechanics.Translational.Sensors.RelAccSensor| image:: Modelica.Mechanics.Translational.Sensors.RelAccSensorS.png
.. |Modelica.Mechanics.Translational.Sensors.ForceSensor| image:: Modelica.Mechanics.Translational.Sensors.ForceSensorS.png
.. |Modelica.Mechanics.Translational.Sensors.PowerSensor| image:: Modelica.Mechanics.Translational.Sensors.PowerSensorS.png
.. |image8| image:: Modelica.Mechanics.Translational.Sensors.PositionSensorS.png
.. |image9| image:: Modelica.Mechanics.Translational.Sensors.SpeedSensorS.png
.. |image10| image:: Modelica.Mechanics.Translational.Sensors.AccSensorS.png
.. |image11| image:: Modelica.Mechanics.Translational.Sensors.RelPositionSensorS.png
.. |image12| image:: Modelica.Mechanics.Translational.Sensors.RelSpeedSensorS.png
.. |image13| image:: Modelica.Mechanics.Translational.Sensors.RelAccSensorS.png
.. |image14| image:: Modelica.Mechanics.Translational.Sensors.ForceSensorS.png
.. |image15| image:: Modelica.Mechanics.Translational.Sensors.PowerSensorS.png
.. |image16| image:: Modelica.Mechanics.Translational.Sensors.PositionSensorI.png
.. |image17| image:: Modelica.Mechanics.Translational.Sensors.SpeedSensorI.png
.. |image18| image:: Modelica.Mechanics.Translational.Sensors.AccSensorI.png
.. |image19| image:: Modelica.Mechanics.Translational.Sensors.RelPositionSensorI.png
.. |image20| image:: Modelica.Mechanics.Translational.Sensors.RelSpeedSensorI.png
.. |image21| image:: Modelica.Mechanics.Translational.Sensors.RelAccSensorI.png
.. |image22| image:: Modelica.Mechanics.Translational.Sensors.ForceSensorI.png
.. |image23| image:: Modelica.Mechanics.Translational.Sensors.PowerSensorI.png
