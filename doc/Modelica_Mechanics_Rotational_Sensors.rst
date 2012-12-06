=====================================
Modelica.Mechanics.Rotational.Sensors
=====================================

`Modelica.Mechanics.Rotational <Modelica_Mechanics_Rotational.html#Modelica.Mechanics.Rotational>`_.Sensors
-----------------------------------------------------------------------------------------------------------

**Sensors to measure variables in 1D rotational mechanical components**

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

+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------+
| Name                                                                                                                                                                         | Description                                                                                   |
+==============================================================================================================================================================================+===============================================================================================+
| |image8| `AngleSensor <Modelica_Mechanics_Rotational_Sensors.html#Modelica.Mechanics.Rotational.Sensors.AngleSensor>`_                                                       | Ideal sensor to measure the absolute flange angle                                             |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------+
| |image9| `SpeedSensor <Modelica_Mechanics_Rotational_Sensors.html#Modelica.Mechanics.Rotational.Sensors.SpeedSensor>`_                                                       | Ideal sensor to measure the absolute flange angular velocity                                  |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------+
| |image10| `AccSensor <Modelica_Mechanics_Rotational_Sensors.html#Modelica.Mechanics.Rotational.Sensors.AccSensor>`_                                                          | Ideal sensor to measure the absolute flange angular acceleration                              |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------+
| |image11| `RelAngleSensor <Modelica_Mechanics_Rotational_Sensors.html#Modelica.Mechanics.Rotational.Sensors.RelAngleSensor>`_                                                | Ideal sensor to measure the relative angle between two flanges                                |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------+
| |image12| `RelSpeedSensor <Modelica_Mechanics_Rotational_Sensors.html#Modelica.Mechanics.Rotational.Sensors.RelSpeedSensor>`_                                                | Ideal sensor to measure the relative angular velocity between two flanges                     |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------+
| |image13| `RelAccSensor <Modelica_Mechanics_Rotational_Sensors.html#Modelica.Mechanics.Rotational.Sensors.RelAccSensor>`_                                                    | Ideal sensor to measure the relative angular acceleration between two flanges                 |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------+
| |image14| `TorqueSensor <Modelica_Mechanics_Rotational_Sensors.html#Modelica.Mechanics.Rotational.Sensors.TorqueSensor>`_                                                    | Ideal sensor to measure the torque between two flanges (= flange\_a.tau)                      |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------+
| |image15| `PowerSensor <Modelica_Mechanics_Rotational_Sensors.html#Modelica.Mechanics.Rotational.Sensors.PowerSensor>`_                                                      | Ideal sensor to measure the power between two flanges (= flange\_a.tau\*der(flange\_a.phi))   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------+

--------------

|image16| `Modelica.Mechanics.Rotational.Sensors <Modelica_Mechanics_Rotational_Sensors.html#Modelica.Mechanics.Rotational.Sensors>`_.AngleSensor
-------------------------------------------------------------------------------------------------------------------------------------------------

**Ideal sensor to measure the absolute flange angle**

.. figure:: Modelica.Mechanics.Rotational.Sensors.AngleSensorD.png
   :align: center
   :alt: Modelica.Mechanics.Rotational.Sensors.AngleSensor

   Modelica.Mechanics.Rotational.Sensors.AngleSensor

Information
~~~~~~~~~~~

::

Measures the **absolute angle phi** of a flange in an ideal way and
provides the result as output signal **phi** (to be further processed
with blocks of the Modelica.Blocks library).

::

Extends from
`Rotational.Interfaces.PartialAbsoluteSensor <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.PartialAbsoluteSensor>`_
(Partial model to measure a single absolute flange variable).

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------+----------+-------------------------------------------------------------------+
| Type                                                                                                             | Name     | Description                                                       |
+==================================================================================================================+==========+===================================================================+
| `Flange\_a <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.Flange_a>`_   | flange   | Flange of shaft from which sensor information shall be measured   |
+------------------------------------------------------------------------------------------------------------------+----------+-------------------------------------------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_                     | phi      | Absolute angle of flange                                          |
+------------------------------------------------------------------------------------------------------------------+----------+-------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model AngleSensor "Ideal sensor to measure the absolute flange angle"

      extends Rotational.Interfaces.PartialAbsoluteSensor;
      Modelica.Blocks.Interfaces.RealOutput phi "Absolute angle of flange";
    equation 
      phi = flange.phi;
    end AngleSensor;

--------------

|image17| `Modelica.Mechanics.Rotational.Sensors <Modelica_Mechanics_Rotational_Sensors.html#Modelica.Mechanics.Rotational.Sensors>`_.SpeedSensor
-------------------------------------------------------------------------------------------------------------------------------------------------

**Ideal sensor to measure the absolute flange angular velocity**

.. figure:: Modelica.Mechanics.Rotational.Sensors.SpeedSensorD.png
   :align: center
   :alt: Modelica.Mechanics.Rotational.Sensors.SpeedSensor

   Modelica.Mechanics.Rotational.Sensors.SpeedSensor

Information
~~~~~~~~~~~

::

Measures the **absolute angular velocity w** of a flange in an ideal way
and provides the result as output signal **w** (to be further processed
with blocks of the Modelica.Blocks library).

::

Extends from
`Rotational.Interfaces.PartialAbsoluteSensor <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.PartialAbsoluteSensor>`_
(Partial model to measure a single absolute flange variable).

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------+----------+-------------------------------------------------------------------+
| Type                                                                                                             | Name     | Description                                                       |
+==================================================================================================================+==========+===================================================================+
| `Flange\_a <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.Flange_a>`_   | flange   | Flange of shaft from which sensor information shall be measured   |
+------------------------------------------------------------------------------------------------------------------+----------+-------------------------------------------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_                     | w        | Absolute angular velocity of flange                               |
+------------------------------------------------------------------------------------------------------------------+----------+-------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model SpeedSensor 
      "Ideal sensor to measure the absolute flange angular velocity"

      extends Rotational.Interfaces.PartialAbsoluteSensor;
      Modelica.Blocks.Interfaces.RealOutput w "Absolute angular velocity of flange";

    equation 
      w = der(flange.phi);
    end SpeedSensor;

--------------

|image18| `Modelica.Mechanics.Rotational.Sensors <Modelica_Mechanics_Rotational_Sensors.html#Modelica.Mechanics.Rotational.Sensors>`_.AccSensor
-----------------------------------------------------------------------------------------------------------------------------------------------

**Ideal sensor to measure the absolute flange angular acceleration**

.. figure:: Modelica.Mechanics.Rotational.Sensors.AccSensorD.png
   :align: center
   :alt: Modelica.Mechanics.Rotational.Sensors.AccSensor

   Modelica.Mechanics.Rotational.Sensors.AccSensor

Information
~~~~~~~~~~~

::

Measures the **absolute angular acceleration a** of a flange in an ideal
way and provides the result as output signal **a** (to be further
processed with blocks of the Modelica.Blocks library).

::

Extends from
`Rotational.Interfaces.PartialAbsoluteSensor <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.PartialAbsoluteSensor>`_
(Partial model to measure a single absolute flange variable).

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------+----------+-------------------------------------------------------------------+
| Type                                                                                                             | Name     | Description                                                       |
+==================================================================================================================+==========+===================================================================+
| `Flange\_a <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.Flange_a>`_   | flange   | Flange of shaft from which sensor information shall be measured   |
+------------------------------------------------------------------------------------------------------------------+----------+-------------------------------------------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_                     | a        | Absolute angular acceleration of flange                           |
+------------------------------------------------------------------------------------------------------------------+----------+-------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model AccSensor 
      "Ideal sensor to measure the absolute flange angular acceleration"

      extends Rotational.Interfaces.PartialAbsoluteSensor;
      SI.AngularVelocity w "Absolute angular velocity of flange";
      Modelica.Blocks.Interfaces.RealOutput a 
        "Absolute angular acceleration of flange";

    equation 
      w = der(flange.phi);
      a = der(w);
    end AccSensor;

--------------

|image19| `Modelica.Mechanics.Rotational.Sensors <Modelica_Mechanics_Rotational_Sensors.html#Modelica.Mechanics.Rotational.Sensors>`_.RelAngleSensor
----------------------------------------------------------------------------------------------------------------------------------------------------

**Ideal sensor to measure the relative angle between two flanges**

.. figure:: Modelica.Mechanics.Rotational.Sensors.RelAngleSensorD.png
   :align: center
   :alt: Modelica.Mechanics.Rotational.Sensors.RelAngleSensor

   Modelica.Mechanics.Rotational.Sensors.RelAngleSensor

Information
~~~~~~~~~~~

::

Measures the **relative angle phi\_rel** between two flanges in an ideal
way and provides the result as output signal **phi\_rel** (to be further
processed with blocks of the Modelica.Blocks library).

::

Extends from
`Rotational.Interfaces.PartialRelativeSensor <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.PartialRelativeSensor>`_
(Partial model to measure a single relative variable between two
flanges).

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------+-------------+------------------------------------------------------------------------+
| Type                                                                                                             | Name        | Description                                                            |
+==================================================================================================================+=============+========================================================================+
| `Flange\_a <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.Flange_a>`_   | flange\_a   | Left flange of shaft                                                   |
+------------------------------------------------------------------------------------------------------------------+-------------+------------------------------------------------------------------------+
| `Flange\_b <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.Flange_b>`_   | flange\_b   | Right flange of shaft                                                  |
+------------------------------------------------------------------------------------------------------------------+-------------+------------------------------------------------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_                     | phi\_rel    | Relative angle between two flanges (= flange\_b.phi - flange\_a.phi)   |
+------------------------------------------------------------------------------------------------------------------+-------------+------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model RelAngleSensor 
      "Ideal sensor to measure the relative angle between two flanges"

      extends Rotational.Interfaces.PartialRelativeSensor;
      Modelica.Blocks.Interfaces.RealOutput phi_rel 
        "Relative angle between two flanges (= flange_b.phi - flange_a.phi)";

    equation 
      phi_rel = flange_b.phi - flange_a.phi;
      0 = flange_a.tau;
    end RelAngleSensor;

--------------

|image20| `Modelica.Mechanics.Rotational.Sensors <Modelica_Mechanics_Rotational_Sensors.html#Modelica.Mechanics.Rotational.Sensors>`_.RelSpeedSensor
----------------------------------------------------------------------------------------------------------------------------------------------------

**Ideal sensor to measure the relative angular velocity between two
flanges**

.. figure:: Modelica.Mechanics.Rotational.Sensors.RelSpeedSensorD.png
   :align: center
   :alt: Modelica.Mechanics.Rotational.Sensors.RelSpeedSensor

   Modelica.Mechanics.Rotational.Sensors.RelSpeedSensor

Information
~~~~~~~~~~~

::

Measures the **relative angular velocity w\_rel** between two flanges in
an ideal way and provides the result as output signal **w\_rel** (to be
further processed with blocks of the Modelica.Blocks library).

::

Extends from
`Rotational.Interfaces.PartialRelativeSensor <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.PartialRelativeSensor>`_
(Partial model to measure a single relative variable between two
flanges).

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------+-------------+---------------------------------------------------------------------------------------------+
| Type                                                                                                             | Name        | Description                                                                                 |
+==================================================================================================================+=============+=============================================================================================+
| `Flange\_a <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.Flange_a>`_   | flange\_a   | Left flange of shaft                                                                        |
+------------------------------------------------------------------------------------------------------------------+-------------+---------------------------------------------------------------------------------------------+
| `Flange\_b <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.Flange_b>`_   | flange\_b   | Right flange of shaft                                                                       |
+------------------------------------------------------------------------------------------------------------------+-------------+---------------------------------------------------------------------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_                     | w\_rel      | Relative angular velocity between two flanges (= der(flange\_b.phi) - der(flange\_a.phi))   |
+------------------------------------------------------------------------------------------------------------------+-------------+---------------------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model RelSpeedSensor 
      "Ideal sensor to measure the relative angular velocity between two flanges"

      extends Rotational.Interfaces.PartialRelativeSensor;

      SI.Angle phi_rel 
        "Relative angle between two flanges (flange_b.phi - flange_a.phi)";
      Modelica.Blocks.Interfaces.RealOutput w_rel 
        "Relative angular velocity between two flanges (= der(flange_b.phi) - der(flange_a.phi))";
        

    equation 
      phi_rel = flange_b.phi - flange_a.phi;
      w_rel = der(phi_rel);
      0 = flange_a.tau;
    end RelSpeedSensor;

--------------

|image21| `Modelica.Mechanics.Rotational.Sensors <Modelica_Mechanics_Rotational_Sensors.html#Modelica.Mechanics.Rotational.Sensors>`_.RelAccSensor
--------------------------------------------------------------------------------------------------------------------------------------------------

**Ideal sensor to measure the relative angular acceleration between two
flanges**

.. figure:: Modelica.Mechanics.Rotational.Sensors.RelAccSensorD.png
   :align: center
   :alt: Modelica.Mechanics.Rotational.Sensors.RelAccSensor

   Modelica.Mechanics.Rotational.Sensors.RelAccSensor

Information
~~~~~~~~~~~

::

Measures the **relative angular acceleration a\_rel** between two
flanges in an ideal way and provides the result as output signal
**a\_rel** (to be further processed with blocks of the Modelica.Blocks
library).

::

Extends from
`Rotational.Interfaces.PartialRelativeSensor <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.PartialRelativeSensor>`_
(Partial model to measure a single relative variable between two
flanges).

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------+-------------+-----------------------------------------------------+
| Type                                                                                                             | Name        | Description                                         |
+==================================================================================================================+=============+=====================================================+
| `Flange\_a <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.Flange_a>`_   | flange\_a   | Left flange of shaft                                |
+------------------------------------------------------------------------------------------------------------------+-------------+-----------------------------------------------------+
| `Flange\_b <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.Flange_b>`_   | flange\_b   | Right flange of shaft                               |
+------------------------------------------------------------------------------------------------------------------+-------------+-----------------------------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_                     | a\_rel      | Relative angular acceleration between two flanges   |
+------------------------------------------------------------------------------------------------------------------+-------------+-----------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model RelAccSensor 
      "Ideal sensor to measure the relative angular acceleration between two flanges"

      extends Rotational.Interfaces.PartialRelativeSensor;

      SI.Angle phi_rel 
        "Relative angle between two flanges (flange_b.phi - flange_a.phi)";
      SI.AngularVelocity w_rel "Relative angular velocity between two flanges";
      Modelica.Blocks.Interfaces.RealOutput a_rel 
        "Relative angular acceleration between two flanges";

    equation 
      phi_rel = flange_b.phi - flange_a.phi;
      w_rel = der(phi_rel);
      a_rel = der(w_rel);
      0 = flange_a.tau;
    end RelAccSensor;

--------------

|image22| `Modelica.Mechanics.Rotational.Sensors <Modelica_Mechanics_Rotational_Sensors.html#Modelica.Mechanics.Rotational.Sensors>`_.TorqueSensor
--------------------------------------------------------------------------------------------------------------------------------------------------

**Ideal sensor to measure the torque between two flanges (=
flange\_a.tau)**

.. figure:: Modelica.Mechanics.Rotational.Sensors.TorqueSensorD.png
   :align: center
   :alt: Modelica.Mechanics.Rotational.Sensors.TorqueSensor

   Modelica.Mechanics.Rotational.Sensors.TorqueSensor

Information
~~~~~~~~~~~

::

Measures the **cut-torque between two flanges** in an ideal way and
provides the result as output signal **tau** (to be further processed
with blocks of the Modelica.Blocks library).

::

Extends from
`Rotational.Interfaces.PartialRelativeSensor <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.PartialRelativeSensor>`_
(Partial model to measure a single relative variable between two
flanges).

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------+-------------+-----------------------------------------------------------------------------------+
| Type                                                                                                             | Name        | Description                                                                       |
+==================================================================================================================+=============+===================================================================================+
| `Flange\_a <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.Flange_a>`_   | flange\_a   | Left flange of shaft                                                              |
+------------------------------------------------------------------------------------------------------------------+-------------+-----------------------------------------------------------------------------------+
| `Flange\_b <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.Flange_b>`_   | flange\_b   | Right flange of shaft                                                             |
+------------------------------------------------------------------------------------------------------------------+-------------+-----------------------------------------------------------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_                     | tau         | Torque in flange flange\_a and flange\_b (tau = flange\_a.tau = -flange\_b.tau)   |
+------------------------------------------------------------------------------------------------------------------+-------------+-----------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model TorqueSensor 
      "Ideal sensor to measure the torque between two flanges (= flange_a.tau)"

      extends Rotational.Interfaces.PartialRelativeSensor;
      Modelica.Blocks.Interfaces.RealOutput tau 
        "Torque in flange flange_a and flange_b (tau = flange_a.tau = -flange_b.tau)";

    equation 
      flange_a.phi = flange_b.phi;
      flange_a.tau = tau;
    end TorqueSensor;

--------------

|image23| `Modelica.Mechanics.Rotational.Sensors <Modelica_Mechanics_Rotational_Sensors.html#Modelica.Mechanics.Rotational.Sensors>`_.PowerSensor
-------------------------------------------------------------------------------------------------------------------------------------------------

**Ideal sensor to measure the power between two flanges (=
flange\_a.tau\*der(flange\_a.phi))**

.. figure:: Modelica.Mechanics.Rotational.Sensors.PowerSensorD.png
   :align: center
   :alt: Modelica.Mechanics.Rotational.Sensors.PowerSensor

   Modelica.Mechanics.Rotational.Sensors.PowerSensor

Information
~~~~~~~~~~~

::

Measures the **power between two flanges** in an ideal way and provides
the result as output signal **power** (to be further processed with
blocks of the Modelica.Blocks library).

::

Extends from
`Rotational.Interfaces.PartialRelativeSensor <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.PartialRelativeSensor>`_
(Partial model to measure a single relative variable between two
flanges).

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------+-------------+-----------------------------+
| Type                                                                                                             | Name        | Description                 |
+==================================================================================================================+=============+=============================+
| `Flange\_a <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.Flange_a>`_   | flange\_a   | Left flange of shaft        |
+------------------------------------------------------------------------------------------------------------------+-------------+-----------------------------+
| `Flange\_b <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.Flange_b>`_   | flange\_b   | Right flange of shaft       |
+------------------------------------------------------------------------------------------------------------------+-------------+-----------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_                     | power       | Power in flange flange\_a   |
+------------------------------------------------------------------------------------------------------------------+-------------+-----------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model PowerSensor 
      "Ideal sensor to measure the power between two flanges (= flange_a.tau*der(flange_a.phi))"

      extends Rotational.Interfaces.PartialRelativeSensor;
      Modelica.Blocks.Interfaces.RealOutput power "Power in flange flange_a";

    equation 
      flange_a.phi = flange_b.phi;
      power = flange_a.tau*der(flange_a.phi);
    end PowerSensor;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:30:46
2010.

.. |Modelica.Mechanics.Rotational.Sensors.AngleSensor| image:: Modelica.Mechanics.Rotational.Sensors.AngleSensorS.png
.. |Modelica.Mechanics.Rotational.Sensors.SpeedSensor| image:: Modelica.Mechanics.Rotational.Sensors.SpeedSensorS.png
.. |Modelica.Mechanics.Rotational.Sensors.AccSensor| image:: Modelica.Mechanics.Rotational.Sensors.AccSensorS.png
.. |Modelica.Mechanics.Rotational.Sensors.RelAngleSensor| image:: Modelica.Mechanics.Rotational.Sensors.RelAngleSensorS.png
.. |Modelica.Mechanics.Rotational.Sensors.RelSpeedSensor| image:: Modelica.Mechanics.Rotational.Sensors.RelAngleSensorS.png
.. |Modelica.Mechanics.Rotational.Sensors.RelAccSensor| image:: Modelica.Mechanics.Rotational.Sensors.RelAngleSensorS.png
.. |Modelica.Mechanics.Rotational.Sensors.TorqueSensor| image:: Modelica.Mechanics.Rotational.Sensors.TorqueSensorS.png
.. |Modelica.Mechanics.Rotational.Sensors.PowerSensor| image:: Modelica.Mechanics.Rotational.Sensors.TorqueSensorS.png
.. |image8| image:: Modelica.Mechanics.Rotational.Sensors.AngleSensorS.png
.. |image9| image:: Modelica.Mechanics.Rotational.Sensors.SpeedSensorS.png
.. |image10| image:: Modelica.Mechanics.Rotational.Sensors.AccSensorS.png
.. |image11| image:: Modelica.Mechanics.Rotational.Sensors.RelAngleSensorS.png
.. |image12| image:: Modelica.Mechanics.Rotational.Sensors.RelAngleSensorS.png
.. |image13| image:: Modelica.Mechanics.Rotational.Sensors.RelAngleSensorS.png
.. |image14| image:: Modelica.Mechanics.Rotational.Sensors.TorqueSensorS.png
.. |image15| image:: Modelica.Mechanics.Rotational.Sensors.TorqueSensorS.png
.. |image16| image:: Modelica.Mechanics.Rotational.Sensors.AngleSensorI.png
.. |image17| image:: Modelica.Mechanics.Rotational.Sensors.SpeedSensorI.png
.. |image18| image:: Modelica.Mechanics.Rotational.Sensors.AccSensorI.png
.. |image19| image:: Modelica.Mechanics.Rotational.Sensors.RelAngleSensorI.png
.. |image20| image:: Modelica.Mechanics.Rotational.Sensors.RelSpeedSensorI.png
.. |image21| image:: Modelica.Mechanics.Rotational.Sensors.RelAccSensorI.png
.. |image22| image:: Modelica.Mechanics.Rotational.Sensors.TorqueSensorI.png
.. |image23| image:: Modelica.Mechanics.Rotational.Sensors.PowerSensorI.png
