========================================
Modelica.Thermal.HeatTransfer.Fahrenheit
========================================

`Modelica.Thermal.HeatTransfer <Modelica_Thermal_HeatTransfer.html#Modelica.Thermal.HeatTransfer>`_.Fahrenheit
--------------------------------------------------------------------------------------------------------------

**Components with Fahrenheit input and/or output**

Information
~~~~~~~~~~~

::

The components of this package are provided for the convenience of
people working mostly with Fahrenheit units, since all models in package
HeatTransfer are based on Kelvin units.

Note, that in package SIunits.Conversions, functions are provided to
convert between the units Kelvin, degree Celsius, degree Fahrenheit and
degree Rankine. These functions allow, e.g., a direct conversion of
units at all places where Kelvin is required as parameter. Example:

::

        import SIunits.Conversions.*;
        Modelica.Thermal.HeatTransfer.HeatCapacitor C(T0 = from_degF(70));

::

Extends from
`Modelica.Icons.VariantsPackage <Modelica_Icons_VariantsPackage.html#Modelica.Icons.VariantsPackage>`_
(Icon for package containing variants).

Package Content
~~~~~~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------+
| Name                                                                                                                                                                                                       | Description                                                |
+============================================================================================================================================================================================================+============================================================+
| |image5| `ToKelvin <Modelica_Thermal_HeatTransfer_Fahrenheit.html#Modelica.Thermal.HeatTransfer.Fahrenheit.ToKelvin>`_                                                                                     | Conversion block from degFahrenheit to Kelvin              |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------+
| |image6| `FromKelvin <Modelica_Thermal_HeatTransfer_Fahrenheit.html#Modelica.Thermal.HeatTransfer.Fahrenheit.FromKelvin>`_                                                                                 | Conversion from Kelvin to degFahrenheit                    |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------+
| |image7| `FixedTemperature <Modelica_Thermal_HeatTransfer_Fahrenheit.html#Modelica.Thermal.HeatTransfer.Fahrenheit.FixedTemperature>`_                                                                     | Fixed temperature boundary condition in degFahrenheit      |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------+
| |image8| `PrescribedTemperature <Modelica_Thermal_HeatTransfer_Fahrenheit.html#Modelica.Thermal.HeatTransfer.Fahrenheit.PrescribedTemperature>`_                                                           | Variable temperature boundary condition in degFahrenheit   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------+
| |image9| `TemperatureSensor <Modelica_Thermal_HeatTransfer_Fahrenheit.html#Modelica.Thermal.HeatTransfer.Fahrenheit.TemperatureSensor>`_                                                                   | Absolute temperature sensor in degFahrenheit               |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------+

--------------

|image10| `Modelica.Thermal.HeatTransfer.Fahrenheit <Modelica_Thermal_HeatTransfer_Fahrenheit.html#Modelica.Thermal.HeatTransfer.Fahrenheit>`_.ToKelvin
-------------------------------------------------------------------------------------------------------------------------------------------------------

**Conversion block from degFahrenheit to Kelvin**

.. figure:: Modelica.Thermal.HeatTransfer.Fahrenheit.ToKelvinD.png
   :align: center
   :alt: Modelica.Thermal.HeatTransfer.Fahrenheit.ToKelvin

   Modelica.Thermal.HeatTransfer.Fahrenheit.ToKelvin

Information
~~~~~~~~~~~

::

This component converts a input signal from degree Fahrenheit to Kelvin
and provides is as output signal.

::

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------+--------------+---------------+
| Type                                                                                           | Name         | Description   |
+================================================================================================+==============+===============+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_      | Fahrenheit   |               |
+------------------------------------------------------------------------------------------------+--------------+---------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | Kelvin       |               |
+------------------------------------------------------------------------------------------------+--------------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model ToKelvin "Conversion block from degFahrenheit to Kelvin"

      Modelica.Blocks.Interfaces.RealInput Fahrenheit;
      Modelica.Blocks.Interfaces.RealOutput Kelvin;
    equation 
      Kelvin = from_degF(Fahrenheit);
    end ToKelvin;

--------------

|image11| `Modelica.Thermal.HeatTransfer.Fahrenheit <Modelica_Thermal_HeatTransfer_Fahrenheit.html#Modelica.Thermal.HeatTransfer.Fahrenheit>`_.FromKelvin
---------------------------------------------------------------------------------------------------------------------------------------------------------

**Conversion from Kelvin to degFahrenheit**

.. figure:: Modelica.Thermal.HeatTransfer.Fahrenheit.FromKelvinD.png
   :align: center
   :alt: Modelica.Thermal.HeatTransfer.Fahrenheit.FromKelvin

   Modelica.Thermal.HeatTransfer.Fahrenheit.FromKelvin

Information
~~~~~~~~~~~

::

This component converts all input signals from Kelvin to Fahrenheit and
provides them as output signals.

::

Parameters
~~~~~~~~~~

+-----------+--------+-----------+------------------------------------------+
| Type      | Name   | Default   | Description                              |
+===========+========+===========+==========================================+
| Integer   | n      | 1         | Number of inputs (= number of outputs)   |
+-----------+--------+-----------+------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------+--------------+---------------+
| Type                                                                                           | Name         | Description   |
+================================================================================================+==============+===============+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_      | Kelvin       |               |
+------------------------------------------------------------------------------------------------+--------------+---------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | Fahrenheit   |               |
+------------------------------------------------------------------------------------------------+--------------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model FromKelvin "Conversion from Kelvin to degFahrenheit"
      parameter Integer n=1 "Number of inputs (= number of outputs)";
      Modelica.Blocks.Interfaces.RealInput Kelvin;
      Modelica.Blocks.Interfaces.RealOutput Fahrenheit;
    equation 
      Fahrenheit = to_degF(Kelvin);
    end FromKelvin;

--------------

|image12| `Modelica.Thermal.HeatTransfer.Fahrenheit <Modelica_Thermal_HeatTransfer_Fahrenheit.html#Modelica.Thermal.HeatTransfer.Fahrenheit>`_.FixedTemperature
---------------------------------------------------------------------------------------------------------------------------------------------------------------

**Fixed temperature boundary condition in degFahrenheit**

.. figure:: Modelica.Thermal.HeatTransfer.Fahrenheit.FixedTemperatureD.png
   :align: center
   :alt: Modelica.Thermal.HeatTransfer.Fahrenheit.FixedTemperature

   Modelica.Thermal.HeatTransfer.Fahrenheit.FixedTemperature

Information
~~~~~~~~~~~

::

This model defines a fixed temperature T at its port in [degF], i.e., it
defines a fixed temperature as a boundary condition.

::

Parameters
~~~~~~~~~~

+--------------------------------------------------------------------------------------------------------------------------------+--------+-----------+----------------------------------------+
| Type                                                                                                                           | Name   | Default   | Description                            |
+================================================================================================================================+========+===========+========================================+
| `Temperature\_degF <Modelica_SIunits_Conversions_NonSIunits.html#Modelica.SIunits.Conversions.NonSIunits.Temperature_degF>`_   | T      |           | Fixed Temperature at the port [degF]   |
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
      "Fixed temperature boundary condition in degFahrenheit"
      parameter Modelica.SIunits.Conversions.NonSIunits.Temperature_degF T 
        "Fixed Temperature at the port";
      Interfaces.HeatPort_b port;
    equation 
      port.T = from_degF(T);
    end FixedTemperature;

--------------

|image13| `Modelica.Thermal.HeatTransfer.Fahrenheit <Modelica_Thermal_HeatTransfer_Fahrenheit.html#Modelica.Thermal.HeatTransfer.Fahrenheit>`_.PrescribedTemperature
--------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Variable temperature boundary condition in degFahrenheit**

.. figure:: Modelica.Thermal.HeatTransfer.Fahrenheit.PrescribedTemperatureD.png
   :align: center
   :alt: Modelica.Thermal.HeatTransfer.Fahrenheit.PrescribedTemperature

   Modelica.Thermal.HeatTransfer.Fahrenheit.PrescribedTemperature

Information
~~~~~~~~~~~

::

This model represents a variable temperature boundary condition The
temperature value in [degF] is given by the input signal to the model.
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
      "Variable temperature boundary condition in degFahrenheit"

      Interfaces.HeatPort_b port;
      Modelica.Blocks.Interfaces.RealInput T;
    equation 
      port.T = from_degF(T);
    end PrescribedTemperature;

--------------

|image14| `Modelica.Thermal.HeatTransfer.Fahrenheit <Modelica_Thermal_HeatTransfer_Fahrenheit.html#Modelica.Thermal.HeatTransfer.Fahrenheit>`_.TemperatureSensor
----------------------------------------------------------------------------------------------------------------------------------------------------------------

**Absolute temperature sensor in degFahrenheit**

.. figure:: Modelica.Thermal.HeatTransfer.Fahrenheit.TemperatureSensorD.png
   :align: center
   :alt: Modelica.Thermal.HeatTransfer.Fahrenheit.TemperatureSensor

   Modelica.Thermal.HeatTransfer.Fahrenheit.TemperatureSensor

Information
~~~~~~~~~~~

::

This is an ideal absolute temperature sensor which returns the
temperature of the connected port in Fahrenheit as an output signal. The
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

    model TemperatureSensor 
      "Absolute temperature sensor in degFahrenheit"

      Modelica.Blocks.Interfaces.RealOutput T;
      Interfaces.HeatPort_a port;
    equation 
      T = to_degF(port.T);
      port.Q_flow = 0;
    end TemperatureSensor;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:31:47
2010.

.. |Modelica.Thermal.HeatTransfer.Fahrenheit.ToKelvin| image:: Modelica.Thermal.HeatTransfer.Fahrenheit.ToKelvinS.png
.. |Modelica.Thermal.HeatTransfer.Fahrenheit.FromKelvin| image:: Modelica.Thermal.HeatTransfer.Fahrenheit.FromKelvinS.png
.. |Modelica.Thermal.HeatTransfer.Fahrenheit.FixedTemperature| image:: Modelica.Thermal.HeatTransfer.Fahrenheit.FixedTemperatureS.png
.. |Modelica.Thermal.HeatTransfer.Fahrenheit.PrescribedTemperature| image:: Modelica.Thermal.HeatTransfer.Fahrenheit.PrescribedTemperatureS.png
.. |Modelica.Thermal.HeatTransfer.Fahrenheit.TemperatureSensor| image:: Modelica.Thermal.HeatTransfer.Fahrenheit.TemperatureSensorS.png
.. |image5| image:: Modelica.Thermal.HeatTransfer.Fahrenheit.ToKelvinS.png
.. |image6| image:: Modelica.Thermal.HeatTransfer.Fahrenheit.FromKelvinS.png
.. |image7| image:: Modelica.Thermal.HeatTransfer.Fahrenheit.FixedTemperatureS.png
.. |image8| image:: Modelica.Thermal.HeatTransfer.Fahrenheit.PrescribedTemperatureS.png
.. |image9| image:: Modelica.Thermal.HeatTransfer.Fahrenheit.TemperatureSensorS.png
.. |image10| image:: Modelica.Thermal.HeatTransfer.Fahrenheit.ToKelvinI.png
.. |image11| image:: Modelica.Thermal.HeatTransfer.Fahrenheit.FromKelvinI.png
.. |image12| image:: Modelica.Thermal.HeatTransfer.Fahrenheit.FixedTemperatureI.png
.. |image13| image:: Modelica.Thermal.HeatTransfer.Fahrenheit.PrescribedTemperatureI.png
.. |image14| image:: Modelica.Thermal.HeatTransfer.Fahrenheit.TemperatureSensorI.png
