=====================================
Modelica.Thermal.HeatTransfer.Celsius
=====================================

`Modelica.Thermal.HeatTransfer <Modelica_Thermal_HeatTransfer.html#Modelica.Thermal.HeatTransfer>`_.Celsius
-----------------------------------------------------------------------------------------------------------

**Components with Celsius input and/or output**

Information
~~~~~~~~~~~

::

The components of this package are provided for the convenience of
people working mostly with Celsius units, since all models in package
HeatTransfer are based on Kelvin units.

Note, that in package SIunits.Conversions, functions are provided to
convert between the units Kelvin, degree Celsius, degree Fahrenheit, and
degree Rankine. These functions allow, e.g., a direct conversion of
units at all places where Kelvin is required as parameter. Example:

::

        import SIunits.Conversions.*;
        Modelica.Thermal.HeatTransfer.HeatCapacitor C(T0 = from_degC(20));

::

Extends from
`Modelica.Icons.VariantsPackage <Modelica_Icons_VariantsPackage.html#Modelica.Icons.VariantsPackage>`_
(Icon for package containing variants).

Package Content
~~~~~~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------+
| Name                                                                                                                                                                                              | Description                                              |
+===================================================================================================================================================================================================+==========================================================+
| |image5| `ToKelvin <Modelica_Thermal_HeatTransfer_Celsius.html#Modelica.Thermal.HeatTransfer.Celsius.ToKelvin>`_                                                                                  | Conversion block from degCelsius to Kelvin               |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------+
| |image6| `FromKelvin <Modelica_Thermal_HeatTransfer_Celsius.html#Modelica.Thermal.HeatTransfer.Celsius.FromKelvin>`_                                                                              | Conversion from Kelvin to degCelsius                     |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------+
| |image7| `FixedTemperature <Modelica_Thermal_HeatTransfer_Celsius.html#Modelica.Thermal.HeatTransfer.Celsius.FixedTemperature>`_                                                                  | Fixed temperature boundary condition in degree Celsius   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------+
| |image8| `PrescribedTemperature <Modelica_Thermal_HeatTransfer_Celsius.html#Modelica.Thermal.HeatTransfer.Celsius.PrescribedTemperature>`_                                                        | Variable temperature boundary condition in degCelsius    |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------+
| |image9| `TemperatureSensor <Modelica_Thermal_HeatTransfer_Celsius.html#Modelica.Thermal.HeatTransfer.Celsius.TemperatureSensor>`_                                                                | Absolute temperature sensor in degCelsius                |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------+

--------------

|image10| `Modelica.Thermal.HeatTransfer.Celsius <Modelica_Thermal_HeatTransfer_Celsius.html#Modelica.Thermal.HeatTransfer.Celsius>`_.ToKelvin
----------------------------------------------------------------------------------------------------------------------------------------------

**Conversion block from degCelsius to Kelvin**

.. figure:: Modelica.Thermal.HeatTransfer.Celsius.ToKelvinD.png
   :align: center
   :alt: Modelica.Thermal.HeatTransfer.Celsius.ToKelvin

   Modelica.Thermal.HeatTransfer.Celsius.ToKelvin

Information
~~~~~~~~~~~

::

This component converts an input signal from Celsius to Kelvin and
provide is as output signal.

::

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------+-----------+---------------+
| Type                                                                                           | Name      | Description   |
+================================================================================================+===========+===============+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_      | Celsius   |               |
+------------------------------------------------------------------------------------------------+-----------+---------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | Kelvin    |               |
+------------------------------------------------------------------------------------------------+-----------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model ToKelvin "Conversion block from degCelsius to Kelvin"

      Modelica.Blocks.Interfaces.RealInput Celsius;
      Modelica.Blocks.Interfaces.RealOutput Kelvin;
    equation 
      Kelvin = from_degC(Celsius);
    end ToKelvin;

--------------

|image11| `Modelica.Thermal.HeatTransfer.Celsius <Modelica_Thermal_HeatTransfer_Celsius.html#Modelica.Thermal.HeatTransfer.Celsius>`_.FromKelvin
------------------------------------------------------------------------------------------------------------------------------------------------

**Conversion from Kelvin to degCelsius**

.. figure:: Modelica.Thermal.HeatTransfer.Celsius.FromKelvinD.png
   :align: center
   :alt: Modelica.Thermal.HeatTransfer.Celsius.FromKelvin

   Modelica.Thermal.HeatTransfer.Celsius.FromKelvin

Information
~~~~~~~~~~~

::

This component converts an input signal from Kelvin to Celsius and
provides is as output signal.

::

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------+-----------+---------------+
| Type                                                                                           | Name      | Description   |
+================================================================================================+===========+===============+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_      | Kelvin    |               |
+------------------------------------------------------------------------------------------------+-----------+---------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | Celsius   |               |
+------------------------------------------------------------------------------------------------+-----------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model FromKelvin "Conversion from Kelvin to degCelsius"

      Modelica.Blocks.Interfaces.RealInput Kelvin;
      Modelica.Blocks.Interfaces.RealOutput Celsius;
    equation 
      Celsius = to_degC(Kelvin);
    end FromKelvin;

--------------

|image12| `Modelica.Thermal.HeatTransfer.Celsius <Modelica_Thermal_HeatTransfer_Celsius.html#Modelica.Thermal.HeatTransfer.Celsius>`_.FixedTemperature
------------------------------------------------------------------------------------------------------------------------------------------------------

**Fixed temperature boundary condition in degree Celsius**

.. figure:: Modelica.Thermal.HeatTransfer.Celsius.FixedTemperatureD.png
   :align: center
   :alt: Modelica.Thermal.HeatTransfer.Celsius.FixedTemperature

   Modelica.Thermal.HeatTransfer.Celsius.FixedTemperature

Information
~~~~~~~~~~~

::

This model defines a fixed temperature T at its port in [degC], i.e., it
defines a fixed temperature as a boundary condition.

::

Parameters
~~~~~~~~~~

+--------------------------------------------------------------------------------------------------------------------------------+--------+-----------+----------------------------------------+
| Type                                                                                                                           | Name   | Default   | Description                            |
+================================================================================================================================+========+===========+========================================+
| `Temperature\_degC <Modelica_SIunits_Conversions_NonSIunits.html#Modelica.SIunits.Conversions.NonSIunits.Temperature_degC>`_   | T      |           | Fixed Temperature at the port [degC]   |
+--------------------------------------------------------------------------------------------------------------------------------+--------+-----------+----------------------------------------+

Connectors
~~~~~~~~~~

+----------------------------------------------------------------------------------------------------------------------+--------+---------------+
| Type                                                                                                                 | Name   | Description   |
+======================================================================================================================+========+===============+
| `HeatPort\_b <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_b>`_   | port   |               |
+----------------------------------------------------------------------------------------------------------------------+--------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model FixedTemperature 
      "Fixed temperature boundary condition in degree Celsius"
      parameter Modelica.SIunits.Conversions.NonSIunits.Temperature_degC T 
        "Fixed Temperature at the port";
      Interfaces.HeatPort_b port;
    equation 
      port.T = from_degC(T);
    end FixedTemperature;

--------------

|image13| `Modelica.Thermal.HeatTransfer.Celsius <Modelica_Thermal_HeatTransfer_Celsius.html#Modelica.Thermal.HeatTransfer.Celsius>`_.PrescribedTemperature
-----------------------------------------------------------------------------------------------------------------------------------------------------------

**Variable temperature boundary condition in degCelsius**

.. figure:: Modelica.Thermal.HeatTransfer.Celsius.PrescribedTemperatureD.png
   :align: center
   :alt: Modelica.Thermal.HeatTransfer.Celsius.PrescribedTemperature

   Modelica.Thermal.HeatTransfer.Celsius.PrescribedTemperature

Information
~~~~~~~~~~~

::

This model represents a variable temperature boundary condition The
temperature value in [degC] is given by the input signal to the model.
The effect is that an instance of this model acts as an infinite
reservoir able to absorb or generate as much energy as required to keep
the temperature at the specified value.

::

Connectors
~~~~~~~~~~

+----------------------------------------------------------------------------------------------------------------------+--------+---------------+
| Type                                                                                                                 | Name   | Description   |
+======================================================================================================================+========+===============+
| `HeatPort\_b <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_b>`_   | port   |               |
+----------------------------------------------------------------------------------------------------------------------+--------+---------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_                            | T      |               |
+----------------------------------------------------------------------------------------------------------------------+--------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model PrescribedTemperature 
      "Variable temperature boundary condition in degCelsius"

      Interfaces.HeatPort_b port;
      Modelica.Blocks.Interfaces.RealInput T;
    equation 
      port.T = from_degC(T);
    end PrescribedTemperature;

--------------

|image14| `Modelica.Thermal.HeatTransfer.Celsius <Modelica_Thermal_HeatTransfer_Celsius.html#Modelica.Thermal.HeatTransfer.Celsius>`_.TemperatureSensor
-------------------------------------------------------------------------------------------------------------------------------------------------------

**Absolute temperature sensor in degCelsius**

.. figure:: Modelica.Thermal.HeatTransfer.Celsius.TemperatureSensorD.png
   :align: center
   :alt: Modelica.Thermal.HeatTransfer.Celsius.TemperatureSensor

   Modelica.Thermal.HeatTransfer.Celsius.TemperatureSensor

Information
~~~~~~~~~~~

::

This is an ideal absolute temperature sensor which returns the
temperature of the connected port in Celsius as an output signal. The
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

    model TemperatureSensor "Absolute temperature sensor in degCelsius"

      Modelica.Blocks.Interfaces.RealOutput T;
      Interfaces.HeatPort_a port;
    equation 
      T = to_degC(port.T);
      port.Q_flow = 0;
    end TemperatureSensor;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:31:47
2010.

.. |Modelica.Thermal.HeatTransfer.Celsius.ToKelvin| image:: Modelica.Thermal.HeatTransfer.Celsius.ToKelvinS.png
.. |Modelica.Thermal.HeatTransfer.Celsius.FromKelvin| image:: Modelica.Thermal.HeatTransfer.Celsius.FromKelvinS.png
.. |Modelica.Thermal.HeatTransfer.Celsius.FixedTemperature| image:: Modelica.Thermal.HeatTransfer.Celsius.FixedTemperatureS.png
.. |Modelica.Thermal.HeatTransfer.Celsius.PrescribedTemperature| image:: Modelica.Thermal.HeatTransfer.Celsius.PrescribedTemperatureS.png
.. |Modelica.Thermal.HeatTransfer.Celsius.TemperatureSensor| image:: Modelica.Thermal.HeatTransfer.Celsius.TemperatureSensorS.png
.. |image5| image:: Modelica.Thermal.HeatTransfer.Celsius.ToKelvinS.png
.. |image6| image:: Modelica.Thermal.HeatTransfer.Celsius.FromKelvinS.png
.. |image7| image:: Modelica.Thermal.HeatTransfer.Celsius.FixedTemperatureS.png
.. |image8| image:: Modelica.Thermal.HeatTransfer.Celsius.PrescribedTemperatureS.png
.. |image9| image:: Modelica.Thermal.HeatTransfer.Celsius.TemperatureSensorS.png
.. |image10| image:: Modelica.Thermal.HeatTransfer.Celsius.ToKelvinI.png
.. |image11| image:: Modelica.Thermal.HeatTransfer.Celsius.FromKelvinI.png
.. |image12| image:: Modelica.Thermal.HeatTransfer.Celsius.FixedTemperatureI.png
.. |image13| image:: Modelica.Thermal.HeatTransfer.Celsius.PrescribedTemperatureI.png
.. |image14| image:: Modelica.Thermal.HeatTransfer.Celsius.TemperatureSensorI.png
